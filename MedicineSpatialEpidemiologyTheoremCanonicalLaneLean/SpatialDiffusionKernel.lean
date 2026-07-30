import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure SpatialDiffusionKernelPackage where
  domain : Type u
  topology : TopologicalSpace domain
  kernelFunction : domain → domain → ℝ
  symmetric : Prop
  positivityPreserving : Prop
  integrability : Prop

def SpatialDiffusionKernelClosed (K : SpatialDiffusionKernelPackage) : Prop :=
  K.symmetric ∧ K.positivityPreserving ∧ K.integrability

theorem spatial_diffusion_kernel_closed (K : SpatialDiffusionKernelPackage)
    (hSym : K.symmetric) (hPos : K.positivityPreserving) (hInt : K.integrability) :
    SpatialDiffusionKernelClosed K :=
  And.intro hSym (And.intro hPos hInt)

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse