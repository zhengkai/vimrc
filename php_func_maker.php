#!/usr/bin/env php
<?php
/*

生成 php_func.txt 用于自动完成

 */

$lAddon = [

	"fastcgi_finish_request",

	// all below for Tango
	"INT32_MAX",
	"NOW",
	"SITE_DOMAIN",
	"SITE_ROOT",
	"RES_DOMAIN",
	"RES_URL",
];

$lDisable = [ // 仅匹配开头，可通配
	'$_SESSION',
	'session_',
];

$lFunc = get_defined_functions()["internal"];

$lConst = get_defined_constants();
$lConst = array_keys($lConst);

// http://php.net/manual/en/reserved.variables.php
$sSuperglobal = <<<'EOD'
$GLOBALS
$_SERVER
$_GET
$_POST
$_FILES
$_REQUEST
$_SESSION
$_COOKIE
$php_errormsg
$HTTP_RAW_POST_DATA
$http_response_header
$argc
$argv
EOD;

$lSuperglobal = explode("\n", $sSuperglobal);

// http://php.net/manual/en/language.oop5.magic.php
$sMagicMethod = <<<'EOD'
__construct
__destruct
__call
__callStatic
__get
__set
__isset
__unset
__sleep
__wakeup
__toString
__invoke
__set_state
__clone
EOD;

$lMagicMethod = explode("\n", $sMagicMethod);

// http://php.net/manual/en/reserved.keywords.php
$sKeyword = <<<'EOD'
__halt_compiler
abstract
and
array
as
break
callable
case
catch
class
clone
const
continue
declare
default
die
do
echo
else
elseif
empty
enddeclare
endfor
endforeach
endif
endswitch
endwhile
eval
exit
extends
final
for
foreach
function
global
goto
if
implements
include
include_once
instanceof
insteadof
namespace
new
or
print
private
protected
public
require
require_once
return
static
switch
throw
trait
try
unset
use
var
while
xor
__CLASS__
__DIR__
__FILE__
__FUNCTION__
__LINE__
__METHOD__
__NAMESPACE__
EOD;

// http://php.net/manual/en/reserved.variables.server.php
$lServerKey = [
	'PHP_SELF',
	'argv',
	'argc',
	'GATEWAY_INTERFACE',
	'SERVER_ADDR',
	'SERVER_NAME',
	'SERVER_SOFTWARE',
	'SERVER_PROTOCOL',
	'REQUEST_METHOD',
	'REQUEST_TIME',
	'REQUEST_TIME_FLOAT',
	'QUERY_STRING',
	'DOCUMENT_ROOT',
	'HTTP_ACCEPT',
	'HTTP_ACCEPT_CHARSET',
	'HTTP_ACCEPT_ENCODING',
	'HTTP_ACCEPT_LANGUAGE',
	'HTTP_CONNECTION',
	'HTTP_HOST',
	'HTTP_REFERER',
	'HTTP_USER_AGENT',
	'HTTPS',
	'REMOTE_ADDR',
	'REMOTE_HOST',
	'REMOTE_PORT',
	'REMOTE_USER',
	'REDIRECT_REMOTE_USER',
	'SCRIPT_FILENAME',
	'SERVER_ADMIN',
	'SERVER_PORT',
	'SERVER_SIGNATURE',
	'PATH_TRANSLATED',
	'SCRIPT_NAME',
	'REQUEST_URI',
	'PHP_AUTH_DIGEST',
	'PHP_AUTH_USER',
	'PHP_AUTH_PW',
	'AUTH_TYPE',
	'PATH_INFO',
	'ORIG_PATH_INFO',
];

$lKeyword = explode("\n", $sKeyword);

$lOut = array_merge($lFunc, $lConst, $lSuperglobal, $lKeyword, $lMagicMethod, $lServerKey, $lAddon);

$lOut = array_filter($lOut, function ($sName) use ($lDisable) {
	foreach ($lDisable as $sDisable) {
		if (strpos($sName, $sDisable) === 0) {
			return FALSE;
		}
	}
	return strlen($sName) >= 3;
});

$lOut = array_unique($lOut);

usort($lOut, function ($a, $b) {
	$a = strtolower($a);
	$b = strtolower($b);
	return strcmp($a, $b);
});

$sOut = implode("\n", $lOut);

file_put_contents(__DIR__."/php_func.txt", $sOut);

