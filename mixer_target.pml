typedef Wal {
  int value;
  bool locked;
}

// Wallet amounts
Wal wallet[8];

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
  int i = 0;
  do
  :: (i < 8) ->
    do
    :: (transactions[t_num].locks[i] == 1) ->
      wallets[i].locked = 0;
      transactions[t_num].locks[i] = 0;
    :: else -> break;
    od;
    i++;
  :: else -> break;
  od;
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
          w++;
          break;
        :: else ->
          if
          :: (w < 8) -> w++;
          :: (w >= 8) -> w = 0;
          fi;
        od;
      od;
    :: else ->
        if
        :: (i < 5) -> i++;
        :: (i >= 5) -> i = 0;
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
        i++;
      :: else ->
        if
        :: (i < 5) -> i++;
        :: (i >= 5) -> i = 0;
        fi;
      od;

    goto loop;

}

// initialize arrays of wallets and transactions and call creator
// and decider
init {
  int i = 0;
  do
  :: (i < 8) ->
    wallets[i].value = 10;
    wallets[i].locked = 0;
    i++;
  :: else -> break;
  od;

  int j = 0;
  int k = 0;
  do
  :: (j < 5) ->
    transactions[j].curr = 0;
    transactions[j].total = 0;
    do
    :: (k < 8) ->
      transactions[j].locks[k] = 0;
      k++;
    :: else -> break;
    od;
    transactions[j].assigned = 1;
    transactions[j].completed = 1;
    j++;
  :: else -> break;
  od;

  run Decider();
  run Creator();
}
