pKa=c(2.0,8.0)
Ka=10**(-pKa)
Kac=cumprod(Ka)


pH=seq(1,13,0.1)
H=10**(-pH)

n=length(pKa)
m=length(pKb)

i=1:n
j=1:m

Ca=0.2
Cb=0.1
Va=20.0
Vb=14.0

Kw=10**(-14)

D=H**2+Kac[1]*H+Kac[2]
alpha0=H**2/D
alpha1=Kac[1]*H/D
alpha2=Kac[2]/D

Cb=Ca*alpha1+Ca*alpha2+Kw/H

plot(pH,alpha0,type="l")
lines(pH,alpha1)
lines(pH,alpha2)
