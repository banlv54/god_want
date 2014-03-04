$ (e) ->
  sugList = $("#suggestions")
  is_suggest = false
  $("#want_description").on "input", (e) ->
    val = $(this).val()
    is_suggest = true  if val[val.length - 1] is "@"
    is_suggest = false  if val[val.length - 1] is " "
    start_key = val.substring(val.lastIndexOf("@") + 1, val.length)
    if start_key.length < 1 or not is_suggest
      sugList.html ""
      sugList.listview "refresh"
    else
      index_of = (object) ->
        object.name.indexOf(start_key) isnt -1
      $.get "/tags", ((res, code) ->
        str = ""
        arr = res.filter(index_of)
        i = 0
        len = arr.length

        while i < len
          str += "<li class='want_tag' data-id='" + arr[i].id + "''>" + arr[i].name + "</li>"
          i++
        sugList.html str
        sugList.listview "refresh"
      ), "json"

  $("#pageone").click (e) ->
    sugList.html ""
    sugList.listview "refresh"    

  $(".reply").click (e) ->
    $(".advertise_comment .new_comment").hide()
    $(this).parent().siblings(".new_comment").show()
    
  # Input text when select tag
  $(document).on "click", "li.want_tag", (e) ->
    e.stopPropagation()
    string = $("#want_description").val()
    val = string.substring(0, string.lastIndexOf("@")) + $(this).html() + " "
    $("#want_description").val val
    $("#want_description").focus()
    $("#want_tags").val $("#want_tags").val() + $(this).data("id") + ","
    console.log $("#want_tags").val()

  navigator.geolocation.getCurrentPosition GetLocation

GetLocation = (location) ->
    window.local = location
    $("#want_latitude").val location.coords.latitude
    $("#want_longitude").val location.coords.longitude
