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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Widgets do
  @moduledoc """
  The supported widgets that you can include in a column. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend)

  ## Attributes

  *   `buttonList` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1ButtonList.t`, *default:* `nil`) - ButtonList widget.
  *   `chipList` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1ChipList.t`, *default:* `nil`) - ChipList widget.
  *   `dateTimePicker` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1DateTimePicker.t`, *default:* `nil`) - DateTimePicker widget.
  *   `decoratedText` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1DecoratedText.t`, *default:* `nil`) - DecoratedText widget.
  *   `image` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Image.t`, *default:* `nil`) - Image widget.
  *   `selectionInput` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionInput.t`, *default:* `nil`) - SelectionInput widget.
  *   `textInput` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput.t`, *default:* `nil`) - TextInput widget.
  *   `textParagraph` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextParagraph.t`, *default:* `nil`) - TextParagraph widget.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buttonList => GoogleApi.Chat.V1.Model.GoogleAppsCardV1ButtonList.t() | nil,
          :chipList => GoogleApi.Chat.V1.Model.GoogleAppsCardV1ChipList.t() | nil,
          :dateTimePicker => GoogleApi.Chat.V1.Model.GoogleAppsCardV1DateTimePicker.t() | nil,
          :decoratedText => GoogleApi.Chat.V1.Model.GoogleAppsCardV1DecoratedText.t() | nil,
          :image => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Image.t() | nil,
          :selectionInput => GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionInput.t() | nil,
          :textInput => GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput.t() | nil,
          :textParagraph => GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextParagraph.t() | nil
        }

  field(:buttonList, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1ButtonList)
  field(:chipList, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1ChipList)
  field(:dateTimePicker, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1DateTimePicker)
  field(:decoratedText, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1DecoratedText)
  field(:image, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Image)
  field(:selectionInput, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionInput)
  field(:textInput, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput)
  field(:textParagraph, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextParagraph)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Widgets do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Widgets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Widgets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
