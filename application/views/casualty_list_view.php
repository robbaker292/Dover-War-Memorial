<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>
<h2>
<?php 

if(isset($item_id)) {
	echo "<a href=\"detail/".$item_id."\">$item_name</a>"; 
} else {
	echo $item_name; 
}
?>
</h2>

<?php
	echo "<table>";
	echo "<tr><th>Given Name</th><th>Family Name</th><th>Date of death</th></tr>";
	foreach ($casualty_data as $data) {
		echo "<tr>";
		echo "<td><a href=\"../casualty/view/".$data->id."\">";
		echo $data->given_name;
		echo "</a></td><td>";
		echo $data->family_name;
		echo "</td><td>";
		echo $data->date_of_death;
		echo "</td>";
		echo "</tr>";
	}
	echo "</table>";
?>

