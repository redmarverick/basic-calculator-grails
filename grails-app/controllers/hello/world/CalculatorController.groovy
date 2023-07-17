package hello.world

class CalculatorController {
    def index() { }

    def calculate() {
    def num1 = params.num1.toInteger()
    def num2 = params.num2.toInteger()
    def operator = params.operator
    def result

    switch (operator) {
        case "+":
            result = num1 + num2
            break
        case "-":
            result = num1 - num2
            break
        case "*":
            result = num1 * num2
            break
        case "/":
            result = num1 / num2
            break
        default:
            result = "Invalid operator"
    }

    render view: "index", model: [num1: num1, num2: num2, operator: operator, result: result]
}



}
