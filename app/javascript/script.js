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
function getindex(rindex){
    if (lotclass == 'active'){
        lot.classList.remove('active')
        lotclass = document.getElementById("lot").className;
        console.log("Row index is: " + rindex.rowIndex);
        activeindex = rindex.rowIndex;
        showTableData();
        curr = document.getElementById('currentdisplay').innerHTML
        assignlots(curr, previous_lot)}
    else {
        }
}
function getsales(){
    lot = document.getElementById("top filter");
    lot.classList.add('active');
    lotclass = document.getElementById("lot").className;
}
function getlot(){
    lot = document.getElementById("lot");
    lot.classList.add('active');
    lotclass = document.getElementById("lot").className;
}
function showTableData() {
    previous_lot = document.getElementById('currentdisplay').innerHTML
    prevdisplay.innerHTML = previous_lot
    document.getElementById('currentdisplay').innerHTML = "";
    var myTab = document.getElementById('lots');

    // LOOP THROUGH EACH ROW OF THE TABLE AFTER HEADER.
    i = activeindex;

        // GET THE CELLS COLLECTION OF THE CURRENT ROW.
        var objCells = myTab.rows.item(i).cells;

        // LOOP THROUGH EACH CELL OF THE CURENT ROW TO READ CELL VALUES.
        var j = 1; 
            currentdisplay.innerHTML = currentdisplay.innerHTML + ' ' + objCells.item(j).innerHTML;
}
function reverseincr(){
    reverse = document.getElementById('incr').value;
    reverse = reverse.replace("+", "-")
    c = document.getElementById("current").value;
    nextbid = c + reverse;
    nextbid = Function("return " + nextbid)();
    nextbid = parseFloat(nextbid).toFixed(2)
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
        nextbid = Function("return " + i)();
        nextbid = parseFloat(nextbid).toFixed(2)
        document.getElementById("current").value = nextbid;
        updatebanner(nextbid);
    }}
// This function display values
function display(value) {
    calc = document.getElementById("custom").value += value;
    valuation = Function("return " + calc)();
    valuation = parseFloat(valuation).toFixed(2);
    if (btn.textContent.toLowerCase().includes(initialText.toLowerCase())) {
        document.getElementById("custom").value = "";
        console.log("true");
    }
    else if (btn.textContent.toLowerCase().includes(toggletext.toLowerCase())) {
        document.getElementById("custom").value = valuation;
        i = document.getElementById("custom").value;
        nextbid = Function("return " + i)();
        nextbid = parseFloat(i).toFixed(2);
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
    nextbid = Function("return " + nextbid)();
    nextbid = parseFloat(nextbid).toFixed(2)
    document.getElementById("current").value = nextbid;
    updatebanner(nextbid);
}
function sell() {
    document.getElementById("current").value = nextbid;
    assignprice(nextbid);
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
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.fixed-action-btn');
        var instances = M.FloatingActionButton.init(elems, options);
      });


function assignprice(price) {
    var raw = JSON.stringify({
        "model": {
            "fields": [
            {
                "defaultValue": "0",
                "id": "Previous Price",
                "title": "Price",
                "type": "number"
            }
            ]
        },
    "payload": {
        "Previous Price": price
    }
    });

    var requestOptions = {
        method: 'PUT',
        headers: myHeaders,
        body: raw,
        redirect: 'follow'
    };
    sellbanner(requestOptions)
}
function sellbanner(request) {
    fetch("https://app.singular.live/apiv1/datanodes/0wBCj9jgpuVkRLouw5GTqx/data", request)
        .then(response => response.text())
        .then(result => console.log(result))
        .catch(error => console.log('error', error));
    }
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.fixed-action-btn');
        var instances = M.FloatingActionButton.init(elems, options);
      });

      function assignlots(current, previous) {
        var raw = JSON.stringify({
            "model": {
                "fields": [
                {
                    "defaultValue": "",
                    "id": "Current Lot",
                    "title": "Current Lot",
                    "type": "string"
                },
                {
                    "defaultValue": "",
                    "id": "Previous Lot",
                    "title": "Previous Lot",
                    "type": "string"
                } ]
            },
        "payload": {
            "Current Lot": current,
            "Previous Lot": previous
        }
        });
    
        var requestOptions = {
            method: 'PUT',
            headers: myHeaders,
            body: raw,
            redirect: 'follow'
        };
        selectlots(requestOptions)
    }
    function selectlots(request) {
        fetch("https://app.singular.live/apiv1/datanodes/3Jg1CZPwWJhoP1bgJeuMK8/data", request)
            .then(response => response.text())
            .then(result => console.log(result))
            .catch(error => console.log('error', error));
        }
        document.addEventListener('DOMContentLoaded', function() {
            var elems = document.querySelectorAll('.fixed-action-btn');
            var instances = M.FloatingActionButton.init(elems, options);
          });