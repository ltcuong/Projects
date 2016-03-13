$(document).ready(function() {
	setToBlack();
	
});


function cront()
{    
    $.ajax({
        type:"GET",
        url:"../ajax/Cront",
        data:({}),
        success:function(data) {        	
    		if($.trim(data) != "") {
    			if($.trim(data) == "anotherlog") {    				
    				window.location = "../LoginAdmin?type=anotherdevice";
    			} else if ($.trim(data) == "nottoken") {
    				window.location = "../LoginAdmin?type=nottoken";
    			} else {
    				window.location = "../LoginAdmin?type=timeout";
    			}
    		}
        }
    });
}


function setToBlack ( )
{
	cront();
    var t=setTimeout(setToBlack,6000);  
}