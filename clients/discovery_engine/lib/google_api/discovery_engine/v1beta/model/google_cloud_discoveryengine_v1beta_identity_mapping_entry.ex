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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaIdentityMappingEntry do
  @moduledoc """
  Identity Mapping Entry that maps an external identity to an internal identity.

  ## Attributes

  *   `externalIdentity` (*type:* `String.t`, *default:* `nil`) - Required. Identity outside the customer identity provider. The length limit of external identity will be of 100 characters.
  *   `groupId` (*type:* `String.t`, *default:* `nil`) - Group identifier. For Google Workspace user account, group_id should be the google workspace group email. For non-google identity provider, group_id is the mapped group identifier configured during the workforcepool config.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - User identifier. For Google Workspace user account, user_id should be the google workspace user email. For non-google identity provider, user_id is the mapped user identifier configured during the workforcepool config.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :externalIdentity => String.t() | nil,
          :groupId => String.t() | nil,
          :userId => String.t() | nil
        }

  field(:externalIdentity)
  field(:groupId)
  field(:userId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaIdentityMappingEntry do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaIdentityMappingEntry.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaIdentityMappingEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
