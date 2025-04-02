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

defmodule GoogleApi.Sheets.V4.Model.BatchClearValuesRequest do
  @moduledoc """
  The request for clearing more than one range of values in a spreadsheet.

  ## Attributes

  *   `ranges` (*type:* `list(String.t)`, *default:* `nil`) - The ranges to clear, in [A1 notation or R1C1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ranges => list(String.t()) | nil
        }

  field(:ranges, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchClearValuesRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BatchClearValuesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchClearValuesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
