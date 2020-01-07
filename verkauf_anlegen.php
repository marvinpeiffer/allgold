<!DOCTYPE HTML>
<html>
	<head>
		<title>Allgold Supply Center</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link href="css/main.css" rel="stylesheet" />
	</head>
	
	<body>
		<div id="main">
			<div id="trailer">
				<img src="media/karte.jpg" width="790" height="405" alt="trailer">
			</div>
			
			<nav>
				<ul>
					<li>
						<a href="index.html">HOME</a>
					</li>
					<li>
						<b>Verkaufserfassung</b>
					</li>
					<li>
						<a href="inventar_verwalten.php"> Inventarverwaltung </a><br>
					</li>
					<li>
						<a href=".php"> Berichtswesen </a><br>
					</li>
					<li>
						<a href="pdf_erstellen.php"> Katalogerstellung </a><br>
					</li>
				</ul>
			</nav>
	  
			<div id="content">
				<form class="form-horizontal" action="php/salesREST.php" method="POST">
			
				<fieldset>
				<input type="hidden" name="action" value = "POST">
				
				<!-- Form Name -->
				<legend>Verkaufserfassung</legend>

				<label>Artikel</label>
				<?php
					
					include('php/datenbank.php');
					$db_res = runSQL("SELECT * FROM `products`");
					echo("<select id='productID' name='productID'>");
					echo("<option>Bitte wählen ...</option>");
					while($row = mysqli_fetch_array($db_res))
					{
						echo("<option value='" . $row['productID'] . "'>" .$row['name']. "</option>");
					}
					echo("</select>");
						
				?>

				<label>Anzahl</label>  
				<input id="amount" name="amount" placeholder="1" class="form-control input-md" type="number">


				<label>Standort</label>  
				<?php
					
					$db_res = runSQL("SELECT * FROM `station`");
					echo("<select id='stationID' name='stationID'>");
					echo("<option>Bitte wählen ...</option>");
					while($row = mysqli_fetch_array($db_res))
					{
						echo("<option value='" . $row['stationID'] . "'>" .$row['location']. " (".$row['description']. ")"."</option>");
					}
					echo("</select>");
						
				?>
				
				<label>Verkäufer</label>  
				<?php
					
					$db_res = runSQL("SELECT * FROM `seller`");
					echo("<select id='sellerID' name='sellerID'>");
					echo("<option>Bitte wählen ...</option>");
					while($row = mysqli_fetch_array($db_res))
					{
						echo("<option value='" . $row['sellerID'] . "'>" .$row['name']. " (".$row['role']. ")"."</option>");
					}
					echo("</select>");
						
				?>

				<button id="sale" name="sale" class="btn btn-primary">Verkauf erfassen</button>

				</fieldset>
			</form>
		</div>
	  
		<div id="menuefooter" class="clmenuefooter">
		</div>
	  
		<div id="bottom">
		</div>
	</body>
</html>
