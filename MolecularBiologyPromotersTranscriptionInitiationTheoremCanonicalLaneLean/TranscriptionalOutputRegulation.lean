import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionalOutput where
  mrnaTranscript : String
  transcriptLevel : ℝ
  elongationRate : ℝ
  processingEfficiency : Prop
  exportEfficiency : Prop
  translationEfficiency : Prop
  steadyStateLevel : Prop
  regulatedUnderConditions : Prop
  outputClosed : Prop
  outputClosedTerm : outputClosed

structure TranscriptionalOutputRegulationPackage where
  basalTranscription : TranscriptionalOutput
  activatedTranscription : TranscriptionalOutput
  repressedTranscription : TranscriptionalOutput
  feedbackLoops : Prop
  noiseBuffering : Prop
  adaptationCapacity : Prop
  regulationClosed : Prop
  regulationClosedTerm : regulationClosed

structure TranscriptionalOutputRegulationEvidence
    (O : TranscriptionalOutputRegulationPackage) where
  basalTranscriptionClosed : O.basalTranscription.outputClosed
  activatedTranscriptionClosed : O.activatedTranscription.outputClosed
  repressedTranscriptionClosed : O.repressedTranscription.outputClosed

def TranscriptionalOutputRegulationClosed (O : TranscriptionalOutputRegulationPackage) : Prop :=
  O.basalTranscription.outputClosed ∧
  O.activatedTranscription.outputClosed ∧
  O.repressedTranscription.outputClosed

theorem transcriptional_output_regulation_closed_from_evidence
    (O : TranscriptionalOutputRegulationPackage)
    (E : TranscriptionalOutputRegulationEvidence O) :
    TranscriptionalOutputRegulationClosed O := by
  exact And.intro E.basalTranscriptionClosed
    (And.intro E.activatedTranscriptionClosed E.repressedTranscriptionClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse