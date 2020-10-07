# Pointwise V18.3 Journal file - Wed Oct  7 16:40:04 2020

package require PWI_Glyph 3.18.3

pw::Application setUndoMaximumLevels 5
pw::Application reset
pw::Application markUndoLevel {Journal Reset}

pw::Application clearModified

set _TMP(mode_1) [pw::Application begin DatabaseImport]
  $_TMP(mode_1) initialize -strict -type Automatic D:/Github/IdealBifurcations/docs/example_part.STEP
  $_TMP(mode_1) read
  $_TMP(mode_1) convert
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel {Import Database}

pw::Application setGridPreference Unstructured
pw::Connector setCalculateDimensionMethod Spacing
pw::Connector setCalculateDimensionSpacing 0.2
set _DB(1) [pw::DatabaseEntity getByName NONE-54]
set _TMP(PW_1) [pw::DomainUnstructured createOnDatabase -parametricConnectors Aligned -merge 0 -reject _TMP(unused) [list $_DB(1)]]
unset _TMP(unused)
unset _TMP(PW_1)
pw::Application markUndoLevel {Domains On DB Entities}

pw::Display setShowDatabase 0
pw::Display setShowDomains 0
set _CN(1) [pw::GridEntity getByName con-32]
set _CN(2) [pw::GridEntity getByName con-37]
set _CN(3) [pw::GridEntity getByName con-34]
set _CN(4) [pw::GridEntity getByName con-3]
set _CN(5) [pw::GridEntity getByName con-15]
set _CN(6) [pw::GridEntity getByName con-24]
set _TMP(PW_1) [pw::DomainUnstructured createFromConnectors -reject _TMP(unusedCons)  [list $_CN(1) $_CN(2) $_CN(3) $_CN(4) $_CN(5) $_CN(6)]]
unset _TMP(unusedCons)
unset _TMP(PW_1)
pw::Application markUndoLevel {Assemble Domains}

pw::Display setShowDomains 1
set _DM(1) [pw::GridEntity getByName dom-15]
set _DM(2) [pw::GridEntity getByName dom-14]
set _DM(3) [pw::GridEntity getByName dom-13]
set _TMP(mode_1) [pw::Application begin UnstructuredSolver [list $_DM(1) $_DM(2) $_DM(3)]]
  set _TMP(PW_1) [pw::TRexCondition getByName Unspecified]
  set _TMP(PW_2) [pw::TRexCondition create]
  set _TMP(PW_3) [pw::TRexCondition getByName bc-2]
  unset _TMP(PW_2)
  $_TMP(PW_3) setConditionType Wall
  $_TMP(PW_3) setValue 0.025
  $_TMP(PW_3) apply [list [list $_DM(2) $_CN(1) Same] [list $_DM(3) $_CN(5) Same] [list $_DM(2) $_CN(3) Same] [list $_DM(1) $_CN(6) Same] [list $_DM(3) $_CN(4) Same] [list $_DM(1) $_CN(2) Same]]
  set _TMP(ENTS) [pw::Collection create]
  $_TMP(ENTS) set [list $_DM(1) $_DM(2) $_DM(3)]
  $_TMP(ENTS) do setUnstructuredSolverAttribute TRexMaximumLayers 6
  $_TMP(ENTS) do setUnstructuredSolverAttribute TRexGrowthRate 1.2
  $_TMP(ENTS) do setUnstructuredSolverAttribute TRexGrowthRate 1.1
  $_TMP(ENTS) do setUnstructuredSolverAttribute TRexCellType TriangleQuad
  $_TMP(ENTS) delete
  unset _TMP(ENTS)
  $_TMP(mode_1) run Initialize
  $_TMP(mode_1) run Refine
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel Solve

