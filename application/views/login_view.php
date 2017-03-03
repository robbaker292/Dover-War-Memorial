<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>

<h2>Login</h2>
<div class="failStatus">
<?php 
	if($fail) {
		echo "Username or password incorrect";
	}
?></div>

<form action="<?php echo base_url();?>user/doLogin" method="post">
  <div class="form-group">
    <label for="username">Username:</label>
    <input type="text" class="form-control" id="username" name="username">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd" name="password">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>