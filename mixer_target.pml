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
    :: (transactions[t_num].locks[i] == true) ->
      wallet[i].locked = false;
      transactions[t_num].locks[i] = false;
    :: else -> break;
    od;
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
      :: (transactions[i].completed == true) ->
        select(transactions[i].curr: 10..30);
        transactions[i].total = transactions[i].curr;
        transaction[i].assigned = false;
        transaction[i].completed = false;
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
    wallet[i].locked = false;
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
    transactions[j].assigned = false; //? Don't want decider to start until creator makes trans
    transactions[j].completed = true;
  :: else -> break;
  od;

  run Decider();
  run Creator();
}
