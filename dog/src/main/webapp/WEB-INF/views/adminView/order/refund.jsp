<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>환불처리</h3><hr/><br/>
	<form>
		<table>
			<tr>
				<td>고객명</td><td><!-- 고객정보 불러오는 el태그 작성 --></td>
				<td>ID</td><td><!-- 고객ID정보 불러오는 el태그 작성 --></td>
			</tr>
			<tr>
				<td>은행명</td>
				<td>
				<select>
					<option value="0">하나은행</option>
					<option value="1">농협</option>
					<option value="2">신한</option>
				</select></td>
			</tr>
			<tr>
				<td>계좌번호</td>
				<td><input type="text" placeholder="계좌번호를 입력해주세요"></td>
			</tr>
			<tr>
				<td>예금주</td>
				<td><input type="text" placeholder="예금주명을 입력해주세요"></td>
			</tr>
			<tr>
				<td>환불금액</td>
				<td><input type="text" placeholder="숫자만 입력해주세요"></td>
			</tr>
			<tr>
				<td>메모</td>
				<td><input type="text" placeholder="환불사유를 작성해주세요"></td>
			</tr>
		</table>
	</form>
</body>
</html>