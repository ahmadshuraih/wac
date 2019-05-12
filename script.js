nummer = undefined;
operator = undefined;
input = "0";
leeg = true;
comma = true;

function herstelInput() {
    document.querySelector("#input").innerHTML = input;
}

function voegNaarInput(num) {
    num = num.toString();
    if (leeg) {
        input = num;
        leeg = false;
    } else {
        input += num;
    }
    herstelInput();
}

function commaToevoegen() {
    if (leeg && comma) {
        input = "0.";
        leeg = false;
        comma = false;
        herstelInput();
    } else if(!leeg && comma){
        input += ".";
        comma = false;
        herstelInput();
    }
}

function operatie(op) {
    nummer = input;
    leeg = true;
    comma = true;
    operator = op;
    herstelInput();
}

function leegmaken() {
    nummer = undefined;
    operator = undefined;
    leeg = true;
    comma = true;
    input = "0";
    herstelInput();
}

function rekenen() {
    var n1 = parseFloat(nummer);
    var n2 = parseFloat(input);
    if (operator === "+") {
        input = n1 + n2;
    } else if (operator === "-") {
        input = n1 - n2;
    } else if (operator === "*") {
        input = n1 * n2;
    } else if (operator === "/") {
        input = n1 / n2;
    }
    herstelInput();
    leeg = true;
    nummer = undefined;
    operator = undefined;
}

var btn_1 = document.querySelector("#btn_1");
var btn_2 = document.querySelector("#btn_2");
var btn_3 = document.querySelector("#btn_3");
var btn_4 = document.querySelector("#btn_4");
var btn_5 = document.querySelector("#btn_5");
var btn_6 = document.querySelector("#btn_6");
var btn_7 = document.querySelector("#btn_7");
var btn_8 = document.querySelector("#btn_8");
var btn_9 = document.querySelector("#btn_9");
var btn_0 = document.querySelector("#btn_0");
var btn_comma = document.querySelector("#btn_comma");
var btn_plus = document.querySelector("#btn_plus");
var btn_min = document.querySelector("#btn_min");
var btn_keer = document.querySelector("#btn_keer");
var btn_div = document.querySelector("#btn_div");
var btn_is = document.querySelector("#btn_is");
var btn_leegmaken = document.querySelector("#btn_leegmaken");


btns_num = [btn_0, btn_1, btn_2, btn_3, btn_4, btn_5, btn_6, btn_7, btn_8, btn_9];

btns_num.forEach(function(btn) {
    btn.addEventListener("click", function () {
        voegNaarInput(btn.innerHTML)
    });
});

btns_op = [btn_plus, btn_min, btn_keer, btn_div];
btns_op.forEach(function(btn) {
    btn.addEventListener("click", function () {
        operatie(btn.innerHTML)
    });
});

btn_comma.addEventListener("click", commaToevoegen)
btn_leegmaken.addEventListener("click", leegmaken);
btn_is.addEventListener("click", rekenen);


