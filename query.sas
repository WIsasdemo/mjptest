/*Setup environment*/
cas MYSESSION;
caslib _all_ assign;

/*Query in-memory table*/
/*New comment*/
proc fedsql SESSREF=MYSESSION;
	create table public.query_results {options replace=true} as 
	select * 
	from public.wi_pharmacy_scenario1;
quit;