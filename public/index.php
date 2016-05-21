<?php $title = "Home"; include 'head.php';?>

<img src="/img/pizzalogo.png">
<h1><b>Featured Pizza</b></h1>
<div class="rand">
<?php 
$rand = rand (1, 3);
if ( $rand == 1 ) {
	echo '<img src="img/ristorante-pizza-pepperoni-salame.png">'; 
}
elseif ( $rand == 2 ) {
	echo '<img src="img/231633.png">';
}
else {
	echo '<img src="img/IDShot_540x540.jpg">';
}

?>
</div>
</body>
</html>