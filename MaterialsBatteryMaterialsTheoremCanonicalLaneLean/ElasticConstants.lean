import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsBatteryMaterialsTheoremCanonicalLaneLean

structure ElasticTensor where
  C11 : ℝ; C12 : ℝ; C13 : ℝ; C14 : ℝ; C15 : ℝ; C16 : ℝ
  C22 : ℝ; C23 : ℝ; C24 : ℝ; C25 : ℝ; C26 : ℝ
  C33 : ℝ; C34 : ℝ; C35 : ℝ; C36 : ℝ
  C44 : ℝ; C45 : ℝ; C46 : ℝ
  C55 : ℝ; C56 : ℝ
  C66 : ℝ

def ElasticConstantsPackage (E : ElasticTensor) where
  bulkModulus : ℝ
  shearModulus : ℝ
  youngsModulus : ℝ
  poissonRatio : ℝ
  elasticStabilityConditions : Prop
  mechanicalStabilityClosed : elasticStabilityConditions

def ElasticConstantsClosed {E : ElasticTensor} (P : ElasticConstantsPackage E) : Prop :=
  P.elasticStabilityConditions

end MaterialsBatteryMaterialsTheoremCanonicalLaneLean
end HautevilleHouse