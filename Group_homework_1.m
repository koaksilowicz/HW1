%%Section 1:
 %% Q1: Logical comparisons
 % (a)
a = 5<10
disp(a)  % it is an output: 1 - TRUE, 0 - FALSE

 % (b)
b = 7<10 | 7>0
disp(b) % If output is 1 - TRUE, so 7 can be as smaller than 10, as to be positive, as to be smaller than 10 or positive. If answer is 0 - FALSE, so 7 is bigger than 10 and negative.

%(c)
c = 7>5 & 7/2==0
disp(c) % If output is  1 - TRUE that means 7 is bigger than 5 and in the same time it is even. If the answer is 0 - False, that means any other option.

%(d)
d1 = 'duck'; 
d2 ='goose';
d = ~strcmp(d1, d2) 
disp(d) % '~' helps to reflect 'not' question. The answer is 1 (TRUE) it means that the words are not the same.

%% Q2:Conditionals
% (a)
% I can use input
prompt = "What is the temperature today? ";
tnow =input(prompt)
%
% Or just type a value
%tnow = 9
% (b)
if tnow < 0;
    display 'The puddle will freeze'
else
    display 'The puddle will not freeze'
end
% (c)
%tnow = 9
answer1 = ['The puddle will freeze as the temperature today is ', num2str(tnow),' degrees Celsius.'];
answer2 = ['The puddle will not freeze as the temperature today is ' , num2str(tnow) ,' degrees Celsius.'];
if tnow < 0;
    disp(answer1)
else
   disp(answer2)
end

%% (d)
prompt = "What is the temperature today? ";
tnow =input(prompt)
ans1 = ['The temperature today is ', num2str(tnow),' degrees Celsius and it is snowing.'];
ans2 = ['The temperature today is ', num2str(tnow) ,' degrees Celsius and it is raining.'];
ans3 = ['The temperature today is ', num2str(tnow) ,' degrees Celsius and there is no precipitation today.'];
prompt = "Is the weather bad today? yes/no ";
wnow = input(prompt,'s');
if tnow < 0 & strcmp(wnow,'yes');
    disp(ans1);
elseif  tnow > 0 & strcmp(wnow,'yes');
    disp(ans2)
elseif [tnow > 0 | tnow < 0] & strcmp(wnow,'no');
    disp(ans3)
else
   display 'Error. Start again.'
end

%% Q2: Logical Bonus
x = randi(10,100,1)
elem_btw_5_8=sum(X>5&X<8);
elem_btw_5_8=sum(5<X<8);