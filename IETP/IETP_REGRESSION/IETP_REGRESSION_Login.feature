Feature: IETP Login test
   In order to do regression test on IETP
   I need to test login test case with different accounts.
   
   Background:
	Given that launching IETP Homepage with IE browser. 
	
   Scenario Outline: IETP Login Test Case with <user> #{password} #{project}
	When user login with "<user>" "<password>" "<project>".
	Then I hope login "<expection>".
	Then close browser.
	

	Examples:
		| user 		| password 	| project 		| expection	|
		| Administrator	| secret		| Issue-4.0-test1	| succeed	|
		| Administrator	|     			| Issue-4.0-test1	| fail		|
		| 			| secret		| Issue-4.0-test1	| fail		|