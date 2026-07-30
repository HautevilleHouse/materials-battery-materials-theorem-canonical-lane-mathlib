import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  electrodeMaterials : Type u
  phaseBoundaries : Prop
  coexistenceRegions : Prop
  voltageProfile : Prop
  rateCapability : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  coexistenceRegionsClosed : P.coexistenceRegions
  voltageProfileClosed : P.voltageProfile
  rateCapabilityClosed : P.rateCapability

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.coexistenceRegions ∧ P.voltageProfile ∧ P.rateCapability

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.coexistenceRegionsClosed
      (And.intro E.voltageProfileClosed E.rateCapabilityClosed))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse