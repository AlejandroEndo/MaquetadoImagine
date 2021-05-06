function newArray1 (myArray){
	for(let i = 0; i< myArray.length; i++){
		myArray[i] = countStrings(myArray[i]);
	}
	return myArray;
}

function countStrings1 ( text) {
	return text.length.toString();
}

function newArray2 (myArray){
	for(let i = 0; i< myArray.length; i++){
		myArray[i] = countStrings(myArray[i]);
	}
	return myArray.sort(function(a, b){return b-a});
}

function countStrings2 ( text) {
	return text.length;
}

function findNumber3(myNumbers, target){
	return myNumbers.find((number) => number == target);
	//for(let i = 0; i < myNumbers.length; i++){
	//	if(myNumbers[i] == target) return i;
	//}
}

function helloWorld4(hello) {
	return (world)=>  hello + ' ' + world;
}