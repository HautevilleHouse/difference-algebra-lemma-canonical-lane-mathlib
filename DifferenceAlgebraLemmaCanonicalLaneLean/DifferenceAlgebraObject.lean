import HautevilleHouse.DifferenceAlgebraLemmaCanonicalLaneLean.DifferenceField

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DifferenceAlgebraObject where
  K : DifferenceField
  V : Type u
  zeroV : V
  addV : V → V → V
  smul : K.carrier → V → V
  sigmaV : V → V
  sigmaAdd : ∀ v w : V, sigmaV (addV v w) = addV (sigmaV v) (sigmaV w)
  sigmaSmul : ∀ a : K.carrier, ∀ v : V, sigmaV (smul a v) = smul (K.sigma a) (sigmaV v)
  groundIdentity : Prop
  liftingCondition : Prop
  groundIdentity : groundIdentity
  liftingCondition : liftingCondition

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse