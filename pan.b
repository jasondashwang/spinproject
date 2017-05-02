	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM no_starvation */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 8: /* STATE 27 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 9: /* STATE 1 */
		;
		now.wallet[0] = trpt->bup.oval;
		;
		goto R999;

	case 10: /* STATE 2 */
		;
		now.wallet[1] = trpt->bup.oval;
		;
		goto R999;

	case 11: /* STATE 3 */
		;
		now.wallet[2] = trpt->bup.oval;
		;
		goto R999;

	case 12: /* STATE 4 */
		;
		now.wallet[3] = trpt->bup.oval;
		;
		goto R999;

	case 13: /* STATE 5 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: /* STATE 6 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 15: /* STATE 7 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Creator */
;
		;
		;
		;
		;
		;
		
	case 19: /* STATE 4 */
		;
		now.dest_transaction = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 5 */
		;
		now.curr_transaction = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: /* STATE 7 */
		;
		now.curr_transaction = trpt->bup.oval;
		;
		goto R999;

	case 23: /* STATE 12 */
		;
		now.expected_transaction = trpt->bup.oval;
		;
		goto R999;

	case 24: /* STATE 13 */
		;
		now.in_create = trpt->bup.oval;
		;
		goto R999;

	case 25: /* STATE 14 */
		;
		now.in_mix = trpt->bup.oval;
		;
		goto R999;

		 /* PROC Decider */
;
		;
		;
		;
		;
		;
		
	case 29: /* STATE 4 */
		;
		((P0 *)this)->target_wallet = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		
	case 34: /* STATE 9 */
		;
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 35: /* STATE 10 */
		;
		now.dest_transaction = trpt->bup.oval;
		;
		goto R999;

	case 36: /* STATE 11 */
		;
		now.curr_transaction = trpt->bup.oval;
		;
		goto R999;

	case 37: /* STATE 12 */
		;
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 38: /* STATE 13 */
		;
		((P0 *)this)->target_wallet = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 41: /* STATE 16 */
		;
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 42: /* STATE 17 */
		;
		now.dest_transaction = trpt->bup.oval;
		;
		goto R999;

	case 43: /* STATE 18 */
		;
		now.wallet[ Index(((P0 *)this)->target_wallet, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 44: /* STATE 19 */
		;
		now.curr_transaction = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 48: /* STATE 30 */
		;
		now.in_mix = trpt->bup.oval;
		;
		goto R999;

	case 49: /* STATE 31 */
		;
		now.in_create = trpt->bup.oval;
		;
		goto R999;
	}

