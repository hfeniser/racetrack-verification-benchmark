??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( ?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.0.02v2.0.0-rc2-26-g64c3d382ca??
m

main/inputPlaceholder*
dtype0*'
_output_shapes
:?????????*
shape:?????????
?
2main/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *$
_class
loc:@main/dense/kernel*
dtype0*
_output_shapes
:
?
0main/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *? ??*$
_class
loc:@main/dense/kernel
?
0main/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *? ?>*$
_class
loc:@main/dense/kernel
?
:main/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform2main/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*$
_class
loc:@main/dense/kernel*
seed2 
?
0main/dense/kernel/Initializer/random_uniform/subSub0main/dense/kernel/Initializer/random_uniform/max0main/dense/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@main/dense/kernel*
_output_shapes
: 
?
0main/dense/kernel/Initializer/random_uniform/mulMul:main/dense/kernel/Initializer/random_uniform/RandomUniform0main/dense/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@main/dense/kernel*
_output_shapes

:@
?
,main/dense/kernel/Initializer/random_uniformAdd0main/dense/kernel/Initializer/random_uniform/mul0main/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*$
_class
loc:@main/dense/kernel
?
main/dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namemain/dense/kernel*$
_class
loc:@main/dense/kernel*
	container *
shape
:@
s
2main/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/dense/kernel*
_output_shapes
: 
z
main/dense/kernel/AssignAssignVariableOpmain/dense/kernel,main/dense/kernel/Initializer/random_uniform*
dtype0
w
%main/dense/kernel/Read/ReadVariableOpReadVariableOpmain/dense/kernel*
dtype0*
_output_shapes

:@
?
!main/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *"
_class
loc:@main/dense/bias
?
main/dense/biasVarHandleOp*"
_class
loc:@main/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
: * 
shared_namemain/dense/bias
o
0main/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/dense/bias*
_output_shapes
: 
k
main/dense/bias/AssignAssignVariableOpmain/dense/bias!main/dense/bias/Initializer/zeros*
dtype0
o
#main/dense/bias/Read/ReadVariableOpReadVariableOpmain/dense/bias*
dtype0*
_output_shapes
:@
r
 main/dense/MatMul/ReadVariableOpReadVariableOpmain/dense/kernel*
dtype0*
_output_shapes

:@
?
main/dense/MatMulMatMul
main/input main/dense/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:?????????@*
transpose_a( 
m
!main/dense/BiasAdd/ReadVariableOpReadVariableOpmain/dense/bias*
dtype0*
_output_shapes
:@
?
main/dense/BiasAddBiasAddmain/dense/MatMul!main/dense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
]
main/dense/ReluRelumain/dense/BiasAdd*
T0*'
_output_shapes
:?????????@
?
4main/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"@   @   *&
_class
loc:@main/dense_1/kernel*
dtype0*
_output_shapes
:
?
2main/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *׳]?*&
_class
loc:@main/dense_1/kernel*
dtype0*
_output_shapes
: 
?
2main/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳]>*&
_class
loc:@main/dense_1/kernel*
dtype0*
_output_shapes
: 
?
<main/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform4main/dense_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:@@*

seed *
T0*&
_class
loc:@main/dense_1/kernel
?
2main/dense_1/kernel/Initializer/random_uniform/subSub2main/dense_1/kernel/Initializer/random_uniform/max2main/dense_1/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@main/dense_1/kernel*
_output_shapes
: 
?
2main/dense_1/kernel/Initializer/random_uniform/mulMul<main/dense_1/kernel/Initializer/random_uniform/RandomUniform2main/dense_1/kernel/Initializer/random_uniform/sub*
T0*&
_class
loc:@main/dense_1/kernel*
_output_shapes

:@@
?
.main/dense_1/kernel/Initializer/random_uniformAdd2main/dense_1/kernel/Initializer/random_uniform/mul2main/dense_1/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@main/dense_1/kernel*
_output_shapes

:@@
?
main/dense_1/kernelVarHandleOp*&
_class
loc:@main/dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes
: *$
shared_namemain/dense_1/kernel
w
4main/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/dense_1/kernel*
_output_shapes
: 
?
main/dense_1/kernel/AssignAssignVariableOpmain/dense_1/kernel.main/dense_1/kernel/Initializer/random_uniform*
dtype0
{
'main/dense_1/kernel/Read/ReadVariableOpReadVariableOpmain/dense_1/kernel*
dtype0*
_output_shapes

:@@
?
#main/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *$
_class
loc:@main/dense_1/bias
?
main/dense_1/biasVarHandleOp*"
shared_namemain/dense_1/bias*$
_class
loc:@main/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
s
2main/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/dense_1/bias*
_output_shapes
: 
q
main/dense_1/bias/AssignAssignVariableOpmain/dense_1/bias#main/dense_1/bias/Initializer/zeros*
dtype0
s
%main/dense_1/bias/Read/ReadVariableOpReadVariableOpmain/dense_1/bias*
dtype0*
_output_shapes
:@
v
"main/dense_1/MatMul/ReadVariableOpReadVariableOpmain/dense_1/kernel*
dtype0*
_output_shapes

:@@
?
main/dense_1/MatMulMatMulmain/dense/Relu"main/dense_1/MatMul/ReadVariableOp*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b( *
T0
q
#main/dense_1/BiasAdd/ReadVariableOpReadVariableOpmain/dense_1/bias*
dtype0*
_output_shapes
:@
?
main/dense_1/BiasAddBiasAddmain/dense_1/MatMul#main/dense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
a
main/dense_1/ReluRelumain/dense_1/BiasAdd*
T0*'
_output_shapes
:?????????@
?
3main/output/kernel/Initializer/random_uniform/shapeConst*
valueB"@   	   *%
_class
loc:@main/output/kernel*
dtype0*
_output_shapes
:
?
1main/output/kernel/Initializer/random_uniform/minConst*
valueB
 *-ɒ?*%
_class
loc:@main/output/kernel*
dtype0*
_output_shapes
: 
?
1main/output/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *-ɒ>*%
_class
loc:@main/output/kernel
?
;main/output/kernel/Initializer/random_uniform/RandomUniformRandomUniform3main/output/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@	*

seed *
T0*%
_class
loc:@main/output/kernel*
seed2 
?
1main/output/kernel/Initializer/random_uniform/subSub1main/output/kernel/Initializer/random_uniform/max1main/output/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@main/output/kernel*
_output_shapes
: 
?
1main/output/kernel/Initializer/random_uniform/mulMul;main/output/kernel/Initializer/random_uniform/RandomUniform1main/output/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@main/output/kernel*
_output_shapes

:@	
?
-main/output/kernel/Initializer/random_uniformAdd1main/output/kernel/Initializer/random_uniform/mul1main/output/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@main/output/kernel*
_output_shapes

:@	
?
main/output/kernelVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namemain/output/kernel*%
_class
loc:@main/output/kernel*
	container *
shape
:@	
u
3main/output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/output/kernel*
_output_shapes
: 
}
main/output/kernel/AssignAssignVariableOpmain/output/kernel-main/output/kernel/Initializer/random_uniform*
dtype0
y
&main/output/kernel/Read/ReadVariableOpReadVariableOpmain/output/kernel*
dtype0*
_output_shapes

:@	
?
"main/output/bias/Initializer/zerosConst*
valueB	*    *#
_class
loc:@main/output/bias*
dtype0*
_output_shapes
:	
?
main/output/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namemain/output/bias*#
_class
loc:@main/output/bias*
	container *
shape:	
q
1main/output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/output/bias*
_output_shapes
: 
n
main/output/bias/AssignAssignVariableOpmain/output/bias"main/output/bias/Initializer/zeros*
dtype0
q
$main/output/bias/Read/ReadVariableOpReadVariableOpmain/output/bias*
dtype0*
_output_shapes
:	
t
!main/output/MatMul/ReadVariableOpReadVariableOpmain/output/kernel*
dtype0*
_output_shapes

