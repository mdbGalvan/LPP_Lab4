require 'rake/testtask'

task :default => [:test]

desc "Se ejecutan todas las pruebas que se han programado."
Rake::TestTask.new do |t|
    t.libs << "test"
	# test_files: Define explicitamente la lista de archivos de prueba para ser incluidos en una prueba.
    t.test_files = FileList['test/tc_*.rb']
    t.verbose = true # Detalle
end