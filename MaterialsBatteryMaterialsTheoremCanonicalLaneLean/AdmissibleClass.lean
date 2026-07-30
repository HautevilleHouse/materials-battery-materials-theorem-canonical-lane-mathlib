import MaterialsBatteryMaterialsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BatteryMaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BatteryMaterialsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse