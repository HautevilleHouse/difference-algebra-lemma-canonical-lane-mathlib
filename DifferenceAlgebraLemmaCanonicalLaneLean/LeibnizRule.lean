import DifferenceAlgebraLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure LeibnizRulePackage (R : Type) [CommRing R] (A : AdmissibleClass R) where
  productRule : Prop
  chainRule : Prop
  quotientRule : Prop
  constantRule : Prop

structure LeibnizRuleEvidence (R : Type) [CommRing R] (A : AdmissibleClass R) (L : LeibnizRulePackage R A) where
  productRuleClosed : L.productRule
  chainRuleClosed : L.chainRule
  quotientRuleClosed : L.quotientRule
  constantRuleClosed : L.constantRule

def LeibnizRuleClosed (R : Type) [CommRing R] (A : AdmissibleClass R) (L : LeibnizRulePackage R A) : Prop :=
  L.productRule ∧ L.chainRule ∧ L.quotientRule ∧ L.constantRule

theorem leibniz_rule_closed_from_evidence (R : Type) [CommRing R] (A : AdmissibleClass R) (L : LeibnizRulePackage R A) (E : LeibnizRuleEvidence R A L) : LeibnizRuleClosed R A L := by
  exact And.intro E.productRuleClosed (And.intro E.chainRuleClosed (And.intro E.quotientRuleClosed E.constantRuleClosed))

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse
