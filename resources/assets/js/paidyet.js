PaidYET.init($paypage);
PaidYET.renderCOFForm('card-element-cof');

$("a[name=tokenizecard]").click(function(e){ 
    PaidYET.processPayment(function (e) {
        if (e.success) {
            alert('card type: '+e.type+' token: '+e.token);
        }
    });
})