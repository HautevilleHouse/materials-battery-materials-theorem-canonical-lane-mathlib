import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ThermalDegradationPackage where
  heatGenerationMechanisms : Prop
  thermalRunawayDynamics : Prop
  degradationKinetics : Prop
  temperatureProfiles : Prop
  safeteyModels : Prop

structure ThermalDegradationEvidence (T : ThermalDegradationPackage) where
  heatGenerationMechanismsClosed : T.heatGenerationMechanisms
  thermalRunawayDynamicsClosed : T.thermalRunawayDynamics
  degradationKineticsClosed : T.degradationKinetics
  temperatureProfilesClosed : T.temperatureProfiles
  safeteyModelsClosed : T.safeteyModels

def ThermalDegradationClosed (T : ThermalDegradationPackage) : Prop :=
  T.heatGenerationMechanisms ∧ T.thermalRunawayDynamics ∧
  T.degradationKinetics ∧ T.temperatureProfiles ∧ T.safeteyModels

theorem thermal_degradation_closed_from_evidence (T : ThermalDegradationPackage)
    (E : ThermalDegradationEvidence T) : ThermalDegradationClosed T := by
  exact And.intro E.heatGenerationMechanismsClosed
    (And.intro E.thermalRunawayDynamicsClosed
      (And.intro E.degradationKineticsClosed
        (And.intro E.temperatureProfilesClosed E.safeteyModelsClosed)))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse