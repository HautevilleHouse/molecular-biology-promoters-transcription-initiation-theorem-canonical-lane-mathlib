import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure OpenComplexFormationPackage where
  closedComplex : Type u
  dnaTemplateStrand : Type v
  meltingBubble : Type w
  openComplex : Type x
  promoterMelting : Prop
  sigmaFactorRelease : Prop
  rnaPrimerInitiation : Prop

structure OpenComplexFormationEvidence (P : OpenComplexFormationPackage) where
  promoterMeltingClosed : P.promoterMelting
  sigmaFactorReleaseClosed : P.sigmaFactorRelease
  rnaPrimerInitiationClosed : P.rnaPrimerInitiation

def OpenComplexFormationClosed (P : OpenComplexFormationPackage) : Prop :=
  P.promoterMelting ∧ P.sigmaFactorRelease ∧ P.rnaPrimerInitiation

theorem open_complex_formation_closed_from_evidence
    (P : OpenComplexFormationPackage)
    (E : OpenComplexFormationEvidence P) :
    OpenComplexFormationClosed P := by
  exact And.intro E.promoterMeltingClosed (And.intro E.sigmaFactorReleaseClosed E.rnaPrimerInitiationClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse