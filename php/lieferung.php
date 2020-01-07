<?php

include("datenbank.php");

function refill($data)
{	
	$db_res = runSQL("UPDATE `inventory` SET currentAmount = 50 WHERE (currentAmount < 50) AND stationID =".$data['stationID']."");
	if(!$db_res)
	{
		return "FEHLER | " .$db_res;
	}
	
	return "Standort erfolgreich befüllt. Weiterleiten...";
}

?>