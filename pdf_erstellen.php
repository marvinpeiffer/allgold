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
						<a href="inventar_verwalten.php"> Inventarverwaltung </a><br>
					</li>
					<li>
						<a href=".php"> Berichtswesen </a><br>
					</li>
					<li>
						Katalogerstellung
					</li>
				</ul>
			</nav>
			
			<div id="content">
				<fieldset>
					<legend>Liste drucken</legend>
		
					<fieldset id="fieldset_liste">
						<legend>Preisliste</legend>
						
						<form class="form-inline" method="POST" action="php/preisliste.php" target="_blank">
							<button type="submit" class="btn btn-primary">Aktualisieren und Anzeigen</button>
						</form>
					</fieldset>
		
					<br><br>
		
					<fieldset id="fieldset_liste">
						<legend>Katalog</legend>
						<form class="form-inline" method="POST" action="php/katalog.php" target="_blank">
							<button type="submit" class="btn btn-primary">Aktualisieren und Anzeigen</button>
						</form>
					</fieldset>
		
					<br>
		
					</fieldset>
			</div>
			
		</div>
	  
		<div id="menuefooter" class="clmenuefooter">
		</div>
	  
		<div id="bottom">
		</div>
	</body>
</html>