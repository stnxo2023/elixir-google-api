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

defmodule GoogleApi.Run.V1.Model.ConfigMapVolumeSource do
  @moduledoc """
  Not supported by Cloud Run. Adapts a ConfigMap into a volume. The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths.

  ## Attributes

  *   `defaultMode` (*type:* `integer()`, *default:* `nil`) - (Optional) Integer representation of mode bits to use on created files by default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will default to 0644. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  *   `items` (*type:* `list(GoogleApi.Run.V1.Model.KeyToPath.t)`, *default:* `nil`) - (Optional) If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified that is not present in the Secret, the volume setup will error unless it is marked optional.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the config.
  *   `optional` (*type:* `boolean()`, *default:* `nil`) - (Optional) Specify whether the Secret or its keys must be defined.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultMode => integer() | nil,
          :items => list(GoogleApi.Run.V1.Model.KeyToPath.t()) | nil,
          :name => String.t() | nil,
          :optional => boolean() | nil
        }

  field(:defaultMode)
  field(:items, as: GoogleApi.Run.V1.Model.KeyToPath, type: :list)
  field(:name)
  field(:optional)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.ConfigMapVolumeSource do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.ConfigMapVolumeSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.ConfigMapVolumeSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
