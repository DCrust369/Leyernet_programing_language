package main

import "core::fmt"

main::proc () {
	("*") := pointer
	("+") := plus
	("=") := igual
	("/") := split
	("^") := plus_pointer
	("°") := less_pointer
	("-") := less
	("&") := other_print
	("%") := percent
	asm {
		"__*__ dq 100";
		"__+__ dq 80";
		"__=__ dq 30";
		"__/__ dq 15";
		"__^__ dq 110";
		"__°__ dq 95";
		"__-__ dq 10";
		"__&__ dq 101"
		"__%__ dq 50";
		"mov rax, 0";
		"mov rax, 10"
		"mov rax, 200"
	    "__200__ dq 200";
		"admin_key dq 200";
	}
}
