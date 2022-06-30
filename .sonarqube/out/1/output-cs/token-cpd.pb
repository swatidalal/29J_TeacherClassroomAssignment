ú
{C:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\29J_TeacherClassroomAssignment\ApiModel\ClassRoomApiModel.cs
	namespace 	+
_29J_TeacherClassroomAssignment
 )
.) *
ApiModel* 2
{ 
public 

class 
ClassRoomApiModel "
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ˜
ÖC:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\29J_TeacherClassroomAssignment\ApiModel\TeacherAndClassRoomApiModel.cs
	namespace 	+
_29J_TeacherClassroomAssignment
 )
.) *
ApiModel* 2
{ 
public 

class '
TeacherAndClassRoomApiModel ,
{ 
public 
TeacherApiModel 
Teacher &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
List 
< 
ClassRoomApiModel %
>% &
ClassroomList' 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ¬
yC:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\29J_TeacherClassroomAssignment\ApiModel\TeacherApiModel.cs
	namespace 	+
_29J_TeacherClassroomAssignment
 )
.) *
ApiModel* 2
{ 
public 

class 
TeacherApiModel  
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
? 
Address 
{  
get! $
;$ %
set& )
;) *
}+ ,
}

 
} ’]
C:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\29J_TeacherClassroomAssignment\Controllers\TeachersController.cs
	namespace 	+
_29J_TeacherClassroomAssignment
 )
.) *
Controllers* 5
{		 
[

 
Route

 

(


 
$str

 "
)

" #
]

# $
[ 
ApiController 
] 
public 

class 
TeachersController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ApiDbContext %
_context& .
;. /
private 
readonly 
IMapper  
_mapper! (
;( )
public 
TeachersController !
(! "
ApiDbContext" .
context/ 6
,6 7
IMapper8 ?
mapper@ F
)F G
{ 	
_context 
= 
context 
; 
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Teacher' .
>. /
>/ 0
PostTeacher1 <
(< ='
TeacherAndClassRoomApiModel= X'
teacherAndClassroomApiModelY t
)t u
{ 	
if 
( 
_context 
. 
Teachers !
==" $
null% )
)) *
{ 
return 
Problem 
( 
$str M
)M N
;N O
} 
var## 
obj## 
=## 
_mapper## 
.## 
Map## !
<##! "
Teacher##" )
>##) *
(##* +'
teacherAndClassroomApiModel##+ F
.##F G
Teacher##G N
)##N O
;##O P
var$$ 
classroomList$$ 
=$$ 
_mapper$$  '
.$$' (
Map$$( +
<$$+ ,
List$$, 0
<$$0 1
	ClassRoom$$1 :
>$$: ;
>$$; <
($$< ='
teacherAndClassroomApiModel$$= X
.$$X Y
ClassroomList$$Y f
)$$f g
;$$g h
obj&& 
.&& 
ClassRoomList&& 
=&& 
classroomList&&  -
;&&- .
_context++ 
.++ 
Teachers++ 
.++ 
Add++ !
(++! "
obj++" %
)++% &
;++& '
await,, 
_context,, 
.,, 
SaveChangesAsync,, +
(,,+ ,
),,, -
;,,- .
return.. 
Ok.. 
(.. 
).. 
;.. 
}// 	
[22 	
HttpGet22	 
]22 
public33 
async33 
Task33 
<33 
ActionResult33 &
<33& '
IEnumerable33' 2
<332 3
Teacher333 :
>33: ;
>33; <
>33< =
GetTeachers33> I
(33I J
)33J K
{44 	
if55
 
(55 
_context55 
.55 
Teachers55 
==55  "
null55# '
)55' (
{66
 
return77 
NotFound77 
(77 
)77 
;77  
}88
 
var:: 
obj:: 
=:: 
_context:: 
.:: 
Teachers:: '
.::' (
Include::( /
(::/ 0
t::0 1
=>::2 4
t::5 6
.::6 7
ClassRoomList::7 D
)::D E
.::E F
ToList::F L
(::L M
)::M N
;::N O
return;; 
Ok;; 
(;; 
_mapper;; 
.;; 
Map;; !
<;;! "
List;;" &
<;;& '
TeacherApiModel;;' 6
>;;6 7
>;;7 8
(;;8 9
obj;;9 <
);;< =
);;= >
;;;> ?
}>> 	
[@@ 	
HttpGet@@	 
(@@ 
$str@@ 
)@@ 
]@@ 
publicAA 
asyncAA 
TaskAA 
<AA 
ActionResultAA &
<AA& '
TeacherAA' .
>AA. /
>AA/ 0

GetTeacherAA1 ;
(AA; <
intAA< ?
idAA@ B
)AAB C
{BB 	
ifCC
 
(CC 
_contextCC 
.CC 
TeachersCC 
==CC  "
nullCC# '
)CC' (
{DD
 
returnEE 
NotFoundEE 
(EE 
)EE 
;EE  
}FF
 
varHH 
teacherHH 
=HH 
_contextHH "
.HH" #
TeachersHH# +
.HH+ ,
WhereHH, 1
(HH1 2
tHH2 3
=>HH4 6
tHH7 8
.HH8 9
IdHH9 ;
==HH< >
idHH? A
)HHA B
.HHB C
IncludeHHC J
(HHJ K
clsHHK N
=>HHO Q
clsHHR U
.HHU V
ClassRoomListHHV c
)HHc d
.HHd e
FirstOrDefaultHHe s
(HHs t
)HHt u
;HHu v
ifII 
(II 
teacherII 
==II 
nullII 
)II  
{JJ 
returnKK 
NotFoundKK 
(KK  
)KK  !
;KK! "
}LL 
returnOO 
_mapperOO 
.OO 
MapOO 
<OO 
TeacherOO &
>OO& '
(OO' (
teacherOO( /
)OO/ 0
;OO0 1
}QQ 	
[TT 	
HttpPutTT	 
(TT 
$strTT 
)TT 
]TT 
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (

PutTeacherUU) 3
(UU3 4
intUU5 8
idUU9 ;
,UU; <'
TeacherAndClassRoomApiModelUU< W'
teacherAndClassroomApiModelUUX s
)UUs t
{VV 	
ifWW 
(WW 
idWW 
!=WW '
teacherAndClassroomApiModelWW 1
.WW1 2
TeacherWW2 9
.WW9 :
IdWW: <
)WW< =
{XX 
returnYY 

BadRequestYY !
(YY! "
)YY" #
;YY# $
}[[ 
var\\ 
obj\\ 
=\\ 
_mapper\\ 
.\\ 
Map\\ !
<\\! "
Teacher\\" )
>\\) *
(\\* +'
teacherAndClassroomApiModel\\+ F
.\\F G
Teacher\\G N
)\\N O
;\\O P
var]] 
classroomList]] 
=]] 
_mapper]]  '
.]]' (
Map]]( +
<]]+ ,
List]], 0
<]]0 1
	ClassRoom]]1 :
