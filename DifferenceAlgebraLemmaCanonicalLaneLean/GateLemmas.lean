import DifferenceAlgebraLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

def gateClosed (R : Type) [CommRing R] (A : AdmissibleClass R) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (R : Type) [CommRing R] (A : AdmissibleClass R) :
    gateClosed R A := by
  exact A.gateWitness

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
