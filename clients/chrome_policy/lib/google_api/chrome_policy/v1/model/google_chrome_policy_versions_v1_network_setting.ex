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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1NetworkSetting do
  @moduledoc """
  A network setting contains network configurations. It adheres to the PolicyAPI formats defined under the namespace chrome.networks.{wifi/ethernet/cellular/vpn}.Details

  ## Attributes

  *   `policySchema` (*type:* `String.t`, *default:* `nil`) - The fully qualified name of the network setting.
  *   `value` (*type:* `map()`, *default:* `nil`) - The value of the network setting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :policySchema => String.t() | nil,
          :value => map() | nil
        }

  field(:policySchema)
  field(:value, type: :map)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1NetworkSetting do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1NetworkSetting.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1NetworkSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
