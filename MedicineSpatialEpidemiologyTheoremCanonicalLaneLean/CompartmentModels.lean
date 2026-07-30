import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelsPackage where
  populationCompartments : List String
  transitionRates : Prop
  odesDefined : Prop
  massConservation : Prop
  reproductionNumber : Prop

structure CompartmentModelsEvidence (C : CompartmentModelsPackage) where
  transitionRatesClosed : C.transitionRates
  odesDefinedClosed : C.odesDefined
  massConservationClosed : C.massConservation
  reproductionNumberClosed : C.reproductionNumber

def CompartmentModelsClosed (C : CompartmentModelsPackage) : Prop :=
  C.transitionRates ∧ C.odesDefined ∧ C.massConservation ∧ C.reproductionNumber

theorem compartment_models_closed_from_evidence (C : CompartmentModelsPackage) (E : CompartmentModelsEvidence C) : CompartmentModelsClosed C := by
  exact And.intro E.transitionRatesClosed (And.intro E.odesDefinedClosed (And.intro E.massConservationClosed E.reproductionNumberClosed))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
