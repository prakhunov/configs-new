# Defined in - @ line 1
function ensime --description 'alias ensime=ctags -Re . & sbt clean ensimeConfig test:compile ensimeServerIndex'
	ctags -Re . & sbt clean ensimeConfig test:compile ensimeServerIndex $argv;
end
