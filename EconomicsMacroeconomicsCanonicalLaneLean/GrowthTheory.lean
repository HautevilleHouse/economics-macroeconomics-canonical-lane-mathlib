import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure GrowthTheoryPackage where
  productionFunction : Type u
  capitalAccumulation : Prop
  laborSupply : Prop
  consumptionSmoothing : Prop
  steadyStateExistence : Prop
  convergenceConditions : Prop
  optimalGrowthPath : Prop

structure GrowthTheoryEvidence (G : GrowthTheoryPackage) where
  steadyStateExistenceClosed : G.steadyStateExistence
  convergenceConditionsClosed : G.convergenceConditions
  optimalGrowthPathClosed : G.optimalGrowthPath

def GrowthTheoryClosed (G : GrowthTheoryPackage) : Prop :=
  G.steadyStateExistence ∧ G.convergenceConditions ∧ G.optimalGrowthPath

theorem growth_theory_closed_from_evidence (G : GrowthTheoryPackage)
    (Ev : GrowthTheoryEvidence G) : GrowthTheoryClosed G := by
  exact And.intro Ev.steadyStateExistenceClosed
    (And.intro Ev.convergenceConditionsClosed Ev.optimalGrowthPathClosed)

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse
