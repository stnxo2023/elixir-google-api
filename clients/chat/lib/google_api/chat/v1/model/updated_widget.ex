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

defmodule GoogleApi.Chat.V1.Model.UpdatedWidget do
  @moduledoc """
  For `selectionInput` widgets, returns autocomplete suggestions for a multiselect menu.

  ## Attributes

  *   `suggestions` (*type:* `GoogleApi.Chat.V1.Model.SelectionItems.t`, *default:* `nil`) - List of widget autocomplete results
  *   `widget` (*type:* `String.t`, *default:* `nil`) - The ID of the updated widget. The ID must match the one for the widget that triggered the update request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :suggestions => GoogleApi.Chat.V1.Model.SelectionItems.t() | nil,
          :widget => String.t() | nil
        }

  field(:suggestions, as: GoogleApi.Chat.V1.Model.SelectionItems)
  field(:widget)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.UpdatedWidget do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.UpdatedWidget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.UpdatedWidget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
