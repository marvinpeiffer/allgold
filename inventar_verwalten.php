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
						<a href="verkauf_anlegen.php"> Verkaufserfassung </a><br>
					</li>
					<li>
						<b>Inventarverwaltung</b>
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
				<form class="form-horizontal" action="php/lieferungREST.php" method="POST">
			
				<fieldset>
				<input type="hidden" name="action" value = "POST">
				
				<!-- Form Name -->
				<legend>Inventarverwaltung</legend>

				<label>Standort</label>
				<?php
					
					include('php/datenbank.php');
					$db_res = runSQL("SELECT * FROM `station`, `inventory` WHERE (currentAmount < 50) AND station.stationID = inventory.stationID GROUP BY station.stationID");
					echo("<select id='stationID' name='stationID'>");
					echo("<option>Bitte wählen ...</option>");
					while($row = mysqli_fetch_array($db_res))
					{
						echo("<option value='" . $row['stationID'] . "'>" .$row['location']. " (".$row['description']. ")"."</option>");
					}
					echo("</select>");
						
				?>
				<button id="inv" name="inv" class="btn btn-primary">Standort auffüllen</button>
				
				<?php
					$db_res = mysqli_query($db_link, "SELECT *, (50-currentAmount) AS fa, station.description as sb FROM `inventory`, `station`, `products`  
					WHERE ((50-currentAmount) > 0) 
					AND inventory.productID = products.productID
					AND inventory.stationID = station.stationID") or die("Fehler: " . mysqli_error($db_link));
					
					echo('<table id="inventar_tabelle">');
					echo('<tr>');
					echo('<th>Standort</th>');
					echo('<th>Artikel</th>');
					echo('<th>Anzahl aufzufüllen</th>');
					echo('</tr>');
					
					while($row = mysqli_fetch_array($db_res))
					{
						echo('<tr>');
						echo('<td>' . $row['location']. " (".$row['sb']. ")". '</td>');
						echo('<td>' . $row['name']. '</td>');
						echo('<td>' . $row['fa'] . '</td>');
						echo('</tr>');
					}
					
					echo('</table>');
					
				?>

				</fieldset>
			</form>
		</div>
	  
		<div id="menuefooter" class="clmenuefooter">
		</div>
	  
		<div id="bottom">
		</div>
	</body>
</html>