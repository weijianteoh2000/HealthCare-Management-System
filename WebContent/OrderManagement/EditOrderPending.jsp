<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>HealthCare | Manage Pending Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>MANAGE CUSTOMER ORDER</h1>
				</div>
				<div class="main-content-item main-content">
					<div class="main">
						<h1 id="main_header">Check Order</h1>
						<div class="order_info_table">
						<table id="order_info_table">
								<tr>
									<th id="order_info_table_header">Order ID</th>
									<th>:</th>
									<td id="order_info_table_data_column2">PO001</td>
									<th id="order_info_table_header">Customer ID</th>
									<th>:</th>
									<td id="order_info_table_data">CUS001</td>
								</tr>
								<tr>
									<th id="order_info_table_header">Address</th>
									<th>:</th>
									<td id="order_info_table_data_column2">123-B Sec.10 Kampung Bunga, Jalan Bunga 45635 Dengkil Selangor.</td>
									<th id="order_info_table_header">Customer Name</th>
									<th>:</th>
									<td id="order_info_table_data">LIM AH BENG</td>
								</tr>
								<tr>
									<th id="order_info_table_header">Order Date/Time</th>
									<th>:</th>
									<td id="order_info_table_data_column2">10/11/2022	19:37</td>
									<th id="order_info_table_header">Contact No.</th>
									<th>:</th>
									<td id="order_info_table_data">012-3452366</td>
								</tr>
								<tr>
							</table>
						</div>
						<div class="edit_order_pending_table">
							<table id="edit_order_pending_table">
								<tr id="row1">
									<th>No.</th>
									<th>Item</th>
									<th>Quantity</th>
									<th>Unit Price</th>
									<th></th>
								</tr>
								<tr>
									<td>1.</td>
									<td id="edit_order_pending_table_item">Panodol Actifast 10s Compack</td>
									<td id="edit_order_pending_table_quantity">1</td>
									<td id="edit_order_pending_table_unitPrice">RM 13.50</td>
									<!-- <td><a href="EditOrderPending.jsp"><button
												class="edit_order_pending_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td> -->
									<td id="edit_order_pending_table_rejectBtn"><button
											class="edit_order_pending_table_rejectBtn"
											onClick="rejectOrder()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>2.</td>
									<td id="edit_order_pending_table_item">NewGene-Saliva/Nasal 2-in-1 Covid-19 Home Self Antigen
										Test Kit(RTK)</td>
									<td id="edit_order_pending_table_quantity">5</td>
									<td id="edit_order_pending_table_unitPrice">RM 10.70</td>
									<!-- <td><a href="EditOrderPending.jsp"><button
												class="edit_order_pending_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td> -->
									<td><button class="edit_order_pending_table_rejectBtn"
											onClick="rejectOrder()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>3.</td>
									<td id="edit_order_pending_table_item">WOODS' Peppermint Cough Syrup for Adult 100ml</td>
									<td id="edit_order_pending_table_quantity">1</td>
									<td id="edit_order_pending_table_unitPrice">RM 9.50</td>
									<!-- <td><a href="EditOrderPending.jsp"><button
												class="edit_order_pending_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td> -->
									<td><button class="edit_order_pending_table_rejectBtn"
											onClick="rejectOrder()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button></td>
								</tr>
								<tr>
									<td>4.</td>
									<td id="edit_order_pending_table_item">Listerine Sakura & Peach Zest 500ml</td>
									<td id="edit_order_pending_table_quantity">1</td>
									<td id="edit_order_pending_table_unitPrice">RM 11.70</td>
									<!-- <td><a href="EditOrderPending.jsp"><button
												class="edit_order_pending_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td> -->
									<td><button class="edit_order_pending_table_rejectBtn"
											onClick="rejectOrder()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="submit_button_box">
						<button class="editOrderPending_submit_button"
							onClick="completeOrder()">Complete Order</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.html"%>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script type="text/javascript">
		function rejectOrder() {
			alert("Are you sure to reject this order?")
		}
		function completeOrder() {
			alert("Are you sure to complete this order?")
		}
	</script>
</body>
</html>