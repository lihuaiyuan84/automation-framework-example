Feature: Browse the Repository
   I want to find data modules 
   So that I can access information about data modules
   
   Background:
	Given that launching IETP Homepage with IE browser. 
	
		
   Scenario Outline: Browse data module
   	When user login with "<user>" "<password>" "<project>".
   	When I go to Manuals tab.
   	Then select no product applicability.
   	When I nav to repository.
	When I Browse modules tree "<level1>","<level2>","<level3>","<level4>","<level5>". 
	Then I can find 12 data modules in list.
	And close browser.
       
	Examples:
	| user 			| password 		| project 			| level1		|level2	|level3		|level4 	|level5	|
	| Administrator	| secret		| Issue-4.0-test1	| S1000DBIKE	|AAA	|D00	 	|00	      	|00		|


	
	
