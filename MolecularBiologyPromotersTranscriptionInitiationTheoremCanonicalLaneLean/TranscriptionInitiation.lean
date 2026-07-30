import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionInitiationPackage where
  openComplexFormation : Prop
  promoterEscape : Prop
  elongationTransition : Prop
  abortiveInitiationResolved : Prop

structure TranscriptionInitiationEvidence (T : TranscriptionInitiationPackage) where
  openComplexFormationClosed : T.openComplexFormation
  promoterEscapeClosed : T.promoterEscape
  elongationTransitionClosed : T.elongationTransition
  abortiveInitiationResolvedClosed : T.abortiveInitiationResolved

def TranscriptionInitiationClosed (T : TranscriptionInitiationPackage) : Prop :=
  T.openComplexFormation ∧ T.promoterEscape ∧
  T.elongationTransition ∧ T.abortiveInitiationResolved

theorem transcription_initiation_closed_from_evidence
    (T : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence T) :
    TranscriptionInitiationClosed T := by
  exact And.intro E.openComplexFormationClosed
    (And.intro E.promoterEscapeClosed
      (And.intro E.elongationTransitionClosed E.abortiveInitiationResolvedClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse
