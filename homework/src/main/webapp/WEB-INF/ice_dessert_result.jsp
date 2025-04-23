<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
import model.IceDessert;

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>🍧冰果店的點餐系統-訂單結果</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" />
	</head>
	<body style ="padding =20px">
		<div style="max-width: 800px; margin: 0 auto; padding: 20px;">
			<div class ="pure-form">
				<h2>冰果店的點餐系統-訂單結果</h2>
				<fieldset>
					<legend>訂單列表</legend>
					<c:set var="totalPriceSum" value ="0" />
					目前留言筆數: ${fn:length(iceOrders)}
					<table class="pure-table pure-table-bordered">
						<thead>
							<tr>
								<th>No</th>
								<th>主餐</th>
								<th>配料</th>
								<th>價格</th>
								<th>刪除</th>
							</tr>					
						</thead>
						<tbody>
							<c:forEach varStatus="i" var="iceOrder" items="${ iceOrders }">
								<tr>
									<td>${ i.index + 1 }</td>
									<td>${ iceOrder.mainDish.name }</td>
									<td>${ iceOrder.topping.toppings }</td>
									<td>
										<fmt:formatNumber value="${ iceOrder.totalPrice }" type="currency" maxFractionDigits="0" />								
									</td>
									<td title ="按我一下刪除" style="cursor: pointer;">❌</td>
								<td>
									<form method="post" action="/JavaWeb/ice/delete">
										<input type="hidden" name="index" value="${ i.index }" />
										<button class="pure-button button-error" type="submit">❌</button>
									</form>
								</td>
							</tr>
								<!-- 累加總價 -->
								<c:set var="totalPriceSum" value ="${totalPriceSum + iceOrder.totalPrice }" />
							</c:forEach>						
						</tbody>
						<tfoot>
							<tr style="background-color: #DDDDDD">
								<td colspan="3" style="text-align": right;">總金額</td>
								<td>
									<fmt:formatNumber value="${totalPriceSum }" type="currency" maxFractionDigits="0"/>
								</td>														
							</tr>
						</tfoot>			
					</table>
					<a href="/JavaWeb/ice" class="pure-button pure-button-primary">返回</a>
				</fieldset>
			</div>
		</div>		
	</body>
</html>