

$(
		function(){
				
			    $("#addAppForm").hide();
				$("#searchResultTable").hide();
				
					
				$("#cancel").click(function(){
					$("#addAppForm").hide();
					$("#newBtn").attr('value', 'NEW');
				});
				
				
				var contextRoot = "/" + window.location.pathname.split( '/' )[1];
				
				//populating the appointment table dynamically from ajax call
						$.ajax({
							type: 'GET',
							url: contextRoot + '/getAllAppointment',
							dataType: "json",           // Accept header
							success: function(response){
								
								for(i=0;i<response.length;i++){
									$("#newlyAddResult").after('<tr><td> ' + response[i].date + '</td>'  
										+	'<td> ' + response[i].time + '</td>'
										+	'<td> ' + response[i].description + '</td>'
										+	'</tr>')
								}	
								
							},
							error: function(errorObject ){
								
					 		}
						});
				
				
				
				//adding new appointment
				
				$("#newBtn").click(function(){
					if($("#newBtn").val()=="NEW"){
						$("#newBtn").attr('value', 'ADD'); 
						$("#addAppForm").show();
					}
					else{
				
							var dataToSend = {
									date: $("#date").val(),
									time: $("#time").val(),
									description: $("#description").val()
							}
							
								$.ajax({
									type: 'POST',
									url: contextRoot + '/add',
									dataType: "json",           // Accept header
									data: JSON.stringify(dataToSend),
									contentType: 'application/json',   // Sends - Content-type
									success: function(response){
										$("#newlyAddResult").after('<tr><td> ' + response.date + '</td>'  
											+	'<td> ' + response.time + '</td>'
											+	'<td> ' + response.description + '</td>'
											+	'</tr>')
										
									},
									error: function(errorObject ){
										if (errorObject.responseJSON.errorType == "ValidationError") {
								 			$('#errors').html("");
								 			$("#errors").append( '<H3 align="center"> Error(s)!! <H3>');                
								  			    $("#errors").append( '<p>');
								  	
								  			    var errorList = errorObject.responseJSON.errors;
								 	 	        $.each(errorList,  function(i,error) {			   
								 		    		$("#errors").append( error.message + '<br>');
										    	 });
								 	 	        $("#errors").append( '</p>');
								 	 	        $('#errors').show();
										}
										else {
											alert(errorObject.responseJSON.errors(0));   // "non" Validation Error
										}
							 		}
								});
						}
				});
				
				
			//searching new appointments
				$("#searchBtn").click(function(){
					var searchedApp = $("#searchTxt").val();
					var uri
					
					if(searchedApp == "")
						uri = contextRoot + '/getAllAppointment';
					else
						uri = contextRoot + '/getAppointmentsByDate/' + searchedApp;
					
					$.ajax({
						type: 'GET',
						url: uri,
						dataType: "json",           // Accept header
						success: function(response){
							$("#fullResultTable").hide();
							$("#searchResultTable").show();
							$("#newSearchedResult").html("");
							for(i=0;i<response.length;i++){
								$("#newSearchedResult").append('<tr><td> ' + response[i].date + '</td>'  
									+	'<td> ' + response[i].time + '</td>'
									+	'<td> ' + response[i].description + '</td></tr>')
							}
						},
						error: function(errorObject ){
							
				 		}
		
					});
				});	
				
					//searching new appointments
					
		});