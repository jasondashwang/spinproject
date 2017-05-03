typedef Wal {
  int value;
  bool locked;
}

// Wallet amounts
Wal wallets[8];

typedef Transac {
  int curr;
  int total;
  int dest;
  bool locks[8]; // sz 8 because there's 8 wallets
  bool assigned;
  bool completed;
}

Transac transactions[5];

bool new_transaction = 0; // If there is a new transaction
bool completed_transaction = 1; // If there is a completed transaction

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

      assert(wallets[w].value == 10); //  Funds are replenished before unlocking it and letting another transaction use this wallet


      transactions[t_num].locks[w] = 0;
      wallets[w].locked = 0;
      break;

    :: else -> break;
    od;
  }

  assert(transactions[t_num].curr == 0); // All money has been mixed
  assert(transactions[t_num].dest == transactions[t_num].total); // All money has reached its destination
  goto end;

  end:
    transactions[t_num].completed = 1;
    completed_transaction = 1; // Raise a flag that there is a completed transaction

}

int decided = 0; // Keep count of decided transactions (200 max)

// Decides which wallets are used for mixing based on the transactions
proctype Decider() {
  int i = 0;
  int neededWallets;

  do
  ::(transactions[i].assigned == 0) -> 
    // Loop through all the wallets until we find an unlocked wallet
    // Determine how many wallets a transaction requires
    new_transaction = 0; // Lower the flag that there is a new transaction

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
      decided++;
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
      

      do
      :: (decided == 100) -> goto end;
      :: else -> break;
      od;

      if
      :: (i < 4) -> i++;
      :: (i >= 4) -> i = 0;
      fi;

      new_transaction == 1; // Wait until there is a new transaction before searching for it
  od;

  end:
    printf("Decided 100 transactions\n");

}
int created = 0; // Keep count of created (max 200 transactions)

// Creates new transactions
proctype Creator() {
    
    int i = 0;
    int new_value;
    loop:
      

      do
      :: (created == 100) -> goto end;
      :: else -> break;
      od;

      completed_transaction == 1; // Wait until there is completed transaction before looking for it

      do
      :: (transactions[i].completed == 1) ->
        assert(transactions[i].curr == 0); // All of its funds have been mixed
        assert(transactions[i].assigned == 1); // A completed transaction should also have been assigned
        new_value = 0;
        select(new_value: 10..30);
        transactions[i].curr = new_value;
        transactions[i].total = transactions[i].curr;
        transactions[i].completed = 0;
        transactions[i].dest = 0;
        transactions[i].assigned = 0;
        created++;
        completed_transaction = 0; // Lower the flag of that there is an incomplete transaction
        new_transaction = 1; // Raise the flag that there is a new transaction
        break;
      :: else -> break;
      od;


      if
      :: (i < 4) -> i++;
      :: (i >= 4) -> i = 0;
      fi;

    goto loop;

    end:
      printf("Finished creating 100 transactions\n");
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


  
  run Creator();
  run Decider();
}
