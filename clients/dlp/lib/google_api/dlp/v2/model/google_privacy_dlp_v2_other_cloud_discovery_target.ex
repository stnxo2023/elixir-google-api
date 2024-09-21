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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudDiscoveryTarget do
  @moduledoc """
  Target used to match against for discovery of resources from other clouds. An [AWS connector in Security Command Center (Enterprise](https://cloud.google.com/security-command-center/docs/connect-scc-to-aws) is required to use this feature.

  ## Attributes

  *   `conditions` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudConditions.t`, *default:* `nil`) - Optional. In addition to matching the filter, these conditions must be true before a profile is generated.
  *   `dataSourceType` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType.t`, *default:* `nil`) - Required. The type of data profiles generated by this discovery target. Supported values are: * aws/s3/bucket
  *   `disabled` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Disabled.t`, *default:* `nil`) - Disable profiling for resources that match this filter.
  *   `filter` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudFilter.t`, *default:* `nil`) - Required. The resources that the discovery cadence applies to. The first target with a matching filter will be the one to apply to a resource.
  *   `generationCadence` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence.t`, *default:* `nil`) - How often and when to update data profiles. New resources that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditions =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudConditions.t() | nil,
          :dataSourceType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType.t() | nil,
          :disabled => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Disabled.t() | nil,
          :filter => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudFilter.t() | nil,
          :generationCadence =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence.t()
            | nil
        }

  field(:conditions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudConditions)
  field(:dataSourceType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType)
  field(:disabled, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Disabled)
  field(:filter, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudFilter)

  field(:generationCadence,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudDiscoveryTarget do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudDiscoveryTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudDiscoveryTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
