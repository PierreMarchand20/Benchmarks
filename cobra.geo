SetFactory("OpenCASCADE");
Mesh.MshFileVersion = 2.2;

DefineConstant[
    npplo = {10, Min 0.05, Max 1, Step 0.01, Name "npplo"},
    frequency = {5, Name "frequency (GHz)"}
];

// Geometry
height=0.084;
width=0.11;

sec1=0.01;
sec2=0.08;
sec3=0.1;

angle = 2*Pi*35/360;
radius = 0.186;


// Physical parameters
c0= 299792458;
f = frequency*1e+9;
k = 2*Pi*f/c0;
lambda = c0/f;
h = lambda/npplo;

Printf("Finesse du maillage : %f",h);
Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;




Point(1) ={0,0,0};
Point(2) ={0,0,sec1};
Point(3) ={radius*(1-Cos(angle)),0,sec1+radius*Sin(angle)};
Point(4) ={radius*(1-Cos(angle))+sec2*Sin(angle),0,sec1+radius*Sin(angle)+sec2*Cos(angle)};
Point(5) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle)),0,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)};
Point(6) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle)),0,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)+sec3};
Point(7) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle))+height,0,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)+sec3};
Point(8) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle))+height,0,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)};
Point(9) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1),0,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)};
Point(10)={radius*(1-Cos(angle))+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1),0,sec1+radius*Sin(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)};
Point(11)={radius*(1-Cos(angle))+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1)-(radius-height)*(1-Cos(angle)),0,sec1+radius*Sin(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)-(radius-height)*Sin(angle)};
Point(12)={radius*(1-Cos(angle))+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1)-(radius-height)*(1-Cos(angle)),0,radius*Sin(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)-(radius-height)*Sin(angle)};

Point(13) ={0,width,0};
Point(14) ={0,width,sec1};
Point(15) ={radius*(1-Cos(angle)),width,sec1+radius*Sin(angle)};
Point(16) ={radius*(1-Cos(angle))+sec2*Sin(angle),width,sec1+radius*Sin(angle)+sec2*Cos(angle)};
Point(17) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle)),width,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)};
Point(18) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle)),width,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)+sec3};
Point(19) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle))+height,width,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)+sec3};
Point(20) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle))+height,width,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)};
Point(21) ={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1),width,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)};
Point(22)={radius*(1-Cos(angle))+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1),width,sec1+radius*Sin(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)};
Point(23)={radius*(1-Cos(angle))+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1)-(radius-height)*(1-Cos(angle)),width,sec1+radius*Sin(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)-(radius-height)*Sin(angle)};
Point(24)={radius*(1-Cos(angle))+(radius-height)*(1-Cos(angle))+height+radius*(Cos(angle)-1)-(radius-height)*(1-Cos(angle)),width,radius*Sin(angle)+(radius-height)*Sin(angle)-radius*Sin(angle)-(radius-height)*Sin(angle)};



Point(100)={radius,0,sec1};
Point(200)={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(-Cos(angle)),0,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)};

Point(300)={radius,width,sec1};
Point(400)={radius*(1-Cos(angle))+sec2*Sin(angle)+(radius-height)*(-Cos(angle)),width,sec1+radius*Sin(angle)+sec2*Cos(angle)+(radius-height)*Sin(angle)};

Line(100)={1,2};
Circle (101) ={2 ,100 ,3};
Line(102)={3,4};
Circle (103) ={4 ,200 ,5};
Line(104)={5,6};
Line(105)={6,7};
Line(106)={7,8};
Circle (107) ={8 ,200 ,9};
Line(108)={9,10};
Circle (109) ={10 ,100 ,11};
Line(110)={11,12};
Line(111)={12,1};

Line(112)={13,14};
Circle (113) ={14 ,300 ,15};
Line(114)={15,16};
Circle (115) ={16 ,400 ,17};
Line(116)={17,18};
Line(117)={18,19};
Line(118)={19,20};
Circle (119) ={20 ,400 ,21};
Line(120)={21,22};
Circle (121) ={22 ,300 ,23};
Line(122)={23,24};
Line(123)={24,13};

Line(124)={1,13};
Line(125)={12,24};
Line(126)={6,18};
Line(127)={19,7};

Curve Loop(1) = {100,101,102,103,104,105,106,107,108,109,110,111};
Curve Loop(2) = {112,113,114,115,116,117,118,119,120,121,122,123};
Curve Loop(3) = {111,124,123,125}; // Cavity
Curve Loop(4) = {-117,-126,105,-127};
Curve Loop(5) = {100,101,102,103,104,126,116,115,114,113,112,124};
Curve Loop(6) = {106,107,108,109,110,125,122,121,120,119,118,127};


Plane Surface(1) = {-1}; 
Plane Surface(2) = {2}; 
Plane Surface(3) = {4}; 
Surface(4) = {5}; 
Surface(5) = {6}; 