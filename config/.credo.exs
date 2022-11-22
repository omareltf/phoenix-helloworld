%{
    configs: [
      %{
        name: "default",
        files: %{
          included: ["lib/", "src/", "web/", "apps/"],
          excluded: []
        },
        plugins: [],
        requires: [],
        strict: false,
        parse_timeout: 5000,
        color: true,
        checks: [
          {Credo.Check.Warning.UnsafeToAtom, priority: :low},
          # ... other checks omitted for readability ...
        ]
      }
    ]
  }