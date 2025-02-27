" Vim syntax file
" Language:       ruby_debug_log
" Maintainer:     Luke Gruber
" Last Change:    Feb 26, 2025
" Version:        0.0.1

if exists("b:current_syntax") && b:current_syntax == "ruby_debug_log"
 finish
endif

let s:cpo_save = &cpoptions
set cpoptions&vim

" might appear at the top of the log
syn keyword RDLKeywordTop RUBY_DEBUG_LOG RUBY_DEBUG_LOG_FILTER
syn keyword RDLKeywordTop compiling linking miniruby
syn keyword RDLBoolean true TRUE false FALSE nil NIL none NONE null NULL

syn match RDLNumberedCol      '^\s*\d\+:'
syn match RDLPidCol           '\<pid:'
syn match RDLNumTransition    '\d\+\zs->\ze\d\+'
syn match RDLNumber           '\<\-\?\d\+\>'
syn match RDLNumber           '\<\zs\-\?\d\+\ze-'
syn match RDLHexNumber        '\<0[xX]\x\+\>'
syn match RDLRactorFunc       '\(rb_\|rb_vm_\)\?ractor_\w\+'
syn match RDLTimerThreadFunc  '\<timer_thread_\w\+\>'
syn match RDLTimerThreadFunc  '\<\w\+_timer_thread\>'
syn match RDLThreadFunc       '\<\(rb_\)\?thread_\w\+\>'
syn match RDLNativeThreadFunc '\<native_thread_\w\+\>'
syn match RDLBlockingRegion   '\<blocking_region_\(begin\|end\)\>'
syn match RDLUBFList          '\<\(un\)\?register_ubf_list\>'

" If you want the locking functions to be a different color
"syn match RDLLock             '\<\w\+_lock\S*\>'
"syn match RDLLock             '\<\w\+_trylock\S*\>'
"syn match RDLLock             '\<\w\+_unlock\S*\>'

syn match RDLUBFList          '\<\(un\)\?register_ubf_list\>'
syn match RDLRactorWarning    'warning: Ractor is experimental'
syn match RDLNoWaitingThreads '\<no waiting threads\>'
syn match RDLThreadNumber     '\<th:\d\+\>'
syn match RDLThreadNumber     '\<th:\d\+->'
syn match RDLNTNumber         '\<nt:\d\+\>'
syn match RDLRactorNumber     '\<cr:\d\+\>'
syn match RDLRactorNumber     '\<r:\d\+\>'
syn match RDLRactorNumber     '\<r:#\d\+/\d\+\>'

hi link RDLNumberedCol        String
hi link RDLPidCol             Number
hi link RDLKeywordTop         Label
hi link RDLBoolean            Boolean
hi link RDLNumber             Number
hi link RDLHexNumber          Number
hi link RDLLock               Operator
hi link RDLTimerThreadFunc    Special
hi link RDLThreadFunc         Identifier
hi link RDLNativeThreadFunc   Structure
hi link RDLThreadNumber       Identifier
hi link RDLNTNumber           Structure
hi link RDLRactorNumber       Function
hi link RDLNoWaitingThreads   Tag
hi link RDLRactorFunc         Function
hi link RDLBlockingRegion     PreProc
hi link RDLUBFList            Special
hi link RDLNumTransition      Label
hi link RDLRactorWarning      TODO

let b:current_syntax = "ruby_debug_log"

let &cpoptions = s:cpo_save
unlet s:cpo_save
