/// @desc Set-Ups
wait_init();				  // THIS MUST ALWAYS BE AT THE TOP


var Action = function(){
	show_message("Hello!")
}

MyWait = wait(5, Action, false);
