<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/font-awesome.min.css">

 <!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous"> -->
    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/main.css">
    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/navbar.css">

    <script src="<?php echo asset_url(); ?>js/jquery-3.1.1.min.js"></script>
    <script src="<?php echo asset_url(); ?>js/bootstrap.min.js"></script>
    <script src="<?php echo asset_url(); ?>js/navbar.js"></script>

    <?php if($this->uri->segment(1) == 'memorial' && $this->uri->segment(2) == 'detail') { ?>
			<script src="<?php echo asset_url(); ?>js/casualtyMenu.js"></script>
	<?php } else if($this->uri->segment(1) == 'casualty' && $this->uri->segment(2) == 'view') { ?>
			<script src="<?php echo asset_url(); ?>js/casualty.js"></script>
	<?php } ?>

	<title><?php echo $title; ?></title>
</head>
<body>
	<header class="container">
		<div class="col-md-12">
			<h1>Dover War Memorial Project</h1>
			<h2><small>Welcome to <span class="dwmp">Dover's Virtual War Memorial</span></small></h2>

			<div id="patrons">
				<h4><small>Patrons:</small></h4>
				<h4><small>Dame Vera Lynn, CH, DBE, LL.D, M.Mus</small></h4>
				<h4><small>Admiral of the Fleet the Lord Boyce, KG, GCB, OBE, DL<br>
				Lord Warden and Admiral of the Cinque Ports and Constable of Dover Castle</small></h4>
			</div>
			<nav id="nav-main">
			    <ul>
			        <li><a href="<?php echo base_url(); ?>">Home</a></li>
			        <li><a href="<?php echo base_url(); ?>siteUpdate">Latest News</a></li>
			        <li><a href="<?php echo base_url(); ?>memorial/listMain">Casualty Index</a></li>
			        <li><a href="#">Information Index</a></li>
			        <li><a href="#">Search</a></li>
			        <li><a href="#">About &amp; Contact</a></li>
			    </ul>
			</nav>
		</div>
	</header>
	
<main class="container">
<div class="col-md-12">
<div class="letter">