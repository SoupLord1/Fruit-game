// Script assets have changed for v2.3.0 see
///@Muhammed Enes Kaplan Tarafından Yapılmıştır, EnesKp3441#3573 Ücretsiz Kullanabilirsiniz.
///@Made by Muhammed Enes Kaplan,EnesKp3441 #3573. You can use  Free.
function wait_init(){
	global.ActObject = id;
	if(variable_instance_exists(id, "Action")){
	Action();
	}
}

function wait(second, action, loop){
	randomize();
	 static waitId = random(999999);
	 waitId ++;
	 
	 if(!variable_global_exists("waits")){
		 global.waitId = ds_list_create();
		 global.waitObject = ds_list_create();
		 global.waitTime = ds_list_create();
		 global.waits = ds_list_create();
		 global.Actions = ds_list_create();
		 global.Loops = ds_list_create();
		 global.Stopped = ds_list_create();
	 }
	 
	 
	 var varName = "wait_VARIABLE"+string(waitId);
	 var isAny = true;
	 
	 while(isAny){
		if(ds_list_find_index(global.waits,varName)){
			static waitId = random(999999);
			var varName = "wait_VARIABLE"+string(waitId);
		} else {
			isAny = false;
		}
		if(ds_list_find_index(global.waits, varName) == -1){
			ds_list_add(global.waits, varName);
			ds_list_add(global.waitTime,second*room_speed);
			ds_list_add(global.waitObject,id);
			ds_list_add(global.waitId,waitId);
			ds_list_add(global.Actions,action);
			ds_list_add(global.Loops,loop);
			ds_list_add(global.Stopped,false);
		}
	 }
	 
	 with(global.ActObject){
		Action = function(){
			var size = ds_list_size(global.waitId);
				
			for(var i=0; i < size; i++;) {
				var Ids_ = ds_list_find_value(global.waitId, i);
				var Times_ = ds_list_find_value(global.waitTime, i);
				var waits_ = ds_list_find_value(global.waits, i);
				var waitObject_ = ds_list_find_value(global.waitObject, i);
				var Actions_ = ds_list_find_value(global.Actions, i);
				var Loops_ = ds_list_find_value(global.Loops, i);
				var Stopped_ = ds_list_find_value(global.Stopped, i);
				if(Times_ > 0) {
					if(!Stopped_) {
						ds_list_set(global.waitTime, i, Times_-1);
					}
				} else {
					with(waitObject_){
						Actions_();
						if(!Loops_){
								ds_list_set(global.Actions, i, function(){}); 
								ds_list_set(global.waitObject, i, false); 
						}
					}
				}
			}
		}
	 }
	 return waitId;
}

function wait_get_remaining_time(wait_id){
	length		  = ds_list_size(global.waitId);
	var WaitIndex = ds_list_find_index(global.waitId, wait_id);
		
	if(WaitIndex != -1){
		var val = ds_list_find_value(global.waitTime, WaitIndex);
		return val/room_speed;
	}
	return -1;
}



function wait_set_time(wait_id, time){
	length = ds_list_size(global.waitId);
	var WaitIndex = ds_list_find_index(global.waitId, wait_id);
		
	if(WaitIndex != -1){
		ds_list_set(global.waitTime, WaitIndex, time*room_speed);
		return true;
	}
	return false;
}


function wait_stop(wait_id){
	length		  = ds_list_size(global.waitId);
	var WaitIndex = ds_list_find_index(global.waitId, wait_id);
	
	if(WaitIndex != -1){
		ds_list_set(global.Stopped, WaitIndex, true);
		return true;
	}
	return false;
}


function wait_play(wait_id){
	length		  = ds_list_size(global.waitId);
	var WaitIndex = ds_list_find_index(global.waitId, wait_id);
		
	if (WaitIndex != -1){
		ds_list_set(global.Stopped, WaitIndex, false);
		return true;
	}
	return false;
}


function wait_exist(wait_id){
	length        = ds_list_size(global.waitId);	
	var WaitIndex = ds_list_find_index(global.waitId, wait_id);	

	if(WaitIndex != -1){
		return WaitIndex+1;
	}
	return false;
}


function wait_delete(wait_id) {
	var waitId = wait_exist(wait_id)-1;
	if(waitId != -1){
		ds_list_delete(global.waits, waitId);
		ds_list_delete(global.waitTime,waitId);
		ds_list_delete(global.waitObject,waitId);
		ds_list_delete(global.waitId,waitId);
		ds_list_delete(global.Actions,waitId);
		ds_list_delete(global.Loops,waitId);
		ds_list_delete(global.Stopped,waitId);
	}
}
