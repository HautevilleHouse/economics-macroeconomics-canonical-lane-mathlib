import EconomicsMacroeconomicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EconomicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicAdmittedObject where
  space : EconomicSpace
  commoditySpace : Type
  priceSpace : Type
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure EconomicEndgameState where
  object : EconomicAdmittedObject

def EconomicWitnessClosed (O : EconomicAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse
