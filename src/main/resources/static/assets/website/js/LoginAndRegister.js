function createAccountApi(obj) {
    obj.name = obj.firstName + ' ' + obj.lastName;
    $.ajax({
        method: 'post',
        url: 'http://localhost:8000/AccountCreate',
        contentType: 'application/json',
        async: false,
        data: JSON.stringify(obj),
        success: function(data) {
            alert('Please check your email to verify information accoumt');
        },
        error: function(data) {
            alert(JSON.stringify(data.responseText));
        }
    })
}

function phonenumber(inputtxt) {
    var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    if (inputtxt.match(phoneno)) {
        return true;
    } else {
        return false;
    }
}

function loginApi(obj) {
    return $.ajax({
        method: 'post',
        url: 'http://localhost:8000/AccountLogin',
        contentType: 'application/json',
        async: false,
        data: JSON.stringify(obj)
    })
}