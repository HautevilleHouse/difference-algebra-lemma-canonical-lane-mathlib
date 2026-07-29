import DifferenceAlgebraLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure PICExtensibilityPackage (R : Type) [CommRing R] (A : AdmissibleClass R) where
  initialValueProblem : Prop
  uniqueness : Prop
  prolongation : Prop
  formalPowerSeriesSolution : Prop

structure PICExtensibilityEvidence (R : Type) [CommRing R] (A : AdmissibleClass R) (P : PICExtensibilityPackage R A) where
  initialValueProblemClosed : P.initialValueProblem
  uniquenessClosed : P.uniqueness
  prolongationClosed : P.prolongation
  formalPowerSeriesSolutionClosed : P.formalPowerSeriesSolution

def PICExtensibilityClosed (R : Type) [CommRing R] (A : AdmissibleClass R) (P : PICExtensibilityPackage R A) : Prop :=
  P.initialValueProblem ∧ P.uniqueness ∧ P.prolongation ∧ P.formalPowerSeriesSolution

theorem pic_extensibility_closed_from_evidence (R : Type) [CommRing R] (A : AdmissibleClass R) (P : PICExtensibilityPackage R A) (E : PICExtensibilityEvidence R A P) : PICExtensibilityClosed R A P := by
  exact And.intro E.initialValueProblemClosed (And.intro E.uniquenessClosed (And.intro E.prolongationClosed E.formalPowerSeriesSolutionClosed))

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
