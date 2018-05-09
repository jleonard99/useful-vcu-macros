#
# VCU specific unit abbreviations

univs := VCU

VCU_shortname = VCU
VCU_longname = Virginia Commonwealth University
VCU_unittype = univ
VCU_parent = VCU

colleges := EG BU MD HS WS ED AR

EG_shortname = Engineering
EG_longname = College of Engineering
EG_unittype = college
EG_parent = VCU
EG_abbr = 150

150_shortname = Engineering
150_longname = College of Engineering
150_unittype = college
150_parent = VCU
150_abbr = EG


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

depts := EGRB EGRC CMSC EGRE ENGR EGRM

EGRB_shortname = Biomedical Engineering 
EGRB_longname = Department of Biomedical Engineering
EGRB_unittype = dept
EGRB_parent = EG
1554_abbr = EGRB


EGRC_shortname = Chemical and Life Science Engineering
EGRC_longname = Department of Chemical and Life Science Engineering
EGRC_unittype = dept
EGRC_parent = EG
1472_abbr = EGRC

CMSC_shortname = Computer Science
CMSC_longname = Department of Computer Science
CMSC_unittype = dept
CMSC_parent = EG
1347_abbr = CMSC


EGRE_shortname = Electrical and Computer Engineering
EGRE_longname = Department of Electrical and Computer Engineering
EGRE_unittype = dept
EGRE_parent = EG
1471_abbr = EGRE

ENGR_shortname = Engineering
ENGR_longname = Office of the Dean of Engineering
ENGR_unittype = dept
ENGR_parent = EG
1470_abbr = ENGR

EGRM_shortname = Mechanical and Nuclear Engineering
EGRM_longname = Department of Mechanical and Nuclear Engineering
EGRM_unittype = dept
EGRM_parent = EG
1473_abbr = EGRM

programs := MNE CS

MNE_shortname = Mechanical and Nuclear
MNE_longname = Program in Mechanical and Nuclear Engineering
MNE_unittype = program
MNE_parent = EG

CS_shortname = Computer Science
CS_longname = Program in Computer Science
CS_unittype = program
CS_parent = EG

all.units := $(univs) $(colleges) $(depts)

show-units.title := Show available units
show-units:
	$(foreach unit,depts colleges univs,@echo + $(unit): $($(unit))$(\n))