import DifferenceAlgebraLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

def ConstrainedDiffAlgebraClosure (R : Type) [CommRing R] (A : AdmissibleClass R) : Prop :=
  bridgeClosed R A ∧ gateClosed R A

theorem constrained_diff_algebra_endgame (R : Type) [CommRing R] (A : AdmissibleClass R) :
    ConstrainedDiffAlgebraClosure R A := by
  exact And.intro (bridge_from_admissible_class R A) (gate_from_admissible_class R A)

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
