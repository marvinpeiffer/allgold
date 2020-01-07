<?php

include("datenbank.php");

function addSale($data)
{
	$vk = "INSERT INTO sales ( 
	productID,
	amount,
	stationID,
	sellerID
	) VALUES (
	'".$data['productID']."',
	'".$data['amount']."',
	'".$data['stationID']."',
	'".$data['sellerID']."'
	);";

	$inv = "UPDATE `inventory`
	SET currentAmount = (currentAmount - ".$data['amount'].")
	WHERE productID = ".$data['productID']."
	AND stationID = ".$data['stationID'].";";
	
	$res_inv = runSQL($inv);
	if(!$res_inv)
	{
		return "FEHLER | " .$res_inv;
	}

	$res_vk = runSQL($vk);
	if(!$res_vk)
	{
		return "FEHLER | " .$res_vk;
	}

	return "Verkauf erfolgreich erfasst. Weiterleiten...";
}

?>