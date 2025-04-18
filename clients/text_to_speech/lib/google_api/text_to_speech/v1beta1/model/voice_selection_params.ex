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

defmodule GoogleApi.TextToSpeech.V1beta1.Model.VoiceSelectionParams do
  @moduledoc """
  Description of which voice to use for a synthesis request.

  ## Attributes

  *   `customVoice` (*type:* `GoogleApi.TextToSpeech.V1beta1.Model.CustomVoiceParams.t`, *default:* `nil`) - The configuration for a custom voice. If [CustomVoiceParams.model] is set, the service will choose the custom voice matching the specified configuration.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Required. The language (and potentially also the region) of the voice expressed as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag, e.g. "en-US". This should not include a script tag (e.g. use "cmn-cn" rather than "cmn-Hant-cn"), because the script will be inferred from the input provided in the SynthesisInput. The TTS service will use this parameter to help choose an appropriate voice. Note that the TTS service may choose a voice with a slightly different language code than the one selected; it may substitute a different region (e.g. using en-US rather than en-CA if there isn't a Canadian voice available), or even a different language, e.g. using "nb" (Norwegian Bokmal) instead of "no" (Norwegian)".
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the voice. If both the name and the gender are not set, the service will choose a voice based on the other parameters such as language_code.
  *   `ssmlGender` (*type:* `String.t`, *default:* `nil`) - The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement; if a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
  *   `voiceClone` (*type:* `GoogleApi.TextToSpeech.V1beta1.Model.VoiceCloneParams.t`, *default:* `nil`) - Optional. The configuration for a voice clone. If [VoiceCloneParams.voice_clone_key] is set, the service chooses the voice clone matching the specified configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customVoice => GoogleApi.TextToSpeech.V1beta1.Model.CustomVoiceParams.t() | nil,
          :languageCode => String.t() | nil,
          :name => String.t() | nil,
          :ssmlGender => String.t() | nil,
          :voiceClone => GoogleApi.TextToSpeech.V1beta1.Model.VoiceCloneParams.t() | nil
        }

  field(:customVoice, as: GoogleApi.TextToSpeech.V1beta1.Model.CustomVoiceParams)
  field(:languageCode)
  field(:name)
  field(:ssmlGender)
  field(:voiceClone, as: GoogleApi.TextToSpeech.V1beta1.Model.VoiceCloneParams)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1beta1.Model.VoiceSelectionParams do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1beta1.Model.VoiceSelectionParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1beta1.Model.VoiceSelectionParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
