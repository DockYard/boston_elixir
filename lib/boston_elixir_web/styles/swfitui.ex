defmodule BostonElixirWeb.Styles.SwiftUI do
  use LiveViewNative.Stylesheet, :swiftui

  ~SHEET"""
  "padding" do
    padding()
  end

  "padding-bottom:" <> padding do
    padding(.bottom, <%= padding %>)
  end

  "offset-y:" <> y do
    offset(y: <%= y %>)
  end

  "clip:circle" do
    clipShape(.circle)
  end

  "image-scale:" <> size do
    imageScale(.<%= size %>)
  end

  "font:" <> font do
    font(.<%= font %>)
  end

  "frame-height:" <> height do
    frame(height: <%= height %>)
  end

  "foreground-style:" <> color do
    foregroundStyle(.<%= color %>)
  end

  "shadow-radius:" <> radius do
    shadow(radius: <%= radius %>)
  end

  "overlay:circle" do
    overlay(content: :circle)
  end
  """

  def class("stroke:" <> args, _interface) do
    [color, line_width] = String.split(args, "-")

    ~RULES"""
    stroke(.<%= color %>, lineWidth: <%= line_width %>)
    """
  end
end