import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ElectrochemicalPackage where
  electrodePotential : Type u
  ionicConductivity : Type v
  capacityRetention : Prop
  cyclingStability : Prop
  faradaicEfficiency : Prop

structure ElectrochemicalEvidence (E : ElectrochemicalPackage) where
  capacityRetentionClosed : E.capacityRetention
  cyclingStabilityClosed : E.cyclingStability
  faradaicEfficiencyClosed : E.faradaicEfficiency

def ElectrochemicalClosed (E : ElectrochemicalPackage) : Prop :=
  E.capacityRetention ∧ E.cyclingStability ∧ E.faradaicEfficiency

theorem electrochemical_closed_from_evidence (E : ElectrochemicalPackage) (Ev : ElectrochemicalEvidence E) :
    ElectrochemicalClosed E := by
  exact And.intro Ev.capacityRetentionClosed (And.intro Ev.cyclingStabilityClosed Ev.faradaicEfficiencyClosed)

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse