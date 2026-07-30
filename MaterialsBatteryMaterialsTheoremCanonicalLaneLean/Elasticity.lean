import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u → Type u
  strainTensor : Type u → Type u
  stiffnessTensor : Type u → Type u
  youngModulus : ℝ
  poissonRatio : ℝ
  yieldStress : ℝ
  elasticLimit : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainLinear : ∀ M : Type u, stressTensor M = stiffnessTensor M * strainTensor M
  youngModulusPositive : E.youngModulus > 0
  poissonRatioBounds : -1 < E.poissonRatio ∧ E.poissonRatio < 0.5
  yieldStressPositive : E.yieldStress > 0
  elasticLimitClosed : E.elasticLimit

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  (∀ M : Type u, E.stressTensor M = E.stiffnessTensor M * E.strainTensor M) ∧ E.youngModulus > 0 ∧ (-1 < E.poissonRatio ∧ E.poissonRatio < 0.5) ∧ E.yieldStress > 0 ∧ E.elasticLimit

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainLinear (And.intro Ev.youngModulusPositive (And.intro Ev.poissonRatioBounds (And.intro Ev.yieldStressPositive Ev.elasticLimitClosed)))

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse