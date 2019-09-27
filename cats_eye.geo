SetFactory("OpenCASCADE");
Mesh.MshFileVersion = 2.2;

DefineConstant[
    h = {0.1, Name "finesse"},
    R = {0.1, Name "Rayon"}
];

Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;

R=1;

Sphere(0) = {0,0,0,R};
Box(1) = {0,0,0,R,R,R};

BooleanDifference(2) = {Volume{0}; Delete;}{Volume{1}; Delete;};