>]]: ;
>]]; <
(]]< ='
teacherAndClassroomApiModel]]= X
.]]X Y
ClassroomList]]Y f
)]]f g
;]]g h
obj__ 
.__ 
ClassRoomList__ 
=__ 
classroomList__  -
;__- .
_context`` 
.`` 
Teachers`` 
.`` 
Update`` $
(``$ %
obj``% (
)``( )
;``) *
tryaa 
{bb 
awaitcc 
_contextcc 
.cc 
SaveChangesAsynccc /
(cc/ 0
)cc0 1
;cc1 2
}dd 
catchee 
(ee (
DbUpdateConcurrencyExceptionee /
)ee/ 0
{ff 
ifgg 
(gg 
!gg 
TeacherExistsgg "
(gg" #
idgg# %
)gg% &
)gg& '
{hh 
returnii 
NotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
elsekk 
{ll 
throwmm 
;mm 
}nn 
}oo 
returnqq 
Okqq 
(qq 
)qq 
;qq 
}rr 	
[vv 	

HttpDeletevv	 
(vv 
$strvv 
)vv 
]vv 
publicww 
asyncww 
Taskww 
<ww 
IActionResultww '
>ww' (
DeleteTeacherww) 6
(ww6 7
intww7 :
idww; =
)ww= >
{xx 	
ifyy 
(yy 
_contextyy 
.yy 
Teachersyy !
==yy" $
nullyy% )
)yy) *
{zz 
return{{ 
NotFound{{ 
({{  
){{  !
;{{! "
}|| 
var}} 
teacher}} 
=}} 
await}} 
_context}}  (
.}}( )
Teachers}}) 1
.}}1 2
	FindAsync}}2 ;
