# Environment config variables.
#
# In production mode you need to set these variable in the shell yourself.
# On Heroku, this means heroku config.add key=value. In other environments,
# something like:
#
#   for i in `cat .env`; do export $i; done
#
# Locally, the .env file in Rails.root is read.
#
# Additionally, you can create an .env-$USER file in Rails.root, which will
# override the variables set in .env.
#
# For the test environment, a few variables are overridden below. Also, the
# user override file is not read, or otherwise developers’ local configs
# could break tests.

unless Rails.env.production? or Rails.env.stage?
  env_files = [Rails.root.to_s + "/.env"].tap do |env_files|
    user_env_file = Rails.root.to_s + "/.env-" + ENV['USER']
    env_files << user_env_file if File.exists?(user_env_file) and not Rails.env.test?
  end
  env_files.each do |env_file|
    File.open(env_file).each_line do |line|
      next unless line.present? and not line =~ /^#/
      key, value = line.split('=',2)
      ENV[key] = value.chomp!
    end
  end

  # Test overrides.
  if Rails.env.test?
  end
end
