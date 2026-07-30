import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure PromoterSequencePackage where
  dnaSequence : Type u
  promoterRegion : Type v
  corePromoterElements : Prop
  transcriptionStartSite : Prop
  regulatoryElements : Prop

structure PromoterSequenceEvidence (P : PromoterSequencePackage) where
  corePromoterElementsClosed : P.corePromoterElements
  transcriptionStartSiteClosed : P.transcriptionStartSite
  regulatoryElementsClosed : P.regulatoryElements

def PromoterSequenceClosed (P : PromoterSequencePackage) : Prop :=
  P.corePromoterElements ∧ P.transcriptionStartSite ∧ P.regulatoryElements

theorem promoter_sequence_closed_from_evidence (P : PromoterSequencePackage) (E : PromoterSequenceEvidence P) :
    PromoterSequenceClosed P := by
  exact And.intro E.corePromoterElementsClosed
    (And.intro E.transcriptionStartSiteClosed E.regulatoryElementsClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse