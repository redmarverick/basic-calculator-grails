<html>
<head>
    <title>Basic Calculator</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Basic Calculator</h2>

        <form class="mb-4" action="${createLink(controller: 'calculator', action: 'calculate')}" method="POST">
            <div class="row justify-content-center">
                <div class="col-auto">
                    <input class="form-control" type="number" name="num1" placeholder="Enter a number">
                </div>
                <div class="col-auto">
                    <select class="form-control" name="operator">
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="*">*</option>
                        <option value="/">/</option>
                    </select>
                </div>
                <div class="col-auto">
                    <input class="form-control" type="number" name="num2" placeholder="Enter another number">
                </div>
                <div class="col-auto">
                    <input class="btn btn-primary" type="submit" value="Calculate">
                </div>
            </div>
        </form>

        <div class="bg-light border rounded p-4">
            <p class="text-lg font-weight-bold">Result: <span class="text-primary">${result}</span></p>
        </div>
    </div>
</body>
</html>
