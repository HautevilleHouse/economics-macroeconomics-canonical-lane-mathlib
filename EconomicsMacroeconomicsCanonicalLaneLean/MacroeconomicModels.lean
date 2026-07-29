import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure MacroeconomicModelsPackage where
  outputGap : ℝ
  inflationRate : ℝ
  interestRate : ℝ
  islmEquilibrium : Prop
  phillipsCurveRelation : Prop
  monetaryPolicyRule : Prop
  macroeconomicStabilization : islmEquilibrium ∧ phillipsCurveRelation ∧ monetaryPolicyRule

structure MacroeconomicModelsEvidence (M : MacroeconomicModelsPackage) where
  islmEquilibriumClosed : M.islmEquilibrium
  phillipsCurveRelationClosed : M.phillipsCurveRelation
  monetaryPolicyRuleClosed : M.monetaryPolicyRule

def MacroeconomicModelsClosed (M : MacroeconomicModelsPackage) : Prop :=
  M.islmEquilibrium ∧ M.phillipsCurveRelation ∧ M.monetaryPolicyRule

theorem macroeconomic_models_closed_from_evidence (M : MacroeconomicModelsPackage)
    (Ev : MacroeconomicModelsEvidence M) : MacroeconomicModelsClosed M := by
  exact And.intro Ev.islmEquilibriumClosed (And.intro Ev.phillipsCurveRelationClosed Ev.monetaryPolicyRuleClosed)

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse
