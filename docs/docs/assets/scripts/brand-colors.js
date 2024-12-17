const colors = [
  { name: 'Accent', hex: '#0E2B4C', brightness: 39 },
  { name: 'Dark', hex: '#142A49', brightness: 40 },
  { name: 'Light', hex: '#FFFFFF', brightness: 255 }
];

const table = document.getElementById('colorTable');
const template = document.getElementById('colorCell');
const row = document.createElement('tr');

colors.forEach(color => {
  const clone = template.content.cloneNode(true);
  const cell = clone.querySelector('td');

  cell.style.backgroundColor = color.hex;
  cell.style.color = color.brightness < 128 ? '#FFFFFF' : '#000000';

  cell.querySelector('.color-name').textContent = color.name;
  cell.querySelector('.color-hex').textContent = color.hex;
  cell.querySelector('.brightness').textContent = color.brightness;

  row.appendChild(cell);
});

table.querySelector('tbody').appendChild(row);
