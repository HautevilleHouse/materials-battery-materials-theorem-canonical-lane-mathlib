import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure IonTransportPackage where
  diffusionCoefficient : Prop
  migrationMobility : Prop
  concentrationProfiles : Prop
  nernstPlanckEquation : Prop
  conductivityModel : Prop

structure IonTransportEvidence (I : IonTransportPackage) where
  diffusionCoefficientClosed : I.diffusionCoefficient
  migrationMobilityClosed : I.migrationMobility
  concentrationProfilesClosed : I.concentrationProfiles
  nernstPlanckEquationClosed : I.nernstPlanckEquation
  conductivityModelClosed : I.conductivityModel

def IonTransportClosed (I : IonTransportPackage) : Prop :=
  I.diffusionCoefficient ∧ I.migrationMobility ∧
  I.concentrationProfiles ∧ I.nernstPlanckEquation ∧ I.conductivityModel

theorem ion_transport_closed_from_evidence (I : IonTransportPackage)
    (E : IonTransportEvidence I) : IonTransportClosed I := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.migrationMobilityClosed
      (And.intro E.concentrationProfilesClosed
        (And.intro E.nernstPlanckEquationClosed E.conductivityModelClosed)))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse