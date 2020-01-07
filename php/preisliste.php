<?php
	exec('mysqldump --xml -u root -h localhost allgold products > ../export/preisliste.xml');
	exec('fop -xml ../export/preisliste.xml -xsl ../export/preisliste.xsl -pdf ../export/preisliste.pdf');
	header("Refresh: 0; URL=http://localhost/export/preisliste.pdf");
?>