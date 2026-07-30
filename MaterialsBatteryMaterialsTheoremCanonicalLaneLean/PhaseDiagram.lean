import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Type u
  phases : Type v
  phaseFractions : components → phases → ℝ
  gibbsFreeEnergy : components → ℝ
  chemicalPotential : components → ℝ
  temperature : ℝ
  pressure : ℝ

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseFractionsConserved : ∀ c, ∑ p in P.phases, P.phaseFractions c p = 1
  gibbsFreeEnergyDefined : ∀ c, P.gibbsFreeEnergy c ≥ 0
  chemicalPotentialDefined : ∀ c, P.chemicalPotential c ≥ 0
  temperaturePositive : P.temperature > 0
  pressurePositive : P.pressure > 0

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  (∀ c, ∑ p in P.phases, P.phaseFractions c p = 1) ∧ (∀ c, P.gibbsFreeEnergy c ≥ 0) ∧ (∀ c, P.chemicalPotential c ≥ 0) ∧ P.temperature > 0 ∧ P.pressure > 0

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseFractionsConserved (And.intro E.gibbsFreeEnergyDefined (And.intro E.chemicalPotentialDefined (And.intro E.temperaturePositive E.pressurePositive)))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse