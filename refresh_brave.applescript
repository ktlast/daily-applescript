tell application "Brave Browser" to activate
delay 0.5

set full_repeat to 100
set full_repeat_delay to 30


to openUrl(input_url)
	set refresh_repeat to 3
	set after_new_tab_delay to (random number from 0.4 to 0.8)
	set after_refresh_delay to (random number from 0.4 to 0.6)
	set after_type_url_delay to (random number from 0.5 to 1)
	set after_request_delay to (random number from 15 to 30)
	set after_close_tab_delay to (random number from 10 to 30)
	
	tell application "System Events" to tell process "Brave Browser"
		keystroke "t" using command down
		delay after_new_tab_delay
		repeat refresh_repeat times
			keystroke "r" using command down
			delay after_refresh_delay
		end repeat
		keystroke "l" using command down
		keystroke input_url
		delay after_type_url_delay
		key code 36
		delay after_request_delay
		keystroke "w" using command down
		delay after_close_tab_delay
	end tell
end openUrl


repeat full_repeat times
	openUrl("github.com")
	openUrl("google.com")
	delay full_repeat_delay
	
end repeat


