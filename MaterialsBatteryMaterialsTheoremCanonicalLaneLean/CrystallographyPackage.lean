import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  crystalSystem : Type u
  spaceGroup : crystalSystem -> Type v
  bravaisLattice : Type w
  latticeParameters : crystalSystem -> Prop
  symmetryOperations : crystalSystem -> Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersSatisfied : C.latticeParameters C.crystalSystem
  symmetryOperationsClosed : C.symmetryOperations C.crystalSystem

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters C.crystalSystem ∧ C.symmetryOperations C.crystalSystem

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeParametersSatisfied E.symmetryOperationsClosed

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse