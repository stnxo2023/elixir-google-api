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

defmodule GoogleApi.CloudDeploy.V1.Model.CloudRunConfig do
  @moduledoc """
  CloudRunConfig contains the Cloud Run runtime configuration.

  ## Attributes

  *   `automaticTrafficControl` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  *   `canaryRevisionTags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of tags that are added to the canary revision while the canary phase is in progress.
  *   `priorRevisionTags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of tags that are added to the prior revision while the canary phase is in progress.
  *   `stableRevisionTags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of tags that are added to the final stable revision when the stable phase is applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automaticTrafficControl => boolean() | nil,
          :canaryRevisionTags => list(String.t()) | nil,
          :priorRevisionTags => list(String.t()) | nil,
          :stableRevisionTags => list(String.t()) | nil
        }

  field(:automaticTrafficControl)
  field(:canaryRevisionTags, type: :list)
  field(:priorRevisionTags, type: :list)
  field(:stableRevisionTags, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.CloudRunConfig do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.CloudRunConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.CloudRunConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
