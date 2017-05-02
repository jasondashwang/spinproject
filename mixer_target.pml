typedef Wal {
  int value;
  bool locked;
}

// Wallet amounts
Wal wallets[8];

typedef Trans {
  int curr;
  int total;
  int dest;
  bool locks[8]; // sz 8 because there's 8 wallets
  bool assigned;
  bool completed;
}

Trans transactions[5];

proctype Mix(int t_num) {

  assert(transactions[t_num].assigned == 1); // We are only mixing transactions that are finished with assignment
  int w;
  // Loop through its locks array to find the wallets that are locked
  for (w: 0..7) {
    do
    :: (transactions[t_num].locks[w] == 1) -> 
      // Transfer money out of locked wallet
      // Replenish money into locked wallet
      // Adjust transaction current
      // Unlock the wallet
      assert(transactions[t_num].curr > 0); // At any point where there is a locked wallet, the transaction still has funds to mix
      assert(wallets[w].locked == 1); // If the transaction claims to have locked a wallet, the wallet should be locked
      do
      :: (transactions[t_num].curr > 10) ->
          wallets[w].value = 0; // Use all the money in the wallet
          transactions[t_num].dest = transactions[t_num].dest + 10; // Move to destination
          transactions[t_num].curr = transactions[t_num].curr - 10; // Pay out
          wallets[w].value = 10; // Replenish funds
          break;
      :: else -> 
          wallets[w].value = wallets[w].value - transactions[t_num].curr;
          transactions[t_num].dest = transactions[t_num].dest + transactions[t_num].curr;
          wallets[w].value = wallets[w].value + transactions[t_num].curr;
          transactions[t_num].curr = 0;
          break;
      od;


      transactions[t_num].locks[w] = 0;
      wallets[w].locked = 0;
      printf("Transaction number: %d\n", t_num);
      assert(wallets[w].value == 10); //  Funds are replenished before unlocking it and letting another transaction use this wallet
      break;

    :: else -> break;
    od;
  }

  assert(transactions[t_num].curr == 0); // All money has been mixed
  assert(transactions[t_num].dest == transactions[t_num].total); // All money has reached its destination
  goto end;

  end:
    transactions[t_num].completed = 1;

}

// Decides which wallets are used for mixing based on the transactions
proctype Decider() {
  int i = 0;
  int neededWallets;

  do
  ::(transactions[i].assigned == 0) -> // do something
    // Loop through all the wallets until we find an unlocked wallet
    // Determine how many wallets a transaction requires
    assert(transactions[i].completed == 0);
    assert(transactions[i].curr > 0);

    printf("Unassigned index: %d \n", i);
    printf("Transaction total: %d \n", transactions[i].total);

    neededWallets = transactions[i].total / 10;
    do
    :: ((transactions[i].total % 10) > 0) -> 
      neededWallets++;
      break;
    :: else -> break;
    od;
    printf("Needed wallets: %d \n", neededWallets);
    assert(neededWallets > 0); // Wallets are needed to mix

    int w = 0;
    do
    :: (neededWallets == 0) ->
      printf("Finished assigning index: %d \n", i);
      transactions[i].assigned = 1; // Transaction is finished with its assignment
      assert(transactions[i].completed == 0); // Transaction should not be completed before it even gets mixed
      run Mix(i); // Mix this transaction with parameter of the index of the transaction
      break; // If no more wallets are needed,
    :: else ->
      do
      ::(wallets[w].locked == 0) -> // assign it
        wallets[w].locked = 1; // Lock it
        neededWallets--;
        transactions[i].locks[w] = 1;
        break;
      :: else ->
        if
        :: (w < 7) -> w++;
        :: (w >= 7) -> w = 0;
        fi;
      od;
    od;

  :: else ->
      if
      :: (i < 4) -> i++;
      :: (i >= 4) -> i = 0;
      fi;
  od;

}

// Creates new transactions
proctype Creator() {
    int i = 0;
    int new_value;
    loop:
      do
      :: (transactions[i].completed == 1) ->
        assert(transactions[i].curr == 0); // All of its funds have been mixed
        assert(transactions[i].assigned == 1); // A completed transaction should also have been assigned
        new_value = 0;
        select(new_value: 10..30);
        transactions[i].curr = new_value;
        transactions[i].total = transactions[i].curr;
        transactions[i].assigned = 0;
        transactions[i].completed = 0;
        transactions[i].dest = 0;
        break;
      :: else -> break;
      od;

      if
      :: (i < 4) -> i++;
      :: (i >= 4) -> i = 0;
      fi;

    goto loop;
}

// initialize arrays of wallets and transactions and call creator
// and decider
init {
  int i;
  for (i: 0..7) {
    wallets[i].value = 10;
    wallets[i].locked = 0;
  }

  int j;
  int k;

  for (j: 0..4) {
    transactions[j].curr = 0;
    transactions[j].total = 0;

    for (k: 0..7) {
      transactions[j].locks[k] = 0;
    }

    transactions[j].assigned = 1;
    transactions[j].completed = 1;
    transactions[j].dest = 0;
  }

  // int o = 0;
  // do
  // :: (o < 8) ->
  //   printf("%d\n", o);
  //   printf("%d\n", wallets[o].value);
  //   printf("%d\n", wallets[o].locked);
  //   o++;
  // :: else -> break;
  // od;

  // int y = 0;
  // do
  // :: (y < 5) ->
  //   printf("%d\n", y);
  //   printf("curr: %d\n", transactions[y].curr);
  //   printf("total: %d\n", transactions[y].total);
  //   int lk = 0;
  //   do
  //   :: (lk < 7) ->
  //     printf("%d, ", transactions[y].locks[lk]);
  //     lk++;
  //   :: (lk >= 7) ->
  //     printf("%d\n", transactions[y].locks[lk]);
  //     break;
  //   od;
  //   printf("assigned: %d\n", transactions[y].assigned);
  //   printf("completed: %d\n", transactions[y].completed);
  //   y++;
  // :: else -> break;
  // od;

  
  run Creator();
  run Decider();
}
