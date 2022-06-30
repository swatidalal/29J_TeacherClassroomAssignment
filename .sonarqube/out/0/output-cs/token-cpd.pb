�
[C:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\ApiDbLayerTC\ApiDbContext.cs
	namespace		 	
ApiDbLayerTC		
 
{

 
public 

class 
ApiDbContext 
: 
	DbContext '
{ 
public
ApiDbContext
(
)
{ 	
}
 
public 
ApiDbContext 
( 
DbContextOptions ,
options- 4
)4 5
: 	
base
 
( 
options 
) 
{ 	
} 	
public 
DbSet 
< 
Teacher 
> 
Teachers &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
	ClassRoom 
> 

Classrooms  *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
	protected 
override 
void 

(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str( d
)d e
;e f
} 	
}!! 
}"" �

aC:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\ApiDbLayerTC\Entities\ClassRoom.cs
	namespace 	
ApiDbLayerTC
 
. 
Entities 
{		 
public

 

class

 
	ClassRoom

 
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[
System
.
ComponentModel
.
DataAnnotations
.
Key
]
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
Teacher 
Teacher 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
_C:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\ApiDbLayerTC\Entities\Teacher.cs
	namespace 	
ApiDbLayerTC
 
. 
Entities 
{		 
public

 

class

 
Teacher

 
{ 
[
DatabaseGenerated
(
DatabaseGeneratedOption
.
Identity
)
]
[ 	
System	 
. 
ComponentModel 
. 
DataAnnotations .
.. /
Key/ 2
]2 3
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
? 
Address 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ICollection 
< 
	ClassRoom $
>$ %

{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
} �)
pC:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\ApiDbLayerTC\Migrations\20220630012214_initial.cs
	namespace 	
ApiDbLayerTC
 
. 

Migrations !
{ 
public 

partial 
class 
initial  
:! "
	Migration# ,
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns
:
table
=>
new
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 C
,C D
nullableE M
:M N
trueO S
)S T
,T U
Address 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 F
,F G
nullableH P
:P Q
trueR V
)V W
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
Id; =
)= >
;> ?
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str "
," #
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 C
,C D
nullableE M
:M N
trueO S
)S T
,T U
	TeacherId   
=   
table    %
.  % &
Column  & ,
<  , -
int  - 0
>  0 1
(  1 2
type  2 6
:  6 7
$str  8 =
,  = >
nullable  ? G
:  G H
false  I N
)  N O
}!! 
,!! 
constraints"" 
:"" 
table"" "
=>""# %
{## 
table$$ 
.$$ 

PrimaryKey$$ $
($$$ %
$str$$% 4
,$$4 5
x$$6 7
=>$$8 :
x$$; <
.$$< =
Id$$= ?
)$$? @
;$$@ A
table%% 
.%% 

ForeignKey%% $
(%%$ %
name&& 
:&& 
$str&& @
,&&@ A
column'' 
:'' 
x''  !
=>''" $
x''% &
.''& '
	TeacherId''' 0
,''0 1
principalTable(( &
:((& '
$str((( 2
,((2 3
principalColumn)) '
:))' (
$str))) -
,))- .
onDelete**  
:**  !
ReferentialAction**" 3
.**3 4
Cascade**4 ;
)**; <
;**< =
}++ 
)++ 
;++ 
migrationBuilder-- 
.-- 
CreateIndex-- (
(--( )
name.. 
:.. 
$str.. /
,../ 0
table// 
:// 
$str// #
,//# $
column00 
:00 
$str00 #
)00# $
;00$ %
}11 	
	protected33 
override33 
void33 
Down33  $
(33$ %
MigrationBuilder33% 5
migrationBuilder336 F
)33F G
{44 	
migrationBuilder55 
.55 
	DropTable55 &
(55& '
name66 
:66 
$str66 "
)66" #
;66# $
migrationBuilder88 
.88 
	DropTable88 &
(88& '
name99 
:99 
$str99  
)99  !
;99! "
}:: 	
};; 
}<< 