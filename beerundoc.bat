IF "%GOPATH_GLOBAL%." == "." (
	set GOPATH_GLOBAL=%GOPATH%
	set GOPATH_LOCAL=%cd%
)

set GOPATH=%GOPATH_GLOBAL%;%GOPATH_LOCAL%
set BEE=%GOPATH_LOCAL%\bin\bee
cd src/%1
%BEE% run -downdoc=false -gendoc=true
