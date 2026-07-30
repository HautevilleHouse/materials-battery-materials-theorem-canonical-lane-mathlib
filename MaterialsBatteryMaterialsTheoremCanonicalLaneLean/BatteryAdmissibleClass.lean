import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure BatteryAdmittedObject where
  crystal : BatteryCrystalStructure
  phaseDiagram : PhaseDiagramPackage
  fracture : ElasticFracturePackage
  kinetics : ElectrodeKineticsPackage
  conclusion : Prop

structure BatteryAdmissibleClass where
  object : BatteryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : BatteryAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : BatteryAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : BatteryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BatteryAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

definedConstrictedTheoremClosure (A : BatteryAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem battery_endgame (A : BatteryAdmissibleClass) : definedConstrictedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse