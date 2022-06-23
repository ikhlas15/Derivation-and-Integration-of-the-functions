clear all
 
clc
 
%this program is used to evaluate the derivation and integration of some functions
 
 
title='Hi';
prompt={'please enter your name','please enter your number'};
m=1;
 
while m
    l=inputdlg(prompt,title);
    p=l{2};
    if length(p)~=8 | str2num(p(1:3))<100 | str2num(p(1:3))>200
        f = msgbox('please check your number', 'Error','error');
        pause(2)
    else
        
        f = msgbox('welcome to our program');
        m=0;
    end
end
 
o= menu('calculus', 'integration','derivation' ,'exit');
while o~=3
    switch o
        case 1
            
            w= menu('type of function', 'poly ','exp ',' ln','trig','exit');
            while w~=4
                switch w
                    case 1
                        %this program to find the polynomial
                        syms x
                        syms c
                        
                        %disp('your equ is:a6*x^6+a5*x^5+a4*x^4+a3*x^3+a2*x^2+a1*x+a0')
                        a6=input('give the coff of x^6:')
                        a5=input('give the coff of x^5:')
                        a4=input('give the coff of x^4:')
                        a3=input('give the coff of x^3:')
                        a2=input('give the coff of x^2:')
                        a1=input('give the coff of x^1:')
                        a0=input('give the free coff: ')
                        
                        int_y=(a6*x^7)/7+(a5*x^6)/6+(a4*x^5)/5+(a3*x^4)/4+(a2*x^3)/3+(a1*x^2)/2+a0*x+c
                    case 2
                        %this program to find exponantial
                        syms x
                        syms  c
                        n=input('give n,s.t y=exp(n*x)')
                        int_y=(exp(n*x)/n)+c
                    case 3
                        %this program to find  natural logarithm
                        syms x
                        syms  c
                        n=input('give n,s.t y=ln(n*x)')
                        if n>0
                            int_y=x*log(exp(n*x))-x+c
                        else
                            disp('error')
                        end
                    case 4
                        %this program to find  trigonometric
                        syms x
                        syms c
                        w=input('(y:function you want to find integral  for it),choose 1 if y=sin(n*x),choose  2 if y=cos(n*x),choose  3 if y=tan (n*x)')
                        if w==1
                            n=input('give n s.t,y=sin(n*x)')
                            int_y=(-cos(n*x)/(n))+c
                        elseif w==2
                            n=input('give n s.t,y=cos(n*x)')
                            int_y=(sin(n*x)/(n))+c
                        elseif w==3
                            n=input('give n s.t,y=tan(n*x)')
                            int_y=(log(sec(n*x))/3)+c
                        else
                            disp('error')
                        end
                end
            end
            
            
        case 2
            %this program disp menu
            %this program derivation
            
            der1=menu('choosy type of your function ','poly','exp','ln','trio')
            switch der1
                case 1
                    %this program derivation of poly
                    syms x
                    %disp('your equ is:a6*x^6+a5*x^5+a4*x^4+a3*x^3+a2*x^2+a1*x+a0')
                    a6=input('give the coff of x^6:')
                    a5=input('give the coff of x^5')
                    a4=input('give the coff of x^4')
                    a3=input('give the coff of x^3')
                    a2=input('give the coff of x^2')
                    a1=input('give the coff of x^1')
                    a0=input('give the free coff ')
                    
                    der_y=(6*a6*x^5)+(5*a5*x^4)+(4*a4*x^3)+(3*a3*x^2)+(2*a2*x)+a1
                    
                case 2
                    %this program derivation of exp
                    syms x
                    n=input('give n s.t:y=e^(n*x)')
                    der_y=n*exp(n*x)
                case 3
                    %this program derivation of ln
                    syms x
                    n=input('give n s.t:y=ln(n*x)')
                    
                    der_y=n/(n*x)
                case 4
                    %this program derivation of trigonometric
                    syms x
                    
                    w=input('(y:function you want to find derivative  for it),choose 1 if y=sin(n*x),choose  2 if y=cos(n*x),choose  3 if y=tan (n*x)')
                    if w==1
                        n=input('give n s.t,y=sin(n*x)')
                        der_y=n*cos(n*x)
                    elseif w==2
                        n=input('give n s.t,y=cos(n*x)')
                        der_y=-n*sin(n*x)
                    elseif w==3
                        n=input('give n s.t,y=tan(n*x)')
                        der_y=n*(sec(n*x))^2
                    else
                        disp('error')
                    end
            end
        otherwise
            disp('as you like,thank you for using our program')
    end
end
