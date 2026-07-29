import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure ArrowDebreuPackage where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  householdEndowments : commoditySpace → ℝ
  productionSets : Set (commoditySpace → ℝ)
  budgetConstraint : Prop
  utilityMaximization : Prop
  profitMaximization : Prop
  marketClearing : Prop

structure ArrowDebreuEvidence (A : ArrowDebreuPackage) where
  budgetConstraintClosed : A.budgetConstraint
  utilityMaximizationClosed : A.utilityMaximization
  profitMaximizationClosed : A.profitMaximization
  marketClearingClosed : A.marketClearing

def ArrowDebreuClosed (A : ArrowDebreuPackage) : Prop :=
  A.budgetConstraint ∧ A.utilityMaximization ∧ A.profitMaximization ∧ A.marketClearing

theorem arrow_debreu_closed_from_evidence (A : ArrowDebreuPackage) (E : ArrowDebreuEvidence A) :
    ArrowDebreuClosed A := by
  exact And.intro E.budgetConstraintClosed (And.intro E.utilityMaximizationClosed (And.intro E.profitMaximizationClosed E.marketClearingClosed))

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse