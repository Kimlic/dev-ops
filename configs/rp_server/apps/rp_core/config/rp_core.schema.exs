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
    "rp_core.namespace": [
      commented: false,
      datatype: :atom,
      default: RpCore,
      doc: "Provide documentation for rp_core.namespace here.",
      hidden: false,
      to: "rp_core.namespace"
    ],
    "rp_core.ecto_repos": [
      commented: false,
      datatype: [
        list: :atom
      ],
      default: [
        RpCore.Repo
      ],
      doc: "Provide documentation for rp_core.ecto_repos here.",
      hidden: false,
      to: "rp_core.ecto_repos"
    ],
    "rp_core.Elixir.RpCore.Repo.adapter": [
      commented: false,
      datatype: :atom,
      default: Ecto.Adapters.Postgres,
      doc: "Provide documentation for rp_core.Elixir.RpCore.Repo.adapter here.",
      hidden: false,
      to: "rp_core.Elixir.RpCore.Repo.adapter"
    ],
    "rp_core.Elixir.RpCore.Repo.database": [
      commented: false,
      datatype: :binary,
      default: "rp_core",
      doc: "Provide documentation for rp_core.Elixir.RpCore.Repo.database here.",
      hidden: false,
      to: "rp_core.Elixir.RpCore.Repo.database"
    ],
    "rp_core.Elixir.RpCore.Repo.username": [
      commented: false,
      datatype: :binary,
      default: "kimlic",
      doc: "Provide documentation for rp_core.Elixir.RpCore.Repo.username here.",
      hidden: false,
      to: "rp_core.Elixir.RpCore.Repo.username"
    ],
    "rp_core.Elixir.RpCore.Repo.password": [
      commented: false,
      datatype: :binary,
      default: "kimlic",
      doc: "Provide documentation for rp_core.Elixir.RpCore.Repo.password here.",
      hidden: false,
      to: "rp_core.Elixir.RpCore.Repo.password"
    ],
    "rp_core.Elixir.RpCore.Repo.hostname": [
      commented: false,
      datatype: :binary,
      default: "db",
      doc: "Provide documentation for rp_core.Elixir.RpCore.Repo.hostname here.",
      hidden: false,
      to: "rp_core.Elixir.RpCore.Repo.hostname"
    ],
    "rp_core.Elixir.RpCore.Repo.port": [
      commented: false,
      datatype: :binary,
      default: "5432",
      doc: "Provide documentation for rp_core.Elixir.RpCore.Repo.port here.",
      hidden: false,
      to: "rp_core.Elixir.RpCore.Repo.port"
    ],
    "rp_core.Elixir.RpCore.Repo.pool_size": [
      commented: false,
      datatype: :integer,
      default: 10,
      doc: "Provide documentation for rp_core.Elixir.RpCore.Repo.pool_size here.",
      hidden: false,
      to: "rp_core.Elixir.RpCore.Repo.pool_size"
    ],
    "logger.level": [
      commented: false,
      datatype: :atom,
      default: :info,
      doc: "Provide documentation for logger.level here.",
      hidden: false,
      to: "logger.level"
    ]
  ],
  transforms: [],
  validators: []
]