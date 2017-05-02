// Wallet amounts
int wallet[4];

// If the decider is in the process of mixing then in_mix = 1
bool in_mix = 0;

// If the creator is in the process of generating a new transaction then in_create = 1
bool in_create = 1;

// Current unmixed transaction amount in starting wallet
int curr_transaction = 0;
// How much money is expected to reach the destination
int expected_transaction = 0;

// Destination Wallet (gets reset to 0 beginning of each decider loop)
int dest_transaction = 0;

// Decides which wallets are used for mixing based on the transactions
proctype Decider(){
  int target_wallet = 0;

  loop:
    in_create == 0; // Previous transaction has already been created

    printf("Hello there 2\n");
    assert(curr_transaction != 0); // There is a new non-zero transaction amount needed to be mixed

    target_wallet = 0; // Start at the first wallet of each new transaction
    printf("Current Transaction, %d \n", curr_transaction);

    do
    ::(curr_transaction > 0) ->
      if
      ::(curr_transaction > 10) ->
        printf("Inside do larger than 10 loop: %d \n", curr_transaction);
        wallet[target_wallet] = 0; // Emptying entire wallet for partial transaction
        dest_transaction = dest_transaction + 10;
        curr_transaction = curr_transaction - 10;
        wallet[target_wallet] = 10; // Wallet funds are always replenished

        target_wallet = target_wallet + 1; // Increment index

      ::(curr_transaction <= 10) ->
        printf("Inside do smaller than 10 loop: %d \n", curr_transaction);
        wallet[target_wallet] = wallet[target_wallet] - curr_transaction;
        dest_transaction = dest_transaction + curr_transaction;
        wallet[target_wallet] = wallet[target_wallet] + curr_transaction;
        curr_transaction = 0;

        assert(wallet[target_wallet] == 10); // Wallet funds are always replenished immediately
      fi;
    :: else -> break;
    od;

    printf("Done with mixing! %d \n", curr_transaction);

    assert(dest_transaction == expected_transaction); // Shows that all the money reached its destination
    in_mix = 0; // Lower decider flag
    in_create = 1; // Raise creator flag



  goto loop;

}

// Creates new transactions
proctype Creator(){
    loop:
      in_mix == 0; // Checking if the decider is not mixing so we can create a new transaction

      printf("Hello there 1 %d \n", curr_transaction);
      assert(curr_transaction == 0); // The previous transaction has been completely mixed before starting new one
      dest_transaction = 0; // Reset destination wallet


      select(curr_transaction: 10..30);
      expected_transaction = curr_transaction;

      in_create = 0; // Lower creator flag
      in_mix = 1; // Now mixing

    goto loop;

}

init {
  wallet[0] = 10;
  wallet[1] = 10;
  wallet[2] = 10;
  wallet[3] = 10;


  run Decider();
  run Creator();

}


ltl no_starvation{
  always (eventually in_mix) && (eventually !in_create);
}
