// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/**	Write custom prompt with obj_dialog
*	@param prompt the custom message to write
*/
function scr_customPrompt(prompt){
	obj_dialog.custom = true
	obj_dialog.customPrompt = prompt
}