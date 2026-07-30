import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  bravaisLattice : Type v
  atomicBasis : Type w
  spaceGroupSymmetry : Prop
  latticeParameter : Nat
  atomPositions : list unitCell
  latticeVectors : list bravaisLattice
  basisVectors : list atomicBasis

structure CrystallographyEvidence (C : CrystallographyPackage) where
  spaceGroupSymmetryClosed : C.spaceGroupSymmetry
  latticeParameterClosed : C.latticeParameter = 0
  atomPositionsClosed : C.atomPositions ≠ []
  latticeVectorsClosed : C.latticeVectors ≠ []
  basisVectorsClosed : C.basisVectors ≠ []

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.spaceGroupSymmetry ∧ C.latticeParameter = 0 ∧ C.atomPositions ≠ [] ∧ C.latticeVectors ≠ [] ∧ C.basisVectors ≠ []

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.spaceGroupSymmetryClosed (And.intro E.latticeParameterClosed (And.intro E.atomPositionsClosed (And.intro E.latticeVectorsClosed E.basisVectorsClosed)))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse