// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//constant to make button stay clicked
const btn = document.getElementById('btn');
const calcincrement = document.getElementById('calculator');
initialText = 'Set Custom Price';
toggletext = 'Assign'
// ✅ Toggle button text on click
btn.addEventListener('click', function handleClick() {


if (btn.textContent.toLowerCase().includes(initialText.toLowerCase())) {
    btn.textContent = 'Assign Custom Price to Current Price';
    btn.classList.toggle('active');
    calcincrement.classList.toggle('background'); } 
else if (btn.textContent.toLowerCase().includes(toggletext.toLowerCase())) {
    btn.textContent = initialText;
    btn.classList.toggle('active');
    calcincrement.classList.toggle('background');
  }
});
function reverseincr(){
    reverse = document.getElementById('incr').value;
    reverse = reverse.replace("+", "-")
    //document.getElementById("incr").value = reverse;
    c = document.getElementById("current").value;
    nextbid = c + reverse;
    nextbid = eval(nextbid);
    document.getElementById("current").value = nextbid;
    updatebanner(nextbid);
}
// This function clears all the values
function clearScreen() {
    document.getElementById("custom").value = "";
    document.getElementById("current").value = "";
    document.getElementById("incr").value = "";
}

function customprice() {
    if (btn.textContent.toLowerCase().includes(initialText.toLowerCase())) {
        document.getElementById("custom").value = "";
    }
    else if (btn.textContent.toLowerCase().includes(toggletext.toLowerCase())) {
        i = document.getElementById("custom").value;
        nextbid = eval(i);
        document.getElementById("current").value = nextbid;
        updatebanner(nextbid);
    }}
// This function display values
function display(value) {
    calc = document.getElementById("custom").value += value;
    valuation = eval(calc);
    if (btn.textContent.toLowerCase().includes(initialText.toLowerCase())) {
        document.getElementById("custom").value = "";
        console.log("true");
    }
    else if (btn.textContent.toLowerCase().includes(toggletext.toLowerCase())) {
        document.getElementById("custom").value = valuation;
        i = document.getElementById("custom").value;
        nextbid = eval(i);
    }
    //document.getElementById("current").value = valuation;
    document.getElementById("incr").value = value;
    increment = document.getElementById("incr").value = value;
}
// This function evaluates the expression and returns result
function calculate() {
    i = document.getElementById("incr").value;
    c = document.getElementById("current").value;
    nextbid = c + i;
    nextbid = eval(nextbid);
    document.getElementById("current").value = nextbid;
    updatebanner(nextbid);
    console.log(nextbid);
}

var myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

function updatebanner(price) {
    var raw = JSON.stringify({
        "model": {
            "fields": [
            {
                "defaultValue": "0",
                "id": "Current Price",
                "title": "Price",
                "type": "number"
            }
            ]
        },
    "payload": {
        "Current Price": price
    }
    });

    var requestOptions = {
        method: 'PUT',
        headers: myHeaders,
        body: raw,
        redirect: 'follow'
    };
    postbanner(requestOptions)
}
function postbanner(request) {
    fetch("https://app.singular.live/apiv1/datanodes/1aZlyU6L1TfJCwg1ROXdkf/data", request)
        .then(response => response.text())
        .then(result => console.log(result))
        .catch(error => console.log('error', error));
    }