
def nom_dos_projet
	return dos_projet = ARGV.first

end

def if_not_snake_name_dos_projet
	abort("nom_du_fichier_en_snake!!!") if ARGV.empty?
end


def crea_dossier_projet(dos_projet)
	Dir.mkdir(dos_projet)
	Dir.chdir(dos_projet)
end


def crea_readme_md
	File.open("README.md", "a")
end

def crea_gemfile
	file = File.open("Gemfile", "a")
	file.puts("source 'https://rubygems.org'") 
	file.puts("gem 'rspec'")
	file.puts("gem 'pry'")
	file.puts("gem 'rubocop', '~> 0.57.2'")
	file.puts("gem 'dotenv'")
	file.puts("gem 'nokogiri'")
	file.puts("gem 'launchy'")
	file.close
end


def crea_env
	File.open(".env", "a")
end

def crea_gitignore
	file = File.open(".gitignore", "a")
	file.puts(".env")
	file.close
end


def crea_fichier_rb(dos_projet)

	Dir.mkdir("lib")
	# Dir.chdir("lib")

	# file = File.open("#{dos_projet}.rb", "a")
	# file.puts("require 'rspec', require 'pry', require 'rubocop', '~> 0.57.2', require 'dotenv', require 'nokogiri', require 'launchy'")
	# file.close
end

def systeme
	system("bundle install")
	system("rspec --init")
	system("git init")
end



# def crea_fich_specrb(dos_projet, system)
# 	Dir.chdir(system)
# 	file = File.open("#{dos_projet}_spec.rb", "a")
# 	file.puts("require_relative '../lib/#{dos_projet}.rb'")
# 	file.close
# end


def perform
	dos_projet = nom_dos_projet
	if_not_snake_name_dos_projet
	crea_dossier_projet(nom_dos_projet)
	crea_readme_md
	crea_gemfile
	crea_env
	crea_gitignore
	crea_fichier_rb(nom_dos_projet)
	systeme
	# crea_fich_specrb(nom_dos_projet)
end

perform