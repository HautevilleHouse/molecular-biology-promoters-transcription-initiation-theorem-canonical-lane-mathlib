import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure TranscriptionInitiationRateControlPackage where
  promoterStrength : Type u
  regulatorBinding : Type v
  initiationRate : Type w
  kineticModel : Prop
  thermodynamicControl : Prop
  regulatoryInputIntegration : Prop
  rateEquationClosed : Prop

structure TranscriptionInitiationRateControlEvidence (P : TranscriptionInitiationRateControlPackage) where
  kineticModelClosed : P.kineticModel
  thermodynamicControlClosed : P.thermodynamicControl
  regulatoryInputIntegrationClosed : P.regulatoryInputIntegration
  rateEquationClosedClosed : P.rateEquationClosed

def TranscriptionInitiationRateControlClosed (P : TranscriptionInitiationRateControlPackage) : Prop :=
  P.kineticModel ∧ P.thermodynamicControl ∧ P.regulatoryInputIntegration ∧ P.rateEquationClosed

theorem transcription_initiation_rate_control_closed_from_evidence
    (P : TranscriptionInitiationRateControlPackage)
    (E : TranscriptionInitiationRateControlEvidence P) :
    TranscriptionInitiationRateControlClosed P := by
  exact And.intro E.kineticModelClosed
    (And.intro E.thermodynamicControlClosed (And.intro E.regulatoryInputIntegrationClosed E.rateEquationClosedClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse