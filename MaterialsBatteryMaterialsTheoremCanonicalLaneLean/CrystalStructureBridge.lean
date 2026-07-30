import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  unitCell : Type u
  latticeVectors : Type v
  basisAtoms : Type w
  symmetryGroup : Type x
  latticeVectorsDefined : Prop
  basisAtomsDefined : Prop
  symmetryGroupIdentified : Prop
  diffractionPatternComputed : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  latticeVectorsDefinedClosed : C.latticeVectorsDefined
  basisAtomsDefinedClosed : C.basisAtomsDefined
  symmetryGroupIdentifiedClosed : C.symmetryGroupIdentified
  diffractionPatternComputedClosed : C.diffractionPatternComputed

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.latticeVectorsDefined ∧ C.basisAtomsDefined ∧
  C.symmetryGroupIdentified ∧ C.diffractionPatternComputed

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.latticeVectorsDefinedClosed
    (And.intro E.basisAtomsDefinedClosed
      (And.intro E.symmetryGroupIdentifiedClosed E.diffractionPatternComputedClosed))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse