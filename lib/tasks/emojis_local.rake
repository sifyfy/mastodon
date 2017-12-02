# frozen_string_literal: true

namespace :emojis_local do
  desc 'Set kazamin_beast to all local emojis image'
  task set_beast_all: :environment do
    beast = CustomEmoji.find_by(shortcode: 'kazamin_beast', domain: nil)

    CustomEmoji.where(domain: nil).where.not(image_file_name: 'kazamin_beast.png').find_each do |e|
      e.image = beast.image
      if e.save
        puts "Emoji saved. shortcode=#{e.shortcode}, domain=#{e.domain}, image=#{e.image}"
      else
        puts "Error: emoji was not saved."
      end
    end
  end

  desc 'Delete all local emojis except some emojis'
  task delete_all: :environment do
    excepts = ['blank', 'kazamin_beast', 'kemono_friends', 'kemofure', 'no']
    CustomEmoji.where(domain: nil).where.not(shortcode: excepts).delete_all
  end
end
