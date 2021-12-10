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

defmodule GoogleApi.SQLAdmin.V1.Model.ExportContextCsvExportOptions do
  @moduledoc """
  Options for exporting data as CSV. **MySQL** and **PostgreSQL** instances only.

  ## Attributes

  *   `escapeCharacter` (*type:* `String.t`, *default:* `nil`) - Specifies the character that should appear before a data character that needs to be escaped.
  *   `fieldsTerminatedBy` (*type:* `String.t`, *default:* `nil`) - Specifies the character that separates columns within each row (line) of the file.
  *   `linesTerminatedBy` (*type:* `String.t`, *default:* `nil`) - This is used to separate lines. If a line does not contain all fields, the rest of the columns are set to their default values.
  *   `quoteCharacter` (*type:* `String.t`, *default:* `nil`) - Specifies the quoting character to be used when a data value is quoted.
  *   `selectQuery` (*type:* `String.t`, *default:* `nil`) - The select query used to extract the data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :escapeCharacter => String.t() | nil,
          :fieldsTerminatedBy => String.t() | nil,
          :linesTerminatedBy => String.t() | nil,
          :quoteCharacter => String.t() | nil,
          :selectQuery => String.t() | nil
        }

  field(:escapeCharacter)
  field(:fieldsTerminatedBy)
  field(:linesTerminatedBy)
  field(:quoteCharacter)
  field(:selectQuery)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.ExportContextCsvExportOptions do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.ExportContextCsvExportOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.ExportContextCsvExportOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
