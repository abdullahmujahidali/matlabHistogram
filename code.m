clc,clear,close all

% a)
R = randn(10000,1);
%
% b)
x1 = R(find(R>-2.25 & R<-1.75));
%
% c)
%x1 = R(find(R>-2.25 & R<-1.75));
x2 = R(find(R>-1.75 & R<-1.25));
x3 = R(find(R>-1.25 & R<-0.75));
x4 = R(find(R>-0.75 & R<-0.25));
x5 = R(find(R>-0.25 & R<0.25));
x6 = R(find(R>0.25 & R<0.75));
x7 = R(find(R>0.75 & R<1.25));
x8 = R(find(R>1.25 & R<1.75));
x9 = R(find(R>1.75 & R<2.25));
%
% d)
n1 = length(x1);
n2 = length(x2);
n3 = length(x3);
n4 = length(x4);
n5 = length(x5);
n6 = length(x6);
n7 = length(x7);
n8 = length(x8);
n9 = length(x9);
n = [n1;n2;n3;n4;n5;n6;n7;n8;n9];
%
% e)
centers = [-2;-1.5;-1.0;-0.5;0;0.5;1.0;1.5;2.0];
%
% f)
edges = [-2.25;-1.75;-1.25;-0.75;-0.25;0.25;0.75;1.25;1.75;2.25];
%
% g)
figure,
subplot(1,2,1)
bar(centers,n,1,'g'),xlim([-2.5 2.5]),grid on,title('using centers and n')
subplot(1,2,2)
histogram(R,centers),grid on,title('using histogram')
