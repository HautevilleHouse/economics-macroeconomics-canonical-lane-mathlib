import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMacroeconomicsCanonicalLaneLean

structure AssetPricingPackage where
  assetSpace : Type u
  payoffSpace : Type v
  priceFunction : assetSpace → ℝ
  stochasticDiscountFactor : payoffSpace → ℝ
  noArbitrage : Prop
  lawOfOnePrice : Prop
  marketPriceOfRisk : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageClosed : A.noArbitrage
  lawOfOnePriceClosed : A.lawOfOnePrice
  marketPriceOfRiskClosed : A.marketPriceOfRisk

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.lawOfOnePrice ∧ A.marketPriceOfRisk

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageClosed (And.intro E.lawOfOnePriceClosed E.marketPriceOfRiskClosed)

end EconomicsMacroeconomicsCanonicalLaneLean
end HautevilleHouse