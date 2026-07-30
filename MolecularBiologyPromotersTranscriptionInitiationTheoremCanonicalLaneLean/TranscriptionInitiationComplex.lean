import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean.TranscriptionFactors
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean.PromoterArchitecture

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionInitiationComplex where
  promoter : PromoterArchitecture
  factors : List TranscriptionFactor
  rnaPolymeraseRecruited : Bool
  transcriptionBubbleFormed : Bool
  complexValid : rnaPolymeraseRecruited ∧ transcriptionBubbleFormed

structure TranscriptionInitiationComplexEvidence (C : TranscriptionInitiationComplex) where
  promoterClosed : PromoterArchitectureClosed C.promoter
  factorsFunctional : ∀ f ∈ C.factors, TranscriptionFactorClosed f
  rnaPolymeraseRecruitedClosed : C.rnaPolymeraseRecruited
  transcriptionBubbleFormedClosed : C.transcriptionBubbleFormed

def TranscriptionInitiationComplexClosed (C : TranscriptionInitiationComplex) : Prop :=
  PromoterArchitectureClosed C.promoter ∧
  (∀ f ∈ C.factors, TranscriptionFactorClosed f) ∧
  C.rnaPolymeraseRecruited ∧ C.transcriptionBubbleFormed

theorem transcription_initiation_complex_closed_from_evidence (C : TranscriptionInitiationComplex)
    (E : TranscriptionInitiationComplexEvidence C) : TranscriptionInitiationComplexClosed C := by
  exact And.intro E.promoterClosed (And.intro E.factorsFunctional (And.intro E.rnaPolymeraseRecruitedClosed E.transcriptionBubbleFormedClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse