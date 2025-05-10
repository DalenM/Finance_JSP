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
                            <h1 class= "display-6 bg-secondary text-white font-consolas text-center">Create Transaction</h1>
                            <svg class="mx-auto" fill="seagreen" xmlns="http://www.w3.org/2000/svg" width="75" height="75" fill="currentColor" class="bi bi-bank2" viewBox="0 0 16 16">
                              <path d="M8.277.084a.5.5 0 0 0-.554 0l-7.5 5A.5.5 0 0 0 .5 6h1.875v7H1.5a.5.5 0 0 0 0 1h13a.5.5 0 1 0 0-1h-.875V6H15.5a.5.5 0 0 0 .277-.916zM12.375 6v7h-1.25V6zm-2.5 0v7h-1.25V6zm-2.5 0v7h-1.25V6zm-2.5 0v7h-1.25V6zM8 4a1 1 0 1 1 0-2 1 1 0 0 1 0 2M.5 15a.5.5 0 0 0 0 1h15a.5.5 0 1 0 0-1z"/>
                            </svg>
                            <form class="form-control" action="transaction" method="post">
                                <div class="mb-3">
                                  <label for="" class="form-label">Transaction Name:</label>
                                  <input class="form-control" name="transaction_name">
                                </div>
                                <div class="mb-3">
                                  <label for="" class="form-label">Category Name:</label>
                                  <input class="form-control" name="cat_name">
                                </div>
                                <div class="mb-3">
                                  <label for="" class="form-label">Enter in an amount:</label>
                                  <input class="form-control" name="amount">
                                </div>
                                <div class="mb-3">
                                  <label for="" class="form-label">Enter in expense or income</label>
                                  <input class="form-control" name="enum">
                                </div>
                                <div class="mb-3">
                                  <label for="Enter in a description" class="form-label">Enter in a description:</label>
                                  <textarea class="form-control" name="description" rows="3"></textarea>
                                </div>
                                <div class="btn-toolbar justify-content-between">
                                      <button type="submit" class="btn btn-lg btn-success">Submit Transaction</button>
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