:@	
?
main/output/MatMulMatMulmain/dense_1/Relu!main/output/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:?????????	*
transpose_a( 
o
"main/output/BiasAdd/ReadVariableOpReadVariableOpmain/output/bias*
dtype0*
_output_shapes
:	
?
main/output/BiasAddBiasAddmain/output/MatMul"main/output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????	
g
main/actionsPlaceholder*
dtype0	*#
_output_shapes
:?????????*
shape:?????????
Z
main/one_hot/on_valueConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
[
main/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
T
main/one_hot/depthConst*
value	B :	*
dtype0*
_output_shapes
: 
?
main/one_hotOneHotmain/actionsmain/one_hot/depthmain/one_hot/on_valuemain/one_hot/off_value*
T0*
axis?????????*
TI0	*'
_output_shapes
:?????????	
f
main/targetPlaceholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
d
main/MulMulmain/output/BiasAddmain/one_hot*
T0*'
_output_shapes
:?????????	
\
main/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
main/SumSummain/Mulmain/Sum/reduction_indices*
T0*#
_output_shapes
:?????????*
	keep_dims( *

Tidx0
T
main/subSubmain/targetmain/Sum*
T0*#
_output_shapes
:?????????
M
main/SquareSquaremain/sub*
T0*#
_output_shapes
:?????????
T

main/ConstConst*
valueB: *
dtype0*
_output_shapes
:
h
	main/MeanMeanmain/Square
main/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
W
main/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
]
main/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ??
~
main/gradients/FillFillmain/gradients/Shapemain/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
u
+main/gradients/main/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
%main/gradients/main/Mean_grad/ReshapeReshapemain/gradients/Fill+main/gradients/main/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
n
#main/gradients/main/Mean_grad/ShapeShapemain/Square*
T0*
out_type0*
_output_shapes
:
?
"main/gradients/main/Mean_grad/TileTile%main/gradients/main/Mean_grad/Reshape#main/gradients/main/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:?????????
p
%main/gradients/main/Mean_grad/Shape_1Shapemain/Square*
T0*
out_type0*
_output_shapes
:
h
%main/gradients/main/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
m
#main/gradients/main/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
"main/gradients/main/Mean_grad/ProdProd%main/gradients/main/Mean_grad/Shape_1#main/gradients/main/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
o
%main/gradients/main/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
?
$main/gradients/main/Mean_grad/Prod_1Prod%main/gradients/main/Mean_grad/Shape_2%main/gradients/main/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
'main/gradients/main/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
?
%main/gradients/main/Mean_grad/MaximumMaximum$main/gradients/main/Mean_grad/Prod_1'main/gradients/main/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
&main/gradients/main/Mean_grad/floordivFloorDiv"main/gradients/main/Mean_grad/Prod%main/gradients/main/Mean_grad/Maximum*
T0*
_output_shapes
: 
?
"main/gradients/main/Mean_grad/CastCast&main/gradients/main/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
?
%main/gradients/main/Mean_grad/truedivRealDiv"main/gradients/main/Mean_grad/Tile"main/gradients/main/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
?
%main/gradients/main/Square_grad/ConstConst&^main/gradients/main/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
?
#main/gradients/main/Square_grad/MulMulmain/sub%main/gradients/main/Square_grad/Const*
T0*#
_output_shapes
:?????????
?
%main/gradients/main/Square_grad/Mul_1Mul%main/gradients/main/Mean_grad/truediv#main/gradients/main/Square_grad/Mul*
T0*#
_output_shapes
:?????????
m
"main/gradients/main/sub_grad/ShapeShapemain/target*
_output_shapes
:*
T0*
out_type0
l
$main/gradients/main/sub_grad/Shape_1Shapemain/Sum*
T0*
out_type0*
_output_shapes
:
?
2main/gradients/main/sub_grad/BroadcastGradientArgsBroadcastGradientArgs"main/gradients/main/sub_grad/Shape$main/gradients/main/sub_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
 main/gradients/main/sub_grad/SumSum%main/gradients/main/Square_grad/Mul_12main/gradients/main/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
$main/gradients/main/sub_grad/ReshapeReshape main/gradients/main/sub_grad/Sum"main/gradients/main/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
|
 main/gradients/main/sub_grad/NegNeg%main/gradients/main/Square_grad/Mul_1*#
_output_shapes
:?????????*
T0
?
"main/gradients/main/sub_grad/Sum_1Sum main/gradients/main/sub_grad/Neg4main/gradients/main/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
&main/gradients/main/sub_grad/Reshape_1Reshape"main/gradients/main/sub_grad/Sum_1$main/gradients/main/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:?????????
?
-main/gradients/main/sub_grad/tuple/group_depsNoOp%^main/gradients/main/sub_grad/Reshape'^main/gradients/main/sub_grad/Reshape_1
?
5main/gradients/main/sub_grad/tuple/control_dependencyIdentity$main/gradients/main/sub_grad/Reshape.^main/gradients/main/sub_grad/tuple/group_deps*#
_output_shapes
:?????????*
T0*7
_class-
+)loc:@main/gradients/main/sub_grad/Reshape
?
7main/gradients/main/sub_grad/tuple/control_dependency_1Identity&main/gradients/main/sub_grad/Reshape_1.^main/gradients/main/sub_grad/tuple/group_deps*
T0*9
_class/
-+loc:@main/gradients/main/sub_grad/Reshape_1*#
_output_shapes
:?????????
j
"main/gradients/main/Sum_grad/ShapeShapemain/Mul*
T0*
out_type0*
_output_shapes
:
?
!main/gradients/main/Sum_grad/SizeConst*
value	B :*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
dtype0*
_output_shapes
: 
?
 main/gradients/main/Sum_grad/addAddV2main/Sum/reduction_indices!main/gradients/main/Sum_grad/Size*
T0*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
_output_shapes
: 
?
 main/gradients/main/Sum_grad/modFloorMod main/gradients/main/Sum_grad/add!main/gradients/main/Sum_grad/Size*
T0*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
_output_shapes
: 
?
$main/gradients/main/Sum_grad/Shape_1Const*
valueB *5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
dtype0*
_output_shapes
: 
?
(main/gradients/main/Sum_grad/range/startConst*
value	B : *5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
dtype0*
_output_shapes
: 
?
(main/gradients/main/Sum_grad/range/deltaConst*
value	B :*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
dtype0*
_output_shapes
: 
?
"main/gradients/main/Sum_grad/rangeRange(main/gradients/main/Sum_grad/range/start!main/gradients/main/Sum_grad/Size(main/gradients/main/Sum_grad/range/delta*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
_output_shapes
:*

Tidx0
?
'main/gradients/main/Sum_grad/Fill/valueConst*
value	B :*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
dtype0*
_output_shapes
: 
?
!main/gradients/main/Sum_grad/FillFill$main/gradients/main/Sum_grad/Shape_1'main/gradients/main/Sum_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape
?
*main/gradients/main/Sum_grad/DynamicStitchDynamicStitch"main/gradients/main/Sum_grad/range main/gradients/main/Sum_grad/mod"main/gradients/main/Sum_grad/Shape!main/gradients/main/Sum_grad/Fill*
T0*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
N*
_output_shapes
:
?
&main/gradients/main/Sum_grad/Maximum/yConst*
value	B :*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape*
dtype0*
_output_shapes
: 
?
$main/gradients/main/Sum_grad/MaximumMaximum*main/gradients/main/Sum_grad/DynamicStitch&main/gradients/main/Sum_grad/Maximum/y*
_output_shapes
:*
T0*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape
?
%main/gradients/main/Sum_grad/floordivFloorDiv"main/gradients/main/Sum_grad/Shape$main/gradients/main/Sum_grad/Maximum*
_output_shapes
:*
T0*5
_class+
)'loc:@main/gradients/main/Sum_grad/Shape
?
$main/gradients/main/Sum_grad/ReshapeReshape7main/gradients/main/sub_grad/tuple/control_dependency_1*main/gradients/main/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
!main/gradients/main/Sum_grad/TileTile$main/gradients/main/Sum_grad/Reshape%main/gradients/main/Sum_grad/floordiv*
T0*'
_output_shapes
:?????????	*

Tmultiples0
u
"main/gradients/main/Mul_grad/ShapeShapemain/output/BiasAdd*
T0*
out_type0*
_output_shapes
:
p
$main/gradients/main/Mul_grad/Shape_1Shapemain/one_hot*
T0*
out_type0*
_output_shapes
:
?
2main/gradients/main/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs"main/gradients/main/Mul_grad/Shape$main/gradients/main/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
 main/gradients/main/Mul_grad/MulMul!main/gradients/main/Sum_grad/Tilemain/one_hot*
T0*'
_output_shapes
:?????????	
?
 main/gradients/main/Mul_grad/SumSum main/gradients/main/Mul_grad/Mul2main/gradients/main/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
$main/gradients/main/Mul_grad/ReshapeReshape main/gradients/main/Mul_grad/Sum"main/gradients/main/Mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????	
?
"main/gradients/main/Mul_grad/Mul_1Mulmain/output/BiasAdd!main/gradients/main/Sum_grad/Tile*'
_output_shapes
:?????????	*
T0
?
"main/gradients/main/Mul_grad/Sum_1Sum"main/gradients/main/Mul_grad/Mul_14main/gradients/main/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
&main/gradients/main/Mul_grad/Reshape_1Reshape"main/gradients/main/Mul_grad/Sum_1$main/gradients/main/Mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????	
?
-main/gradients/main/Mul_grad/tuple/group_depsNoOp%^main/gradients/main/Mul_grad/Reshape'^main/gradients/main/Mul_grad/Reshape_1
?
5main/gradients/main/Mul_grad/tuple/control_dependencyIdentity$main/gradients/main/Mul_grad/Reshape.^main/gradients/main/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@main/gradients/main/Mul_grad/Reshape*'
_output_shapes
:?????????	
?
7main/gradients/main/Mul_grad/tuple/control_dependency_1Identity&main/gradients/main/Mul_grad/Reshape_1.^main/gradients/main/Mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@main/gradients/main/Mul_grad/Reshape_1*'
_output_shapes
:?????????	
?
3main/gradients/main/output/BiasAdd_grad/BiasAddGradBiasAddGrad5main/gradients/main/Mul_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:	
?
8main/gradients/main/output/BiasAdd_grad/tuple/group_depsNoOp6^main/gradients/main/Mul_grad/tuple/control_dependency4^main/gradients/main/output/BiasAdd_grad/BiasAddGrad
?
@main/gradients/main/output/BiasAdd_grad/tuple/control_dependencyIdentity5main/gradients/main/Mul_grad/tuple/control_dependency9^main/gradients/main/output/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@main/gradients/main/Mul_grad/Reshape*'
_output_shapes
:?????????	
?
Bmain/gradients/main/output/BiasAdd_grad/tuple/control_dependency_1Identity3main/gradients/main/output/BiasAdd_grad/BiasAddGrad9^main/gradients/main/output/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@main/gradients/main/output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:	
?
-main/gradients/main/output/MatMul_grad/MatMulMatMul@main/gradients/main/output/BiasAdd_grad/tuple/control_dependency!main/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b(
?
/main/gradients/main/output/MatMul_grad/MatMul_1MatMulmain/dense_1/Relu@main/gradients/main/output/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:@	*
transpose_a(*
transpose_b( 
?
7main/gradients/main/output/MatMul_grad/tuple/group_depsNoOp.^main/gradients/main/output/MatMul_grad/MatMul0^main/gradients/main/output/MatMul_grad/MatMul_1
?
?main/gradients/main/output/MatMul_grad/tuple/control_dependencyIdentity-main/gradients/main/output/MatMul_grad/MatMul8^main/gradients/main/output/MatMul_grad/tuple/group_deps*'
_output_shapes
:?????????@*
T0*@
_class6
42loc:@main/gradients/main/output/MatMul_grad/MatMul
?
Amain/gradients/main/output/MatMul_grad/tuple/control_dependency_1Identity/main/gradients/main/output/MatMul_grad/MatMul_18^main/gradients/main/output/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@main/gradients/main/output/MatMul_grad/MatMul_1*
_output_shapes

:@	
?
.main/gradients/main/dense_1/Relu_grad/ReluGradReluGrad?main/gradients/main/output/MatMul_grad/tuple/control_dependencymain/dense_1/Relu*
T0*'
_output_shapes
:?????????@
?
4main/gradients/main/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.main/gradients/main/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
?
9main/gradients/main/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^main/gradients/main/dense_1/BiasAdd_grad/BiasAddGrad/^main/gradients/main/dense_1/Relu_grad/ReluGrad
?
Amain/gradients/main/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.main/gradients/main/dense_1/Relu_grad/ReluGrad:^main/gradients/main/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@main/gradients/main/dense_1/Relu_grad/ReluGrad*'
_output_shapes
:?????????@
?
Cmain/gradients/main/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4main/gradients/main/dense_1/BiasAdd_grad/BiasAddGrad:^main/gradients/main/dense_1/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@main/gradients/main/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
?
.main/gradients/main/dense_1/MatMul_grad/MatMulMatMulAmain/gradients/main/dense_1/BiasAdd_grad/tuple/control_dependency"main/dense_1/MatMul/ReadVariableOp*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b(*
T0
?
0main/gradients/main/dense_1/MatMul_grad/MatMul_1MatMulmain/dense/ReluAmain/gradients/main/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:@@*
transpose_a(*
transpose_b( 
?
8main/gradients/main/dense_1/MatMul_grad/tuple/group_depsNoOp/^main/gradients/main/dense_1/MatMul_grad/MatMul1^main/gradients/main/dense_1/MatMul_grad/MatMul_1
?
@main/gradients/main/dense_1/MatMul_grad/tuple/control_dependencyIdentity.main/gradients/main/dense_1/MatMul_grad/MatMul9^main/gradients/main/dense_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@main/gradients/main/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@
?
Bmain/gradients/main/dense_1/MatMul_grad/tuple/control_dependency_1Identity0main/gradients/main/dense_1/MatMul_grad/MatMul_19^main/gradients/main/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

:@@*
T0*C
_class9
75loc:@main/gradients/main/dense_1/MatMul_grad/MatMul_1
?
,main/gradients/main/dense/Relu_grad/ReluGradReluGrad@main/gradients/main/dense_1/MatMul_grad/tuple/control_dependencymain/dense/Relu*
T0*'
_output_shapes
:?????????@
?
2main/gradients/main/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,main/gradients/main/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0
?
7main/gradients/main/dense/BiasAdd_grad/tuple/group_depsNoOp3^main/gradients/main/dense/BiasAdd_grad/BiasAddGrad-^main/gradients/main/dense/Relu_grad/ReluGrad
?
?main/gradients/main/dense/BiasAdd_grad/tuple/control_dependencyIdentity,main/gradients/main/dense/Relu_grad/ReluGrad8^main/gradients/main/dense/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@main/gradients/main/dense/Relu_grad/ReluGrad*'
_output_shapes
:?????????@
?
Amain/gradients/main/dense/BiasAdd_grad/tuple/control_dependency_1Identity2main/gradients/main/dense/BiasAdd_grad/BiasAddGrad8^main/gradients/main/dense/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@main/gradients/main/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
?
,main/gradients/main/dense/MatMul_grad/MatMulMatMul?main/gradients/main/dense/BiasAdd_grad/tuple/control_dependency main/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
?
.main/gradients/main/dense/MatMul_grad/MatMul_1MatMul
main/input?main/gradients/main/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:@*
transpose_a(
?
6main/gradients/main/dense/MatMul_grad/tuple/group_depsNoOp-^main/gradients/main/dense/MatMul_grad/MatMul/^main/gradients/main/dense/MatMul_grad/MatMul_1
?
>main/gradients/main/dense/MatMul_grad/tuple/control_dependencyIdentity,main/gradients/main/dense/MatMul_grad/MatMul7^main/gradients/main/dense/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@main/gradients/main/dense/MatMul_grad/MatMul*'
_output_shapes
:?????????
?
@main/gradients/main/dense/MatMul_grad/tuple/control_dependency_1Identity.main/gradients/main/dense/MatMul_grad/MatMul_17^main/gradients/main/dense/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@main/gradients/main/dense/MatMul_grad/MatMul_1*
_output_shapes

:@
?
*main/beta1_power/Initializer/initial_valueConst*"
_class
loc:@main/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
?
main/beta1_powerVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namemain/beta1_power*"
_class
loc:@main/dense/bias*
	container *
shape: 
?
1main/beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/beta1_power*"
_class
loc:@main/dense/bias*
_output_shapes
: 
v
main/beta1_power/AssignAssignVariableOpmain/beta1_power*main/beta1_power/Initializer/initial_value*
dtype0
?
$main/beta1_power/Read/ReadVariableOpReadVariableOpmain/beta1_power*"
_class
loc:@main/dense/bias*
dtype0*
_output_shapes
: 
?
*main/beta2_power/Initializer/initial_valueConst*"
_class
loc:@main/dense/bias*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
main/beta2_powerVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namemain/beta2_power*"
_class
loc:@main/dense/bias*
	container *
shape: 
?
1main/beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/beta2_power*
_output_shapes
: *"
_class
loc:@main/dense/bias
v
main/beta2_power/AssignAssignVariableOpmain/beta2_power*main/beta2_power/Initializer/initial_value*
dtype0
?
$main/beta2_power/Read/ReadVariableOpReadVariableOpmain/beta2_power*"
_class
loc:@main/dense/bias*
dtype0*
_output_shapes
: 
?
-main/main/dense/kernel/Adam/Initializer/zerosConst*$
_class
loc:@main/dense/kernel*
valueB@*    *
dtype0*
_output_shapes

:@
?
main/main/dense/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *,
shared_namemain/main/dense/kernel/Adam*$
_class
loc:@main/dense/kernel*
	container *
shape
:@
?
<main/main/dense/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense/kernel/Adam*$
_class
loc:@main/dense/kernel*
_output_shapes
: 
?
"main/main/dense/kernel/Adam/AssignAssignVariableOpmain/main/dense/kernel/Adam-main/main/dense/kernel/Adam/Initializer/zeros*
dtype0
?
/main/main/dense/kernel/Adam/Read/ReadVariableOpReadVariableOpmain/main/dense/kernel/Adam*$
_class
loc:@main/dense/kernel*
dtype0*
_output_shapes

:@
?
/main/main/dense/kernel/Adam_1/Initializer/zerosConst*$
_class
loc:@main/dense/kernel*
valueB@*    *
dtype0*
_output_shapes

:@
?
main/main/dense/kernel/Adam_1VarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *.
shared_namemain/main/dense/kernel/Adam_1*$
_class
loc:@main/dense/kernel
?
>main/main/dense/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense/kernel/Adam_1*
_output_shapes
: *$
_class
loc:@main/dense/kernel
?
$main/main/dense/kernel/Adam_1/AssignAssignVariableOpmain/main/dense/kernel/Adam_1/main/main/dense/kernel/Adam_1/Initializer/zeros*
dtype0
?
1main/main/dense/kernel/Adam_1/Read/ReadVariableOpReadVariableOpmain/main/dense/kernel/Adam_1*$
_class
loc:@main/dense/kernel*
dtype0*
_output_shapes

:@
?
+main/main/dense/bias/Adam/Initializer/zerosConst*"
_class
loc:@main/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
main/main/dense/bias/AdamVarHandleOp*"
_class
loc:@main/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
: **
shared_namemain/main/dense/bias/Adam
?
:main/main/dense/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense/bias/Adam*"
_class
loc:@main/dense/bias*
_output_shapes
: 
?
 main/main/dense/bias/Adam/AssignAssignVariableOpmain/main/dense/bias/Adam+main/main/dense/bias/Adam/Initializer/zeros*
dtype0
?
-main/main/dense/bias/Adam/Read/ReadVariableOpReadVariableOpmain/main/dense/bias/Adam*"
_class
loc:@main/dense/bias*
dtype0*
_output_shapes
:@
?
-main/main/dense/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@main/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
main/main/dense/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *,
shared_namemain/main/dense/bias/Adam_1*"
_class
loc:@main/dense/bias*
	container *
shape:@
?
<main/main/dense/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense/bias/Adam_1*"
_class
loc:@main/dense/bias*
_output_shapes
: 
?
"main/main/dense/bias/Adam_1/AssignAssignVariableOpmain/main/dense/bias/Adam_1-main/main/dense/bias/Adam_1/Initializer/zeros*
dtype0
?
/main/main/dense/bias/Adam_1/Read/ReadVariableOpReadVariableOpmain/main/dense/bias/Adam_1*"
_class
loc:@main/dense/bias*
dtype0*
_output_shapes
:@
?
?main/main/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*&
_class
loc:@main/dense_1/kernel*
valueB"@   @   
?
5main/main/dense_1/kernel/Adam/Initializer/zeros/ConstConst*&
_class
loc:@main/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
/main/main/dense_1/kernel/Adam/Initializer/zerosFill?main/main/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor5main/main/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*&
_class
loc:@main/dense_1/kernel*

index_type0*
_output_shapes

:@@
?
main/main/dense_1/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *.
shared_namemain/main/dense_1/kernel/Adam*&
_class
loc:@main/dense_1/kernel*
	container *
shape
:@@
?
>main/main/dense_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense_1/kernel/Adam*&
_class
loc:@main/dense_1/kernel*
_output_shapes
: 
?
$main/main/dense_1/kernel/Adam/AssignAssignVariableOpmain/main/dense_1/kernel/Adam/main/main/dense_1/kernel/Adam/Initializer/zeros*
dtype0
?
1main/main/dense_1/kernel/Adam/Read/ReadVariableOpReadVariableOpmain/main/dense_1/kernel/Adam*
dtype0*
_output_shapes

:@@*&
_class
loc:@main/dense_1/kernel
?
Amain/main/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@main/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
?
7main/main/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*&
_class
loc:@main/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
1main/main/dense_1/kernel/Adam_1/Initializer/zerosFillAmain/main/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor7main/main/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*&
_class
loc:@main/dense_1/kernel*

index_type0*
_output_shapes

:@@
?
main/main/dense_1/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *0
shared_name!main/main/dense_1/kernel/Adam_1*&
_class
loc:@main/dense_1/kernel*
	container *
shape
:@@
?
@main/main/dense_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense_1/kernel/Adam_1*
_output_shapes
: *&
_class
loc:@main/dense_1/kernel
?
&main/main/dense_1/kernel/Adam_1/AssignAssignVariableOpmain/main/dense_1/kernel/Adam_11main/main/dense_1/kernel/Adam_1/Initializer/zeros*
dtype0
?
3main/main/dense_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpmain/main/dense_1/kernel/Adam_1*
dtype0*
_output_shapes

:@@*&
_class
loc:@main/dense_1/kernel
?
-main/main/dense_1/bias/Adam/Initializer/zerosConst*$
_class
loc:@main/dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
main/main/dense_1/bias/AdamVarHandleOp*,
shared_namemain/main/dense_1/bias/Adam*$
_class
loc:@main/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
?
<main/main/dense_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense_1/bias/Adam*$
_class
loc:@main/dense_1/bias*
_output_shapes
: 
?
"main/main/dense_1/bias/Adam/AssignAssignVariableOpmain/main/dense_1/bias/Adam-main/main/dense_1/bias/Adam/Initializer/zeros*
dtype0
?
/main/main/dense_1/bias/Adam/Read/ReadVariableOpReadVariableOpmain/main/dense_1/bias/Adam*
dtype0*
_output_shapes
:@*$
_class
loc:@main/dense_1/bias
?
/main/main/dense_1/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@main/dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
main/main/dense_1/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *.
shared_namemain/main/dense_1/bias/Adam_1*$
_class
loc:@main/dense_1/bias*
	container *
shape:@
?
>main/main/dense_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/dense_1/bias/Adam_1*$
_class
loc:@main/dense_1/bias*
_output_shapes
: 
?
$main/main/dense_1/bias/Adam_1/AssignAssignVariableOpmain/main/dense_1/bias/Adam_1/main/main/dense_1/bias/Adam_1/Initializer/zeros*
dtype0
?
1main/main/dense_1/bias/Adam_1/Read/ReadVariableOpReadVariableOpmain/main/dense_1/bias/Adam_1*
dtype0*
_output_shapes
:@*$
_class
loc:@main/dense_1/bias
?
.main/main/output/kernel/Adam/Initializer/zerosConst*%
_class
loc:@main/output/kernel*
valueB@	*    *
dtype0*
_output_shapes

:@	
?
main/main/output/kernel/AdamVarHandleOp*
shape
:@	*
dtype0*
_output_shapes
: *-
shared_namemain/main/output/kernel/Adam*%
_class
loc:@main/output/kernel*
	container 
?
=main/main/output/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/output/kernel/Adam*
_output_shapes
: *%
_class
loc:@main/output/kernel
?
#main/main/output/kernel/Adam/AssignAssignVariableOpmain/main/output/kernel/Adam.main/main/output/kernel/Adam/Initializer/zeros*
dtype0
?
0main/main/output/kernel/Adam/Read/ReadVariableOpReadVariableOpmain/main/output/kernel/Adam*
dtype0*
_output_shapes

:@	*%
_class
loc:@main/output/kernel
?
0main/main/output/kernel/Adam_1/Initializer/zerosConst*%
_class
loc:@main/output/kernel*
valueB@	*    *
dtype0*
_output_shapes

:@	
?
main/main/output/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: */
shared_name main/main/output/kernel/Adam_1*%
_class
loc:@main/output/kernel*
	container *
shape
:@	
?
?main/main/output/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/output/kernel/Adam_1*%
_class
loc:@main/output/kernel*
_output_shapes
: 
?
%main/main/output/kernel/Adam_1/AssignAssignVariableOpmain/main/output/kernel/Adam_10main/main/output/kernel/Adam_1/Initializer/zeros*
dtype0
?
2main/main/output/kernel/Adam_1/Read/ReadVariableOpReadVariableOpmain/main/output/kernel/Adam_1*%
_class
loc:@main/output/kernel*
dtype0*
_output_shapes

:@	
?
,main/main/output/bias/Adam/Initializer/zerosConst*#
_class
loc:@main/output/bias*
valueB	*    *
dtype0*
_output_shapes
:	
?
main/main/output/bias/AdamVarHandleOp*#
_class
loc:@main/output/bias*
	container *
shape:	*
dtype0*
_output_shapes
: *+
shared_namemain/main/output/bias/Adam
?
;main/main/output/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/output/bias/Adam*#
_class
loc:@main/output/bias*
_output_shapes
: 
?
!main/main/output/bias/Adam/AssignAssignVariableOpmain/main/output/bias/Adam,main/main/output/bias/Adam/Initializer/zeros*
dtype0
?
.main/main/output/bias/Adam/Read/ReadVariableOpReadVariableOpmain/main/output/bias/Adam*#
_class
loc:@main/output/bias*
dtype0*
_output_shapes
:	
?
.main/main/output/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@main/output/bias*
valueB	*    *
dtype0*
_output_shapes
:	
?
main/main/output/bias/Adam_1VarHandleOp*
shape:	*
dtype0*
_output_shapes
: *-
shared_namemain/main/output/bias/Adam_1*#
_class
loc:@main/output/bias*
	container 
?
=main/main/output/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpmain/main/output/bias/Adam_1*#
_class
loc:@main/output/bias*
_output_shapes
: 
?
#main/main/output/bias/Adam_1/AssignAssignVariableOpmain/main/output/bias/Adam_1.main/main/output/bias/Adam_1/Initializer/zeros*
dtype0
?
0main/main/output/bias/Adam_1/Read/ReadVariableOpReadVariableOpmain/main/output/bias/Adam_1*
dtype0*
_output_shapes
:	*#
_class
loc:@main/output/bias
\
main/Adam/learning_rateConst*
valueB
 *?Q8*
dtype0*
_output_shapes
: 
T
main/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
T
main/Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w??
V
main/Adam/epsilonConst*
valueB
 *w?+2*
dtype0*
_output_shapes
: 
?
Cmain/Adam/update_main/dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpmain/beta1_power*
dtype0*
_output_shapes
: 
?
Emain/Adam/update_main/dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpmain/beta2_power*
dtype0*
_output_shapes
: 
?
4main/Adam/update_main/dense/kernel/ResourceApplyAdamResourceApplyAdammain/dense/kernelmain/main/dense/kernel/Adammain/main/dense/kernel/Adam_1Cmain/Adam/update_main/dense/kernel/ResourceApplyAdam/ReadVariableOpEmain/Adam/update_main/dense/kernel/ResourceApplyAdam/ReadVariableOp_1main/Adam/learning_ratemain/Adam/beta1main/Adam/beta2main/Adam/epsilon@main/gradients/main/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*$
_class
loc:@main/dense/kernel
?
Amain/Adam/update_main/dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpmain/beta1_power*
dtype0*
_output_shapes
: 
?
Cmain/Adam/update_main/dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpmain/beta2_power*
dtype0*
_output_shapes
: 
?
2main/Adam/update_main/dense/bias/ResourceApplyAdamResourceApplyAdammain/dense/biasmain/main/dense/bias/Adammain/main/dense/bias/Adam_1Amain/Adam/update_main/dense/bias/ResourceApplyAdam/ReadVariableOpCmain/Adam/update_main/dense/bias/ResourceApplyAdam/ReadVariableOp_1main/Adam/learning_ratemain/Adam/beta1main/Adam/beta2main/Adam/epsilonAmain/gradients/main/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*"
_class
loc:@main/dense/bias*
use_nesterov( *
use_locking( 
?
Emain/Adam/update_main/dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpmain/beta1_power*
dtype0*
_output_shapes
: 
?
Gmain/Adam/update_main/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpmain/beta2_power*
dtype0*
_output_shapes
: 
?
6main/Adam/update_main/dense_1/kernel/ResourceApplyAdamResourceApplyAdammain/dense_1/kernelmain/main/dense_1/kernel/Adammain/main/dense_1/kernel/Adam_1Emain/Adam/update_main/dense_1/kernel/ResourceApplyAdam/ReadVariableOpGmain/Adam/update_main/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1main/Adam/learning_ratemain/Adam/beta1main/Adam/beta2main/Adam/epsilonBmain/gradients/main/dense_1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*&
_class
loc:@main/dense_1/kernel
?
Cmain/Adam/update_main/dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpmain/beta1_power*
dtype0*
_output_shapes
: 
?
Emain/Adam/update_main/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpmain/beta2_power*
dtype0*
_output_shapes
: 
?
4main/Adam/update_main/dense_1/bias/ResourceApplyAdamResourceApplyAdammain/dense_1/biasmain/main/dense_1/bias/Adammain/main/dense_1/bias/Adam_1Cmain/Adam/update_main/dense_1/bias/ResourceApplyAdam/ReadVariableOpEmain/Adam/update_main/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1main/Adam/learning_ratemain/Adam/beta1main/Adam/beta2main/Adam/epsilonCmain/gradients/main/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@main/dense_1/bias*
use_nesterov( 
?
Dmain/Adam/update_main/output/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpmain/beta1_power*
dtype0*
_output_shapes
: 
?
Fmain/Adam/update_main/output/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpmain/beta2_power*
dtype0*
_output_shapes
: 
?
5main/Adam/update_main/output/kernel/ResourceApplyAdamResourceApplyAdammain/output/kernelmain/main/output/kernel/Adammain/main/output/kernel/Adam_1Dmain/Adam/update_main/output/kernel/ResourceApplyAdam/ReadVariableOpFmain/Adam/update_main/output/kernel/ResourceApplyAdam/ReadVariableOp_1main/Adam/learning_ratemain/Adam/beta1main/Adam/beta2main/Adam/epsilonAmain/gradients/main/output/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*%
_class
loc:@main/output/kernel*
use_nesterov( 
?
Bmain/Adam/update_main/output/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpmain/beta1_power*
dtype0*
_output_shapes
: 
?
Dmain/Adam/update_main/output/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpmain/beta2_power*
dtype0*
_output_shapes
: 
?
3main/Adam/update_main/output/bias/ResourceApplyAdamResourceApplyAdammain/output/biasmain/main/output/bias/Adammain/main/output/bias/Adam_1Bmain/Adam/update_main/output/bias/ResourceApplyAdam/ReadVariableOpDmain/Adam/update_main/output/bias/ResourceApplyAdam/ReadVariableOp_1main/Adam/learning_ratemain/Adam/beta1main/Adam/beta2main/Adam/epsilonBmain/gradients/main/output/BiasAdd_grad/tuple/control_dependency_1*
T0*#
_class
loc:@main/output/bias*
use_nesterov( *
use_locking( 
?
main/Adam/ReadVariableOpReadVariableOpmain/beta1_power3^main/Adam/update_main/dense/bias/ResourceApplyAdam5^main/Adam/update_main/dense/kernel/ResourceApplyAdam5^main/Adam/update_main/dense_1/bias/ResourceApplyAdam7^main/Adam/update_main/dense_1/kernel/ResourceApplyAdam4^main/Adam/update_main/output/bias/ResourceApplyAdam6^main/Adam/update_main/output/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
?
main/Adam/mulMulmain/Adam/ReadVariableOpmain/Adam/beta1*
_output_shapes
: *
T0*"
_class
loc:@main/dense/bias
?
main/Adam/AssignVariableOpAssignVariableOpmain/beta1_powermain/Adam/mul*
dtype0*"
_class
loc:@main/dense/bias
?
main/Adam/ReadVariableOp_1ReadVariableOpmain/beta1_power^main/Adam/AssignVariableOp3^main/Adam/update_main/dense/bias/ResourceApplyAdam5^main/Adam/update_main/dense/kernel/ResourceApplyAdam5^main/Adam/update_main/dense_1/bias/ResourceApplyAdam7^main/Adam/update_main/dense_1/kernel/ResourceApplyAdam4^main/Adam/update_main/output/bias/ResourceApplyAdam6^main/Adam/update_main/output/kernel/ResourceApplyAdam*"
_class
loc:@main/dense/bias*
dtype0*
_output_shapes
: 
?
main/Adam/ReadVariableOp_2ReadVariableOpmain/beta2_power3^main/Adam/update_main/dense/bias/ResourceApplyAdam5^main/Adam/update_main/dense/kernel/ResourceApplyAdam5^main/Adam/update_main/dense_1/bias/ResourceApplyAdam7^main/Adam/update_main/dense_1/kernel/ResourceApplyAdam4^main/Adam/update_main/output/bias/ResourceApplyAdam6^main/Adam/update_main/output/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
?
main/Adam/mul_1Mulmain/Adam/ReadVariableOp_2main/Adam/beta2*
T0*"
_class
loc:@main/dense/bias*
_output_shapes
: 
?
main/Adam/AssignVariableOp_1AssignVariableOpmain/beta2_powermain/Adam/mul_1*"
_class
loc:@main/dense/bias*
dtype0
?
main/Adam/ReadVariableOp_3ReadVariableOpmain/beta2_power^main/Adam/AssignVariableOp_13^main/Adam/update_main/dense/bias/ResourceApplyAdam5^main/Adam/update_main/dense/kernel/ResourceApplyAdam5^main/Adam/update_main/dense_1/bias/ResourceApplyAdam7^main/Adam/update_main/dense_1/kernel/ResourceApplyAdam4^main/Adam/update_main/output/bias/ResourceApplyAdam6^main/Adam/update_main/output/kernel/ResourceApplyAdam*"
_class
loc:@main/dense/bias*
dtype0*
_output_shapes
: 
?
	main/AdamNoOp^main/Adam/AssignVariableOp^main/Adam/AssignVariableOp_13^main/Adam/update_main/dense/bias/ResourceApplyAdam5^main/Adam/update_main/dense/kernel/ResourceApplyAdam5^main/Adam/update_main/dense_1/bias/ResourceApplyAdam7^main/Adam/update_main/dense_1/kernel/ResourceApplyAdam4^main/Adam/update_main/output/bias/ResourceApplyAdam6^main/Adam/update_main/output/kernel/ResourceApplyAdam
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
?
save/SaveV2/tensor_namesConst*?
value?B?Bmain/beta1_powerBmain/beta2_powerBmain/dense/biasBmain/dense/kernelBmain/dense_1/biasBmain/dense_1/kernelBmain/main/dense/bias/AdamBmain/main/dense/bias/Adam_1Bmain/main/dense/kernel/AdamBmain/main/dense/kernel/Adam_1Bmain/main/dense_1/bias/AdamBmain/main/dense_1/bias/Adam_1Bmain/main/dense_1/kernel/AdamBmain/main/dense_1/kernel/Adam_1Bmain/main/output/bias/AdamBmain/main/output/bias/Adam_1Bmain/main/output/kernel/AdamBmain/main/output/kernel/Adam_1Bmain/output/biasBmain/output/kernel*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$main/beta1_power/Read/ReadVariableOp$main/beta2_power/Read/ReadVariableOp#main/dense/bias/Read/ReadVariableOp%main/dense/kernel/Read/ReadVariableOp%main/dense_1/bias/Read/ReadVariableOp'main/dense_1/kernel/Read/ReadVariableOp-main/main/dense/bias/Adam/Read/ReadVariableOp/main/main/dense/bias/Adam_1/Read/ReadVariableOp/main/main/dense/kernel/Adam/Read/ReadVariableOp1main/main/dense/kernel/Adam_1/Read/ReadVariableOp/main/main/dense_1/bias/Adam/Read/ReadVariableOp1main/main/dense_1/bias/Adam_1/Read/ReadVariableOp1main/main/dense_1/kernel/Adam/Read/ReadVariableOp3main/main/dense_1/kernel/Adam_1/Read/ReadVariableOp.main/main/output/bias/Adam/Read/ReadVariableOp0main/main/output/bias/Adam_1/Read/ReadVariableOp0main/main/output/kernel/Adam/Read/ReadVariableOp2main/main/output/kernel/Adam_1/Read/ReadVariableOp$main/output/bias/Read/ReadVariableOp&main/output/kernel/Read/ReadVariableOp*"
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?Bmain/beta1_powerBmain/beta2_powerBmain/dense/biasBmain/dense/kernelBmain/dense_1/biasBmain/dense_1/kernelBmain/main/dense/bias/AdamBmain/main/dense/bias/Adam_1Bmain/main/dense/kernel/AdamBmain/main/dense/kernel/Adam_1Bmain/main/dense_1/bias/AdamBmain/main/dense_1/bias/Adam_1Bmain/main/dense_1/kernel/AdamBmain/main/dense_1/kernel/Adam_1Bmain/main/output/bias/AdamBmain/main/output/bias/Adam_1Bmain/main/output/kernel/AdamBmain/main/output/kernel/Adam_1Bmain/output/biasBmain/output/kernel*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*;
value2B0B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
W
save/AssignVariableOpAssignVariableOpmain/beta1_powersave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
[
save/AssignVariableOp_1AssignVariableOpmain/beta2_powersave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
Z
save/AssignVariableOp_2AssignVariableOpmain/dense/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
_output_shapes
:*
T0
\
save/AssignVariableOp_3AssignVariableOpmain/dense/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
\
save/AssignVariableOp_4AssignVariableOpmain/dense_1/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
_output_shapes
:*
T0
^
save/AssignVariableOp_5AssignVariableOpmain/dense_1/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
d
save/AssignVariableOp_6AssignVariableOpmain/main/dense/bias/Adamsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
f
save/AssignVariableOp_7AssignVariableOpmain/main/dense/bias/Adam_1save/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
f
save/AssignVariableOp_8AssignVariableOpmain/main/dense/kernel/Adamsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
h
save/AssignVariableOp_9AssignVariableOpmain/main/dense/kernel/Adam_1save/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
h
save/AssignVariableOp_10AssignVariableOpmain/main/dense_1/bias/Adamsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
j
save/AssignVariableOp_11AssignVariableOpmain/main/dense_1/bias/Adam_1save/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
j
save/AssignVariableOp_12AssignVariableOpmain/main/dense_1/kernel/Adamsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
l
save/AssignVariableOp_13AssignVariableOpmain/main/dense_1/kernel/Adam_1save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
g
save/AssignVariableOp_14AssignVariableOpmain/main/output/bias/Adamsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
i
save/AssignVariableOp_15AssignVariableOpmain/main/output/bias/Adam_1save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
_output_shapes
:*
T0
i
save/AssignVariableOp_16AssignVariableOpmain/main/output/kernel/Adamsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
k
save/AssignVariableOp_17AssignVariableOpmain/main/output/kernel/Adam_1save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
]
save/AssignVariableOp_18AssignVariableOpmain/output/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
_
save/AssignVariableOp_19AssignVariableOpmain/output/kernelsave/Identity_19*
dtype0
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
?
initNoOp^main/beta1_power/Assign^main/beta2_power/Assign^main/dense/bias/Assign^main/dense/kernel/Assign^main/dense_1/bias/Assign^main/dense_1/kernel/Assign!^main/main/dense/bias/Adam/Assign#^main/main/dense/bias/Adam_1/Assign#^main/main/dense/kernel/Adam/Assign%^main/main/dense/kernel/Adam_1/Assign#^main/main/dense_1/bias/Adam/Assign%^main/main/dense_1/bias/Adam_1/Assign%^main/main/dense_1/kernel/Adam/Assign'^main/main/dense_1/kernel/Adam_1/Assign"^main/main/output/bias/Adam/Assign$^main/main/output/bias/Adam_1/Assign$^main/main/output/kernel/Adam/Assign&^main/main/output/kernel/Adam_1/Assign^main/output/bias/Assign^main/output/kernel/Assign
[
save_1/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 
?
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_1567bdfa740048e28f14b506c59ba99f/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
?
save_1/SaveV2/tensor_namesConst*?
value?B?Bmain/beta1_powerBmain/beta2_powerBmain/dense/biasBmain/dense/kernelBmain/dense_1/biasBmain/dense_1/kernelBmain/main/dense/bias/AdamBmain/main/dense/bias/Adam_1Bmain/main/dense/kernel/AdamBmain/main/dense/kernel/Adam_1Bmain/main/dense_1/bias/AdamBmain/main/dense_1/bias/Adam_1Bmain/main/dense_1/kernel/AdamBmain/main/dense_1/kernel/Adam_1Bmain/main/output/bias/AdamBmain/main/output/bias/Adam_1Bmain/main/output/kernel/AdamBmain/main/output/kernel/Adam_1Bmain/output/biasBmain/output/kernel*
dtype0*
_output_shapes
:
?
save_1/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices$main/beta1_power/Read/ReadVariableOp$main/beta2_power/Read/ReadVariableOp#main/dense/bias/Read/ReadVariableOp%main/dense/kernel/Read/ReadVariableOp%main/dense_1/bias/Read/ReadVariableOp'main/dense_1/kernel/Read/ReadVariableOp-main/main/dense/bias/Adam/Read/ReadVariableOp/main/main/dense/bias/Adam_1/Read/ReadVariableOp/main/main/dense/kernel/Adam/Read/ReadVariableOp1main/main/dense/kernel/Adam_1/Read/ReadVariableOp/main/main/dense_1/bias/Adam/Read/ReadVariableOp1main/main/dense_1/bias/Adam_1/Read/ReadVariableOp1main/main/dense_1/kernel/Adam/Read/ReadVariableOp3main/main/dense_1/kernel/Adam_1/Read/ReadVariableOp.main/main/output/bias/Adam/Read/ReadVariableOp0main/main/output/bias/Adam_1/Read/ReadVariableOp0main/main/output/kernel/Adam/Read/ReadVariableOp2main/main/output/kernel/Adam_1/Read/ReadVariableOp$main/output/bias/Read/ReadVariableOp&main/output/kernel/Read/ReadVariableOp*"
dtypes
2
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
?
save_1/RestoreV2/tensor_namesConst*?
value?B?Bmain/beta1_powerBmain/beta2_powerBmain/dense/biasBmain/dense/kernelBmain/dense_1/biasBmain/dense_1/kernelBmain/main/dense/bias/AdamBmain/main/dense/bias/Adam_1Bmain/main/dense/kernel/AdamBmain/main/dense/kernel/Adam_1Bmain/main/dense_1/bias/AdamBmain/main/dense_1/bias/Adam_1Bmain/main/dense_1/kernel/AdamBmain/main/dense_1/kernel/Adam_1Bmain/main/output/bias/AdamBmain/main/output/bias/Adam_1Bmain/main/output/kernel/AdamBmain/main/output/kernel/Adam_1Bmain/output/biasBmain/output/kernel*
dtype0*
_output_shapes
:
?
!save_1/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*"
dtypes
2*d
_output_shapesR
P::::::::::::::::::::
R
save_1/Identity_1Identitysave_1/RestoreV2*
T0*
_output_shapes
:
]
save_1/AssignVariableOpAssignVariableOpmain/beta1_powersave_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:1*
_output_shapes
:*
T0
_
save_1/AssignVariableOp_1AssignVariableOpmain/beta2_powersave_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:2*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_2AssignVariableOpmain/dense/biassave_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:3*
_output_shapes
:*
T0
`
save_1/AssignVariableOp_3AssignVariableOpmain/dense/kernelsave_1/Identity_4*
dtype0
T
save_1/Identity_5Identitysave_1/RestoreV2:4*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_4AssignVariableOpmain/dense_1/biassave_1/Identity_5*
dtype0
T
save_1/Identity_6Identitysave_1/RestoreV2:5*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_5AssignVariableOpmain/dense_1/kernelsave_1/Identity_6*
dtype0
T
save_1/Identity_7Identitysave_1/RestoreV2:6*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_6AssignVariableOpmain/main/dense/bias/Adamsave_1/Identity_7*
dtype0
T
save_1/Identity_8Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_7AssignVariableOpmain/main/dense/bias/Adam_1save_1/Identity_8*
dtype0
T
save_1/Identity_9Identitysave_1/RestoreV2:8*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_8AssignVariableOpmain/main/dense/kernel/Adamsave_1/Identity_9*
dtype0
U
save_1/Identity_10Identitysave_1/RestoreV2:9*
_output_shapes
:*
T0
m
save_1/AssignVariableOp_9AssignVariableOpmain/main/dense/kernel/Adam_1save_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:10*
T0*
_output_shapes
:
l
save_1/AssignVariableOp_10AssignVariableOpmain/main/dense_1/bias/Adamsave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:11*
T0*
_output_shapes
:
n
save_1/AssignVariableOp_11AssignVariableOpmain/main/dense_1/bias/Adam_1save_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:12*
T0*
_output_shapes
:
n
save_1/AssignVariableOp_12AssignVariableOpmain/main/dense_1/kernel/Adamsave_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:13*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_13AssignVariableOpmain/main/dense_1/kernel/Adam_1save_1/Identity_14*
dtype0
V
save_1/Identity_15Identitysave_1/RestoreV2:14*
T0*
_output_shapes
:
k
save_1/AssignVariableOp_14AssignVariableOpmain/main/output/bias/Adamsave_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_15AssignVariableOpmain/main/output/bias/Adam_1save_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
m
save_1/AssignVariableOp_16AssignVariableOpmain/main/output/kernel/Adamsave_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:17*
_output_shapes
:*
T0
o
save_1/AssignVariableOp_17AssignVariableOpmain/main/output/kernel/Adam_1save_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:18*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_18AssignVariableOpmain/output/biassave_1/Identity_19*
dtype0
V
save_1/Identity_20Identitysave_1/RestoreV2:19*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_19AssignVariableOpmain/output/kernelsave_1/Identity_20*
dtype0
?
save_1/restore_shardNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_3^save_1/AssignVariableOp_4^save_1/AssignVariableOp_5^save_1/AssignVariableOp_6^save_1/AssignVariableOp_7^save_1/AssignVariableOp_8^save_1/AssignVariableOp_9
1
save_1/restore_allNoOp^save_1/restore_shard "wB
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"?
trainable_variables??
?
main/dense/kernel:0main/dense/kernel/Assign'main/dense/kernel/Read/ReadVariableOp:0(2.main/dense/kernel/Initializer/random_uniform:08
{
main/dense/bias:0main/dense/bias/Assign%main/dense/bias/Read/ReadVariableOp:0(2#main/dense/bias/Initializer/zeros:08
?
main/dense_1/kernel:0main/dense_1/kernel/Assign)main/dense_1/kernel/Read/ReadVariableOp:0(20main/dense_1/kernel/Initializer/random_uniform:08
?
main/dense_1/bias:0main/dense_1/bias/Assign'main/dense_1/bias/Read/ReadVariableOp:0(2%main/dense_1/bias/Initializer/zeros:08
?
main/output/kernel:0main/output/kernel/Assign(main/output/kernel/Read/ReadVariableOp:0(2/main/output/kernel/Initializer/random_uniform:08

main/output/bias:0main/output/bias/Assign&main/output/bias/Read/ReadVariableOp:0(2$main/output/bias/Initializer/zeros:08"
train_op

	main/Adam"?
	variables??
?
main/dense/kernel:0main/dense/kernel/Assign'main/dense/kernel/Read/ReadVariableOp:0(2.main/dense/kernel/Initializer/random_uniform:08
{
main/dense/bias:0main/dense/bias/Assign%main/dense/bias/Read/ReadVariableOp:0(2#main/dense/bias/Initializer/zeros:08
?
main/dense_1/kernel:0main/dense_1/kernel/Assign)main/dense_1/kernel/Read/ReadVariableOp:0(20main/dense_1/kernel/Initializer/random_uniform:08
?
main/dense_1/bias:0main/dense_1/bias/Assign'main/dense_1/bias/Read/ReadVariableOp:0(2%main/dense_1/bias/Initializer/zeros:08
?
main/output/kernel:0main/output/kernel/Assign(main/output/kernel/Read/ReadVariableOp:0(2/main/output/kernel/Initializer/random_uniform:08

main/output/bias:0main/output/bias/Assign&main/output/bias/Read/ReadVariableOp:0(2$main/output/bias/Initializer/zeros:08
?
main/beta1_power:0main/beta1_power/Assign&main/beta1_power/Read/ReadVariableOp:0(2,main/beta1_power/Initializer/initial_value:0
?
main/beta2_power:0main/beta2_power/Assign&main/beta2_power/Read/ReadVariableOp:0(2,main/beta2_power/Initializer/initial_value:0
?
main/main/dense/kernel/Adam:0"main/main/dense/kernel/Adam/Assign1main/main/dense/kernel/Adam/Read/ReadVariableOp:0(2/main/main/dense/kernel/Adam/Initializer/zeros:0
?
main/main/dense/kernel/Adam_1:0$main/main/dense/kernel/Adam_1/Assign3main/main/dense/kernel/Adam_1/Read/ReadVariableOp:0(21main/main/dense/kernel/Adam_1/Initializer/zeros:0
?
main/main/dense/bias/Adam:0 main/main/dense/bias/Adam/Assign/main/main/dense/bias/Adam/Read/ReadVariableOp:0(2-main/main/dense/bias/Adam/Initializer/zeros:0
?
main/main/dense/bias/Adam_1:0"main/main/dense/bias/Adam_1/Assign1main/main/dense/bias/Adam_1/Read/ReadVariableOp:0(2/main/main/dense/bias/Adam_1/Initializer/zeros:0
?
main/main/dense_1/kernel/Adam:0$main/main/dense_1/kernel/Adam/Assign3main/main/dense_1/kernel/Adam/Read/ReadVariableOp:0(21main/main/dense_1/kernel/Adam/Initializer/zeros:0
?
!main/main/dense_1/kernel/Adam_1:0&main/main/dense_1/kernel/Adam_1/Assign5main/main/dense_1/kernel/Adam_1/Read/ReadVariableOp:0(23main/main/dense_1/kernel/Adam_1/Initializer/zeros:0
?
main/main/dense_1/bias/Adam:0"main/main/dense_1/bias/Adam/Assign1main/main/dense_1/bias/Adam/Read/ReadVariableOp:0(2/main/main/dense_1/bias/Adam/Initializer/zeros:0
?
main/main/dense_1/bias/Adam_1:0$main/main/dense_1/bias/Adam_1/Assign3main/main/dense_1/bias/Adam_1/Read/ReadVariableOp:0(21main/main/dense_1/bias/Adam_1/Initializer/zeros:0
?
main/main/output/kernel/Adam:0#main/main/output/kernel/Adam/Assign2main/main/output/kernel/Adam/Read/ReadVariableOp:0(20main/main/output/kernel/Adam/Initializer/zeros:0
?
 main/main/output/kernel/Adam_1:0%main/main/output/kernel/Adam_1/Assign4main/main/output/kernel/Adam_1/Read/ReadVariableOp:0(22main/main/output/kernel/Adam_1/Initializer/zeros:0
?
main/main/output/bias/Adam:0!main/main/output/bias/Adam/Assign0main/main/output/bias/Adam/Read/ReadVariableOp:0(2.main/main/output/bias/Adam/Initializer/zeros:0
?
main/main/output/bias/Adam_1:0#main/main/output/bias/Adam_1/Assign2main/main/output/bias/Adam_1/Read/ReadVariableOp:0(20main/main/output/bias/Adam_1/Initializer/zeros:0*?
serving_default?
,
input#
main/input:0?????????6
output,
main/output/BiasAdd:0?????????	tensorflow/serving/predict