import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure PromoterRecognitionAndBindingPackage where
  promoterSequence : Type u
  sigmaFactor : Type v
  holoenzyme : Type w
  promoterRecognition : Prop
  closedComplexFormation : Prop
  dnaBending : Prop
  footprintingEvidence : Prop

structure PromoterRecognitionAndBindingEvidence (P : PromoterRecognitionAndBindingPackage) where
  promoterRecognitionClosed : P.promoterRecognition
  closedComplexFormationClosed : P.closedComplexFormation
  dnaBendingClosed : P.dnaBending
  footprintingEvidenceClosed : P.footprintingEvidence

def PromoterRecognitionAndBindingClosed (P : PromoterRecognitionAndBindingPackage) : Prop :=
  P.promoterRecognition ∧ P.closedComplexFormation ∧ P.dnaBending ∧ P.footprintingEvidence

theorem promoter_recognition_and_binding_closed_from_evidence
    (P : PromoterRecognitionAndBindingPackage)
    (E : PromoterRecognitionAndBindingEvidence P) :
    PromoterRecognitionAndBindingClosed P := by
  exact And.intro E.promoterRecognitionClosed
    (And.intro E.closedComplexFormationClosed (And.intro E.dnaBendingClosed E.footprintingEvidenceClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse