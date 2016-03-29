require 'yaml'

thing = YAML.load_file('locales/en.yml')
thing['en']['compliance_check_result']['details'].each do |locale|
  puts "compliance_check_result.details.#{locale[0]}"
  begin
    `localeapp rm compliance_check_result.details.#{locale[0]}`
  rescue => e
    puts "Not found: #{e.messages}"
  end
end
