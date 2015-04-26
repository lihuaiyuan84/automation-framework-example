Feature: Applicability prompt
   I want to navigate manuals 
   So that I need to set applicability first.
   
Background:
   Given that launching IETP Homepage with IE browser. 
   
Scenario Outline: Primary Product identifiers isn't defined
   	When user login with "<user>" "<password>" "<project>".
	Then toggle none primary product attribute.
	When I go to Manuals tab.
	Then I go to check applicability.
	When Set Applicability Dialog pop up.
	Then there should be nothing in product attribute table.
	And close browser.
      
	Examples:
	| user 		| password 	| project 		| 
	| Administrator	| secret		| Issue-4.0-test1	| 
	