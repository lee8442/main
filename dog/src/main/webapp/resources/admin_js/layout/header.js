$(document).ready(function() {
	now_time()
});

function now_time() {
	var time_t = new Date();
	var s = set_standard(time_t.getFullYear(), 4) + '년 '
			+ set_standard(time_t.getMonth() + 1, 2) + '월 '
			+ set_standard(time_t.getDate(), 2) + '일 '
			+ set_standard(time_t.getHours(), 2) + '시'
			+ set_standard(time_t.getMinutes(), 2) + '분'
			//+ set_standard(time_t.getSeconds(), 2);
	$("#time").text(s);
	setTimeout("now_time();", 1000);
}

function set_standard(time, digits) {
	var zero = '';
	time = time.toString();
	if (time.length < digits) {
		for (i = 0; i < digits - time.length; i++) {
			zero += '0';
		}
	}
	return zero + time;
}