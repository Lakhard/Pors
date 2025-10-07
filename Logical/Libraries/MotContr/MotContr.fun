
{REDUND_ERROR} FUNCTION_BLOCK FB_Integrator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_INPUT
		dt : REAL;
	END_VAR
	VAR
		prev_value : REAL;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_Regulator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e_in : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_OUTPUT
		u_out : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR
		k_p : {REDUND_UNREPLICABLE} REAL;
		k_i : {REDUND_UNREPLICABLE} REAL;
		integrator : {REDUND_UNREPLICABLE} FB_Integrator;
		iyOld : {REDUND_UNREPLICABLE} REAL;
		max_abs_value : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_INPUT
		dt : REAL;
	END_VAR
	VAR
		last_sum : {REDUND_UNREPLICABLE} REAL;
		sum : {REDUND_UNREPLICABLE} REAL;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_Motor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL;
	END_VAR
	VAR_OUTPUT
		w : REAL;
		phi : REAL;
	END_VAR
	VAR
		Tm : REAL;
		integrator : FB_Integrator;
		ke : REAL;
	END_VAR
	VAR_INPUT
		dt : REAL;
	END_VAR
END_FUNCTION_BLOCK
