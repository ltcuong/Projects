$.fn.digits = function(){ 
    return this.each(function(){ 
        $(this).text( $(this).text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") ); 
        $(this).text( $(this).text().replace(/\,/g, ".") ); 
    });
};

//Get select xa by huyen
function getXaByHuyenMemberShip() {
	var huyenID = $("#HuyenID").val();
	$.ajax({
		type : "POST",
		url : "../ajax/GetXaByHuyenMemberShip",
		async : false,
		data : ({
			huyenID : huyenID
		}),
		success : function(data) {
			$("#XaID").html(data);
		}
	});
}


function getSelectNhomTaiKhoan() {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetSelectNhomTaiKhoan",
		async : false,
		data : ({
		}),
		success : function(data) {
			$("#NhomTaiKhoanID").html(data);
		}
	});
	return result;
}


function isEmailAddress(str) {
   var pattern =/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
   if(!pattern.test(str)) {
    return false;
   }
   return true;
}

function isMatchingAsciOrNumber(str){
    var myRegExp = /^[0-9a-zA-Z]+$/ ;
    if(!myRegExp.test(str)) {
        return false;
    }return true;
           
}

function hiddenAndOpenMenu() {
	if ($("#MenuNhomID").hasClass("Hidden")) {
		$("#MenuNhomID").removeClass("Hidden");
	} else {
		$("#MenuNhomID").addClass("Hidden");
	}
}

function logoutButton() {
	window.location.href= "../Logout";
}

function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    } else {
        return true;
    }
}

function showMessageError(mesg_error) {
	$("#BoxError").removeClass("DisplayNone");
	$("#IDErrorForm").html(mesg_error);
	$("#BoxSucess").addClass("DisplayNone");
}
function hideMessage(){
	$("#BoxSucess").addClass("DisplayNone");
	$("#BoxError").addClass("DisplayNone");
}

function showMessageInfo(mesg_error) {
	$("#BoxError").addClass("DisplayNone");
	$("#IDInfoForm").html(mesg_error);
	$("#BoxSucess").removeClass("DisplayNone");
}

function showWaitingProgress() {
	//if (event != null) {
	//	event.preventDefault(); //to stop the default loading	
	//}	 
     $("#overlay").css('display','block'); // displaying the overlay
     $("#popup").css('display','block'); // displaying the popup
     $("#popup").fadeIn(500); // Displaying popup with fade in animation
     /*setTimeout(function() {
         $("#popup").fadeIn(4000); //function to redirect the page after few seconds            
      }, 3000);*/
}
function closeWaitingProgress() {
    $("#overlay").css('display','none'); // displaying the overlay
    $("#popup").css('display','none'); // displaying the popup
    /*setTimeout(function() {
        $("#popup").fadeIn(4000); //function to redirect the page after few seconds            
     }, 3000);*/
}

function showPopUpDiv(id) {
	var divId = "#" + id;
	$.colorbox({
		inline : true,
		href : divId,
		width : 900,
		onClosed : function() {
		}
	});
}
function showPopUpDivWithSize(id, width, height) {
	var divId = "#" + id;
	$.colorbox({
		inline : true,
		href : divId,
		width : width,
		height : height,
		onClosed : function() {
		}
	});
}

function showPopUpDivWithSize(id, height) {
	var divId = "#" + id;
	$.colorbox({
		inline : true,
		href : divId,
		width : 900,
		height : height,
		onClosed : function() {
		}
	});
}


function closePopup() {
	$(window).colorbox.close();
}

function reloadForm() {
	location.reload();
}

function isDate(txtDate) {
    var currVal = txtDate;
    if(currVal == '')
        return false;

    var rxDatePattern = /^(\d{1,2})(\/|-)(\d{1,2})(\/|-)(\d{4})$/; //Declare Regex
    var dtArray = currVal.match(rxDatePattern); // is format OK?

    if (dtArray == null) 
        return false;

    //Checks for dd/mm/yyyy format.
    dtMonth = dtArray[3];
    dtYear= dtArray[5];
    dtDay = dtArray[1];        
    if (dtMonth < 1 || dtMonth > 12) 
        return false;
    else if (dtDay < 1 || dtDay> 31) 
        return false;
    else if ((dtMonth==4 || dtMonth==6 || dtMonth==9 || dtMonth==11) && dtDay ==31) 
        return false;
    else if (dtMonth == 2) 
    {
        var isleap = (dtYear % 4 == 0 && (dtYear % 100 != 0 || dtYear % 400 == 0));
        if (dtDay> 29 || (dtDay ==29 && !isleap)) 
                return false;
    }
    return true;
}

function calculateAge(birthday) {
    var now = new Date();
    var arryBirth = birthday.split("/");
    var strBirth = arryBirth[1] + "/" + arryBirth[0] + "/" + arryBirth[2];
    var past = new Date(strBirth);   
    var age = Math.ceil((now - past) / (1000 * 60 * 60 * 24 * 365));
    return age;
}

function calculatByOnlyYear(birthday) {
    var now = new Date();
    var year = now.getFullYear();
    var age = year - birthday;
    return age;
}

function compare2Date(date1 , date2) {
	  var arryDate1 = date1.split("/");
	  var strDate1 = arryDate1[1] + "/" + arryDate1[0] + "/" + arryDate1[2];
	  
	  var arryDate2 = date2.split("/");
	  var strDate2 = arryDate2[1] + "/" + arryDate2[0] + "/" + arryDate2[2];
	  
	  var d1 = new Date(strDate1);   
	  var d2 = new Date(strDate2);   
	  if (d2 >= d1) {
		  return 1;
	  } else {
		  return 0;
	  }
}

function checkIsNumber(num) {    
    var regex=/^[0-9]+$/;
    return regex.test(num);    
}

function getExtendFile(filename) {
	return /[^.]+$/.exec(filename);
}

function dateFormat(input){
	var v = input.value;
    if (v.match(/^\d{2}$/) !== null) {
        input.value = v + '/';
    } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
        input.value = v + '/';
    }      
}

function getFileName(fullPath) {
	return fullPath.replace(/^.*\\/, "");;
}

function checkFileSize(inputFile) {
    var max = 5 * 1024 * 1024; // 10MB
    if (inputFile.files && inputFile.files[0].size > max) {
        alert($("#MsgKichThuocLonID").val()); // Do your thing to handle the error.
        inputFile.value = null; // Clear the field.
    }
}

function insertAtCaret(areaId,text) {
    var noiDungEditor = FCKeditorAPI.GetInstance(areaId);
    noiDungEditor.InsertHtml(text);
}

String.prototype.format = function() {
    var formatted = this;
    for (var i = 0; i < arguments.length; i++) {
        var regexp = new RegExp('\\{'+i+'\\}', 'gi');
        formatted = formatted.replace(regexp, arguments[i]);
    }
    return formatted;
};
