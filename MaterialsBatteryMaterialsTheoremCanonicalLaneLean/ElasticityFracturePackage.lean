import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ElasticityFracturePackage where
  stressStrainRelations : Prop
  crackPropagation : Prop
  fractureToughness : Prop
  elasticModuli : Type u
  youngModulus : Type v
  poissonRatio : Type w

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  stressStrainRelationsClosed : E.stressStrainRelations
  crackPropagationClosed : E.crackPropagation
  fractureToughnessClosed : E.fractureToughness

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.stressStrainRelations ∧ E.crackPropagation ∧ E.fractureToughness

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage)
    (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.stressStrainRelationsClosed
    (And.intro Ev.crackPropagationClosed Ev.fractureToughnessClosed)

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse