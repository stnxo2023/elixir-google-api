# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileStoreDataProfile do
  @moduledoc """
  The profile for a file store. * Cloud Storage: maps 1:1 with a bucket. * Amazon S3: maps 1:1 with a bucket.

  ## Attributes

  *   `configSnapshot` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot.t`, *default:* `nil`) - The snapshot of the configurations used to generate the profile.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the file store was first created.
  *   `dataRiskLevel` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataRiskLevel.t`, *default:* `nil`) - The data risk level of this resource.
  *   `dataSourceType` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType.t`, *default:* `nil`) - The resource type that was profiled.
  *   `dataStorageLocations` (*type:* `list(String.t)`, *default:* `nil`) - For resources that have multiple storage locations, these are those regions. For Cloud Storage this is the list of regions chosen for dual-region storage. `file_store_location` will normally be the corresponding multi-region for the list of individual locations. The first region is always picked as the processing and storage location for the data profile.
  *   `fileClusterSummaries` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileClusterSummary.t)`, *default:* `nil`) - FileClusterSummary per each cluster.
  *   `fileStoreInfoTypeSummaries` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileStoreInfoTypeSummary.t)`, *default:* `nil`) - InfoTypes detected in this file store.
  *   `fileStoreIsEmpty` (*type:* `boolean()`, *default:* `nil`) - The file store does not have any files. If the profiling failed, this will be false.
  *   `fileStoreLocation` (*type:* `String.t`, *default:* `nil`) - The location of the file store. * Cloud Storage: https://cloud.google.com/storage/docs/locations#available-locations * Amazon S3: https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints
  *   `fileStorePath` (*type:* `String.t`, *default:* `nil`) - The file store path. * Cloud Storage: `gs://{bucket}` * Amazon S3: `s3://{bucket}` * Vertex AI dataset: `projects/{project_number}/locations/{location}/datasets/{dataset_id}`
  *   `fullResource` (*type:* `String.t`, *default:* `nil`) - The resource name of the resource profiled. https://cloud.google.com/apis/design/resource_names#full_resource_name Example format of an S3 bucket full resource name: `//cloudasset.googleapis.com/organizations/{org_id}/otherCloudConnections/aws/arn:aws:s3:::{bucket_name}`
  *   `lastModifiedTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the file store was last modified.
  *   `locationType` (*type:* `String.t`, *default:* `nil`) - The location type of the file store (region, dual-region, multi-region, etc). If dual-region, expect data_storage_locations to be populated.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the profile.
  *   `profileLastGenerated` (*type:* `DateTime.t`, *default:* `nil`) - The last time the profile was generated.
  *   `profileStatus` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProfileStatus.t`, *default:* `nil`) - Success or error status from the most recent profile generation attempt. May be empty if the profile is still being generated.
  *   `projectDataProfile` (*type:* `String.t`, *default:* `nil`) - The resource name of the project data profile for this file store.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The Google Cloud project ID that owns the resource. For Amazon S3 buckets, this is the AWS Account Id.
  *   `relatedResources` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RelatedResource.t)`, *default:* `nil`) - Resources related to this profile.
  *   `resourceAttributes` (*type:* `%{optional(String.t) => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t}`, *default:* `nil`) - Attributes of the resource being profiled. Currently used attributes: * customer_managed_encryption: boolean - true: the resource is encrypted with a customer-managed key. - false: the resource is encrypted with a provider-managed key.
  *   `resourceLabels` (*type:* `map()`, *default:* `nil`) - The labels applied to the resource at the time the profile was generated.
  *   `resourceVisibility` (*type:* `String.t`, *default:* `nil`) - How broadly a resource has been shared.
  *   `sampleFindingsTable` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t`, *default:* `nil`) - The BigQuery table to which the sample findings are written.
  *   `sensitivityScore` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore.t`, *default:* `nil`) - The sensitivity score of this resource.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of a profile.
  *   `tags` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Tag.t)`, *default:* `nil`) - The tags attached to the resource, including any tags attached during profiling.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configSnapshot =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot.t() | nil,
          :createTime => DateTime.t() | nil,
          :dataRiskLevel => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataRiskLevel.t() | nil,
          :dataSourceType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType.t() | nil,
          :dataStorageLocations => list(String.t()) | nil,
          :fileClusterSummaries =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileClusterSummary.t()) | nil,
          :fileStoreInfoTypeSummaries =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileStoreInfoTypeSummary.t()) | nil,
          :fileStoreIsEmpty => boolean() | nil,
          :fileStoreLocation => String.t() | nil,
          :fileStorePath => String.t() | nil,
          :fullResource => String.t() | nil,
          :lastModifiedTime => DateTime.t() | nil,
          :locationType => String.t() | nil,
          :name => String.t() | nil,
          :profileLastGenerated => DateTime.t() | nil,
          :profileStatus => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProfileStatus.t() | nil,
          :projectDataProfile => String.t() | nil,
          :projectId => String.t() | nil,
          :relatedResources =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RelatedResource.t()) | nil,
          :resourceAttributes =>
            %{optional(String.t()) => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t()} | nil,
          :resourceLabels => map() | nil,
          :resourceVisibility => String.t() | nil,
          :sampleFindingsTable =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t() | nil,
          :sensitivityScore =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore.t() | nil,
          :state => String.t() | nil,
          :tags => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Tag.t()) | nil
        }

  field(:configSnapshot, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot)
  field(:createTime, as: DateTime)
  field(:dataRiskLevel, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataRiskLevel)
  field(:dataSourceType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType)
  field(:dataStorageLocations, type: :list)

  field(:fileClusterSummaries,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileClusterSummary,
    type: :list
  )

  field(:fileStoreInfoTypeSummaries,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileStoreInfoTypeSummary,
    type: :list
  )

  field(:fileStoreIsEmpty)
  field(:fileStoreLocation)
  field(:fileStorePath)
  field(:fullResource)
  field(:lastModifiedTime, as: DateTime)
  field(:locationType)
  field(:name)
  field(:profileLastGenerated, as: DateTime)
  field(:profileStatus, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProfileStatus)
  field(:projectDataProfile)
  field(:projectId)

  field(:relatedResources,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RelatedResource,
    type: :list
  )

  field(:resourceAttributes, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value, type: :map)
  field(:resourceLabels, type: :map)
  field(:resourceVisibility)
  field(:sampleFindingsTable, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable)
  field(:sensitivityScore, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore)
  field(:state)
  field(:tags, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Tag, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileStoreDataProfile do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileStoreDataProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileStoreDataProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
