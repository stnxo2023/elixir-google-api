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

defmodule GoogleApi.Run.V1.Model.Volume do
  @moduledoc """
  Volume represents a named volume in a container.

  ## Attributes

  *   `configMap` (*type:* `GoogleApi.Run.V1.Model.ConfigMapVolumeSource.t`, *default:* `nil`) - Adapts a ConfigMap into a volume. The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  *   `secret` (*type:* `GoogleApi.Run.V1.Model.SecretVolumeSource.t`, *default:* `nil`) - The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secretName.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configMap => GoogleApi.Run.V1.Model.ConfigMapVolumeSource.t() | nil,
          :name => String.t() | nil,
          :secret => GoogleApi.Run.V1.Model.SecretVolumeSource.t() | nil
        }

  field(:configMap, as: GoogleApi.Run.V1.Model.ConfigMapVolumeSource)
  field(:name)
  field(:secret, as: GoogleApi.Run.V1.Model.SecretVolumeSource)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.Volume do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.Volume.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.Volume do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
