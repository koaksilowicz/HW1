%%Section 1:

Q1: Logical comparisons

 % (a)
a = 5<10;
disp(a)  % if the output is 1 - TRUE, 0 - FALSE

 % (b)
b = 7<10 | 7>0;
disp(b) % If the output is 1 - TRUE, so 7 is either smaller than 10, or positive, or both. If answer is 0 - FALSE, then 7 is bigger than 10 and negative.

%(c)
c = 7>5 & 7/2==0;
disp(c) % If output is  1 - TRUE that means 7 is bigger than 5 and at the same time, it is even. If the answer is 0 - False, that means any other option.

%(d)
d1 = 'duck'; 
d2 ='goose';
d = ~strcmp(d1, d2); 
disp(d) % '~' helps to reflect 'not' question. The answer is 1 (TRUE) it means that the words are not the same.


Q2:Conditionals
% (a)
% I can use input:
prompt = "What is the temperature today? ";
tnow = input(prompt);
% Or just type a value:
% tnow = 9

% (b)
if tnow < 0
    disp('The puddle will freeze')
else
    disp('The puddle will not freeze')
end
% (c)
%tnow = 9
answer1 = ['The puddle will freeze as the temperature today is ', num2str(tnow),' degrees Celsius.'];
answer2 = ['The puddle will not freeze as the temperature today is ' , num2str(tnow) ,' degrees Celsius.'];
if tnow < 0
    disp(answer1)
else
   disp(answer2)
end

% (d)
prompt = "What is the temperature today? ";
tnow = input(prompt);
ans1 = ['The temperature today is ', num2str(tnow),' degrees Celsius and it is snowing.'];
ans2 = ['The temperature today is ', num2str(tnow) ,' degrees Celsius and it is raining.'];
ans3 = ['The temperature today is ', num2str(tnow) ,' degrees Celsius and there is no precipitation today.'];
prompt = "Is the weather bad today? yes/no ";
wnow = input(prompt,'s');
if tnow < 0 && strcmp(wnow,'yes') % means that temperature is below 0 and the weather is bad (snowing)
    disp(ans1);
elseif  tnow >= 0 && strcmp(wnow,'yes') % means that temperature is 0 or over 0 and weather is bad (raining)
    disp(ans2)
elseif [tnow >= 0 || tnow < 0] & strcmp(wnow,'no'); % means there is any temperature below or above or equal 0, and there is no precipitation today
    disp(ans3)
else
   disp 'Error. Start again.' %in case other factors that were not considered (no yes/no or no number used) is written in input
end


Q2: Logical Bonus
X = randi(10,100,1);
% (A)
elem_btw_5_8=sum(X>5&X<8);
disp(elem_btw_5_8)

% (B)
elem_btw_5_8=sum(5<X<8); 
disp(elem_btw_5_8)

% A is the one we should use if we want to count all the elements with a
% value between 5 and 8. B will show us all of the numbers, since all of them are either above 5 or below 8, 
% meaning the answer will be much higher than the answer provided from A. 


Q3: Matrices, subscript, and linear indexing
% (a)
square = zeros(9)

% (b)
element = square(2,2)
sub2ind([9,9],2,2)
element = square(11) %Linearly index

% (c)
square(5,5) = 5

% (d)
rectangle = ones(2,9)

% (e)
rotrectangle = transpose(rectangle) % transpose the rectangle 
transrectangle = rectangle' %other way to transpose
square(1:end,1:2) = transrectangle(1:end,1:2)

% (f)
newrectangle = rectangle(1:2,1:9).*square(1:2,1:9) % use .* to multiply element-wise


Q4: Interpreting code/Using doc
% (a)
ToSearch = [1:4;5:8];
ToSearch  %it is a matrix with 2 rows and 4 columns

% find(x) returns a column with the linear indices of elements matching the search query.

LinInds = find(ToSearch > 4);  
LinInds 
% This code requests linear indices of each element which is bigger than 4.
% This function gives back a column with the corresponding indices of the numbers. We can check it manually
% in this case - 5 is bigger than 4 and it's linear index is 2, next value
% which is bigger than 4 is 6 - its linear index is 4, etc.

% (b)
ToSearch = [1:4;5:8]
[rows,columns] = find(ToSearch > 4)
% This code requests the row and column subscripts to the elements. 
% In this case, there will be two columns in output. 
% 1st column is a column with row number and 2nd column shows column number for
% each element matching the search query. For example, an index of the
% first element which is bigger than 4 is (2,1) second row, first column,
% etc.

