defmodule BostonElixirWeb.HomeLive do
  use BostonElixirWeb, :live_view
  use LiveViewNative.LiveView,
    formats: [:swiftui],
    layouts: [
      swiftui: {BostonElixirWeb.Layouts.SwiftUI, :app}
    ]

  def render(assigns) do
    ~H"""
    <div>Hello, web!</div>
    """
  end
end