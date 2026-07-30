import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

def batteryGateClosed (A : BatteryAdmissibleClass) : Prop :=
  gateClosed A

theorem battery_gate_from_admissible_class (A : BatteryAdmissibleClass) :
    batteryGateClosed A := by
  exact gate_from_admissible_class A

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse