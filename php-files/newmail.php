
<form action="" method="POST" onsubmit="return sendMessage()" >
	<fieldset>
		<div class="form-group">
			<label class="form-control-label" for="recipients">Recipient</label>
			<input type="text" name="recipients" id="recipients" class="form-control" placeholder="Each seperated by semi-colan Eg. KevMaster; DreRussel;" autocomplete="false" /><br />
		</div>
		<div class="form-group">
			<label class="form-control-label" for="subject">Subject</label>
			<input type="text" name="subject" id="subject" class="form-control" placeholder="My Subject" autocomplete="false" /><br />
		</div>
		<div class="form-group">
			<label class="form-control-label" for="msgBody">Message</label>
			<textarea class="textarea form-control" id="msgBody" name="msgBody" wrap="on" cols="30" rows="5" placeholder="This is my first message" autocomplete="false"></textarea><br />
		</div>
		<div class="alert alert-danger alert-dismissable" id ='alert-dismissable'>
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			<strong>Required!</strong> All fields highlighted are required
		</div>
		<div class="alert alert-success alert-dismissable" id ='alert-dismissable'>
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			<strong>Success!</strong> Messages were delivered successfully
		</div>
		<div class="alert alert-warning alert-dismissable" id ='alert-dismissable'>
			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
			<strong>Warning!</strong> We are experiencing some difficulties. Please refresh.
		</div>
		<button type="submit" class="btn btn-primary col-xs-2" id="send">Send</button><br />
		
	</fieldset>
</form>
<script type="text/javascript" src = "js/handlemessage.js"></script>