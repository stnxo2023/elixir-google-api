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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings do
  @moduledoc """
  Define behaviors of speech to text detection.

  ## Attributes

  *   `endpointerSensitivity` (*type:* `integer()`, *default:* `nil`) - Sensitivity of the speech model that detects the end of speech. Scale from 0 to 100.
  *   `models` (*type:* `map()`, *default:* `nil`) - Mapping from language to Speech-to-Text model. The mapped Speech-to-Text model will be selected for requests from its corresponding language. For more information, see [Speech models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
  *   `noSpeechTimeout` (*type:* `String.t`, *default:* `nil`) - Timeout before detecting no speech.
  *   `useTimeoutBasedEndpointing` (*type:* `boolean()`, *default:* `nil`) - Use timeout based endpointing, interpreting endpointer sensitivity as seconds of timeout value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpointerSensitivity => integer() | nil,
          :models => map() | nil,
          :noSpeechTimeout => String.t() | nil,
          :useTimeoutBasedEndpointing => boolean() | nil
        }

  field(:endpointerSensitivity)
  field(:models, type: :map)
  field(:noSpeechTimeout)
  field(:useTimeoutBasedEndpointing)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
