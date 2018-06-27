$('.starRev span').click(function(){
	console.log('star click');
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});
$('#selectStar1').click(function(){
	$('#selectStar').val('1');
});

$('#selectStar2').click(function(){
	$('#selectStar').val('2');
});

$('#selectStar3').click(function(){
	$('#selectStar').val('3');
});

$('#selectStar4').click(function(){
	$('#selectStar').val('4');
});

$('#selectStar5').click(function(){
	$('#selectStar').val('5');
});
$(document).on('ready', function(){
    $('.kv-ltr-theme-svg-star').rating({
        hoverOnClear: false,
        theme: 'krajee-svg'
    });
});

	
