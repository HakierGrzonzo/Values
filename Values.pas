Unit Values

interface

type
	
	RealValue = record;
		vlaue,error:real;
		exponent:longint;
	end;
	
	IntegerValue = record;
		value,error,exponent:integer;
	end;
	
	LongIntValue = record;
		value,error,exponent:longint;
	end;

function RelativeError(value:RealValue):Real;
function RelativeError(value:integerValue):Real;
function RelativeError(value:LongintValue):Real;

function Sum(value1,value2:RealValue):RealValue;
function Sum(value1,value2:integerValue):integerValue;
function Sum(value1,value2:LongintValue):LongintValue;

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
	
end.