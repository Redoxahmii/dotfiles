; (((document) @_jsdoc_comment
;   (#lua-match? @_jsdoc_comment "^/[*][*][^*].*[*]/$")) @injection.content
;   (#set! injection.language "yaml"))

; ((document)
;  (tag(tag_name) @keyword(#eq? @keyword "@swagger")) @injection.content
;  ; (#match? @injection.content "^/[*][*][^*].*[*]/$")
;  (#set! injection.language "yaml")
;  )
 

; (((document) @injection.content
;  (tag(tag_name) @keyword)
;  (#eq? @keyword "@swagger"))
;  (#set! injection.language "yaml"))
;
;
; ((tag
;   (tag_name) @keyword
;   (#eq? @keyword "@swagger")) @injection.content
;   (#set! injection.language "yaml")
;   )
