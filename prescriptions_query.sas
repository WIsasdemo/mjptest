/*Setup environment*/
cas MYSESSION;
caslib _all_ assign;

/*Query in-memory table*/
/*New comment*/
proc fedsql SESSREF=MYSESSION;
	select t1.county,
	count(*) as prescriptions
	from public.wi_pharmacy_scenario1 as t1
	where t1.county is not missing
	group by t1.county
	order by prescriptions desc;
quit;