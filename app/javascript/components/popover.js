const initPopover = () => {
  $(function () {
    $('[data-toggle="popover"]').popover({html:true});
  })
}
export {initPopover};
