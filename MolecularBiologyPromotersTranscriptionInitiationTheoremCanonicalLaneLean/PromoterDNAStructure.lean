import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure PromoterDNAStructure where
  species : Type u
  chromosome : Type v
  promoterRegion : chromosome → Prop
  transcriptionStartSite : chromosome → ℕ
  regulatorySequences : chromosome → List (ℕ × ℕ)
  corePromoterElements : List String
  corePromoterElementsPresent : corePromoterElements.length ≥ 3

structure PromoterDNAEvidence (P : PromoterDNAStructure) where
  promoterRegionClosed : ∀ c, P.promoterRegion c
  transcriptionStartSiteClosed : ∀ c, P.transcriptionStartSite c > 0
  regulatorySequencesClosed : ∀ c, P.regulatorySequences c ≠ []
  corePromoterElementsClosed : P.corePromoterElementsPresent

def PromoterDNAStructureClosed (P : PromoterDNAStructure) : Prop :=
  (∀ c, P.promoterRegion c) ∧ (∀ c, P.transcriptionStartSite c > 0) ∧
  (∀ c, P.regulatorySequences c ≠ []) ∧ P.corePromoterElementsPresent

theorem promoter_dna_structure_closed_from_evidence (P : PromoterDNAStructure) (E : PromoterDNAEvidence P) :
    PromoterDNAStructureClosed P := by
  exact And.intro E.promoterRegionClosed (And.intro E.transcriptionStartSiteClosed
    (And.intro E.regulatorySequencesClosed E.corePromoterElementsClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse