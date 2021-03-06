<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-109503069-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-109503069-1');
	</script>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/main.css">
    <link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/navbar.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">

    <script src="<?php echo asset_url(); ?>js/jquery-3.1.1.min.js"></script>
    <script src="<?php echo asset_url(); ?>js/jquery.validate.min.js"></script>
    <script src="<?php echo asset_url(); ?>js/bootstrap.min.js"></script>
    <script src="<?php echo asset_url(); ?>js/bootbox.min.js"></script>

    <?php if($this->uri->segment(1) == 'memorial' && ($this->uri->segment(2) == 'view' || $this->uri->segment(2) == 'map') ) { ?>
    		<script src="<?php echo asset_url(); ?>js/ol.js"></script>			<!-- maps -->
			<link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/ol.css"> <!-- maps -->			
			<link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/map.css">

	<?php }

		if($this->uri->segment(1) == 'memorial' && $this->uri->segment(2) == 'view') { ?>
			<script src="<?php echo asset_url(); ?>js/memorial.js"></script>
			<script src="<?php echo asset_url(); ?>js/casualtyMenu.js"></script>

	<?php } else if($this->uri->segment(1) == 'memorial' && ($this->uri->segment(2) != 'map')) { ?>
			<script src="<?php echo asset_url(); ?>js/memorial.js"></script>

	<?php } else if($this->uri->segment(1) == 'casualty') { ?>
			<script src="<?php echo asset_url(); ?>js/casualty.js"></script>

	<?php } else if($this->uri->segment(1) == 'siteUpdate') { ?>
			<script src="<?php echo asset_url(); ?>js/siteUpdate.js"></script>

	<?php } else if($this->uri->segment(1) == 'article') { ?>
			<script src="<?php echo asset_url(); ?>js/article.js"></script>

	<?php } else if($this->uri->segment(1) == 'meta') { ?>
			<script src="<?php echo asset_url(); ?>js/meta.js"></script>

	<?php } else if($this->uri->segment(1) == 'search') { ?>
			<script src="<?php echo asset_url(); ?>js/search.js"></script>

	<?php } else if( 	($this->uri->segment(1) == 'place') ||
						($this->uri->segment(1) == 'rank') ||
						($this->uri->segment(1) == 'regiment_service') ||
						($this->uri->segment(1) == 'relation') ||
						($this->uri->segment(1) == 'service_country') ||
						($this->uri->segment(1) == 'war')
					) { ?>
			<script src="<?php echo asset_url(); ?>js/saveData.js"></script>

	<?php } else if($this->uri->segment(1) == 'converter') { ?>
			<script src="<?php echo asset_url(); ?>js/converter.js"></script>

	<?php }

		if($this->uri->segment(2) == 'edit' || $this->uri->segment(1) == 'search') { ?>
			<script src="<?php echo asset_url(); ?>js/bootstrap-markdown.js"></script>
			<script src="<?php echo asset_url(); ?>js/bootstrap-select.min.js"></script>
			<script src="<?php echo asset_url(); ?>js/narrative_edit.js"></script>
			<link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/bootstrap-markdown.min.css">
			<link rel="stylesheet" type="text/css" href="<?php echo asset_url(); ?>css/bootstrap-select.min.css">
	<?php } ?>

	<title><?php echo $title; ?></title>
</head>
<body>
	<header class="container">
		<div class="col-md-12">
			<h1>The Dover War Memorial Project</h1>
			<div class="hidden-xs">
				<table id="patrons">
					<tr><td colspan="2"><small>Patrons:</small></td></tr>
					<tr><td class="col-md-6">				
						<small>Dame Vera Lynn, CH, DBE, LL.D, M.Mus</small>
					</td><td class="col-md-6">
						<small>Admiral of the Fleet the Lord Boyce, KG, GCB, OBE, DL<br>
						Lord Warden and Admiral of the Cinque Ports and Constable of Dover Castle</small>
					</td></tr>
				</table>
			</div>
			<div class="btn-group btn-group-justified main-nav-bar">
                <a href="<?php echo base_url(); ?>" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-home" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Home</span></h4></a>
                <a href="<?php echo base_url(); ?>siteUpdate" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-calendar" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Latest&nbsp;<span class="visible-sm-inline"><br>&nbsp;&nbsp;</span>News</span></h4></a>
                <a href="<?php echo base_url(); ?>memorial/listMain" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-users" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Casualty&nbsp;<span class="visible-sm-inline"><br></span>Index</span></h4></a>
                <a href="<?php echo base_url(); ?>article" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-info-circle" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Articles</span></h4></a>
                <a href="<?php echo base_url(); ?>search" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-search" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Search</span></h4></a>
                <a href="<?php echo base_url(); ?>meta/view/contactUs" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-envelope" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;About</span></h4></a>
            </div>
            <?php
			if(isset($_SESSION['user'])) {
            ?>
			<div class="btn-group btn-group-justified login-nav-bar">
                <a href="<?php echo base_url(); ?>" class="btn btn-primary disabled"><h4 class="panel-title"><i class="fa fa-key" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Logged in as:</span> <?php echo $_SESSION['user']; ?></h4></a>
                <a href="<?php echo base_url(); ?>meta/listAll" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-cogs" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Config &amp;&nbsp;<span class="visible-sm-inline"><br></span>Meta Pages</span></h4></a>
                <a href="<?php echo base_url(); ?>meta/view/admin" class="btn btn-primary"><h4 class="panel-title"><i class="fa fa-question-circle" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Admin Help</span></h4></a>
                <a href="<?php echo base_url(); ?>user/logout" class="btn btn-danger"><h4 class="panel-title"><i class="fa fa-sign-out" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Logout</span></h4></a>
            </div>
            <?php
        	}
            ?>            
		</div>
	</header>
	
<main class="container">
<div class="col-md-12">
<div class="letter">