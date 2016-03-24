function getFunction (count){

	var num = document.getElementById("btn_number");
	var text = document.getElementById("btn_text");
	//num = 5;
/*	alert(num.innerHTML);
	alert(text.innerHTML);

	alert(count);
	alert(count);*/

	 alert(num[0]);  //zasto ne trygvat po tozi nachin
	// alert(text);
}

/*function printInput(){
	var print = document.getElementById("input_name");
	alert(print); // zashto ne pokazva stoinost a prazen element
}*/

// Equals

// ne e nujno da se slaga var pred vsqka promenliva, zashtoto veche sme e deklarirali ne e kato v PHP

var number_1 = 1;
var number_2 = "1";

if (number_1 == number_2) {
	console.log("TRUE")
}

 if (number_1 === number_2) {
 	console.log("TRUE");
 } else {
 	console.log("FALSE");
 }

 // STRING

 var text = "This minimizes the use of global variables which can cause problems when combining code.";

var firstText = text.charAt(1);
 console.log(firstText);

 var firstText1 = text.charAt(9);
 console.log(firstText1);

 var subStrText = text.substring(1,20);
 console.log(subStrText);

 // Number

 var number = 250544454645454;
 var countNumber = number.toFixed(20);
 console.log(countNumber);

 var hexNumber = number.toString(2);
 console.log(hexNumber);

 //Bolean

 var isTrue = false;
var checkIsTrue = isTrue.toString();
console.log(checkIsTrue);
console.log(isTrue == 0);
console.log(true == 0);
console.log(true == 1);

//OBJECT
 
var objFirst = new Object(); // syzdavane na obekt no nemoga da si go predstavq kakvo e vsyshnost
var objSecond = objFirst; // syzdava se syshtiq obekt iili samo se syzdava obeky

objFirst.value = "stoinost na obekta";
objFirst.number = 1515151515;

// zashto se dostypva s tochka (.)

console.log(objFirst.value);
console.log(objFirst.number);

// syzdavane na msiv

var array = [];

for (var i = 0; i < 50; i++) {
	array.push(i);
	console.log(array[i]);
}

array["push"](100);
var method = "push";
array[method](200);

for (var i = 0; i < array.length; i++) {
	console.log(array[i]);
}


var arr = new Array();
var date = new Date();
var err = new Error("Some Error");
var func = new Function("Console.log('Test');");
var objects = new Object();
var re = new RegExp("\\d+");

console.log(arr);
console.log(date);
console.log(err);
console.log(func);
console.log(objects);
console.log(re);

//literals Forms

var car= {
	mark : "BMW",
	price : 15151,

}

console.log(car);
console.log(err);

var getype = typeof(car);
console.log(getype);
var getDate = typeof(date);
console.log(getDate);

//instanceof kakvo e instancq v primera se vijda samo che vryshta true i false. dali sa da proverqva dali sa ot tezi tipove dannite ili za neshto drugo
// ili instanceof kata etin tip da stava drug tip danni
console.log(getDate instanceof Date);
console.log(array instanceof Object);
console.log(array instanceof Array);


console.log(Array.isArray(array));



//In JavaScript there is not such thing as 
//Overloading method

function method_test(){
console.log("1");
}

function method_test(){
	console.log("2");
}


method_test();
//object methods

// pechata se posledniq metod ako ima dva ednakvi s edno i syshto ime izpylnqva se posledniqt koito sreshtane v skopa na koda

var object_methods = {
	method : "Javascript",
	test : function() {
		console.log("asdfasdf");
	}
}; // v Objsect metoda  moje da ima i finkcii masivi a kalsove moje li da ima i dali object e podobno na clasovete
 

var test_date = new Date();
console.log(test_date);

var setDate = new Date(2016, 00,21);
console.log(setDate);
console.log(test_date > setDate);


//array.splice(index,howmany to cut,item1,.....,itemX)

var fruits = ["Banana", "Orange", "Apple", "Mango"];
fruits.splice(0, 0, "Lemon", "Kiwi"); 

for (var i = 0; i < fruits.length; i++) {
	 console.log(fruits[i]);
}

// length - dyljinata na masiva