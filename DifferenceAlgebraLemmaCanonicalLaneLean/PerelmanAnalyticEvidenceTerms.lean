import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraLemmaCanonicalLaneLean

structure DerivativeAnalyticEvidenceTerms (G : DifferenceConstant) (C : DerivativeAnalyticCertificate G) where
  additivity : C.additivity
  productRule : C.productRule
  chainRule : C.chainRule
  derivativeClosed : DerivativeClosed G

def DerivativeAnalyticCertificate.evidenceTerms (G : DifferenceConstant) (C : DerivativeAnalyticCertificate G) : DerivativeAnalyticEvidenceTerms G C :=
  {
    additivity := C.additivityClosed
    productRule := C.productRuleClosed
    chainRule := C.chainRuleClosed
    derivativeClosed := derivative_closed_from_evidence G C.derivativeEvidence
  }

structure AlgebraicIdentityEvidenceTerms (G : DifferenceConstant) (C : AlgebraicIdentityCertificate G) where
  additionCommutative : C.additionCommutative
  additionAssociative : C.additionAssociative
  zeroAdd : C.zeroAdd
  addZero : C.addZero
  identityClosed : AlgebraicIdentityClosed G

def AlgebraicIdentityCertificate.evidenceTerms (G : DifferenceConstant) (C : AlgebraicIdentityCertificate G) : AlgebraicIdentityEvidenceTerms G C :=
  {
    additionCommutative := C.additionCommutativeClosed
    additionAssociative := C.additionAssociativeClosed
    zeroAdd := C.zeroAddClosed
    addZero := C.addZeroClosed
    identityClosed := algebraic_identity_closed_from_evidence G C.identityEvidence
  }

end DifferenceAlgebraLemmaCanonicalLaneLean
end HautevilleHouse