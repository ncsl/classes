clear all;

V= [-120:1:60];

for i=1:length(V)
    if(V(i) ~= -60)

        An(i) = (0.01*(V(i)+60))/(1-exp((-V(i)-60)/(10)));
        Bn(i) = 0.125*exp((-V(i)-70)/(80));

        nHH(i)= (An(i)/(An(i)+Bn(i)));
        %tnHH(i)=1/(An(i)+Bn(i));
    end

end
nHH(61)= (nHH(60)+nHH(62))/2;
tnHH(61)= (tnHH(60)+tnHH(62))/2;

plot(V(1:length(V)),nHH(1:length(nHH)),'b')
hold on
%plot(V(1:length(V)),tnHH(1:length(tnHH)),'r')

%plot(tnHH(1:length(tnHH)),nHH(i:length(nHH)),'g')
