class AddCatchphraseToCharacters < ActiveRecord::Migration[5.1]
    def change
        add_column(:characters, :catchphrase, :string) #why isnt :catchphrase plural (catchphrases?)
    end 
end 