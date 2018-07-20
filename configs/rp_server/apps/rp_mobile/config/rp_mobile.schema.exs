@moduledoc """
A schema is a keyword list which represents how to map, transform, and validate
configuration values parsed from the .conf file. The following is an explanation of
each key in the schema definition in order of appearance, and how to use them.

## Import

A list of application names (as atoms), which represent apps to load modules from
which you can then reference in your schema definition. This is how you import your
own custom Validator/Transform modules, or general utility modules for use in
validator/transform functions in the schema. For example, if you have an application
`:foo` which contains a custom Transform module, you would add it to your schema like so:

`[ import: [:foo], ..., transforms: ["myapp.some.setting": MyApp.SomeTransform]]`

## Extends

A list of application names (as atoms), which contain schemas that you want to extend
with this schema. By extending a schema, you effectively re-use definitions in the
extended schema. You may also override definitions from the extended schema by redefining them
in the extending schema. You use `:extends` like so:

`[ extends: [:foo], ... ]`

## Mappings

Mappings define how to interpret settings in the .conf when they are translated to
runtime configuration. They also define how the .conf will be generated, things like
documention, @see references, example values, etc.

See the moduledoc for `Conform.Schema.Mapping` for more details.

## Transforms

Transforms are custom functions which are executed to build the value which will be
stored at the path defined by the key. Transforms have access to the current config
state via the `Conform.Conf` module, and can use that to build complex configuration
from a combination of other config values.

See the moduledoc for `Conform.Schema.Transform` for more details and examples.

## Validators

Validators are simple functions which take two arguments, the value to be validated,
and arguments provided to the validator (used only by custom validators). A validator
checks the value, and returns `:ok` if it is valid, `{:warn, message}` if it is valid,
but should be brought to the users attention, or `{:error, message}` if it is invalid.

See the moduledoc for `Conform.Schema.Validator` for more details and examples.
"""
[
  extends: [],
  import: [],
  mappings: [
    "mime.types": [
      commented: false,
      datatype: :binary,
      doc: "Provide documentation for mime.types here.",
      hidden: false,
      to: "mime.types"
    ],
    "rp_mobile.namespace": [
      commented: false,
      datatype: :atom,
      default: RpMobile,
      doc: "Provide documentation for rp_mobile.namespace here.",
      hidden: false,
      to: "rp_mobile.namespace"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.adapter": [
      commented: false,
      datatype: :atom,
      default: Phoenix.Endpoint.Cowboy2Adapter,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.adapter here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.adapter"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.render_errors.view": [
      commented: false,
      datatype: :atom,
      default: RpMobileWeb.ErrorView,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.render_errors.view here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.render_errors.view"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.render_errors.accepts": [
      commented: false,
      datatype: [
        list: :binary
      ],
      default: [
        "json"
      ],
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.render_errors.accepts here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.render_errors.accepts"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.pubsub.name": [
      commented: false,
      datatype: :atom,
      default: RpMobile.PubSub,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.pubsub.name here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.pubsub.name"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.pubsub.adapter": [
      commented: false,
      datatype: :atom,
      default: Phoenix.PubSub.PG2,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.pubsub.adapter here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.pubsub.adapter"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.load_from_system_env": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.load_from_system_env here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.load_from_system_env"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.secret_key_base": [
      commented: false,
      datatype: :binary,
      default: "TaRwP6iMHBxzDxN3A3nhQ649q86wLxR2tw4oKOTpJpIDdKNbmnDcg4WvQCcC79yY",
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.secret_key_base here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.secret_key_base"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.http.port": [
      commented: false,
      datatype: :integer,
      default: 4000,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.http.port here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.http.port"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.url.host": [
      commented: false,
      datatype: :binary,
      default: "localhost",
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.url.host here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.url.host"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.url.port": [
      commented: false,
      datatype: :integer,
      default: 4000,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.url.port here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.url.port"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.scheme": [
      commented: false,
      datatype: :binary,
      default: "https",
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.scheme here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.scheme"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.host": [
      commented: false,
      datatype: :binary,
      default: "localhost",
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.host here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.host"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.port": [
      commented: false,
      datatype: :integer,
      default: 443,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.port here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.static_url.port"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.debug_errors": [
      commented: false,
      datatype: :atom,
      default: false,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.debug_errors here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.debug_errors"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.code_reloader": [
      commented: false,
      datatype: :atom,
      default: false,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.code_reloader here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.code_reloader"
    ],
    "rp_mobile.Elixir.RpMobileWeb.Endpoint.server": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for rp_mobile.Elixir.RpMobileWeb.Endpoint.server here.",
      hidden: false,
      to: "rp_mobile.Elixir.RpMobileWeb.Endpoint.server"
    ],
    "logger.console.format": [
      commented: false,
      datatype: :binary,
      default: """
      $time $metadata[$level] $message
      """,
      doc: "Provide documentation for logger.console.format here.",
      hidden: false,
      to: "logger.console.format"
    ],
    "logger.console.metadata": [
      commented: false,
      datatype: [
        list: :atom
      ],
      default: [
        :request_id
      ],
      doc: "Provide documentation for logger.console.metadata here.",
      hidden: false,
      to: "logger.console.metadata"
    ],
    "logger.level": [
      commented: false,
      datatype: :atom,
      default: :info,
      doc: "Provide documentation for logger.level here.",
      hidden: false,
      to: "logger.level"
    ],
    "phoenix.format_encoders.json-api": [
      commented: false,
      datatype: :atom,
      default: Jason,
      doc: "Provide documentation for phoenix.format_encoders.json-api here.",
      hidden: false,
      to: "phoenix.format_encoders.json-api"
    ],
    "phoenix.json_library": [
      commented: false,
      datatype: :atom,
      default: Jason,
      doc: "Provide documentation for phoenix.json_library here.",
      hidden: false,
      to: "phoenix.json_library"
    ],
    "phoenix.serve_endpoints": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for phoenix.serve_endpoints here.",
      hidden: false,
      to: "phoenix.serve_endpoints"
    ]
  ],
  transforms: [],
  validators: []
]