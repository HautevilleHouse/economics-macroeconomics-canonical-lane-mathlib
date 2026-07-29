import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure Solo wGrowthPackage where
  capitalStock : Type u
  laborForce : Type v
  technology : Type w
  productionFunction : capitalStock → laborForce → technology → ℝ
  capitalAccumulationEquation : Prop
  savingsRate : ℝ
  depreciationRate : ℝ
  populationGrowthRate : ℝ
  technologicalProgressRate : ℝ
  steadyStateExistence : Prop

structure Solo wGrowthEvidence (S : Solo wGrowthPackage) where
  capitalAccumulationEquationClosed : S.capitalAccumulationEquation
  steadyStateExistenceClosed : S.steadyStateExistence

def Solo wGrowthClosed (S : Solo wGrowthPackage) : Prop :=
  S.capitalAccumulationEquation ∧ S.steadyStateExistence

theorem solo w_growth_closed_from_evidence (S : Solo wGrowthPackage) (E : Solo wGrowthEvidence S) :
    Solo wGrowthClosed S := by
  exact And.intro E.capitalAccumulationEquationClosed E.steadyStateExistenceClosed

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse