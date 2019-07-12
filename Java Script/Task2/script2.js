function buttonClick(){
    let x1 = parseInt(document.getElementById('x1').value);
    let x2 = parseInt(document.getElementById('x2').value);
    let elements = document.getElementsByName("point");

    if (x1 === "" || x2 === "") {
        alert("Поля х1 и х2 должны быть заполнены!");
    } else if (Number.isNaN(x1) || Number.isNaN(x2)) {
        alert("В поля 1 и 2 должны быть введены числовые значения!");
    } else {
        elements.forEach(el => {
            if (el.checked && el.value === "point1") {
                let resultDiv = document.getElementById('result');
                resultDiv.innerHTML = "sum x1 to x2 = " + getSum(x1, x2);
            } else if (el.checked && el.value === "point2"){
                let resultDiv = document.getElementById('result');
                resultDiv.innerHTML = "Multiply x1 to x2 = " + getMultiply(x1, x2);
            }else if (el.checked && el.value === "point3"){
                let resultDiv = document.getElementById('result');
                resultDiv.innerHTML = "Simple nums x1 to x2 = " + getSimpleNums(x1, x2);
            }
        });
    }
}

function getSum(a, b){
    let sum=0;
    for (let i = a; i<=b; i++){
        sum+=i;
    }
    return sum;
}

function getMultiply(a, b){
    let mult=1;
    for (let i = a; i<=b; i++){
        mult*=i;
    }
    return mult;
}

function getSimpleNums(a, b){
    let buf = [];
    let i = 0;
    let j;
    if (a <= 2){
        buf.push(2);
        i = 2;
    } else {
        i = a;
    }
    while (i <= b){
        for(j = 2; j < i;j++){
            if(i % j === 0){
                break;
            }
        }
        if (j === i && i%(j-1) !== 0){
            buf.push(i);
        }
        i++;
    }
    return buf;
}

function clearNums() {
    document.getElementById("x1").value = "";
    document.getElementById("x2").value = "";
  }