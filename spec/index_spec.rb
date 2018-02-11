describe 'Index Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'

    within '.projects' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_content 'FizzBuzz'
    end
  end
end

describe 'CV Page', type: :feature do
  it 'displays contacts' do
    visit '/cv.html'

    expect(page).to have_css '.contacts'

    within '.contacts' do
      expect(page).to have_content 'Pontuswiknersgata 1, 41132 Göteborg'
      expect(page).to have_content '+ 46 (0)707-33 61 55'
      expect(page).to have_content 'tidemand.holger@gmail.com'
    end
  end

  it 'displays employment' do
    visit '/cv.html'

    expect(page).to have_css '.employment'

    within '.employment' do
      expect(page).to have_content 'Aston Harald Sport - Sail Coordinator 2015 - 2016.'
      expect(page).to have_content 'Licensor for The World Match Racing Tour & Event coorditator.'
    end
  end

  it 'displays education' do
    visit '/cv.html'

    expect(page).to have_css '.education'

    within '.education' do
      expect(page).to have_content 'Craft Academy Bootcamp.'
      expect(page).to have_content 'Twelve week coruse in Web Development.'
    end
  end
  it 'displays awards' do
    visit '/cv.html'

    expect(page).to have_css '.awards'

    within '.awards' do
      expect(page).to have_content 'Silver Medal World Championship - 2017.'
      expect(page).to have_content 'Marstrand, Sweden - M32 class.'
    end
  end

end
