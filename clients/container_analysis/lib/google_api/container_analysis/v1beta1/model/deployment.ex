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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.Deployment do
  @moduledoc """
  The period during which some deployable was active in a runtime.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - Address of the runtime element hosting this deployment.
  *   `config` (*type:* `String.t`, *default:* `nil`) - Configuration used to create this deployment.
  *   `deployTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. Beginning of the lifetime of this deployment.
  *   `platform` (*type:* `String.t`, *default:* `nil`) - Platform hosting this deployment.
  *   `resourceUri` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Resource URI for the artifact being deployed taken from the deployable field with the same name.
  *   `undeployTime` (*type:* `DateTime.t`, *default:* `nil`) - End of the lifetime of this deployment.
  *   `userEmail` (*type:* `String.t`, *default:* `nil`) - Identity of the user that triggered this deployment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t(),
          :config => String.t(),
          :deployTime => DateTime.t(),
          :platform => String.t(),
          :resourceUri => list(String.t()),
          :undeployTime => DateTime.t(),
          :userEmail => String.t()
        }

  field(:address)
  field(:config)
  field(:deployTime, as: DateTime)
  field(:platform)
  field(:resourceUri, type: :list)
  field(:undeployTime, as: DateTime)
  field(:userEmail)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Deployment do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.Deployment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Deployment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
