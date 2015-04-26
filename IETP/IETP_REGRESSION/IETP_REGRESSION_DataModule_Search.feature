Feature: Data module Search in IETP
   I want to search for data modules
   So that I can access information about data modules
   
   Background:
	Given that launching IETP Homepage with IE browser. 	
	
		
   Scenario Outline: Search by text
   	When user login with "<user>" "<password>" "<project>".
   	When I go to Manuals tab.
   	Then select no product applicability.
	When I search data module by text "<keyword>". 
	Then I can see "<results1>" items.
	When I search data module by chapter "<chapter>".
	Then I can see "<results2>" items.
	And close browser.
       
	Examples:
	| user 			| password 		| project 			|keyword		|chapter	|results1	|results2	|
	| Administrator	| secret		| Issue-4.0-test1	|bike			|D00		|8			|6			|
	