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
      wallet[i].locked = 0;
      transactions[t_num].locks[i] = 0;
    :: else -> break;
    od;
    i++;
  :: else -> break;
  od;
}

// Decides which wallets are used for mixing based on the transactions
proctype Decider() {

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
      :: else ->
        if
        :: (i < 8) -> i++;
        :: (i >= 8) -> i = 0;
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
    wallet[i].value = 10;
    wallet[i].locked = 0;
  :: else -> break;
  od;

  int j = 0;
  int k = 0;
  do
  :: (j < 5) ->
    transactions[j].curr = 0;
    transactions[j].total = 0;
    do
    :: (k < 8) -> transactions[j].locks[k] = 0;
    :: else -> break;
    od;
    transactions[j].assigned = 0; //? Don't want decider to start until creator makes trans
    transactions[j].completed = 1;
  :: else -> break;
  od;

  run Decider();
  run Creator();
}
