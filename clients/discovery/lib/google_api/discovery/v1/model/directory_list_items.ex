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

defmodule GoogleApi.Discovery.V1.Model.DirectoryListItems do
  @moduledoc """


  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this API.
  *   `discoveryLink` (*type:* `String.t`, *default:* `nil`) - A link to the discovery document.
  *   `discoveryRestUrl` (*type:* `String.t`, *default:* `nil`) - The URL for the discovery REST document.
  *   `documentationLink` (*type:* `String.t`, *default:* `nil`) - A link to human readable documentation for the API.
  *   `icons` (*type:* `GoogleApi.Discovery.V1.Model.DirectoryListItemsIcons.t`, *default:* `nil`) - Links to 16x16 and 32x32 icons representing the API.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The id of this API.
  *   `kind` (*type:* `String.t`, *default:* `discovery#directoryItem`) - The kind for this response.
  *   `labels` (*type:* `list(String.t)`, *default:* `nil`) - Labels for the status of this API, such as labs or deprecated.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the API.
  *   `preferred` (*type:* `boolean()`, *default:* `nil`) - True if this version is the preferred version to use.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of this API.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the API.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :discoveryLink => String.t() | nil,
          :discoveryRestUrl => String.t() | nil,
          :documentationLink => String.t() | nil,
          :icons => GoogleApi.Discovery.V1.Model.DirectoryListItemsIcons.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :labels => list(String.t()) | nil,
          :name => String.t() | nil,
          :preferred => boolean() | nil,
          :title => String.t() | nil,
          :version => String.t() | nil
        }

  field(:description)
  field(:discoveryLink)
  field(:discoveryRestUrl)
  field(:documentationLink)
  field(:icons, as: GoogleApi.Discovery.V1.Model.DirectoryListItemsIcons)
  field(:id)
  field(:kind)
  field(:labels, type: :list)
  field(:name)
  field(:preferred)
  field(:title)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.DirectoryListItems do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.DirectoryListItems.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.DirectoryListItems do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
