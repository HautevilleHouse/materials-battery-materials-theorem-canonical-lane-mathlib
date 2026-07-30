import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure BatteryCrystalStructure where
  hostStructure : Type u
  intercalationSites : Type v
  latticeParameters : Prop
  siteOccupancy : Prop
  ionicConductivity : Prop

structure BatteryCrystalEvidence (B : BatteryCrystalStructure) where
  latticeParametersClosed : B.latticeParameters
  siteOccupancyClosed : B.siteOccupancy
  ionicConductivityClosed : B.ionicConductivity

def BatteryCrystalClosed (B : BatteryCrystalStructure) : Prop :=
  B.latticeParameters ∧ B.siteOccupancy ∧ B.ionicConductivity

theorem battery_crystal_closed_from_evidence (B : BatteryCrystalStructure)
    (E : BatteryCrystalEvidence B) : BatteryCrystalClosed B := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.siteOccupancyClosed E.ionicConductivityClosed)

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse