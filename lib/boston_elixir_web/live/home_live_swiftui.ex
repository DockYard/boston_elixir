defmodule BostonElixirWeb.HomeLive.SwiftUI do
  use LiveViewNative.Component,
    format: :swiftui,
    as: :render

  use BostonElixirWeb, :verified_routes
  import BostonElixirWeb.SwiftUIComponents
end
