// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function check()
{
    alert('Hello,its working!');
}

$(document).ready(function(){
 $("button").click(function(){
    $("p").show();
    $("p#first").css("background-color","yellow");
 });
 $("p").click(function(){
     $(this).hide();
 });
 $("p").mouseover(function(){
    $(this).css("color","green");
 });
 $("p").mouseout(function(){
     $(this).css("color","black");
 });
});