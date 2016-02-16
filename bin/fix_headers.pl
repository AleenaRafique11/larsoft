use strict;

use vars qw(%subdir_list);
use vars qw(%header_list);

BEGIN { %subdir_list = (
                        "CoreUtils" => "larcore/CoreUtils",
                        "Geometry" => "larcore/Geometry",
                        "SimpleTypesAndConstants" => "larcore/SimpleTypesAndConstants",
                        "SummaryData" => "larcore/SummaryData",
                        "AnalysisAlg" => "lardata/AnalysisAlg",
                        "AnalysisBase" => "lardata/AnalysisBase",
                        "DetectorInfo" => "lardata/DetectorInfo",
                        "DetectorInfoServices" => "lardata/DetectorInfoServices",
                        "MCBase" => "lardata/MCBase",
                        "OpticalDetectorData" => "lardata/OpticalDetectorData",
                        "RawData" => "lardata/RawData",
                        "RecoBase" => "lardata/RecoBase",
                        "RecoBaseArt" => "lardata/RecoBaseArt",
                        "RecoObjects" => "lardata/RecoObjects",
                        "CalData" => "larevt/CalData",
                        "CalibrationDBI" => "larevt/CalibrationDBI",
                        "Filters" => "larevt/Filters",
                        "SpaceCharge" => "larevt/SpaceCharge",
                        "DetSim" => "larsim/DetSim",
                        "EventGenerator" => "larsim/EventGenerator",
                        "LArG4" => "larsim/LArG4",
                        "MCCheater" => "larsim/MCCheater",
                        "MCSTReco" => "larsim/MCSTReco",
                        "MCDumpers" => "larsim/MCDumpers",
                        "PhotonPropagation" => "larsim/PhotonPropagation",
                        "SimFilters" => "larsim/SimFilters",
                        "Simulation" => "larsim/Simulation",
                        "TriggerAlgo" => "larsim/TriggerAlgo",
                        "EventDisplay" => "lareventdisplay/EventDisplay",
                        "AnalysisExample" => "larexamples/AnalysisExample",
                        "ClusterFinder" => "larreco/ClusterFinder",
                        "DirOfGamma" => "larreco/DirOfGamma",
                        "EventFinder" => "larreco/EventFinder",
                        "Genfit" => "larreco/Genfit",
                        "HitFinder" => "larreco/HitFinder",
                        "MCComp" => "larreco/MCComp",
                        "RecoAlg" => "larreco/RecoAlg",
                        "ShowerFinder" => "larreco/ShowerFinder",
                        "SpacePointFinder" => "larreco/SpacePointFinder",
                        "TrackFinder" => "larreco/TrackFinder",
                        "VertexFinder" => "larreco/VertexFinder",
                        "WireCell" => "larreco/WireCell",
                        "LArPandoraAnalysis" => "larpandora/LArPandoraAnalysis",
                        "LArPandoraInterface" => "larpandora/LArPandoraInterface",
                        "MicroBooNEPandora" => "larpandora/MicroBooNEPandora",
                        "Calorimetry" => "larana/Calorimetry",
                        "CosmicRemoval" => "larana/CosmicRemoval",
                        "OpticalDetector" => "larana/OpticalDetector",
                        "ParticleIdentification" => "larana/ParticleIdentification",
                        "T0Finder" => "larana/T0Finder"
		       ); }

# explicit headers to avoid conflicts with experiment code
BEGIN { %header_list = (
                        "Utilities/AssociationUtil.h" => "lardata/Utilities/AssociationUtil.h",
                        "Utilities/BulkAllocator.h" => "lardata/Utilities/BulkAllocator.h",
                        "Utilities/ClockConstants.h" => "lardata/Utilities/ClockConstants.h",
                        "Utilities/CountersMap.h" => "lardata/Utilities/CountersMap.h",
                        "Utilities/DatabaseUtil.h" => "lardata/Utilities/DatabaseUtil.h",
                        "Utilities/Dereference.h" => "lardata/Utilities/Dereference.h",
                        "Utilities/DetectorProperties.h" => "lardata/Utilities/DetectorProperties.h",
                        "Utilities/ElecClock.h" => "lardata/Utilities/ElecClock.h",
                        "Utilities/DetectorPropertiesServiceArgoNeuT.h" => "lardata/Utilities/DetectorPropertiesServiceArgoNeuT.h",
                        "Utilities/FastMatrixMathHelper.h" => "lardata/Utilities/FastMatrixMathHelper.h",
                        "Utilities/FileCatalogMetadataExtras.h" => "lardata/Utilities/FileCatalogMetadataExtras.h",
                        "Utilities/GeometryUtilities.h" => "lardata/Utilities/GeometryUtilities.h",
                        "Utilities/LArFFT.h" => "lardata/Utilities/LArFFT.h",
                        "Utilities/LArProperties.h" => "lardata/Utilities/LArProperties.h",
                        "Utilities/LArPropertiesServiceArgoNeuT.h" => "lardata/Utilities/LArPropertiesServiceArgoNeuT.h",
                        "Utilities/MakeIndex.h" => "lardata/Utilities/MakeIndex.h",
                        "Utilities/NestedIterator.h" => "lardata/Utilities/NestedIterator.h",
                        "Utilities/PxHitConverter.h" => "lardata/Utilities/PxHitConverter.h",
                        "Utilities/PxUtils.h" => "lardata/Utilities/PxUtils.h",
                        "Utilities/Range.h" => "lardata/Utilities/Range.h",
                        "Utilities/SeedCreator.h" => "lardata/Utilities/SeedCreator.h",
                        "Utilities/SignalShaping.h" => "lardata/Utilities/SignalShaping.h",
                        "Utilities/SimpleFits.h" => "lardata/Utilities/SimpleFits.h",
                        "Utilities/SimpleTimeService.h" => "lardata/Utilities/SimpleTimeService.h",
                        "Utilities/sparse_vector.h" => "lardata/Utilities/sparse_vector.h",
                        "Utilities/StatCollector.h" => "lardata/Utilities/StatCollector.h",
                        "Utilities/SumSecondFunction.h" => "lardata/Utilities/SumSecondFunction.h",
                        "Utilities/TimeServiceException.h" => "lardata/Utilities/TimeServiceException.h",
                        "Utilities/TimeService.h" => "lardata/Utilities/TimeService.h",
                        "Utilities/UniqueRangeSet.h" => "lardata/Utilities/UniqueRangeSet.h",
                        "Utilities/UtilException.h" => "lardata/Utilities/UtilException.h",
                        "Utilities/VectorMap.h" => "lardata/Utilities/VectorMap.h",
			"DetectorInfo/DetectorProperties.h" => "lardata/DetectorInfoServices/DetectorPropertiesService.h",
			"lardata/DetectorInfo/DetectorProperties.h" => "lardata/DetectorInfoServices/DetectorPropertiesService.h",
			"DetectorInfo/LArProperties.h" => "lardata/DetectorInfoServices/LArPropertiesService.h",
			"lardata/DetectorInfo/LArProperties.h" => "lardata/DetectorInfoServices/LArPropertiesService.h"
		       ); }

foreach my $inc (sort keys %subdir_list) {
  s&^(\s*#include\s+["<])\Q$inc\E(/.*)&${1}$subdir_list{$inc}${2}& and last;
}
foreach my $inc (sort keys %header_list) {
  s&^(\s*#include\s+["<])\Q$inc\E(.*)&${1}$header_list{$inc}${2}& and last;
}
