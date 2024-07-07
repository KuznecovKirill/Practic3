const express = require('express');
const router = express.Router();


router.post('http://localhost:8000', async (req, res) => {
    const { name, rating, comment } = req.body;
    try {
        await conn.query('INSERT INTO users (`ID_Comment`, `ID_Movie`, `User`, `Rating_User`, `Comment_Text`) VALUES (?, ?, ?, ?, ?)', [
          name,
          rating,
          comment,
        ]);
        res.status(201).json({ message: 'Данные пользователя сохранены' });
  } catch (error) {
    console.error('Ошибка при сохранении данных пользователя:', error);
    res.status(500).json({ message: 'Ошибка при сохранении данных' });
  }
  
});  

module.exports = router;
