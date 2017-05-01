typedef Wal {
  int value;
  bool locked;
}

// Wallet amounts
Wal wallets[8];

typedef Trans {
  int curr;
  int total;
  bool locks[8]; // sz 8 because there's 8 wallets
  bool assigned;
  bool completed;
}

Trans transactions[5];

int dest_wal[5];

// unlock wallets and set transaction lock array to false
// when transaction is done
proctype Unlock(int t_num) {
  int i;

  for (i: 0..7) {
    do
    :: (transactions[t_num].locks[i] == 1) ->
      wallets[i].locked = 0;
      transactions[t_num].locks[i] = 0;
    :: else -> break;
    od;
  }
}

// Decides which wallets are used for mixing based on the transactions
proctype Decider() {
  int i = 0;
  loop:
    do
    ::(transactions[i].assigned == 0) -> // do something
      // Loop through all the wallets until we find an unlocked wallet
      // Determine how many wallets a transaction requires
      int neededWallets = transactions[i].total / 10;
      do
      :: ((transactions[i].total % 10) > 0) -> neededWallets++;
      :: else -> break;
      od;

      int w = 0;
      do
      :: (neededWallets == 0) ->
        transactions[i].assigned = 1; // Transaction is finished with its assignment
        break; // If no more wallets are needed,
      :: else ->
        do
        ::(wallets[w].locked == 0) -> // assign it
          wallets[w].locked = 0; // Lock it
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
  goto loop;
}

// Creates new transactions
proctype Creator() {
    int i = 0;

    loop:
      do
      :: (transactions[i].completed == 1) ->
        select(transactions[i].curr: 10..30);
        transactions[i].total = transactions[i].curr;
        transaction[i].assigned = 0;
        transaction[i].completed = 0;
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
  //   :: (lk >= 8) ->
  //     printf("%d\n", transactions[y].locks[lk]);
  //     break;
  //   od;
  //   printf("assigned: %d\n", transactions[y].assigned);
  //   printf("completed: %d\n", transactions[y].completed);
  //   y++;
  // :: else -> break;
  // od;

  // run Decider();
  run Creator();
}
