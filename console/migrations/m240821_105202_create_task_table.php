<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%task}}`.
 */
class m240821_105202_create_task_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%task}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string()->notNull(),
            'description' => $this->text()->notNull(),
            'due_date' => $this->date()->notNull(),
            'status' => $this->string()->notNull(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%task}}');
    }
}
