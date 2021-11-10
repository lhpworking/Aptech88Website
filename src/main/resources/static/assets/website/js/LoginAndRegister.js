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
            alert(data);
        }
    })
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