set _TMP(mode_1) [pw::Application begin UnstructuredSolver [list $_DM(1) $_DM(2) $_DM(3)]]
$_TMP(mode_1) abort
unset _TMP(mode_1)
unset _TMP(PW_1)
unset _TMP(PW_3)
set _DM(4) [pw::GridEntity getByName dom-1]
set _DM(5) [pw::GridEntity getByName dom-2]
set _DM(6) [pw::GridEntity getByName dom-3]
set _DM(7) [pw::GridEntity getByName dom-4]
set _DM(8) [pw::GridEntity getByName dom-5]
set _DM(9) [pw::GridEntity getByName dom-6]
set _DM(10) [pw::GridEntity getByName dom-7]
set _DM(11) [pw::GridEntity getByName dom-8]
set _DM(12) [pw::GridEntity getByName dom-9]
set _DM(13) [pw::GridEntity getByName dom-10]
set _DM(14) [pw::GridEntity getByName dom-12]
set _DM(15) [pw::GridEntity getByName dom-11]
set _TMP(mode_1) [pw::Application begin UnstructuredSolver [list $_DM(1) $_DM(2) $_DM(3) $_DM(4) $_DM(5) $_DM(6) $_DM(7) $_DM(8) $_DM(9) $_DM(10) $_DM(11) $_DM(12) $_DM(13) $_DM(14) $_DM(15)]]
  set _DB(2) [pw::DatabaseEntity getByName NONE-7]
  set _DB(3) [pw::DatabaseEntity getByName NONE-14]
  set _DB(4) [pw::DatabaseEntity getByName NONE-21]
  set _DB(5) [pw::DatabaseEntity getByName NONE-25]
  set _DB(6) [pw::DatabaseEntity getByName NONE-31]
  set _DB(7) [pw::DatabaseEntity getByName NONE-34]
  set _DB(8) [pw::DatabaseEntity getByName NONE-39]
  set _DB(9) [pw::DatabaseEntity getByName NONE-42]
  set _DB(10) [pw::DatabaseEntity getByName NONE-46]
  set _DB(11) [pw::DatabaseEntity getByName NONE-47]
  set _DB(12) [pw::DatabaseEntity getByName NONE-52]
  set _DB(13) [pw::DatabaseEntity getByName NONE-50]
$_TMP(mode_1) abort
unset _TMP(mode_1)
set _CN(7) [pw::GridEntity getByName con-30]
set _CN(8) [pw::GridEntity getByName con-31]
set _CN(9) [pw::GridEntity getByName con-33]
set _CN(10) [pw::GridEntity getByName con-35]
set _CN(11) [pw::GridEntity getByName con-36]
set _CN(12) [pw::GridEntity getByName con-1]
set _CN(13) [pw::GridEntity getByName con-2]
set _CN(14) [pw::GridEntity getByName con-5]
set _CN(15) [pw::GridEntity getByName con-4]
set _CN(16) [pw::GridEntity getByName con-10]
set _CN(17) [pw::GridEntity getByName con-7]
set _CN(18) [pw::GridEntity getByName con-8]
set _CN(19) [pw::GridEntity getByName con-6]
set _CN(20) [pw::GridEntity getByName con-9]
set _CN(21) [pw::GridEntity getByName con-14]
set _CN(22) [pw::GridEntity getByName con-11]
set _CN(23) [pw::GridEntity getByName con-12]
set _CN(24) [pw::GridEntity getByName con-13]
set _CN(25) [pw::GridEntity getByName con-16]
set _CN(26) [pw::GridEntity getByName con-17]
set _CN(27) [pw::GridEntity getByName con-19]
set _CN(28) [pw::GridEntity getByName con-18]
set _CN(29) [pw::GridEntity getByName con-20]
set _CN(30) [pw::GridEntity getByName con-21]
set _CN(31) [pw::GridEntity getByName con-22]
set _CN(32) [pw::GridEntity getByName con-23]
set _CN(33) [pw::GridEntity getByName con-25]
set _CN(34) [pw::GridEntity getByName con-26]
set _CN(35) [pw::GridEntity getByName con-27]
set _CN(36) [pw::GridEntity getByName con-28]
set _CN(37) [pw::GridEntity getByName con-29]
set _TMP(PW_1) [pw::DomainUnstructured createFromConnectors -reject _TMP(unusedCons) -solid [list $_CN(7) $_CN(8) $_CN(9) $_CN(1) $_CN(10) $_CN(2) $_CN(11) $_CN(3) $_CN(4) $_CN(12) $_CN(13) $_CN(14) $_CN(15) $_CN(16) $_CN(17) $_CN(18) $_CN(19) $_CN(20) $_CN(21) $_CN(22) $_CN(23) $_CN(24) $_CN(25) $_CN(26) $_CN(27) $_CN(5) $_CN(28) $_CN(29) $_CN(30) $_CN(31) $_CN(6) $_CN(32) $_CN(33) $_CN(34) $_CN(35) $_CN(36) $_CN(37)]]
unset _TMP(unusedCons)
set _TMP(PW_2) [pw::BlockUnstructured createFromDomains -reject _TMP(unusedDoms) -voids _TMP(voidBlocks) -baffles _TMP(baffleFaces) [concat $_TMP(PW_1) [list $_DM(1) $_DM(2) $_DM(3) $_DM(4) $_DM(5) $_DM(6) $_DM(7) $_DM(8) $_DM(9) $_DM(10) $_DM(11) $_DM(12) $_DM(13) $_DM(14) $_DM(15)]]]
unset _TMP(unusedDoms)
unset _TMP(PW_2)
unset _TMP(PW_1)
pw::Application markUndoLevel {Assemble Blocks}

