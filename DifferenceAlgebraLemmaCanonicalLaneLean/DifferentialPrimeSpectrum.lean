import DifferenceAlgebraLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.RingTheory.Derivation.Basic

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DifferentialPrimeSpectrumPackage (R : Type) [CommRing R] (A : AdmissibleClass R) where
  derivation : Derivation R (A.object.carrier) (A.object.carrier)
  primeSpectrum : Set (Ideal (A.object.carrier))
  differentialStructure : Prop
  localizationClosure : Prop

structure DifferentialPrimeSpectrumEvidence (R : Type) [CommRing R] (A : AdmissibleClass R) (D : DifferentialPrimeSpectrumPackage R A) where
  differentialStructureClosed : D.differentialStructure
  localizationClosureClosed : D.localizationClosure

def DifferentialPrimeSpectrumClosed (R : Type) [CommRing R] (A : AdmissibleClass R) (D : DifferentialPrimeSpectrumPackage R A) : Prop :=
  D.differentialStructure ∧ D.localizationClosure

theorem differential_prime_spectrum_closed_from_evidence (R : Type) [CommRing R] (A : AdmissibleClass R) (D : DifferentialPrimeSpectrumPackage R A) (E : DifferentialPrimeSpectrumEvidence R A D) : DifferentialPrimeSpectrumClosed R A D := by
  exact And.intro E.differentialStructureClosed E.localizationClosureClosed

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
