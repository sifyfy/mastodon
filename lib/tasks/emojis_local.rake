# frozen_string_literal: true

namespace :emojis_local do
  desc 'Set kazamin_beast to all local emojis image'
  task set_beast_all: :environment do
    beast = CustomEmoji.where(shortcode: 'kazamin_beast', domain: nil).first

    CustomEmoji.where(domain: nil).find_each do |e|
      e.image = beast.image
      e.save
      puts "Emoji saved. shortcode=#{e.shortcode}, domain=#{e.domain}, image=#{e.image}"
    end
  end
end
