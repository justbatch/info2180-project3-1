<form action="" method="POST" class="form-horizontal" autocomplete="false" onsubmit="return createUser()" >
	<div class="form-group">
		<label class="control-label col-sm-2" for="firstname">First Name:</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="firstname" placeholder="Enter First Name" />
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="lastname">Last Name:</label>
		<div class="col-sm-10"> 
			<input type="text" class="form-control" id="lastname" placeholder="Enter Last Name" />
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="username">Username:</label>
		<div class="col-sm-10"> 
			<input type="text" class="form-control" id="username" placeholder="Enter Username" />
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="password">Password:</label>
		<div class="col-sm-10"> 
			<input type="password" class="form-control" id="password" placeholder="Enter Password" />
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="confirmpwd">Connfirm Password:</label>
		<div class="col-sm-10"> 
			<input type="password" class="form-control" id="confirmpwd" placeholder="Confirm Password" />
		</div>
	</div>
	<div class="form-group"> 
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary col-xs-2" id="newuser">Submit</button>
		</div>
	</div>
	<div class="alert alert-danger alert-dismissable" id ='alert-dismissable'>
		<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
		<strong>Attention!</strong> <span id="text"></span>
	</div>
	<div class="alert alert-success alert-dismissable" id ='alert-dismissable'>
		<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
		<strong>Success!</strong> Account Created successfully
	</div>
</form>
<script type="text/javascript" src = "js/newuser.js"></script>
