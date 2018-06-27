<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�Ϸ� ���</h3><hr/><br/>
	<form id="list">
		<table border="1">
			<tr>
				<td>�ֹ���ȣ</td><td>������</td><td>��ǰ��</td><td>�ֹ�����</td><td>���ż���</td><td>�ݾ�</td><td>�ֹ���Ȳ</td><td>�ֹ�����</td><td>�����</td>
			</tr>
			<c:forEach var="List" items="${endOrderList }">
			<tr>
			<!-- �ֹ���ȣ -->
				<td>
					<input id="endCheck" type="checkbox" class="endCheck" onclick="endCodeCheck(this)" name="code" value="${List.code }">${List.code }
				</td>
				<!-- ������ -->
				<td>
					<label>${List.member_id }</label>
				</td>
				<!-- �ֹ��ڵ�(��ǰ��) -->
				<td>
					<label>${List.product_code }</label>
				</td>
				<!-- �ֹ����� -->
				<td>
					<fmt:formatDate value="${List.product_order_date }" pattern="yyyy-MM-dd-HH-mm"/>
					
				</td>
				
				<!-- ��ǰ����(�ֹ��� ���� -->
				<td>
					<label>${List.amount }</label>
				</td>
				<!-- ��ǰ�ݾ� -->
				<td>
					<label>${List.price }</label>
				</td>
				<!-- ó������ -->
				<td>
					<label>${List.delivery_code }</label>
				</td>
				<td>
					<label>${List.cancle_code }</label>
				</td>
				<td>
					<label>${List.delivery_address }</label>
				</td>
			</tr>
			</c:forEach>
			<tr>
				<td>
					<input type="button" onclick="endExchangeStart()" value="��ȯ��û">
				</td>
				<td>
					<input type="button" onclick="endRefundStart()" value="ȯ�ҽ�û">
				</td>
				<td>
					<input type="button" onclick="OrderDeliveryStert()" value="�����">
				</td>
			</tr>
		</table>
		
	</form>
	
	<script type="text/javascript" src="resources/admin_js/order/endList.js"></script>
</body>
</html>