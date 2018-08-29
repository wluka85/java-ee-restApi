function phoneNumber() {

    const telephone = document.getElementById("telID");
    const phoneno = '^[0-9]+$';

    if(telephone.value.match(phoneno)){
        return true;
    }
    else {
        alert("type numbers!");
        return false;
    }
}