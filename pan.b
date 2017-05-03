	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: /* STATE 1 */
		;
		((P3 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 5: /* STATE 3 */
		;
		now.wallets[ Index(((P3 *)this)->i, 8) ].value = trpt->bup.oval;
		;
		goto R999;

	case 6: /* STATE 4 */
		;
		now.wallets[ Index(((P3 *)this)->i, 8) ].locked = trpt->bup.oval;
		;
		goto R999;

	case 7: /* STATE 5 */
		;
		((P3 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 8: /* STATE 13 */
		;
		((P3 *)this)->j = trpt->bup.ovals[2];
		((P3 *)this)->k = trpt->bup.ovals[1];
		((P3 *)this)->j = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 10: /* STATE 15 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].curr = trpt->bup.oval;
		;
		goto R999;

	case 11: /* STATE 16 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].total = trpt->bup.oval;
		;
		goto R999;

	case 12: /* STATE 17 */
		;
		((P3 *)this)->k = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: /* STATE 19 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].locks[ Index(((P3 *)this)->k, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 15: /* STATE 20 */
		;
		((P3 *)this)->k = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 26 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].assigned = trpt->bup.oval;
		;
		goto R999;

	case 17: /* STATE 27 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].completed = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 28 */
		;
		now.transactions[ Index(((P3 *)this)->j, 5) ].dest = trpt->bup.oval;
		;
		goto R999;

	case 19: /* STATE 29 */
		;
		((P3 *)this)->j = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 35 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: /* STATE 36 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: /* STATE 37 */
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
		;
		;
		;
		;
		
	case 28: /* STATE 13 */
		;
		((P2 *)this)->new_value = trpt->bup.ovals[1];
		((P2 *)this)->new_value = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 29: /* STATE 15 */
		;
		((P2 *)this)->new_value = trpt->bup.oval;
		;
		goto R999;

	case 30: /* STATE 20 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].curr = trpt->bup.oval;
		;
		goto R999;

	case 31: /* STATE 21 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].total = trpt->bup.oval;
		;
		goto R999;

	case 32: /* STATE 22 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].completed = trpt->bup.oval;
		;
		goto R999;

	case 33: /* STATE 23 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].dest = trpt->bup.oval;
		;
		goto R999;

	case 34: /* STATE 24 */
		;
		now.transactions[ Index(((P2 *)this)->i, 5) ].assigned = trpt->bup.oval;
		;
		goto R999;

	case 35: /* STATE 25 */
		;
		now.created = trpt->bup.oval;
		;
		goto R999;

	case 36: /* STATE 26 */
		;
		now.completed_transaction = trpt->bup.oval;
		;
		goto R999;

	case 37: /* STATE 27 */
		;
		now.new_transaction = trpt->bup.oval;
		;
		goto R999;

	case 38: /* STATE 35 */
		;
		((P2 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 39: /* STATE 37 */
		;
		((P2 *)this)->i = trpt->bup.ovals[1];
	/* 0 */	((P2 *)this)->i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 41: /* STATE 42 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Decider */
;
		;
		
	case 43: /* STATE 2 */
		;
		now.new_transaction = trpt->bup.oval;
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
		
	case 48: /* STATE 7 */
		;
		((P1 *)this)->neededWallets = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 50: /* STATE 18 */
		;
		((P1 *)this)->w = trpt->bup.ovals[1];
		((P1 *)this)->neededWallets = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 51: /* STATE 18 */
		;
		((P1 *)this)->w = trpt->bup.oval;
		;
		goto R999;

	case 52: /* STATE 19 */
		;
	/* 0 */	((P1 *)this)->neededWallets = trpt->bup.oval;
		;
		;
		goto R999;

	case 53: /* STATE 21 */
		;
		now.transactions[ Index(((P1 *)this)->i, 5) ].assigned = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 55: /* STATE 23 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 56: /* STATE 24 */
		;
		now.decided = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 58: /* STATE 28 */
		;
		now.wallets[ Index(((P1 *)this)->w, 8) ].locked = trpt->bup.oval;
		;
		goto R999;

	case 59: /* STATE 29 */
		;
		((P1 *)this)->neededWallets = trpt->bup.oval;
		;
		goto R999;

	case 60: /* STATE 30 */
		;
		now.transactions[ Index(((P1 *)this)->i, 5) ].locks[ Index(((P1 *)this)->w, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 61: /* STATE 34 */
		;
		((P1 *)this)->w = trpt->bup.oval;
		;
		goto R999;

	case 62: /* STATE 36 */
		;
		((P1 *)this)->w = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->w = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 64: /* STATE 54 */
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 65: /* STATE 56 */
		;
		((P1 *)this)->i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 68: /* STATE 64 */
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
;
		;
		
	case 85: /* STATE 24 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].locks[ Index(((P0 *)this)->w, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 86: /* STATE 25 */
		;
		now.wallets[ Index(((P0 *)this)->w, 8) ].locked = trpt->bup.oval;
		;
		goto R999;

	case 87: /* STATE 32 */
		;
		((P0 *)this)->w = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 90: /* STATE 41 */
		;
		now.transactions[ Index(((P0 *)this)->t_num, 5) ].completed = trpt->bup.oval;
		;
		goto R999;

	case 91: /* STATE 42 */
		;
		now.completed_transaction = trpt->bup.oval;
		;
		goto R999;

	case 92: /* STATE 43 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

