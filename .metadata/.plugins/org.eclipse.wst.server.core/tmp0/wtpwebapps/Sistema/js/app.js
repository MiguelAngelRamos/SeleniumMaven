$(document).ready(function() {
	
  $("#form-login").submit(function(event) {
    event.preventDefault();
    authUser();
  });
  
  $("#form-register").submit(function(event) {
    event.preventDefault();
    registerUser();
  });
});

function authUser() {
  let userName = $("#user").val();
  let password = $("#password").val();

  $.ajax({
    type: "POST",
    dataType: "html",
    url: "./ServletAuth",
    data: $.param({
      username: userName,
      password: password
    }),
    success: function(result) {
      let parsedResult = JSON.parse(result);
      console.log(parsedResult);
      if(parsedResult != false) {
        let username = parsedResult['userName'];
        console.log("eyd");
        document.location.href = "home.jsp?username="+username
      }
    }
  })
}

function registerUser() {
  let username = $("#username").val();
  let password = $("#password").val();

  // Obtén los demás campos del formulario

  $.ajax({
    type: "POST",
    dataType: "html",
    url: "./ServletRegister",
    data: $.param({
      username: username,
      password: password
      // Envía los demás campos del formulario
    }),
    success: function(result) {
      // Puedes manejar la respuesta del servidor aquí. Por ejemplo, podrías redirigir al usuario a la página de inicio de sesión después de que se registre exitosamente.
      window.location.href = "index.jsp";
    }
  })
}
