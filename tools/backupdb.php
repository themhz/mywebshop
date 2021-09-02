<?php

namespace mywebshop\tools;

use mywebshop\components\handlers\Database;
require ("../config.php");
require ("../components/handlers/Database.php");

$date = new \DateTime();

$db = Database::getInstance();
$sql = "SHOW DATABASES";
//
$sth = $db->dbh->prepare($sql);
$sth->execute();
$results = $sth->fetchAll(\PDO::FETCH_OBJ);

foreach($results as $schema){
    echo "backing up ".$schema->Database."\n";
    $database = $schema->Database;
    exec("C:\wamp64\bin\mariadb\mariadb10.4.10\bin\mysqldump --user=root --password= --result-file=\"C:\\wamp64\www\mywebshop\\db\\".$database."_".$date->format('Ymd_H_i_s').".sql\" $schema->Database");
}

