import graph3;
import apexstyle;


//ASY file for figtripintroa3D.asy in Chapter 13


size(200,200,IgnoreAspect);
//currentprojection=perspective(7,2,1);
currentprojection=orthographic(4,4,2);
defaultrender.merge=true;

usepackage("mathspec");
texpreamble("\setallmainfonts[Mapping=tex-text]{Calibri}");
texpreamble("\setmainfont[Mapping=tex-text]{Calibri}");
texpreamble("\setsansfont[Mapping=tex-text]{Calibri}");
texpreamble("\setmathsfont(Greek){[cmmi10]}");

// setup and draw the axes
real[] myxchoice={};
real[] myychoice={};
real[] myzchoice={};
defaultpen(0.5mm);

pair xbounds=(0,2.25);
pair ybounds=(0.25,1.75);
pair zbounds=(-0.5,0.5);

//xaxis3("",xbounds.x,xbounds.y,black,OutTicks(myxchoice),Arrow3(size=3mm));
yaxis3("",ybounds.x,ybounds.y,black,OutTicks(myychoice),Arrow3(size=3mm));
//zaxis3("",zbounds.x,zbounds.y,black,OutTicks(myzchoice),Arrow3(size=3mm));

//label("$x$",(xbounds.y+0.05*(xbounds.y-xbounds.x),0,0));
label("$y$",(0,ybounds.y+0.05*(ybounds.y-ybounds.x),0));
//label("$z$",(0,0,zbounds.y+0.05*(zbounds.y-zbounds.x)));

//Ellipsoid
triple f(pair t) {
  return (cos(t.x)*2*cos(t.y),sin(t.x)*cos(t.y),sin(t.y));
}
surface s=surface(f,(pi/6,-pi/3),(2*pi/3,pi/3),8,8,usplinetype=new splinetype[] {notaknot,notaknot,monotonic}
,vsplinetype=new splinetype[] {notaknot,notaknot,monotonic}
);
pen p=rgb(0,0,.7)+.1mm;
draw(s,emissive(surfacepen),meshpen=apexmeshpen);

//draw rgb(.3,.3,.3) cube
//draw((0., 1.05, -0.105) -- (0,1.05,.105) -- (-.345,1.05,0.105) -- (-0.345, 1.05, -0.105)--cycle,rgb(.3,.3,.3));//front

draw((0.13, 1.05, 0.26) -- (0.13, 1.05, 0) -- (-0.26, 1.05, 0) -- (-0.25, 1.05, 0.26)--cycle,rgb(.3,.3,.3));//front

draw((0.13, 0.9, 0.26) -- (0.13, 0.9, 0) -- (-0.26, 0.9, 0) -- (-0.25, 0.9, 0.26)--cycle,rgb(.3,.3,.3));//back


//draw((-.345,0.979,0.105)--(0,0.979,0.105)--(0,0.979,-0.105)--(-.345,0.979,-0.105)--cycle,rgb(.3,.3,.3));//back
//sides
draw((0.13, 0.9, 0.26)--(0.13, 1.05, 0.26),rgb(.3,.3,.3));
draw((0.13, 0.9, 0)--(0.13, 1.05, 0),rgb(.3,.3,.3));
draw((-0.26, 0.9, 0)--(-0.26, 1.05, 0),rgb(.3,.3,.3));
draw((-0.25, 0.9, 0.26)--(-0.25, 1.05, 0.26),rgb(.3,.3,.3));







// ////////////////////////////////////
//    SAMPLE CODE

// defaultpen(fontsize(10pt));

//real f(pair z) {return -z.x^4+2*z.x^2-z.y^4+2*z.y^2;}
//surface s=surface(f,(-1.5,-1.5),(1.5,1.5),Spline);
//pen p=rgb(0,0,.7);
//draw(s,emissive(surfacepen),meshpen=apexmeshpen);

//triple f(pair t) {
//  return (cos(t.x)*1.5*cos(t.y),sin(t.x)*cos(t.y),sin(t.y));
//}
//surface s=surface(f,(0,0),(pi,2*pi),8,8,Spline);
//pen p=rgb(0,0,.7);
//draw(s,emissive(surfacepen),meshpen=apexmeshpen);

//draw(s,palergb(.1,.1,.1));
//draw(s,lightrgb(.1,.1,.1),meshpen=black+thick(),nolight,render(merge=true));
//draw(mypath,2bp+rgb(.1,.1,.1));

//triple g(real t) {return (t,t,-2*t^4+4*t^2);}
//path3 mypath=graph(g,-1,1,operator ..);
//draw(mypath,rgb(.1,.1,.1)+dashed+linewidth(2));

//pen p=rgb(0,0,1);
//draw(s,palergb(.1,.1,.1)+opacity(.5),meshpen=p,render(merge=true));