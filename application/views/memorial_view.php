<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php
	echo "<h2>".$item_name."</h2>"; 
	echo "<div class=\"hidden\" id=\"item_id\">".$item_id."</div>"; 
?>
<table>
<?php
	foreach ($memorial_data[0] as $key => $value) {
		echo "<tr>";
		echo "<td>";
		echo $key;
		echo "</td><td>";
		echo $value;
		echo "</td>";
		echo "</tr>";
	}
?>
</table>
<div class="text-center">
	<div id="warButtons" class="btn-group middle" data-toggle="buttons">
	  <label class="btn btn-default">
	    <input type="radio" name="item_<?php echo $item_id; ?>" value="1" autocomplete="off"> World War One
	  </label>
	  <label class="btn btn-default">
	    <input type="radio" name="item_<?php echo $item_id; ?>" value="2" autocomplete="off"> World War Two
	  </label>
	  <label class="btn btn-default active">
	    <input type="radio" name="item_<?php echo $item_id; ?>" value="0" autocomplete="off"> Both
	  </label>
	</div>
	<p></p>
	<div id="letterButtons" class="btn-group middle" data-toggle="buttons">
		<?php
			foreach(range('A','Z') as $letter) {
				if($letter == 'A') {
					echo "<label class=\"btn btn-default active \">\n";
				} else {
					echo "<label class=\"btn btn-default\">\n";
				}
				echo "<input type=\"radio\" name=\"letters_item_".$item_id."\" value=\"".$letter."\" autocomplete=\"off\"> ".$letter." \n";
				echo "</label>\n";
				?>
				<?php
			}
		?>
		<label class="btn btn-default">
			<input type="radio" name="letters_item_2" value="any" autocomplete="off"> Other 
		</label>
	</div>
</div>
<br>
<div id="casualtyTable">
<!--
	<table class="table table-striped table-bordered">
		<thead>
			<tr><th>Given Name</th><th>Family Name</th><th>Date of death</th></tr>
		</thead>
		<tbody>
		<?php
		/*		
			foreach ($casualty_data as $data) {
				echo "<tr>";
				echo "<td><a href=\"../../casualty/view/".$data->id."\">";
				echo $data->given_name;
				echo "</a></td><td>";
				echo $data->family_name;
				echo "</td><td>";
				echo $data->date_of_death;
				echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
*/
		?>
		</tbody>
	</table>
	-->
</div>
</body>
</html>