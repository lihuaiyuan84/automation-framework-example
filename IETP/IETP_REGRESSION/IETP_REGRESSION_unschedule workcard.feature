Feature: Unschedule workcard 
   I want to add additional workcards, that aren't attached to a visit. 
   So that I find and attach unscheduled workcards. After attaching, I can assign WCJO numbers to workcards.
   
   Background:
	Given that launching IETP Homepage with IE browser. 	
		
   Scenario Outline: Preview job
   	When user login with "<user>" "<password>" "<project>".
   	When I go to Visit tab.
   	Then I create a visit.
   	When I open the visit "<visit>".
   	Then I add unscheduled workcards "<workcard>".
   	When I open the visit "<visit>".
   	Then I can see the workcard "<workcard>" in the visit.
   	When I search visit by station "<station>".
   	Then I can see the visit "<visit>".
   	When I search visit by type "<type>".
   	Then I can see the visit "<visit>".
   	When I search visit by date.
   	Then I can see the visit "<visit>".
   	When I open the visit "<visit>".
   	Then I can preview it in HTML format.
   	And I can preview it in PDF format.
   	Then I close the visit "<visit>".
   	Then I delete the visit "<visit>".
   	And close browser.

	Examples:
	| user 			| password 		| project 			| 	visit   	| workcard 		|	station	|	type	|
	| Administrator	| secret		| Issue-4.0-test1	| 	test4visit 	| 0500-9002-01	|	AMA		|	RON		|


	
	
	
	
  
