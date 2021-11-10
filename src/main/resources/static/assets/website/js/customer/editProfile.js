function editProfile(newProfile) {
    return $.ajax({
        method: 'post',
        url: 'http://localhost:8000/AccountEdit',
        contentType: 'application/json',
        data: JSON.stringify(newProfile)
    })
}