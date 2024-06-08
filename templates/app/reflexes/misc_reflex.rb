# frozen_string_literal: true

class MiscReflex < ApplicationReflex
  def exit_
    cable_ready.redirect_to(url: "https://www.google.com").broadcast
  end

  def dismiss
    cable_ready.inner_html("#modal-wrapper", html: "")
  end
end
