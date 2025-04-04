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

defmodule GoogleApi.ServiceNetworking.V1.Model.JavaSettings do
  @moduledoc """
  Settings for Java client libraries.

  ## Attributes

  *   `common` (*type:* `GoogleApi.ServiceNetworking.V1.Model.CommonLanguageSettings.t`, *default:* `nil`) - Some settings.
  *   `libraryPackage` (*type:* `String.t`, *default:* `nil`) - The package name to use in Java. Clobbers the java_package option set in the protobuf. This should be used **only** by APIs who have already set the language_settings.java.package_name" field in gapic.yaml. API teams should use the protobuf java_package option where possible. Example of a YAML configuration:: publishing: library_settings: java_settings: library_package: com.google.cloud.pubsub.v1
  *   `serviceClassNames` (*type:* `map()`, *default:* `nil`) - Configure the Java class name to use instead of the service's for its corresponding generated GAPIC client. Keys are fully-qualified service names as they appear in the protobuf (including the full the language_settings.java.interface_names" field in gapic.yaml. API teams should otherwise use the service name as it appears in the protobuf. Example of a YAML configuration:: publishing: java_settings: service_class_names: - google.pubsub.v1.Publisher: TopicAdmin - google.pubsub.v1.Subscriber: SubscriptionAdmin
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :common => GoogleApi.ServiceNetworking.V1.Model.CommonLanguageSettings.t() | nil,
          :libraryPackage => String.t() | nil,
          :serviceClassNames => map() | nil
        }

  field(:common, as: GoogleApi.ServiceNetworking.V1.Model.CommonLanguageSettings)
  field(:libraryPackage)
  field(:serviceClassNames, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.JavaSettings do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.JavaSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.JavaSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
