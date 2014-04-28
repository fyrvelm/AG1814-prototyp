<!-- encoding="UTF-8" -->
<?php
function printInfo($link, $t){
		$idString = (string)$t;
		mysql_query('SET NAMES utf8');
		$number_Query = MySQLi_query($link, "select count(*) as scount from companies where `product_id` = '{$idString}'");
		$result1 = MySQLi_fetch_array($number_Query);
		$number = $result1['scount'];
		$data = array();
		if($number==0){
			echo "Produkten är ej registrerad i vår databas.";
		}
		else{
			// ORDER BY `job_Description`
			$comp_Query = MySQLi_query($link, "select *  from `companies` where `product_id` = '{$idString}' ORDER BY `job_Description`");
			$comp_Array = MySQLi_fetch_array($comp_Query);
			$jobs = array("Tillverkare", "Transport", "Produktion");
			$lastJob = -1;
			echo "<table align='left'  Style='font-size:24;'>";
			echo "<tr><th>Roll</th><th>Del av kostnad</th></tr>";
			for($x = 0; $x<$number;$x++){
				if($lastJob<$comp_Array[1]){
					$lastJob = $comp_Array[1];
					echo "<tr><th>".$jobs[$lastJob]."</th></tr><br>";
				}
				echo "<tr><td>".$comp_Array[2]."</td> <td align='center'>".$comp_Array[3]."%</td></tr>";
				$data[] = $comp_Array[3];
				//echo "<br />";
				$comp_Array = MySQLi_fetch_array($comp_Query);
			}
			echo "</table>";
			require_once ('jpgraph/src/jpgraph.php');
			require_once ('jpgraph/src/jpgraph_pie.php');
			require_once ('jpgraph/src/jpgraph_pie3d.php');

			// Create the Pie Graph. 
			$graph = new PieGraph(350,250);

			$theme_class= new VividTheme;
			$graph->SetTheme($theme_class);

			// Set A title for the plot
			$graph->title->Set("Pie Chart");

			// Create
			$p1 = new PiePlot3D($data);
			$graph->Add($p1);

			$p1->ShowBorder();
			$p1->SetColor('black');
			
			$graph->Stroke($t);
			echo '<img src="', "", '/', $t, '" alt="', $t, '" />';
		}
	}

$target = $_GET['id'];
?>

<htmlxmlns="http://www.w3.org/1999/xhtml" xml:lang="sv" lang="sv">
<script type="text/javascript">
		function recp() {
			$('#myStyle').load("prototyp.php");
		}
</script>
<div>
<table align="left"  Style="font-size:24;">
<form>
<tr>
<?php
echo "<td>Varunummer:</td><td><input name='id' type='number' id='id' value ={$target} ></td>"
?>
</tr>
<tr>
<td colspan="2"><input name="submit" type="submit" id="submit" value="Search" onClick="recp()"></td>
</tr>
</form>
</table>
</div>
</html>
<?php
if($target>0)
{
	$host = "localhost";
	$usn = "root";
	$link = MySQLi_connect ($host, $usn, "password", "database");
	printInfo($link, $target);
}
else if($target!=null)
	echo "Inte ett riktigt varunummer!";
?>