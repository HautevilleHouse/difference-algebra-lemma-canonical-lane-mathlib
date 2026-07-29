import DifferenceAlgebraLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

def bridgeClosed (R : Type) [CommRing R] (A : AdmissibleClass R) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (R : Type) [CommRing R] (A : AdmissibleClass R) :
    bridgeClosed R A := by
  exact A.object.conclusion

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
