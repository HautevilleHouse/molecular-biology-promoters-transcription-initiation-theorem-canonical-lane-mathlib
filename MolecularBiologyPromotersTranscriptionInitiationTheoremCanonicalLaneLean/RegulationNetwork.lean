import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean.TranscriptionInitiationComplex

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure RegulationNetwork where
  complexes : List TranscriptionInitiationComplex
  regulatoryInteractions : List (TranscriptionInitiationComplex × TranscriptionInitiationComplex)
  networkFunctional : Prop

structure RegulationNetworkEvidence (N : RegulationNetwork) where
  allComplexesValid : ∀ c ∈ N.complexes, TranscriptionInitiationComplexClosed c
  interactionsWellDefined : ∀ (c1, c2) ∈ N.regulatoryInteractions,
    c1 ∈ N.complexes ∧ c2 ∈ N.complexes
  networkFunctionalClosed : N.networkFunctional

def RegulationNetworkClosed (N : RegulationNetwork) : Prop :=
  (∀ c ∈ N.complexes, TranscriptionInitiationComplexClosed c) ∧
  (∀ (c1, c2) ∈ N.regulatoryInteractions, c1 ∈ N.complexes ∧ c2 ∈ N.complexes) ∧
  N.networkFunctional

theorem regulation_network_closed_from_evidence (N : RegulationNetwork) (E : RegulationNetworkEvidence N) :
    RegulationNetworkClosed N := by
  exact And.intro E.allComplexesValid (And.intro E.interactionsWellDefined E.networkFunctionalClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse