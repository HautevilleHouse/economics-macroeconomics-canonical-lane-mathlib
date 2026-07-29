import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

def ConstrainedMacroeconomicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_macroeconomic_endgame (A : AdmissibleClass) :
    ConstrainedMacroeconomicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse
