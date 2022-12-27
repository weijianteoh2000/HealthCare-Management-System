<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>Health Care Management | View Product</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>-- Medicine at Your Doorstep --</h1>
				</div>
				<div class="main-content-item main-content">
					<div class="main">
						<h1 id="main_header">View Product</h1>
						<div class="product_category">
							Category: <select name="product_category" id="product_category"
								class="product_category_dropbtn">
								<option value="All">All</option>
								<option value="Pregnancy Kit">Pregnancy Kit</option>
								<option value="Prescription Drugs">Prescription Drugs</option>
								<option value="Supplement">Supplement</option>
								<option value="Blood Cholesterol Testing">Blood
									Cholesterol Testing</option>
								<option value="Oral Care">Oral Care</option>
							</select>
						</div>
						<div class="product_box">
							<div class="product_box_card">
								<div class="product_pic">
									<img id="product_pic" src="../img/panadol_soluble.jpg"><br>
									<br>
								</div>
								<div class="product_name">Panadol Soluble Effervescent
									Tablets1 Strip - 4s</div>
								<br> <br>
								<div class="product_descp">Panadol Soluble contains
									Paracetamol which provides fast* and effective relief of pain.
									In effervescent tablets, the soluble formulation is absorbed
									more quickly than regular tablets, providing faster pain
									relief. Panadol Soluble is gentle on your stomach.</div>
								<br> <br>
								<div class="product_price">
									<div class=product_price_text>RM 3.50</div>
									<div class="button_container">
										<button class="cart_qty_minus" type="button" value="-">-</button>
										<input type="text" name="qty" min="0" class="cart_quantity"
											value="0" />
										<button class="cart_qty_add" type="button" value="+">+</button>
									</div>
								</div>
							</div>
							<div class="product_box_card">
								<div class="product_pic">
									<img id="product_pic" src="../img/panadol_regular.jpg"><br>
									<br>
								</div>
								<div class="product_name">Panadol Regular Tabets 1 x 10's</div>
								<br> <br>
								<div class="product_descp">Panadol Tablets provide gentle
									relief of aches and pains, such as headaches, migraines, sore
									throats and dental pain. The tablets are round and, because
									they are film-coated, are easier to swallow. It's also
									comforting to know that Panadol Regular is also gentle on the
									stomach.</div>
								<br> <br>

								<div class="product_price">
									<div class=product_price_text>RM 4.90</div>
									<div class="button_container">
										<button class="cart_qty_minus" type="button" value="-">-</button>
										<input type="text" name="qty" min="0" class="cart_quantity"
											value="0" />
										<button class="cart_qty_add" type="button" value="+">+</button>
									</div>
								</div>
							</div>
							<div class="product_box_card">
								<div class="product_pic">
									<img id="product_pic" src="../img/panadol_actifast.jpg"><br>
									<br>
								</div>
								<div class="product_name">Panadol Actifast</div>
								<br> <br>
								<div class="product_descp">Panadol ActiFast is a mild
									analgesic and antipyretic, and is recommended for the treatment
									of most painful and febrile conditions, for example, headache
									including migraine and tension headaches, toothache, backache,
									rheumatic and muscle pains, dysmenorrhoea, sore throat, and for
									relieving the fever, aches and pains of colds and flu.</div>
								<br> <br>
								<div class="product_price">
									<div class=product_price_text>RM 13.50</div>
									<div class="button_container">
										<button class="cart_qty_minus" type="button" value="-">-</button>
										<input type="text" name="qty" min="0" class="cart_quantity"
											value="0" />
										<button class="cart_qty_add" type="button" value="+">+</button>
									</div>
								</div>
							</div>
							<!-- <div class="product_box_card">
								<div class="product_pic">
									<br>
									<br>
								</div>
								<div class="product_name"></div><br><br>
									<div class="product_descp"></div>
								<br>
								<br>
								<div class="product_price"></div>
							</div> -->
						</div>
						<div class="submit_button_box">
							<button class="cart_submit_button" onClick="confSub()">Add
								to Order</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.html"%>
	<script type="text/javascript">
		/* For quantity increment or decreament */
		var incrementBtn = document.getElementsByClassName("cart_qty_add");
		var decrementBtn = document.getElementsByClassName("cart_qty_minus");

		/* Increment Quantity */
		for (var i = 0; i < incrementBtn.length; i++) {
			var button = incrementBtn[i];
			button.addEventListener('click', function(event) {
				var buttonClicked = event.target;
				var input = buttonClicked.parentElement.children[1];
				var inputValue = input.value;
				var newValue = parseInt(inputValue) + 1;
				input.value = newValue;
			})
		}

		/* Decrement Quantity */
		for (var i = 0; i < decrementBtn.length; i++) {
			var button = decrementBtn[i];
			button.addEventListener('click', function(event) {
				var buttonClicked = event.target;
				var input = buttonClicked.parentElement.children[1];
				var inputValue = input.value;
				var newValue = parseInt(inputValue) - 1;
				if (newValue >= 0) {
					input.value = newValue;
				}
			})
		}

		function confSub() {
			alert("Are you confirm to add this order into cart");
		}
	</script>
</body>
</html>