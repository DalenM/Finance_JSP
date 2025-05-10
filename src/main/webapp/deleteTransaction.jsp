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
                            <h1 class= "display-6 bg-secondary text-white font-consolas text-center">Delete Transaction by Id</h1>
                            <form class="form-control" action="deleteTransaction" method="post">
                                <div class="mb-3">
                                  <label for="" class="form-label">Transaction id to delete:</label>
                                  <input class="form-control" name="transaction_id">
                                </div>
                                <div class="d-inline-flex d-md-block col-sm-3 mx-auto">
                                      <div class ="mb-2 row">
                                          <button type="submit" class="btn btn-lg btn-success">Delete</button>
                                      </div>
                                 </div>
                            </form>
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

