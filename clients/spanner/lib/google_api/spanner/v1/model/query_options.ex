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

defmodule GoogleApi.Spanner.V1.Model.QueryOptions do
  @moduledoc """
  Query optimizer configuration.

  ## Attributes

  *   `optimizerStatisticsPackage` (*type:* `String.t`, *default:* `nil`) - An option to control the selection of optimizer statistics package. This parameter allows individual queries to use a different query optimizer statistics package. Specifying `latest` as a value instructs Cloud Spanner to use the latest generated statistics package. If not specified, Cloud Spanner uses the statistics package set at the database level options, or the latest package if the database option isn't set. The statistics package requested by the query has to be exempt from garbage collection. This can be achieved with the following DDL statement: ```sql ALTER STATISTICS SET OPTIONS (allow_gc=false) ``` The list of available statistics packages can be queried from `INFORMATION_SCHEMA.SPANNER_STATISTICS`. Executing a SQL statement with an invalid optimizer statistics package or with a statistics package that allows garbage collection fails with an `INVALID_ARGUMENT` error.
  *   `optimizerVersion` (*type:* `String.t`, *default:* `nil`) - An option to control the selection of optimizer version. This parameter allows individual queries to pick different query optimizer versions. Specifying `latest` as a value instructs Cloud Spanner to use the latest supported query optimizer version. If not specified, Cloud Spanner uses the optimizer version set at the database level options. Any other positive integer (from the list of supported optimizer versions) overrides the default optimizer version for query execution. The list of supported optimizer versions can be queried from `SPANNER_SYS.SUPPORTED_OPTIMIZER_VERSIONS`. Executing a SQL statement with an invalid optimizer version fails with an `INVALID_ARGUMENT` error. See https://cloud.google.com/spanner/docs/query-optimizer/manage-query-optimizer for more information on managing the query optimizer. The `optimizer_version` statement hint has precedence over this setting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :optimizerStatisticsPackage => String.t() | nil,
          :optimizerVersion => String.t() | nil
        }

  field(:optimizerStatisticsPackage)
  field(:optimizerVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.QueryOptions do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.QueryOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.QueryOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
