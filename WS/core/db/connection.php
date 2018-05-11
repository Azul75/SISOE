<?php
namespace Jess\Messenger;

/**
* Conexion a la base de datos
*/
class DB {
	private $CONNECTION = false;
	private $status = false;

	function __construct() {
		global $config;
		$this->CONNECTION = new \mysqli(
			$config->get("db.server", "localhost"),
			$config->get("db.username", "root"),
			$config->get("db.password", ""),
			$config->get("db.database", ""));

		if ($this->CONNECTION->connect_error) {
			die("Connection failed: " . $this->CONNECTION->connect_error);
		} else {$this->status = true;}
	}

	public function resultToArray($result) {
		$rows = array();
		while ($row = $result->fetch_assoc()) {
			$rows[] = $row;
		}
		return $rows;
	}

	public function query($sql) {
		$result = $this->CONNECTION->query($sql);
		if( $this->CONNECTION->errno != 0 ) {
			return ["code" => "error", "response" => $this->CONNECTION->error_list]; 
		}
		if ($result->num_rows > 0) {
			return ["code" => "ok", "response" => $this->resultToArray($result)];
		}
		return ["code" => "ok", "response" => array()];
	}

	public function create($table, $query) {
		$keys = "";
		$values = "";

		foreach ($query as $key => $value) {
			$keys .= $key.",";
			$values .= "'".$value."', ";
		}

		$keys = rtrim($keys,", ");
		$values = rtrim($values,", ");

		$query = "INSERT INTO $table ($keys) VALUES($values)";

		$this->CONNECTION->query($query) or die(\mysqli_error($this->CONNECTION));

		//return ($this->CONNECTION->query($query) === TRUE);
	}

	public function update($table, $key, $id, $query) {
		$inputs = "";

		foreach ($query as $key => $value) {
			$inputs .= $key."='".$value."', ";
		}

		$inputs = rtrim($inputs,", ");

		//$query = "INSERT INTO $table ($keys) VALUES($values)";
		$query = "UPDATE {$table} SET {$inputs} WHERE {$key}='{$id}'";

		return ($this->CONNECTION->query($query) === TRUE);
	}

	public function close(){
		if($this->status) {
			$this->CONNECTION->close();
			$this->status = false;
		}
	}
}