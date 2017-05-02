	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM no_starvation_transaction_complete */
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
		;
		;
		
	case 14: /* STATE 48 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 15: /* STATE 1 */
		;
		((P3 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: /* STATE 3 */
		;
		now.wallets[ Index(((P3 *)this)->i, 8) ].value = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 4 */
		;
		now.wallets[ Index(((P3 *)this)->i, 8) ].locked = trpt->bup.oval;
		;
		goto R999;

	case 19: /* STATE 5 */
		;
		((P3 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 13 */
		;
		((P3 *)this)->j = trpt->bup.ovals[2];
		((P3 *)this)->k = trpt->bup.ovals[1];
		((P3 *)this)->j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 22: /* STATE 15 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].curr = trpt->bup.oval;
		;
		goto R999;

	case 23: /* STATE 16 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].total = trpt->bup.oval;
		;
		goto R999;

	case 24: /* STATE 17 */
		;
		((P3 *)this)->k = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: /* STATE 19 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 27: /* STATE 20 */
		;
		((P3 *)this)->k = trpt->bup.oval;
		;
		goto R999;

	case 28: /* STATE 26 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].assigned = trpt->bup.oval;
		;
		goto R999;

	case 29: /* STATE 27 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].completed = trpt->bup.oval;
		;
		goto R999;

	case 30: /* STATE 28 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].dest = trpt->bup.oval;
		;
		goto R999;

	case 31: /* STATE 29 */
		;
		((P3 *)this)->j = trpt->bup.oval;
		;
		goto R999;

	case 32: /* STATE 35 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 33: /* STATE 36 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 34: /* STATE 37 */
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
		
	case 38: /* STATE 5 */
		;
		((P2 *)this)->new_value = trpt->bup.ovals[1];
		((P2 *)this)->new_value = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 39: /* STATE 7 */
		;
		((P2 *)this)->new_value = trpt->bup.oval;
		;
		goto R999;

	case 40: /* STATE 12 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].curr = trpt->bup.oval;
		;
		goto R999;

	case 41: /* STATE 13 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].total = trpt->bup.oval;
		;
		goto R999;

	case 42: /* STATE 14 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].assigned = trpt->bup.oval;
		;
		goto R999;

	case 43: /* STATE 15 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].completed = trpt->bup.oval;
		;
		goto R999;

	case 44: /* STATE 16 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].dest = trpt->bup.oval;
		;
		goto R999;

	case 45: /* STATE 24 */
		;
		((P2 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 46: /* STATE 26 */
		;
		((P2 *)this)->i = trpt->bup.ovals[1];
	/* 0 */	((P2 *)this)->i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

		 /* PROC Decider */
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
		
	case 52: /* STATE 6 */
		;
		((P1 *)this)->neededWallets = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 54: /* STATE 17 */
		;
		((P1 *)this)->w = trpt->bup.ovals[1];
		((P1 *)this)->neededWallets = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 55: /* STATE 17 */
		;
		((P1 *)this)->w = trpt->bup.oval;
		;
		goto R999;

	case 56: /* STATE 18 */
		;
	/* 0 */	((P1 *)this)->neededWallets = trpt->bup.oval;
		;
		;
		goto R999;

	case 57: /* STATE 20 */
		;
		now.transactions[ Index(((P1 *)this)->i, 5) ].assigned = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 59: /* STATE 22 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 61: /* STATE 26 */
		;
		now.wallets[ Index(((P1 *)this)->w, 8) ].locked = trpt->bup.oval;
		;
		goto R999;

	case 62: /* STATE 27 */
		;
		((P1 *)this)->neededWallets = trpt->bup.oval;
		;
		goto R999;

	case 63: /* STATE 28 */
		;
		now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 64: /* STATE 32 */
		;
		((P1 *)this)->w = trpt->bup.oval;
		;
		goto R999;

	case 65: /* STATE 34 */
		;
		((P1 *)this)->w = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->w = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 66: /* STATE 45 */
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 67: /* STATE 47 */
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 68: /* STATE 53 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Mix */
;
		;
		
	case 70: /* STATE 3 */
		;
		((P0 *)this)->w = trpt->bup.ovals[1];
		((P0 *)this)->w = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
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
		
	case 76: /* STATE 9 */
		;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = trpt->bup.oval;
		;
		goto R999;

	case 77: /* STATE 10 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest = trpt->bup.oval;
		;
		goto R999;

	case 78: /* STATE 11 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr = trpt->bup.oval;
		;
		goto R999;

	case 79: /* STATE 12 */
		;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = trpt->bup.oval;
		;
		goto R999;

	case 80: /* STATE 15 */
		;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = trpt->bup.oval;
		;
		goto R999;

	case 81: /* STATE 16 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].dest = trpt->bup.oval;
		;
		goto R999;

	case 82: /* STATE 17 */
		;
		now.wallets[ Index(((P0 *)this)->w, 8) ].value = trpt->bup.oval;
		;
		goto R999;

	case 83: /* STATE 18 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].curr = trpt->bup.oval;
		;
		goto R999;

	case 84: /* STATE 23 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 85: /* STATE 24 */
		;
		now.wallets[ Index(((P0 *)this)->w, 8) ].locked = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 88: /* STATE 33 */
		;
		((P0 *)this)->w = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 91: /* STATE 42 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed = trpt->bup.oval;
		;
		goto R999;

	case 92: /* STATE 43 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