set _BL(1) [pw::GridEntity getByName blk-1]
set _TMP(mode_1) [pw::Application begin UnstructuredSolver [list $_BL(1)]]
  set _TMP(PW_1) [pw::TRexCondition getByName Unspecified]
  set _TMP(PW_2) [pw::TRexCondition getByName bc-2]
  set _TMP(PW_3) [pw::TRexCondition create]
  set _TMP(PW_4) [pw::TRexCondition getByName bc-3]
  unset _TMP(PW_3)
  set _TMP(PW_5) [pw::TRexCondition create]
  set _TMP(PW_6) [pw::TRexCondition getByName bc-4]
  unset _TMP(PW_5)
  $_TMP(PW_4) setConditionType Wall
  $_TMP(PW_6) setConditionType Match
  $_TMP(PW_4) setValue 0.025
  $_TMP(PW_4) apply [list [list $_BL(1) $_DM(8) Opposite] [list $_BL(1) $_DM(12) Opposite] [list $_BL(1) $_DM(15) Opposite] [list $_BL(1) $_DM(9) Opposite] [list $_BL(1) $_DM(2) Same] [list $_BL(1) $_DM(4) Opposite] [list $_BL(1) $_DM(14) Opposite] [list $_BL(1) $_DM(1) Same] [list $_BL(1) $_DM(13) Opposite] [list $_BL(1) $_DM(10) Opposite] [list $_BL(1) $_DM(7) Opposite] [list $_BL(1) $_DM(5) Opposite] [list $_BL(1) $_DM(3) Same] [list $_BL(1) $_DM(11) Opposite] [list $_BL(1) $_DM(6) Opposite]]
  $_TMP(PW_6) apply [list [list $_BL(1) $_DM(2) Same] [list $_BL(1) $_DM(3) Same]]
  $_TMP(PW_6) apply [list [list $_BL(1) $_DM(1) Same]]
  $_BL(1) setUnstructuredSolverAttribute TRexMaximumLayers 6
  $_BL(1) setUnstructuredSolverAttribute TRexGrowthRate 1.2
  $_BL(1) setUnstructuredSolverAttribute TRexGrowthRate 1.1
  $_TMP(mode_1) setStopWhenFullLayersNotMet true
  $_TMP(mode_1) setAllowIncomplete true
  $_TMP(mode_1) run Initialize
  $_TMP(mode_1) setStopWhenFullLayersNotMet true
  $_TMP(mode_1) setAllowIncomplete true
  $_TMP(mode_1) run Initialize
$_TMP(mode_1) end
unset _TMP(mode_1)
pw::Application markUndoLevel Solve

set _TMP(mode_1) [pw::Application begin UnstructuredSolver [list $_BL(1)]]
$_TMP(mode_1) abort
unset _TMP(mode_1)
unset _TMP(PW_1)
unset _TMP(PW_2)
unset _TMP(PW_4)
unset _TMP(PW_6)
set _TMP(PW_1) [pw::BoundaryCondition getByName Unspecified]
unset _TMP(PW_1)
pw::Application setCAESolver OpenFOAM 3
pw::Application markUndoLevel {Select Solver}

