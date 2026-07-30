import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure DiffusionCoefficient where
  preExponential : ℝ
  activationEnergy : ℝ
  temperatureDependence : ℝ → ℝ

structure DiffusionPackage where
  liDiffusivity : DiffusionCoefficient
  concentrationDependence : ℝ → ℝ
  fickSecondLaw : Prop
  stefanMaxwellEquation : Prop
  fickSecondLawClosed : fickSecondLaw
  stefanMaxwellEquationClosed : stefanMaxwellEquation

def DiffusionClosed (P : DiffusionPackage) : Prop :=
  P.fickSecondLaw ∧ P.stefanMaxwellEquation

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse