<?php

namespace App\Model;

use App\Model\AbstractManager;
use pdo;

class SDMManager extends AbstractManager
{
    public const TABLE = 'sdm';

    public function insert(array $credentials)
    {
        $statement = $this->pdo->prepare(
            "INSERT INTO " . static::TABLE .
                "(`pseudo`, `title`, `story`,`love`,`no_love`)
            VALUES(:pseudo, :title, :story, :love, :no_love) "
        );
        $statement->bindValue(':pseudo', $credentials['pseudo'], \PDO::PARAM_STR);
        $statement->bindValue(':title', $credentials['titre'], \PDO::PARAM_STR);
        $statement->bindValue(':story', $credentials['msg'], \PDO::PARAM_STR);
        $statement->bindValue(':love', 0, \PDO::PARAM_INT);
        $statement->bindValue(':no_love', 0, \PDO::PARAM_INT);
        $statement->execute();
    }

    public function love($data): bool
    {
        $stmt = $this->pdo->prepare(
            "UPDATE " . static::TABLE . " SET love = love + 1 WHERE id = :targetId"
        );
        $stmt->bindValue(':targetId', $data['targetId'], PDO::PARAM_INT);
        return $stmt->execute();
    }
}