set _TMP(PW_1) [pw::BoundaryCondition getByName Unspecified]
set _TMP(PW_2) [pw::BoundaryCondition create]
pw::Application markUndoLevel {Create BC}

set _TMP(PW_3) [pw::BoundaryCondition getByName bc-2]
unset _TMP(PW_2)
set _TMP(PW_4) [pw::BoundaryCondition create]
pw::Application markUndoLevel {Create BC}

set _TMP(PW_5) [pw::BoundaryCondition getByName bc-3]
unset _TMP(PW_4)
set _TMP(PW_6) [pw::BoundaryCondition create]
pw::Application markUndoLevel {Create BC}

set _TMP(PW_7) [pw::BoundaryCondition getByName bc-4]
unset _TMP(PW_6)
$_TMP(PW_3) setPhysicalType -usage CAE wall
pw::Application markUndoLevel {Change BC Type}

$_TMP(PW_5) setPhysicalType -usage CAE patch
pw::Application markUndoLevel {Change BC Type}

$_TMP(PW_7) setPhysicalType -usage CAE patch
pw::Application markUndoLevel {Change BC Type}

set _TMP(PW_8) [pw::BoundaryCondition create]
pw::Application markUndoLevel {Create BC}

set _TMP(PW_9) [pw::BoundaryCondition getByName bc-5]
unset _TMP(PW_8)
$_TMP(PW_9) setPhysicalType -usage CAE patch
pw::Application markUndoLevel {Change BC Type}

$_TMP(PW_5) setName inlet
pw::Application markUndoLevel {Name BC}

$_TMP(PW_7) setName outlet
pw::Application markUndoLevel {Name BC}

$_TMP(PW_7) setName outletl1
pw::Application markUndoLevel {Name BC}

$_TMP(PW_7) setName outlet-1
pw::Application markUndoLevel {Name BC}

$_TMP(PW_9) setName outlet-2
pw::Application markUndoLevel {Name BC}

$_TMP(PW_3) setName wall
pw::Application markUndoLevel {Name BC}

$_TMP(PW_3) setName WALL
pw::Application markUndoLevel {Name BC}

$_TMP(PW_5) setName INLET
pw::Application markUndoLevel {Name BC}

$_TMP(PW_7) setName OUTLET-1
pw::Application markUndoLevel {Name BC}

$_TMP(PW_9) setName OUTLET-2
pw::Application markUndoLevel {Name BC}

$_TMP(PW_3) apply [list [list $_BL(1) $_DM(3)] [list $_BL(1) $_DM(1)] [list $_BL(1) $_DM(9)] [list $_BL(1) $_DM(15)] [list $_BL(1) $_DM(4)] [list $_BL(1) $_DM(5)] [list $_BL(1) $_DM(2)] [list $_BL(1) $_DM(11)] [list $_BL(1) $_DM(14)] [list $_BL(1) $_DM(13)] [list $_BL(1) $_DM(12)] [list $_BL(1) $_DM(8)] [list $_BL(1) $_DM(7)] [list $_BL(1) $_DM(6)] [list $_BL(1) $_DM(10)]]
pw::Application markUndoLevel {Set BC}

$_TMP(PW_5) apply [list [list $_BL(1) $_DM(1)]]
pw::Application markUndoLevel {Set BC}

$_TMP(PW_7) apply [list [list $_BL(1) $_DM(3)]]
pw::Application markUndoLevel {Set BC}

$_TMP(PW_9) apply [list [list $_BL(1) $_DM(3)]]
pw::Application markUndoLevel {Set BC}

$_TMP(PW_7) apply [list [list $_BL(1) $_DM(2)]]
pw::Application markUndoLevel {Set BC}

unset _TMP(PW_1)
unset _TMP(PW_3)
unset _TMP(PW_5)
unset _TMP(PW_7)
unset _TMP(PW_9)
set _TMP(mode_1) [pw::Application begin CaeExport]
  $_TMP(mode_1) addAllEntities
  $_TMP(mode_1) initialize -strict -type CAE D:/Github/IdealBifurcations/docs/example_openfoam_mesh
  $_TMP(mode_1) verify
  $_TMP(mode_1) write
$_TMP(mode_1) end
unset _TMP(mode_1)