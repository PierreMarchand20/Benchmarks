SetFactory("OpenCASCADE");
Mesh.MshFileVersion = 2.2;

DefineConstant[
    h = {0.1, Name "finesse"},
    R = {0.1, Name "Rayon"}
];

Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;

R=1;



Point(1) = {0,0,0};
Point(2) = {Cos(Pi/6.),Sin(Pi/6.),0};
Point(3) = {Cos(-Pi/6.),Sin(-Pi/6.),0};

Line(10) = {1,2};
Circle(11) = {2,1,3};
Line(12) = {3,1};

Curve Loop(30) = {10,11,12};

Surface(100) = {30};
Disk(200) = {0,0,0,R};

BooleanDifference(2) = {Surface{200}; Delete;}{Surface{100}; Delete;};