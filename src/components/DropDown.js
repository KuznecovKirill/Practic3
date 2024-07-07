import React, { useState } from 'react';
import { Dropdown } from 'rsuite';

const DropDown = () => {
  const [title, setTitle] = useState('Фильтр');

  const handleSelect = (eventKey) => {
    const selectedOption = options.find((option) => option.value === eventKey);
    setTitle(selectedOption.label);
    console.log(eventKey);
  };

  const options = [
    { label: 'По популярности', value: 'По популярности' },
    { label: 'По названию', value: 'По названию' },
    { label: 'По рейтингу', value: 'По рейтингу' },
  ];
  return (
    <Dropdown title={title} onSelect={handleSelect} id='drop' className='dropdown custom-dropdown' toggleClassName='custom-dropdown-toggle' menuClassName="dropdown-content custom-dropdown-menu">
      {options.map((option) => (
        <Dropdown.Item key={option.value} eventKey={option.value} className="custom-dropdown-item">
          {option.label}
        </Dropdown.Item>
      ))}
    </Dropdown>
  );
};
export {DropDown};
