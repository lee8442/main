var myIndex = 0;
carousel();

function carousel() {
	var i;
	var x = document.getElementsByClassName("mySlides");
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}
	myIndex++;
	if (myIndex > x.length) {
		myIndex = 1
	}
	x[myIndex - 1].style.display = "block";
	setTimeout(carousel, 3000); // Change image every 2 seconds
}

$(".cf li").hover(function() {
 	  $(this).find("#smallre").html("");
 	  
 	  var length = 0;
	
	//$(this).children("div").children("div").css("height", height);
	
	
/*	$("#smallre").append('<li>adffdfda</li>');*/
	
/*	$("#mainMenu_back ul li").last().html('<li> Menu 5 </li>');*/
	
	
		
	
	var bigName = new String("bigName="+$(this).children("#bigcode").text());
	
	
	 fetch("headersmall.do?"+bigName, {
	       method : "POST",
	    }).then(function(response) {
	       if(!response.ok){
	          alert("에러가 발생했습니다.");
	          threwError(response.statusText);
	       }
	       return response.json();
	    }).then((data) => {
	       if(typeof data != "undefined" && data != null && data != ""){
	    	   	var inHtml = "";
	          $.each(data, function(index, value){
	        	  length += 1;
	        	   inHtml += "<li><a href= productListSmallCode.do?smallcode=" + value.code + ">" + value.name + "</a></li>"
	        	
	        	/*  
	             inHtml += "<option value=" + value.code + ">" + value.name + "</option>"
	        	  alert("성공");*/
	        	/*li.appendChild(document.createTextNode("Element 4"));*/
	          });
	          
	          $(this).find("#smallre").append(inHtml);
	          
	  		var height = 38* length +"px";
			$(this).find("div").css("height", height);	
			
	       } else {
	          /*alert("소분류가 없습니다.");*/
	       }
	    });
	 

		/*var length = $(this).find("li").length;*/

		
});



	  










