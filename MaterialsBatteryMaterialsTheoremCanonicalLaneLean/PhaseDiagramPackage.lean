import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionRange : Type v
  phaseBoundaries : Type w
  stablePhases : Type x
  phaseTransitions : Prop
  gibbsFreeEnergy : Type y

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseTransitionsClosed : P.phaseTransitions
  stablePhasesMapped : Nonempty P.stablePhases
  freeEnergyDefined : Nonempty P.gibbsFreeEnergy

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseTransitions ∧ Nonempty P.stablePhases ∧ Nonempty P.gibbsFreeEnergy

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseTransitionsClosed (And.intro E.stablePhasesMapped E.freeEnergyDefined)

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse