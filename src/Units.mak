#
# VCU specific unit abbreviations

univs := VCU

VCU_shortname = VCU
VCU_longname = Virginia Commonwealth University
VCU_unittype = univ
VCU_parent = VCU

colleges := EG BU MD HS WS ED AR

EG_shortname = Engineering
EG_longname = School of Engineering
EG_unittype = college
EG_parent = VCU

BU_shortname = Business
BU_longname = School of Business
BU_unittype = college
BU_parent = VCU

MD_shortname = Medicine
MD_longname = School of Medicine
MD_unittype = college
MD_parent = VCU

HS_shortname = Humanities and Sciences
HS_longname = College of Humanities and Sciences
HS_unittype = college
HS_parent = VCU

WS_shortname = Wilder School
WS_longname = LD Wilder School of Public Policy
WS_unittype = college
WS_parent = VCU

ED_shortname = Education
ED_longname = School of Education
ED_unittype = college
ED_parent = VCU

AR_shortname = Arts
AR_longname = School of the Arts
AR_unittype = college
AR_parent = VCU

depts := MNE CS

MNE_shortname = Mechanical and Nuclear
MNE_longname = Department of Mechanical and Nuclear Engineering
MNE_unittype = dept
MNE_parent = EG

CS_shortname = Computer Science
CS_longname = Department of Computer Science
CS_unittype = dept
CS_parent = EG

all.units := $(univs) $(colleges) $(depts)
