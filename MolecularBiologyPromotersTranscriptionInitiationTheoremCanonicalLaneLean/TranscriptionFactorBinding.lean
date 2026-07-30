import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionFactorBindingPackage where
  transcriptionFactors : Type u
  bindingSites : Type v
  bindingAffinity : Prop
  cooperativity : Prop
  competition : Prop

structure TranscriptionFactorBindingEvidence (T : TranscriptionFactorBindingPackage) where
  bindingAffinityClosed : T.bindingAffinity
  cooperativityClosed : T.cooperativity
  competitionClosed : T.competition

def TranscriptionFactorBindingClosed (T : TranscriptionFactorBindingPackage) : Prop :=
  T.bindingAffinity ∧ T.cooperativity ∧ T.competition

theorem transcription_factor_binding_closed_from_evidence (T : TranscriptionFactorBindingPackage) (E : TranscriptionFactorBindingEvidence T) :
    TranscriptionFactorBindingClosed T := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.cooperativityClosed E.competitionClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse