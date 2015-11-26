<?php

/*

Archive for MediaTech. The limited API that enables the embedding of a project browser in the MediaTech
website. 

Authors: 
Maarten van Hees
Roland van Dierendonck
Max van Duijn

VER: 0.01

*/

class ArchiveMT
{		
	public $link = null;
	private $mu = "root";
	private $mp = "";

	function __construct($args = "")
	{			
		$this->link = mysql_connect('localhost', $this->mu, $this->mp);
		
		//do something here...		
		if(isset($_GET['query']))
			$this->getProjects($_GET['query'], $_GET['sorting']);		
		else		
			require("C:/xampp/htdocs/ArchiefMT/lib/html/error.html"); //hard pad fixen
		
	}
	
	/**
	*	Get projects from database based on user constraints
	*/
	function getProjects($query, $sorting)
	{					
		mysql_select_db('mtarchive', $this->link);
		
		$res = mysql_query("select * from mtarchive.projects order by tstamp asc");
		
		if(!$res)
		{
			echo "no rows";
		}
		else
		{
			$list = array();
			
			while ($row = mysql_fetch_array($res)) {
				$list[] = $row;
			}					
			
			echo json_encode($list);
		}
	}
	
	/**
	*	Get people from database based on user constraints
	*/
	function getPeople($basedon)
	{
		return null;
	}
	
	/**
	*	Get courses from database based on user constraints
	*/
	function getCourses($basedon)
	{
		return null;
	}

	//moet nog een soort get assoc in
}

$instance = new ArchiveMT();

?>