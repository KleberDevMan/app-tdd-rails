# # Generated by Selenium IDE
# require 'selenium-webdriver'
# require 'json'
# describe 'Addvisitanterecordok' do
#   before(:each) do
#     @driver = Selenium::WebDriver.for :chrome
#     @vars = {}
#   end
#   after(:each) do
#     @driver.quit
#   end
#   it 'addvisitanterecordok' do
#     @driver.get('http://localhost:8080/admin')
#     @driver.manage.resize_to(1162, 985)
#     @driver.find_element(:link_text, 'Visitas').click
#     @driver.find_element(:id, 'visit_name').click
#     @driver.find_element(:id, 'visit_name').send_keys('user a')
#     @vars['emailRandom'] = @driver.execute_script('return \`random_mail_arguments[0]@mail.com\`;', @vars['Math.floor(Math.random() * 1000)'])
#     @vars['randomCpf'] = @driver.execute_script('function gerarCpf() {     const n1 = aleatorio(), n2 = aleatorio(), n3 = aleatorio(), d1 = dig(n1, n2, n3);     return \`arguments[0]arguments[1]arguments[2]arguments[3]arguments[4]\`; };  function dig(n1, n2, n3, n4) {     let nums = n1.split(\"\").concat(n2.split(\"\"), n3.split(\"\")), x = 0;     if (n4) nums[9] = n4;     for (let i = (n4 ? 11 : 10), j = 0; i >= 2; i--, j++) x += parseInt(nums[j]) * i;     return (y = x % 11) < 2 ? 0 : 11 - (y = x % 11); };  function aleatorio() {     return (\"\" + Math.floor(Math.random() * 999)).padStart(3, \'0\'); }; return gerarCpf();', @vars['n1'],@vars['n2'],@vars['n3'],@vars['d1'],@vars['dig(n1, n2, n3, d1)'])
#     @vars['nameRandom'] = @driver.execute_script('return \`user_arguments[0]\`;', @vars['Math.floor(Math.random() * 100)'])
#     @driver.find_element(:id, 'visit_email').send_keys(@vars['emailRandom'])
#     @driver.find_element(:id, 'visit_cell_phone_attributes_area').send_keys('63')
#     @driver.find_element(:id, 'visit_cell_phone_attributes_number').send_keys('999999999')
#     @driver.find_element(:id, 'visit_cpf').send_keys(@vars['randomCpf'])
#     dropdown = @driver.find_element(:id, 'visit_visits_origin_id')
#     dropdown.find_element(:xpath, "//option[. = 'Indicação de um(a) amigo(a)']").click
#     dropdown = @driver.find_element(:id, 'visit_visits_origin_id')
#     dropdown.find_element(:xpath, "//option[. = 'Propaganda']").click
#     dropdown = @driver.find_element(:id, 'visit_location_id')
#     dropdown.find_element(:xpath, "//option[. = 'ACCABA1']").click
#     dropdown = @driver.find_element(:id, 'visit_location_id')
#     dropdown.find_element(:xpath, "//option[. = 'ACCVLG1']").click
#     @driver.find_element(:css, 'input:nth-child(11)').click
#   end
# end

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 10)

begin
  driver.get 'https://google.com/ncr'
  driver.find_element(name: 'q').send_keys 'cheese', :return
  first_result = wait.until { driver.find_element(css: 'h3>div') }
  puts first_result.attribute('textContent')
ensure
  driver.quit
end