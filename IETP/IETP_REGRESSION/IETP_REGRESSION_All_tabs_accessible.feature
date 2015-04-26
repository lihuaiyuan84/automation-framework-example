Feature: All Tabs is accessible
   I want to do regression testing
   So that I access all tabs to test available
   
   Background:
   Given that launching IETP Homepage with IE browser. 
	
		
   Scenario Outline: Access all tabs
	When user login with "<user>" "<password>" "<project>".
	Then main page shows.
	When I go to Visit tab. 
	Then visit page appears.
	When I go to Workcard tab.
	Then workcard page appears.
	When I go to Manuals tab.
	Then Manuals page appears.
	When I go to Publications tab.
	Then Publications page appears.
	When I go to System tab.
	Then System page appears.
	When I go to Admin tab.
	Then Admin appears.
	When I go to Preferences tab.
	Then Preferences appears.
	And close browser.
       
	Examples:
		| user 		| password 	| project 		| 
		| Administrator	| secret		| Issue-4.0-test1	| 

	
	
