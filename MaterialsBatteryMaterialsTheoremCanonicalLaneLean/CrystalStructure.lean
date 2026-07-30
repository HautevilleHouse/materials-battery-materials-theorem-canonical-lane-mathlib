import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure CrystalStructureUnitCell where
  a : ℝ
  b : ℝ
  c : ℝ
  alpha : ℝ
  beta : ℝ
  gamma : ℝ
  volume : ℝ

structure CrystalStructurePackage where
  unitCell : CrystalStructureUnitCell
  spaceGroup : String
  atomicPositions : List (String × ℝ × ℝ × ℝ)
  latticeSymmetry : Prop
  basisVectors : (ℝ × ℝ × ℝ) × (ℝ × ℝ × ℝ) × (ℝ × ℝ × ℝ)
  cellVolumeFormula : Prop
  cellVolumeFormulaClosed : cellVolumeFormula

def CrystalStructureClosed (P : CrystalStructurePackage) : Prop :=
  P.latticeSymmetry ∧ P.cellVolumeFormula

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse