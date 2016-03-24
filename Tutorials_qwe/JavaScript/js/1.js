//Data type
//Functions
//This
//Prpperty
//Inheritanse
//Events



//Events
//onclick, onchange, onmouseover, onkeydown, onload
function getNumber(count){

	 var num = document.getElementById("btn");
  alert(num.innerHTML);
  alert (count);
}

/*function printInput(){
	var print = document.getElementById("input");
	alert(print);
}*/

function Welcome(){
	alert("Welcome to our page");
}

//console.log();

//Equals

var first = 1;
var firstNum = "1";

if (first == firstNum) {

 console.log("Its true");
} 

if (first === firstNum) {
	// === proverqva i po tip i po stoinost
} 
else{
	console.log("Its false ===");
}

//String

var string = "This is Javascript String";

var firstletter = string.charAt(1);
console.log(firstletter);

var subStr = string.substring(1,6);
console.log("This is substr: " + subStr)


//Number
var number = 100;
var countDigits = number.toFixed(2);
var hexDigits = number.toString(16);
console.log(countDigits);
console.log(hexDigits);

//Bolean

var isTrue = false;
var checkIsTrue = isTrue.toString();
console.log(checkIsTrue);
console.log(isTrue == 0);
console.log(true == 0);
console.log(true == 1);


//Creating Object
var obj = new Object();

//objSecond will be point to the location of objFirst
// in memory 
var objFirst = new Object();
var objSecond = objFirst;

//Value is some property
objFirst.value = "Some value";
objFirst.number = 1515;

console.log(objFirst.value);
console.log(objFirst.number);

 var array = [];

/* for (var i = 0; i < 10; i++) {
 	array.push(i);
 	console.log(array[i]);
 }*/

 // http://web.napopa.com/bg/2011/03/references/working-with-javascript-jquery/
 // https://docs.oracle.com/cd/E21454_01/html/821-2562/admn_mi-edm-reports_p.html

array["push"](123);
var method = "push";
array[method](33333);
console.log(array[1]);

var arr = new Array();
var date = new Date();
var err = new Error("Some Error");
var func = new Function("Console.log('Test');");
var objects = new Object();
var re = new RegExp("\\d+");

//Literal Forms; Objects Literal
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




//instanceof
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

var object_methods = {
	method : "Javascript",
	test : function() {
		console.log("asdfasdf");
	}
};


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
