

let s:RefBaseURL = 'https://developer.mozilla.org/en/SpiderMonkey/JSAPI_Reference/'

if has('mac') 
  let s:browser_cmd = 'open '
else
  let s:browser_cmd = ''
endif

fun! s:OpenRef(item)
  let url = s:RefBaseURL . a:item
  call system( s:browser_cmd . ' ' . url )
endf

com! OpenSpiderMonkeyRefCWord     :cal s:OpenRef( expand('<cword>') )
com! -nargs=1 OpenSpiderMonkeyRef  :cal s:OpenRef( <q-args> ) 
