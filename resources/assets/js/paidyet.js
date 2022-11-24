
const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);

const paypage = urlParams.get('paypage');

PaidYET.init(paypage);
PaidYET.renderCOFForm('card-element-cof');

$("a[name=tokenizecard]").click(function(e){ 
    PaidYET.processPayment(function (e) {
        if (e.success) {
            alert('card type: '+e.type+' token: '+e.token);
        }
    });
})