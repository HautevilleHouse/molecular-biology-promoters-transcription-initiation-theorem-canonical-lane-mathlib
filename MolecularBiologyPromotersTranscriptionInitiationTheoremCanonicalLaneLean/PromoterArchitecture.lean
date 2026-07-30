import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure PromoterArchitecturePackage where
  corePromoterElements : Prop
  transcriptionStartSite : Prop
  regulatoryElementBinding : Prop
  initiationComplexAssembly : Prop

structure PromoterArchitectureEvidence (P : PromoterArchitecturePackage) where
  corePromoterElementsClosed : P.corePromoterElements
  transcriptionStartSiteClosed : P.transcriptionStartSite
  regulatoryElementBindingClosed : P.regulatoryElementBinding
  initiationComplexAssemblyClosed : P.initiationComplexAssembly

def PromoterArchitectureClosed (P : PromoterArchitecturePackage) : Prop :=
  P.corePromoterElements ∧ P.transcriptionStartSite ∧
  P.regulatoryElementBinding ∧ P.initiationComplexAssembly

theorem promoter_architecture_closed_from_evidence
    (P : PromoterArchitecturePackage) (E : PromoterArchitectureEvidence P) :
    PromoterArchitectureClosed P := by
  exact And.intro E.corePromoterElementsClosed
    (And.intro E.transcriptionStartSiteClosed
      (And.intro E.regulatoryElementBindingClosed E.initiationComplexAssemblyClosed))

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse
