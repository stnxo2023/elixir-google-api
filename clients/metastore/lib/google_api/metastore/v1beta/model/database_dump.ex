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

defmodule GoogleApi.Metastore.V1beta.Model.DatabaseDump do
  @moduledoc """
  A specification of the location of and metadata about a database dump from a relational database management system.

  ## Attributes

  *   `databaseType` (*type:* `String.t`, *default:* `nil`) - The type of the database.
  *   `gcsUri` (*type:* `String.t`, *default:* `nil`) - Optional. A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  *   `sourceDatabase` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the source database.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :databaseType => String.t() | nil,
          :gcsUri => String.t() | nil,
          :sourceDatabase => String.t() | nil,
          :type => String.t() | nil
        }

  field(:databaseType)
  field(:gcsUri)
  field(:sourceDatabase)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.DatabaseDump do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.DatabaseDump.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.DatabaseDump do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
