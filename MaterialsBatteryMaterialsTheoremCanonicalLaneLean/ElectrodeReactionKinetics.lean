import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ElectrodeReactionKineticsPackage where
  reactionRates : Prop
  activationEnergies : Prop
  transferCoefficients : Prop
  butlerVolmerEquation : Prop
  rateLimitingStep : Prop

structure ElectrodeReactionKineticsEvidence (E : ElectrodeReactionKineticsPackage) where
  reactionRatesClosed : E.reactionRates
  activationEnergiesClosed : E.activationEnergies
  transferCoefficientsClosed : E.transferCoefficients
  butlerVolmerEquationClosed : E.butlerVolmerEquation
  rateLimitingStepClosed : E.rateLimitingStep

def ElectrodeReactionKineticsClosed (E : ElectrodeReactionKineticsPackage) : Prop :=
  E.reactionRates ∧ E.activationEnergies ∧
  E.transferCoefficients ∧ E.butlerVolmerEquation ∧ E.rateLimitingStep

theorem electrode_reaction_kinetics_closed_from_evidence (E : ElectrodeReactionKineticsPackage)
    (Ev : ElectrodeReactionKineticsEvidence E) : ElectrodeReactionKineticsClosed E := by
  exact And.intro Ev.reactionRatesClosed
    (And.intro Ev.activationEnergiesClosed
      (And.intro Ev.transferCoefficientsClosed
        (And.intro Ev.butlerVolmerEquationClosed Ev.rateLimitingStepClosed)))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse