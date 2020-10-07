import flatpickr from "flatpickr";
import { Portuguese } from "flatpickr/dist/l10n/pt.js"

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    "locale": Portuguese,
    dateFormat: "d-m-Y"
  });
}

export{initFlatpickr};
