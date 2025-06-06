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

defmodule GoogleApi.Compute.V1.Model.HttpRouteRule do
  @moduledoc """
  The HttpRouteRule setting specifies how to match an HTTP request and the corresponding routing action that load balancing proxies perform.

  ## Attributes

  *   `customErrorResponsePolicy` (*type:* `GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy.t`, *default:* `nil`) - customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. If a policy for an error code is not configured for the RouteRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors - A RouteRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with routeRules.routeAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the customErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the customErrorResponsePolicy is ignored and the response from the service is returned to the client. customErrorResponsePolicy is supported only for global external Application Load Balancers.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The short description conveying the intent of this routeRule. The description can have a maximum length of 1024 characters.
  *   `headerAction` (*type:* `GoogleApi.Compute.V1.Model.HttpHeaderAction.t`, *default:* `nil`) - Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction value specified here is applied before the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].routeAction.weightedBackendService.backendServiceWeightAction[].headerAction HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  *   `matchRules` (*type:* `list(GoogleApi.Compute.V1.Model.HttpRouteRuleMatch.t)`, *default:* `nil`) - The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - For routeRules within a given pathMatcher, priority determines the order in which a load balancer interprets routeRules. RouteRules are evaluated in order of priority, from the lowest to highest number. The priority of a rule decreases as its number increases (1, 2, 3, N+1). The first rule that matches the request is applied. You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number from 0 to 2147483647 inclusive. Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  *   `routeAction` (*type:* `GoogleApi.Compute.V1.Model.HttpRouteAction.t`, *default:* `nil`) - In response to a matching matchRule, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. Only one of urlRedirect, service or routeAction.weightedBackendService can be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a route rule's routeAction.
  *   `service` (*type:* `String.t`, *default:* `nil`) - The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. Only one of urlRedirect, service or routeAction.weightedBackendService can be set.
  *   `urlRedirect` (*type:* `GoogleApi.Compute.V1.Model.HttpRedirectAction.t`, *default:* `nil`) - When this rule is matched, the request is redirected to a URL specified by urlRedirect. Only one of urlRedirect, service or routeAction.weightedBackendService can be set. Not supported when the URL map is bound to a target gRPC proxy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customErrorResponsePolicy =>
            GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy.t() | nil,
          :description => String.t() | nil,
          :headerAction => GoogleApi.Compute.V1.Model.HttpHeaderAction.t() | nil,
          :matchRules => list(GoogleApi.Compute.V1.Model.HttpRouteRuleMatch.t()) | nil,
          :priority => integer() | nil,
          :routeAction => GoogleApi.Compute.V1.Model.HttpRouteAction.t() | nil,
          :service => String.t() | nil,
          :urlRedirect => GoogleApi.Compute.V1.Model.HttpRedirectAction.t() | nil
        }

  field(:customErrorResponsePolicy, as: GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy)
  field(:description)
  field(:headerAction, as: GoogleApi.Compute.V1.Model.HttpHeaderAction)
  field(:matchRules, as: GoogleApi.Compute.V1.Model.HttpRouteRuleMatch, type: :list)
  field(:priority)
  field(:routeAction, as: GoogleApi.Compute.V1.Model.HttpRouteAction)
  field(:service)
  field(:urlRedirect, as: GoogleApi.Compute.V1.Model.HttpRedirectAction)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpRouteRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpRouteRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpRouteRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
