import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DerivativeAnalyticCertificate (G : DifferenceConstant) where
  additivity : Prop
  productRule : Prop
  chainRule : Prop
  additivityClosed : additivity
  productRuleClosed : productRule
  chainRuleClosed : chainRule
  derivativeEvidence : DerivativeEvidence G

def DerivativeAnalyticCertificateClosed (G : DifferenceConstant) (C : DerivativeAnalyticCertificate G) : Prop :=
  C.additivity ∧ C.productRule ∧ C.chainRule ∧ DerivativeClosed G

theorem derivative_analytic_certificate_closed (G : DifferenceConstant) (C : DerivativeAnalyticCertificate G) :
    DerivativeAnalyticCertificateClosed G C := by
  exact And.intro C.additivityClosed
    (And.intro C.productRuleClosed
      (And.intro C.chainRuleClosed (derivative_closed_from_evidence G C.derivativeEvidence)))

structure AlgebraicIdentityCertificate (G : DifferenceConstant) where
  additionCommutative : Prop
  additionAssociative : Prop
  zeroAdd : Prop
  addZero : Prop
  additionCommutativeClosed : additionCommutative
  additionAssociativeClosed : additionAssociative
  zeroAddClosed : zeroAdd
  addZeroClosed : addZero
  identityEvidence : AlgebraicIdentityEvidence G

def AlgebraicIdentityCertificateClosed (G : DifferenceConstant) (C : AlgebraicIdentityCertificate G) : Prop :=
  C.additionCommutative ∧ C.additionAssociative ∧ C.zeroAdd ∧ C.addZero ∧ AlgebraicIdentityClosed G

theorem algebraic_identity_certificate_closed (G : DifferenceConstant) (C : AlgebraicIdentityCertificate G) :
    AlgebraicIdentityCertificateClosed G C := by
  exact And.intro C.additionCommutativeClosed
    (And.intro C.additionAssociativeClosed
      (And.intro C.zeroAddClosed
        (And.intro C.addZeroClosed (algebraic_identity_closed_from_evidence G C.identityEvidence))))

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse