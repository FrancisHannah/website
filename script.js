
       function addGuest()
       {
              $.ajax({
                  url: 'addusers.php',
                  method: "POST",
                  data: {			
                    firstname: $("#firstname").val(),
                    lastname: $("#lastname").val(),
                    email: $("#email").val()
                  },
                  dataType: "json",
                  success: function(result){
                    console.log(result);
                    if (result.status != 'ok')
                    {
                      alert("Something went wrong!");
                      return;
                    }
                    $("#tabular").html(cformtable());
                    getallguest();          
                  }
                });
       }


       function cformtable()
  {
    /*
    name, gender, age, mobile no, body temp, covid-19 diagnosed(y/n), covid-19 encounter(y/n), 
    vacinated(y/n), nationality
    */
    return '<div class="card-body">' + 
          '<table id="tabentries" class="table table-bordered table-hover">' + 
             '<thead>' + 
                '<tr>' + 
                   '<th>Lastname </th>' + 
                   '<th> Firstname </th>' + 
                   '<th> Email </th>' + 
                '</tr>' + 
              '</thead>' + 
              '<tbody>' + 
              '</tbody>' + 
          '</table>' +
          '<br />' +
          '<div id="next"></div>' +
      '</div>';
  }

  function cformtablerow(par_row)
  {
    $("#tabentries  tbody").append(
             '<tr id="' + par_row.id + '">' + 
                '<td>' + par_row.lastname + '</td>' + 
                '<td>' + par_row.firstname + '</td>' + 
                   '<td>' + par_row.email +'</td>' + 
                '</tr>'
    );
  }

       function getallguest()
       {
        //[{"id":"6","firstname":"Perlita","lastname":"Bayabas","email":"perlita.bayabas@mainit.com"},
        $.ajax({
                url: 'getallguests.php',
                method: "GET",
                data: {},
                dataType: "json",
                success: function(response){
                  $.each(response, function(key, value){
                    cformtablerow({    
                                    id: value.id,
                                    firstname: value.firstname,
                                    lastname: value.lastname, 
                                    email: value.email
                              }
                        );
                    
                  });
                }		
                
              });
       }

      function start()
      {
        $("#tabular").html(cformtable());
        getallguest();
      }
      start();
    
