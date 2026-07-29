import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MacroeconomicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse
