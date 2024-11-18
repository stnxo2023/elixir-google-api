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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset do
  @moduledoc """
  Represents a Google Cloud asset(resource or IAM policy) governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.

  ## Attributes

  *   `consolidatedPolicy` (*type:* `GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t`, *default:* `nil`) - The consolidated policy for the analyzed asset. The consolidated policy is computed by merging and evaluating AnalyzeOrgPolicyGovernedAssetsResponse.GovernedAsset.policy_bundle. The evaluation will respect the organization policy [hierarchy rules](https://cloud.google.com/resource-manager/docs/organization-policy/understanding-hierarchy).
  *   `governedIamPolicy` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy.t`, *default:* `nil`) - An IAM policy governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.
  *   `governedResource` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource.t`, *default:* `nil`) - A Google Cloud resource governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.
  *   `policyBundle` (*type:* `list(GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t)`, *default:* `nil`) - The ordered list of all organization policies from the consolidated_policy.attached_resource to the scope specified in the request. If the constraint is defined with default policy, it will also appear in the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consolidatedPolicy => GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t() | nil,
          :governedIamPolicy =>
            GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy.t()
            | nil,
          :governedResource =>
            GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource.t()
            | nil,
          :policyBundle => list(GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t()) | nil
        }

  field(:consolidatedPolicy, as: GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy)

  field(:governedIamPolicy,
    as:
      GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy
  )

  field(:governedResource,
    as:
      GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource
  )

  field(:policyBundle, as: GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
