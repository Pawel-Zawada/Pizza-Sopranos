<div class="menu2 pizzadiv">
	<h1>Pizza's</h1>
	<?php 

	$query = "SELECT * FROM drinks";
	$query_result = $conn->query( $query );
	$results_array = $query_result->fetchAll(PDO::FETCH_ASSOC);
	foreach ($results_array as $drinks) {
		?>
		<ul>
			<li>
				<img src="<?php echo $drinks['image']; ?>">
				<br>
				<label for="pizza"> <b><?php echo $drinks['productNaam']; ?></b></label><br><a href="?id=<?php echo $drinks['productId']; ?>">Order</a>	
			</li>
			<?php
		}
		?>
		<?php

		if (!empty( $_GET )) {
			if( isset( $_GET['id'] ) ){
				 // prepare and bind
				$stmt = $conn->prepare("INSERT INTO bestelling (id) VALUES (:value)");
				$stmt->bindParam(':value', $id);

// set parameters and execute
				$id = $_GET["id"];
				$stmt->execute();
			}
			header('Location: ../bestel.php');
		}


		?>
	</ul>
</div>