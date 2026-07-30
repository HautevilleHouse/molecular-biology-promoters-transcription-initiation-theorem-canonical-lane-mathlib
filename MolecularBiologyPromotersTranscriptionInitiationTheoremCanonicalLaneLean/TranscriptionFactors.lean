import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionFactor where
  name : String
  family : String
  dnaBindingDomain : String
  activationDomain : String
  functional : Prop

structure TranscriptionFactorEvidence (T : TranscriptionFactor) where
  bindingDomainIdentified : T.dnaBindingDomain.length > 0
  activationDomainIdentified : T.activationDomain.length > 0
  functionalClosed : T.functional

def TranscriptionFactorClosed (T : TranscriptionFactor) : Prop :=
  T.functional ∧ T.dnaBindingDomain.length > 0 ∧ T.activationDomain.length > 0

theorem transcription_factor_closed_from_evidence (T : TranscriptionFactor) (E : TranscriptionFactorEvidence T) :
    TranscriptionFactorClosed T := by
  exact And.intro E.functionalClosed (And.intro E.bindingDomainIdentified E.activationDomainIdentified)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse