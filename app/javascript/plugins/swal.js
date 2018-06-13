import sweetalert from "sweetalert";

function bindSweetAlertButtonDemo(title, user_id) {
  swal({
    title: title,
    text: "Booking confirmed!",
    timer: 30000,
  })
}

export { bindSweetAlertButtonDemo };
