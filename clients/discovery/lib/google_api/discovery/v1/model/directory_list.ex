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

defmodule GoogleApi.Discovery.V1.Model.DirectoryList do
  @moduledoc """


  ## Attributes

  *   `discoveryVersion` (*type:* `String.t`, *default:* `v1`) - Indicate the version of the Discovery API used to generate this doc.
  *   `items` (*type:* `list(GoogleApi.Discovery.V1.Model.DirectoryListItems.t)`, *default:* `nil`) - The individual directory entries. One entry per api/version pair.
  *   `kind` (*type:* `String.t`, *default:* `discovery#directoryList`) - The kind for this response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :discoveryVersion => String.t() | nil,
          :items => list(GoogleApi.Discovery.V1.Model.DirectoryListItems.t()) | nil,
          :kind => String.t() | nil
        }

  field(:discoveryVersion)
  field(:items, as: GoogleApi.Discovery.V1.Model.DirectoryListItems, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.DirectoryList do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.DirectoryList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.DirectoryList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