(}}; <
id}}< >
)}}> ?
;}}? @
if~~ 
(~~ 
teacher~~ 
==~~ 
null~~ 
)~~  
{ 
return
ÄÄ 
NotFound
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
}
ÅÅ 
_context
ÉÉ 
.
ÉÉ 
Teachers
ÉÉ 
.
ÉÉ 
Remove
ÉÉ $
(
ÉÉ$ %
teacher
ÉÉ% ,
)
ÉÉ, -
;
ÉÉ- .
await
ÑÑ 
_context
ÑÑ 
.
ÑÑ 
SaveChangesAsync
ÑÑ +
(
ÑÑ+ ,
)
ÑÑ, -
;
ÑÑ- .
return
ÜÜ 
Ok
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 	
[
ââ 	
	HttpPatch
ââ	 
(
ââ 
$str
ââ 
)
ââ 
]
ââ 
public
ää 
async
ää 
Task
ää 
<
ää 
ActionResult
ää &
>
ää& '
PatchTeacher
ää( 4
(
ää4 5
string
ää5 ;
Name
ää< @
,
ää@ A
string
ääB H
Address
ääI P
,
ääP Q
int
ääR U
id
ääV X
)
ääX Y
{
ãã 	
var
åå )
teacherNameAndAddressUpdate
åå +
=
åå, -
_context
åå. 6
.
åå6 7
Teachers
åå7 ?
.
åå? @
Where
åå@ E
(
ååE F
t
ååF G
=>
ååH J
t
ååK L
.
ååL M
Id
ååM O
==
ååP R
id
ååS U
)
ååU V
.
ååV W
FirstOrDefault
ååW e
(
ååe f
)
ååf g
;
ååg h
if
çç 
(
çç )
teacherNameAndAddressUpdate
çç +
==
çç, .
null
çç/ 3
)
çç3 4
{
éé 
return
èè 

BadRequest
èè !
(
èè! "
)
èè" #
;
èè# $
}
êê )
teacherNameAndAddressUpdate
ëë '
.
ëë' (
Name
ëë( ,
=
ëë- .
Name
ëë/ 3
;
ëë3 4)
teacherNameAndAddressUpdate
íí '
.
íí' (
Address
íí( /
=
íí0 1
Address
íí2 9
;
íí9 :
_context
ìì 
.
ìì 
Update
ìì 
(
ìì )
teacherNameAndAddressUpdate
ìì 7
)
ìì7 8
;
ìì8 9
await
îî 
_context
îî 
.
îî 
SaveChangesAsync
îî +
(
îî+ ,
)
îî, -
;
îî- .
return
ïï 
Ok
ïï 
(
ïï 
$str
ïï "
)
ïï" #
;
ïï# $
}
ññ 	
private
öö 
bool
öö 
TeacherExists
öö "
(
öö" #
int
öö# &
id
öö' )
)
öö) *
{
õõ 	
return
úú 
(
úú 
_context
úú 
.
úú 
Teachers
úú %
?
úú% &
.
úú& '
Any
úú' *
(
úú* +
e
úú+ ,
=>
úú- /
e
úú0 1
.
úú1 2
Id
úú2 4
==
úú5 7
id
úú8 :
)
úú: ;
)
úú; <
.
úú< =
GetValueOrDefault
úú= N
(
úúN O
)
úúO P
;
úúP Q
}
ùù 	
}
ûû 
}üü Ò
áC:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\29J_TeacherClassroomAssignment\MappingConfiguration\AutoMapperProfile.cs
	namespace 	+
_29J_TeacherClassroomAssignment
 )
.) * 
MappingConfiguration* >
{ 
public 

class 
AutoMapperProfile "
:" #
Profile# *
{ 
public

 
AutoMapperProfile

  
(

  !
)

! "
{ 	
	CreateMap 
< 
Teacher 
, 
TeacherApiModel .
>. /
(/ 0
)0 1
.1 2

ReverseMap2 <
(< =
)= >
;> ?
;@ A
	CreateMap 
< 
	ClassRoom 
,  
ClassRoomApiModel! 2
>2 3
(3 4
)4 5
.5 6

ReverseMap6 @
(@ A
)A B
;B C
} 	
} 
} ß
hC:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\29J_TeacherClassroomAssignment\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddDbContext 
< 
ApiDbContext *
>* +
(+ ,
options, 3
=>4 6
options 
. 
UseSqlServer 
( 
builder  
.  !
Configuration! .
.. /
GetConnectionString/ B
(B C
$strC Z
)Z [
??\ ^
throw		 	
new		
 %
InvalidOperationException		 '
(		' (
$str		( [
)		[ \
)		\ ]
)		] ^
;		^ _
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
Program& -
)- .
). /
;/ 0
builder 
. 
Services 
. 
AddControllers 
(  
)  !
. 
AddJsonOptions 
( 
options 
=> 
options &
.& '!
JsonSerializerOptions' <
.< =
ReferenceHandler= M
=N O
ReferenceHandlerP `
.` a
IgnoreCyclesa m
)m n
;n o
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app   
.   
UseAuthorization   
(   
)   
;   
app"" 
."" 
MapControllers"" 
("" 
)"" 
;"" 
if$$ 
($$ 
app$$ 
.$$ 
Environment$$ 
.$$ 
IsDevelopment$$ !
($$! "
)$$" #
)$$# $
{%% 
app&& 
.&& 

UseSwagger&& 
(&& 
)&& 
;&& 
app'' 
.'' 
UseSwaggerUI'' 
('' 
)'' 
;'' 
}(( 
app,, 
.,, 
Run,, 
(,, 
),, 	
;,,	 
ò
pC:\Users\LENOVO\source\repos\29J_TeacherClassroomAssignmentSol\29J_TeacherClassroomAssignment\WeatherForecast.cs
	namespace 	+
_29J_TeacherClassroomAssignment
 )
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
TemperatureC 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
int		 
TemperatureF		 
=>		  "
$num		# %
+		& '
(		( )
int		) ,
)		, -
(		- .
TemperatureC		. :
/		; <
$num		= C
)		C D
;		D E
public 
string 
? 
Summary 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 