import HautevilleHouse.DifferenceAlgebraLemmaCanonicalLaneLean.DifferenceField

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DifferenceGaloisGroup (K : DifferenceField) where
  automorphisms : Set (K.carrier → K.carrier)
  groupStructure : Group (Subtype fun f => f ∈ automorphisms)
  sigmaCommute : ∀ (f : Subtype fun f => f ∈ automorphisms), K.sigma ∘ f.val = f.val ∘ K.sigma

structure PicardVessiotExtension (K : DifferenceField) where
  L : DifferenceField
  KtoL : K.carrier → L.carrier
  sigmaInvariant : ∀ a : K.carrier, L.sigma (KtoL a) = KtoL (K.sigma a)
  pvExtension : Prop
  pvExtension : pvExtension

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse