import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DifferenceConstant where
  carrier : Type
  addition : carrier → carrier → carrier
  zero : carrier
  deriv : carrier → carrier

def DifferenceAlgebra (A : DifferenceConstant) : Prop :=
  ∀ x y : A.carrier, A.addition x y = A.addition y x ∧ A.addition A.zero x = x ∧ A.deriv (A.addition x y) = A.addition (A.deriv x) (A.deriv y)

structure AdmittedDifferenceObject where
  constant : DifferenceConstant
  algebra : DifferenceAlgebra constant
  conclusion : algebra

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse