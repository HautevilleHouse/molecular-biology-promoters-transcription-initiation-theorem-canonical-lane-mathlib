import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure AbortiveInitiationAndPromoterEscapePackage where
  openComplex : Type u
  abortiveTranscripts : Type v
  promoterEscape : Type w
  abortiveInitiationCycles : Prop
  sigmaFactorReleaseCompleted : Prop
  elongationCompetence : Prop
  transitionToElongation : Prop

structure AbortiveInitiationAndPromoterEscapeEvidence (P : AbortiveInitiationAndPromoterEscapePackage) where
  abortiveInitiationCyclesClosed : P.abortiveInitiationCycles
  sigmaFactorReleaseCompletedClosed : P.sigmaFactorReleaseCompleted
  elongationCompetenceClosed : P.elongationCompetence
  transitionToElongationClosed : P.transitionToElongation

def AbortiveInitiationAndPromoterEscapeClosed (P : AbortiveInitiationAndPromoterEscapePackage) : Prop :=
  P.abortiveInitiationCycles ∧ P.sigmaFactorReleaseCompleted ∧ P.elongationCompetence ∧ P.transitionToElongation

theorem abortive_initiation_and_promoter_escape_closed_from_evidence
    (P : AbortiveInitiationAndPromoterEscapePackage)
    (E : AbortiveInitiationAndPromoterEscapeEvidence P) :
    AbortiveInitiationAndPromoterEscapeClosed P := by
  exact And.intro E.abortiveInitiationCyclesClosed
    (And.intro E.sigmaFactorReleaseCompletedClosed (And.intro E.elongationCompetenceClosed E.transitionToElongationClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse