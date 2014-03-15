$ ->
  $("form").on "click", ".add_fields", ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data("id"), "g")
    $("#" + $(this).attr("append_id")).append($(this).data("fields").replace(regexp, time))

  $("form").on "click", ".remove_fields", ->
    $(this).prev("input[type=hidden]").val("1")
    $(this).closest("tr").hide()