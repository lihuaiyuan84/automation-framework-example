Feature: Applicability prompt
   I want to navigate manuals 
   So that I need to set applicability first.
   
Background:
   Given that launching IETP Homepage with IE browser. 
	
Scenario Outline: Primary Product identifiers defined 
	When user login with "<user>" "<password>" "<project>".
	Then toggle model as primary product attribute.
	When I go to Manuals tab.
	Then select "<model>" in product attribute table.
	And close browser.
     
Examples:
	| user 			| password 		| project 			| model	    	|
	| Administrator	| secret		| Issue-4.0-test1	| Brook trekker	|
	
	
	
