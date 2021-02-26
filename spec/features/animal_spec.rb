require 'rails_helper'

RSpec.feature "Animals", type: :feature do
  context 'GET /index' do
    before(:all) do
      @animal = create(:animal)
    end

    scenario 'h1 tag' do
      visit animals_path
      expect(page).to have_selector 'h1', text: 'Animals'
    end

    scenario 'one post' do
      visit animals_path
      expect(page).to have_content @animal.name # espero que a pagina tenha o seguinte conteudo
    end

    scenario 'destroy animal', js: true do
      visit animals_path

      # tira um print html da tela, exibe e procegue com o teste
      save_and_open_page

      accept_alert do
        click_link 'Destroy'
      end
      expect(page).to have_content 'Animal was successfully destroyed.'
      expect(Animal.count).to eq(0)
    end
  end

  context 'GET /new' do
    it 'insert content in input' do
      visit new_animal_path
      within 'form' do
        fill_in 'Name', with: 'Nome do animal' # preenche o name
        fill_in 'Type animal', with: 'Tipo do animal'
        click_button 'Create Animal'
      end

      expect(page).to have_content 'Animal was successfully created.'
    end
  end

  context 'GET /edit' do
    it 'update animal' do
      animal = create :animal
      visit edit_animal_path animal
      within 'form' do
        fill_in 'Name', with: 'Name updated' # preenche o name
        fill_in 'Type animal', with: 'Tipo do animal'
        click_button 'Update Animal'
      end

      animal.reload
      expect(animal.name).to eq('Name updated')
      expect(page).to have_content 'Animal was successfully updated.'
    end
  end

end
