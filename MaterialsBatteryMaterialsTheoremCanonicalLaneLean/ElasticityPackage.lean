import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  elasticModuli : Type w
  stressStrainRelation : Prop
  anisotropyFactor : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  anisotropyFactorClosed : E.anisotropyFactor
  moduliDefined : Nonempty E.elasticModuli

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.anisotropyFactor ∧ Nonempty E.elasticModuli

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed (And.intro Ev.anisotropyFactorClosed Ev.moduliDefined)

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse