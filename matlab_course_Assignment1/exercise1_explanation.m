%{
EXERCISE 1

=================================

Questions 1
%}

E = [zeros(1,10) ones(1,5) zeros(1,8) 2*ones(1,4) zeros(1,12) ones(1,8) zeros(1,12)];
[event_scan_number, event_value] = function1(E);


%{

=================================

Questions 2
%}

[event_scan_number2, event_value2] = function2(E);


%{

=================================

Questions 3
When we use for method, you can define the starting x and  the
maximum x in one line. Also no need to define the iteration. By default
it's increasing by 1.
Whereas in while method, you have to define starting x and the maximum x
seperately. And you need to define the iteration somewhere in the loop.

For the effeciency, I tried to makes 1000x bigger event arrays.
And when using tic toc to find the elapsed time, I find the function1 is
very slightly faster in average out of 10 trials. As you can see in the
table bellow.

function 1	function 2
0.001404	0.003573
0.00205     0.001019
0.001689	0.001252
0.001022	0.002416
0.000972	0.001063
0.001139	0.001211
0.001191	0.002152
0.001533	0.001196
0.000784	0.001272
0.001432	0.001197
	
0.0013216	0.0016351 (average)

=================================

Questions 4

%}

[event_scan_number4, event_value4] = function3(E);

%{

I tried to makes 1000x bigger event arrays.
And when using tic toc to find the elapsed time, I find the function3 is
very slightly faster in average out of 10 trials than both function 1 and function 2.

Because when using loop we have the preallocation that slows the process
down.

function 1	function 2	function 3
0.001404	0.003573	0.001449
0.00205     0.001019	0.000795
0.001689	0.001252	0.001022
0.001022	0.002416	0.002734
0.000972	0.001063	0.000531
0.001139	0.001211	0.000536
0.001191	0.002152	0.000561
0.001533	0.001196	0.000695
0.000784	0.001272	0.001349
0.001432	0.001197	0.000669
		
0.0013216	0.0016351	0.0010341 (average)

%}