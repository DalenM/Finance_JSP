<html>
<head>
    <title>Personal Finance</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
  </head>
  <body style="background-color: green;">
        <section>
            <div class="container position-absolute top-50 start-50 translate-middle max-width">
                <div class="row">
                    <div class="col-12 col-sm-8 col-md-6 mx-auto">
                        <div class="card border-3 shadow">
                            <h1 class= "display-6 bg-secondary text-white font-consolas text-center">Login</h1>
                            <svg class="mx-auto" fill="seagreen" xmlns="http://www.w3.org/2000/svg" width="75" height="75" fill="currentColor" class="bi bi-person-badge-fill" viewBox="0 0 16 16">
                              <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2zm4.5 0a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1zM8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6m5 2.755C12.146 12.825 10.623 12 8 12s-4.146.826-5 1.755V14a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1z"/>
                            </svg>
                            <form class="form-sign" action="login" method="post">
                                <input type="text" class="form-control my-3 py-2" name="username" placeholder="Username">
                                <input type="text" class="form-control my-3 py-2" name="password" placeholder="Password">
                                <div class="d-inline-flex d-md-block col-sm-3 mx-auto">
                                    <div class ="mb-2 row">
                                        <button type="submit" class="btn btn-lg btn-success">Sign in</button>
                                    </div>
                               </div>

                                <h2>
                                   <c:if test="${not empty loginError}">
                                      <c:out value="${loginError}"/>
                                   </c:if>
                                </h2>
                             </form>
                             <p class="text-center">Do not have an account?<a href="createAccount.jsp">Create Account</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js" integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D" crossorigin="anonymous"></script>
  </body>
</html>

