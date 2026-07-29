import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure UtilityPackage where
  consumptionSet : Type u
  utilityFunction : consumptionSet → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  localNonSatiation : Prop

structure UtilityEvidence (U : UtilityPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  localNonSatiationClosed : U.localNonSatiation

def UtilityClosed (U : UtilityPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.localNonSatiation

theorem utility_closed_from_evidence (U : UtilityPackage) (E : UtilityEvidence U) :
    UtilityClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed (And.intro E.continuityClosed E.localNonSatiationClosed))

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse