import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure MacroeconomicPolicyPackage where
  fiscalPolicy : Prop
  monetaryPolicy : Prop
  inflationTargeting : Prop
  unemploymentTradeoff : Prop
  policyInstrument : Type u
  policyEffectiveness : Prop
  welfareAnalysis : Prop

structure MacroeconomicPolicyEvidence (M : MacroeconomicPolicyPackage) where
  inflationTargetingClosed : M.inflationTargeting
  unemploymentTradeoffClosed : M.unemploymentTradeoff
  policyEffectivenessClosed : M.policyEffectiveness
  welfareAnalysisClosed : M.welfareAnalysis

def MacroeconomicPolicyClosed (M : MacroeconomicPolicyPackage) : Prop :=
  M.inflationTargeting ∧ M.unemploymentTradeoff ∧ M.policyEffectiveness ∧ M.welfareAnalysis

theorem macroeconomic_policy_closed_from_evidence (M : MacroeconomicPolicyPackage)
    (Ev : MacroeconomicPolicyEvidence M) : MacroeconomicPolicyClosed M := by
  exact And.intro Ev.inflationTargetingClosed
    (And.intro Ev.unemploymentTradeoffClosed
      (And.intro Ev.policyEffectivenessClosed Ev.welfareAnalysisClosed))

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse
