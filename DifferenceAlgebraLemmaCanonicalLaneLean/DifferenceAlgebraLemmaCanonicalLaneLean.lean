import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DiffAlgebraAdmittedObject (R : Type) [CommRing R] where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  derivation : carrier → carrier
  commRing : CommRing carrier
  derivationProperties : Prop
  conclusion : derivationProperties

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
