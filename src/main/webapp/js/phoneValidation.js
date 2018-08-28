function phoneNumber() {


    const telephone = document.getElementById("telID");

    console.log("dupa" + telephone.value);

    const phoneno = '^[0-9]+$';
    if(telephone.value.match(phoneno)){
        return true;
    }
    else {
        alert("type numbers!");
        return false;
    }
}