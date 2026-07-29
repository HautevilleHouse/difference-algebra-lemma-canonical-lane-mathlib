import HautevilleHouse.DifferenceAlgebraLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DifferenceRing where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  sigma : carrier → carrier  -- endomorphism
  sigmaCompatible : ∀ a b : carrier, sigma (add a b) = add (sigma a) (sigma b)
  sigmaMul : ∀ a b : carrier, sigma (mul a b) = mul (sigma a) (sigma b)
  sigmaOne : sigma one = one
  sigmaZero : sigma zero = zero

structure DifferenceField extends DifferenceRing where
  inv : carrier → carrier
  invMul : ∀ a : carrier, mul (inv a) a = one
  mulInv : ∀ a : carrier, mul a (inv a) = one
  sigmaInv : ∀ a : carrier, sigma (inv a) = inv (sigma a)

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse