import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionalBurstingPackage where
  burstFrequency : Type u
  burstSize : Type v
  stochasticDynamics : Prop
  rateLimitingSteps : Prop
  cellStateDependence : Prop

structure TranscriptionalBurstingEvidence (T : TranscriptionalBurstingPackage) where
  stochasticDynamicsClosed : T.stochasticDynamics
  rateLimitingStepsClosed : T.rateLimitingSteps
  cellStateDependenceClosed : T.cellStateDependence

def TranscriptionalBurstingClosed (T : TranscriptionalBurstingPackage) : Prop :=
  T.stochasticDynamics ∧ T.rateLimitingSteps ∧ T.cellStateDependence

theorem transcriptional_bursting_closed_from_evidence (T : TranscriptionalBurstingPackage) (E : TranscriptionalBurstingEvidence T) :
    TranscriptionalBurstingClosed T := by
  exact And.intro E.stochasticDynamicsClosed
    (And.intro E.rateLimitingStepsClosed E.cellStateDependenceClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse