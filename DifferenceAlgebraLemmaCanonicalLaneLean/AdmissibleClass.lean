import DifferenceAlgebraLemmaCanonicalLaneLean.DifferenceAlgebraLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure AdmissibleClass (R : Type) [CommRing R] where
  object : DiffAlgebraAdmittedObject R
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (R : Type) [CommRing R] (A : AdmissibleClass R) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
