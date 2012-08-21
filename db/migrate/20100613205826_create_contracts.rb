class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.string :author
      t.string :editor
      t.string :title
      t.string :author_citizen
      t.text   :subject
      t.string  :length
      t.integer :page_number
      t.string  :illustrations
      t.text    :integral
      t.string   :index
      t.date     :delivery_date
      t.decimal    :hc_dom_net
      t.decimal    :hc_ex_net
      t.decimal    :pb_dom_net
      t.decimal    :pb_ex_net
      t.decimal    :epub_net
      t.decimal    :ebook_net
      t.decimal    :copub_incl
      t.decimal    :bookclub_incl
      t.decimal    :bookclub_excl
      t.decimal    :audio_dom
      t.decimal    :audio_ex
      t.decimal    :custompub
      t.decimal    :specialsale
      t.decimal    :sub_trans
      t.decimal    :sub_epub
      t.decimal    :sub_hc
      t.decimal    :sub_pb
      t.decimal    :sub_1serial_print
      t.decimal    :sub_2serial_print
      t.decimal    :sub_1serial_digital
      t.decimal    :sub_2serial_digital
      t.decimal    :sub_audio
      t.decimal    :sub_braille
      t.decimal    :sub_misc
      t.timestamps
    end
  end
  
  def self.down
    drop_table :contracts
  end
end
