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

defmodule GoogleApi.ServiceManagement.V1.Model.Aspect do
  @moduledoc """
  Aspect represents Generic aspect. It is used to configure an aspect without making direct changes to service.proto

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - The type of this aspect configuration.
  *   `spec` (*type:* `map()`, *default:* `nil`) - Content of the configuration. The underlying schema should be defined by Aspect owners as protobuf message under `apiserving/configaspects/proto`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :spec => map() | nil
        }

  field(:kind)
  field(:spec, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Aspect do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Aspect.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Aspect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
