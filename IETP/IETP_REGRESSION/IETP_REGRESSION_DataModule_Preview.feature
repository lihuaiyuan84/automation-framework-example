Feature: Browse the Repository and Preview data module
   I want to view data modules 
   So that I can access information about data modules and see graphic as well.
   
   Background:
   Given that launching IETP Homepage with IE browser. 	
		
 Scenario Outline: Browser and Preview data module
 	When user login with "<user>" "<password>" "<project>".
 	Then toggle model as primary product attribute.
	When I go to Manuals tab.
	Then select "<model1>" in product attribute table.
 	When I nav to repository.
 	Then I can see data module "<dmc>" in the list.
	When I choose data module "<dmc>" for HTML view.
	Then navigate to Manual->History.
	Then I can see data module "<dmc>" in the list.
	When reset the applic condition.
	Then select "<model2>" in product attribute table.
 	When I nav to repository.
 	Then I can not see data module "<dmc>" in the list.
	And close browser.
       
	Examples:
	| user 			| password 		| project 			|model1			|model2				|dmc									|
	| Administrator	| secret		| Issue-4.0-test1	|Mountain storm	|Brook trekker		|S1000DBIKE-AAA-DA0-10-20-00AA-921A-A	|
	



	
