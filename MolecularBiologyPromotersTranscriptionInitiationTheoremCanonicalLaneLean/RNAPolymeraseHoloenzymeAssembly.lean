import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean

structure RNAPolymeraseHoloenzymeAssemblyPackage where
  sigmaFactor : Type u
  coreEnzyme : Type v
  holoenzyme : Type w
  sigmaFactorBoundToCore : Prop
  holoenzymeFormed : Prop
  dnaBindingCompetence : Prop

structure RNAPolymeraseHoloenzymeAssemblyEvidence (P : RNAPolymeraseHoloenzymeAssemblyPackage) where
  sigmaFactorBoundToCoreClosed : P.sigmaFactorBoundToCore
  holoenzymeFormedClosed : P.holoenzymeFormed
  dnaBindingCompetenceClosed : P.dnaBindingCompetence

def RNAPolymeraseHoloenzymeAssemblyClosed (P : RNAPolymeraseHoloenzymeAssemblyPackage) : Prop :=
  P.sigmaFactorBoundToCore ∧ P.holoenzymeFormed ∧ P.dnaBindingCompetence

theorem rna_polymerase_holoenzyme_assembly_closed_from_evidence
    (P : RNAPolymeraseHoloenzymeAssemblyPackage)
    (E : RNAPolymeraseHoloenzymeAssemblyEvidence P) :
    RNAPolymeraseHoloenzymeAssemblyClosed P := by
  exact And.intro E.sigmaFactorBoundToCoreClosed (And.intro E.holoenzymeFormedClosed E.dnaBindingCompetenceClosed)

end MolecularBiologyPromotersTranscriptionInitiationTheoremCanonicalLaneLean
end HautevilleHouse