// Wallet amounts
int wallet[4];
wallet[0] = 10;
wallet[1] = 10;
wallet[2] = 10;
wallet[3] = 10;

// If the decider is in the process of mixing then in_mix = 1
bool in_mix = 0;

// If the creator is in the process of generating a new transaction then in_create = 1
bool in_create = 0;

// Current unmixed transaction amount in starting wallet
int curr_transaction = 0;
// How much money is expected to reach the destination
int expected_transaction = 0;

// Destination Wallet (gets reset to 0 beginning of each decider loop)
int dest_transaction = 0;

// Decides which wallets are used for mixing based on the transactions
active proctype Decider(){
  int target_wallet = 0;

  loop:
    in_create == 0; // Previous transaction has already been created
    assert(curr_transaction != 0); // There is a new non-zero transaction amount needed to be mixed
    in_mix = 1; // Raise decider flag
    target_wallet = 0; // Start at the first wallet of each new transaction

    do:
    :: (curr_transaction > 0) ->
      if:
      ::(curr_transaction > 10) ->
        wallet[target_wallet] = 0; // Emptying entire wallet for partial transaction
        dest_transaction = dest_transaction + 10;
        curr_transaction = curr_transaction - 10;
        wallet[target_wallet] = 10; // Wallet funds are always replenished

        target_wallet = target_wallet + 1; // Increment index

      ::(curr_transaction <= 10) ->
        wallet[target_wallet] = wallet[target_wallet] - curr_transaction;
        dest_transaction = dest_transaction + curr_transaction;
        wallet[target_wallet] = wallet[target_wallet] + curr_transaction;
        curr_transaction = 0;

        assert(wallet[target_wallet] == 10); // Wallet funds are always replenished immediately
      fi;
    :: (curr_transaction == 0) -> break;
    od;


    assert(dest_transaction == expected_transaction); // Shows that all the money reached its destination
    in_mix = 0; // Lower decider flag



  goto loop;

}

// Creates new transactions
active proctype Creator(){
    loop:
      in_mix == 0; // Checking if the decider is not mixing so we can create a new transaction
      assert(curr_transaction == 0); // The previous transaction has been completely mixed before starting new one
      in_create = 1; // Raise creator flag

      select(curr_transaction: 1..30);
      expected_transaction = curr_transaction;

      in_create = 0; // Lower creator flag

    goto loop;

}
