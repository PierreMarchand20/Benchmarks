SetFactory("OpenCASCADE");
Mesh.MshFileVersion = 2.2;

DefineConstant[
    h = {0.1, Name "finesse"},
    R = {0.1, Name "Rayon"}
];

Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;

R=1;



Box(1)  = {0.0,0.0,0.0,2.5,2.0,1.7};
Box(2)  = {0.2,0.0,0.4,1.2,1.2,0.8};
Box(3)  = {2.3,0.2,0.5,0.2,0.2,0.2};
Box(4)  = {2.3,0.7,1.0,0.2,0.1,0.1};
Box(5)  = {1.6,0.1,0.2,0.7,1.1,1.3};
Box(6)  = {0.2,1.4,0.0,0.8,0.4,1.7};
Box(7)  = {1.2,1.4,1.6,0.2,0.6,0.1};
Box(8)  = {1.6,1.4,1.6,0.2,0.6,0.1};
Box(9)  = {2.0,1.4,1.6,0.2,0.6,0.1};
Box(10) = {2.4,1.4,1.6,0.1,0.6,0.1};
Box(11) = {1.2,1.4,1.2,0.2,0.6,0.2};
Box(12) = {1.6,1.4,1.2,0.2,0.6,0.2};
Box(13) = {2.0,1.4,1.2,0.2,0.6,0.2};
Box(14) = {2.4,1.4,1.2,0.1,0.6,0.2};
Box(15) = {1.2,1.4,0.6,0.2,0.6,0.4};
Box(16) = {1.6,1.4,0.6,0.2,0.6,0.4};
Box(17) = {2.0,1.4,0.6,0.2,0.6,0.4};
Box(18) = {2.4,1.4,0.6,0.1,0.6,0.4};
Box(19) = {1.2,1.4,0.0,0.2,0.6,0.4};
Box(20) = {1.6,1.4,0.0,0.2,0.6,0.4};
Box(21) = {2.0,1.4,0.0,0.2,0.6,0.4};
Box(22) = {2.4,1.4,0.0,0.1,0.6,0.4};

BooleanDifference(100) = {Volume{1}; Delete;}{Volume{2}; Delete;};
BooleanDifference(101) = {Volume{100}; Delete;}{Volume{3}; Delete;};
BooleanDifference(102) = {Volume{101}; Delete;}{Volume{4}; Delete;};
BooleanDifference(103) = {Volume{102}; Delete;}{Volume{5}; Delete;};
BooleanDifference(104) = {Volume{103}; Delete;}{Volume{6}; Delete;};
BooleanDifference(105) = {Volume{104}; Delete;}{Volume{7}; Delete;};
BooleanDifference(106) = {Volume{105}; Delete;}{Volume{8}; Delete;};
BooleanDifference(107) = {Volume{106}; Delete;}{Volume{9}; Delete;};
BooleanDifference(108) = {Volume{107}; Delete;}{Volume{10}; Delete;};
BooleanDifference(109) = {Volume{108}; Delete;}{Volume{11}; Delete;};
BooleanDifference(110) = {Volume{109}; Delete;}{Volume{12}; Delete;};
BooleanDifference(111) = {Volume{110}; Delete;}{Volume{13}; Delete;};
BooleanDifference(112) = {Volume{111}; Delete;}{Volume{14}; Delete;};
BooleanDifference(113) = {Volume{112}; Delete;}{Volume{15}; Delete;};
BooleanDifference(114) = {Volume{113}; Delete;}{Volume{16}; Delete;};
BooleanDifference(115) = {Volume{114}; Delete;}{Volume{17}; Delete;};
BooleanDifference(116) = {Volume{115}; Delete;}{Volume{18}; Delete;};
BooleanDifference(117) = {Volume{116}; Delete;}{Volume{19}; Delete;};
BooleanDifference(118) = {Volume{117}; Delete;}{Volume{20}; Delete;};
BooleanDifference(119) = {Volume{118}; Delete;}{Volume{21}; Delete;};
BooleanDifference(120) = {Volume{119}; Delete;}{Volume{22}; Delete;};
