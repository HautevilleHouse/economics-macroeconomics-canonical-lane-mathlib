import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure PhillipsCurvePackage where
  inflationRate : Type u
  unemploymentRate : Type v
  expectedInflation : Type w
  tradeoffRelation : inflationRate → unemploymentRate → ℝ
  expectationsAugmentation : Prop
  longRunVertical : Prop

structure PhillipsCurveEvidence (P : PhillipsCurvePackage) where
  expectationsAugmentationClosed : P.expectationsAugmentation
  longRunVerticalClosed : P.longRunVertical

def PhillipsCurveClosed (P : PhillipsCurvePackage) : Prop :=
  P.expectationsAugmentation ∧ P.longRunVertical

theorem phillips_curve_closed_from_evidence (P : PhillipsCurvePackage) (E : PhillipsCurveEvidence P) :
    PhillipsCurveClosed P := by
  exact And.intro E.expectationsAugmentationClosed E.longRunVerticalClosed

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse