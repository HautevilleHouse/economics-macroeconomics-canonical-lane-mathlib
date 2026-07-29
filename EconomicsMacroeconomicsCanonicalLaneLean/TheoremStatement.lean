import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure MacroeconomicAdmittedObject where
  economy : Type
  equilibrium : Prop
  conclusion : equilibrium

def MacroeconomicWitnessClosed (O : MacroeconomicAdmittedObject) : Prop :=
  O.equilibrium

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse
