import flatpickr from 'flatpickr'



const initFlatpickr = () => {
  const startDateInput = document.getElementById('deal_start_date');
  const endDateInput = document.getElementById('deal_end_date');
  flatpickr(startDateInput);
  flatpickr(endDateInput);
};

export { initFlatpickr }
