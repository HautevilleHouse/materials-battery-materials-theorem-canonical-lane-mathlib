import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ElectrodeKineticsPackage where
  currentDensity : ℝ
  overpotential : ℝ
  exchangeCurrentDensity : ℝ
  chargeTransferCoefficient : ℝ
  reactionRate : ℝ
  butlerVolmerEquation : Prop

structure ElectrodeKineticsEvidence (E : ElectrodeKineticsPackage) where
  currentDensityDefined : E.currentDensity ≠ 0
  overpotentialFinite : E.overpotential < ∞
  exchangeCurrentDensityPositive : E.exchangeCurrentDensity > 0
  chargeTransferCoefficientPositive : E.chargeTransferCoefficient > 0
  reactionRatePositive : E.reactionRate > 0
  butlerVolmerEquationClosed : E.butlerVolmerEquation

def ElectrodeKineticsClosed (E : ElectrodeKineticsPackage) : Prop :=
  E.currentDensity ≠ 0 ∧ E.overpotential < ∞ ∧ E.exchangeCurrentDensity > 0 ∧ E.chargeTransferCoefficient > 0 ∧ E.reactionRate > 0 ∧ E.butlerVolmerEquation

theorem electrode_kinetics_closed_from_evidence (E : ElectrodeKineticsPackage) (Ev : ElectrodeKineticsEvidence E) : ElectrodeKineticsClosed E := by
  exact And.intro Ev.currentDensityDefined (And.intro Ev.overpotentialFinite (And.intro Ev.exchangeCurrentDensityPositive (And.intro Ev.chargeTransferCoefficientPositive (And.intro Ev.reactionRatePositive Ev.butlerVolmerEquationClosed))))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse