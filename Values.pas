Unit Values;

interface

type
	
	RealValue = record
		value,error:real;
	end;
	
	IntegerValue = record
		value,error:integer;
	end;
	
	LongIntValue = record
		value,error:longint;
	end;

function RelativeError(value:RealValue):Real;
function RelativeError(value:integerValue):Real;
function RelativeError(value:LongintValue):Real;

function Sum(value1,value2:RealValue):RealValue;
function Sum(value1,value2:integerValue):integerValue;
function Sum(value1,value2:LongintValue):LongintValue;

function Dif(value1,value2:RealValue):RealValue;
function Dif(value1,value2:integerValue):integerValue;
function Dif(value1,value2:LongintValue):longintValue;

function product(value1,value2:realvalue):realvalue;
function product(value1,value2:integervalue):integervalue;
function product(value1,value2:Longintvalue):Longintvalue;

implementation

function RelativeError(value:RealValue):Real;
	begin
		RelativeError:=value.error/value.value;
	end;

function RelativeError(value:integerValue):Real;
	begin
		RelativeError:=value.error/value.value;
	end;

function RelativeError(value:LongintValue):Real;
	begin
		RelativeError:=value.error/value.value;
	end;	
	
function Sum(value1,value2:RealValue):RealValue;
	begin
		Sum.value:=(value1.value+value2.value);
		Sum.error:=(value1.error+value2.error);
	end;
	
function Sum(value1,value2:integerValue):integerValue;
	begin
		Sum.value:=(value1.value+value2.value);
		Sum.error:=(value1.error+value2.error);
	end;

function Sum(value1,value2:LongintValue):LongintValue;
	begin
		Sum.value:=(value1.value+value2.value);
		Sum.error:=(value1.error+value2.error);
	end;

function Dif(value1,value2:RealValue):RealValue;
	begin
		dif.value:=(value1.value-value2.value);
		Dif.error:=(value1.error+value2.error);
	end;

function Dif(value1,value2:integerValue):integerValue;
	begin
		dif.value:=(value1.value-value2.value);
		Dif.error:=(value1.error+value2.error);
	end;

function Dif(value1,value2:LongintValue):LongintValue;
	begin
		dif.value:=(value1.value-value2.value);
		Dif.error:=(value1.error+value2.error);
	end;
	
function product(value1,value2:realValue):realValue;
	begin
		product.value:=(value1.value*value2.value);
		product.error:=(RelativeError(value1)+RelativeError(value2))*product.value;
	end;

function product(value1,value2:LongintValue):LongintValue;
	begin
		product.value:=(value1.value*value2.value);
		product.error:=round(RelativeError(value1)+RelativeError(value2))*product.value;
	end;
	
function product(value1,value2:integerValue):integerValue;
	begin
		product.value:=(value1.value*value2.value);
		product.error:=round(RelativeError(value1)+RelativeError(value2))*product.value;
	end;

	

end.