import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

def batteryBridgeClosed (A : BatteryAdmissibleClass) : Prop :=
  bridgeClosed A

theorem battery_bridge_from_admissible_class (A : BatteryAdmissibleClass) :
    batteryBridgeClosed A := by
  exact bridge_from_admissible_class A

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse