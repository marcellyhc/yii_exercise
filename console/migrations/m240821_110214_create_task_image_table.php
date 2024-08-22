<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%task_image}}`.
 * Has foreign keys to the tables:
 *
 * - `{{%task}}`
 * - `{{%file}}`
 */
class m240821_110214_create_task_image_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%task_image}}', [
            'id' => $this->primaryKey(),
            'task_id' => $this->integer()->notNull(),
            'file_id' => $this->integer()->notNull(),
        ]);

        // creates index for column `task_id`
        $this->createIndex(
            '{{%idx-task_image-task_id}}',
            '{{%task_image}}',
            'task_id'
        );

        // add foreign key for table `{{%task}}`
        $this->addForeignKey(
            '{{%fk-task_image-task_id}}',
            '{{%task_image}}',
            'task_id',
            '{{%task}}',
            'id',
            'CASCADE'
        );

        // creates index for column `file_id`
        $this->createIndex(
            '{{%idx-task_image-file_id}}',
            '{{%task_image}}',
            'file_id'
        );

        // add foreign key for table `{{%file}}`
        $this->addForeignKey(
            '{{%fk-task_image-file_id}}',
            '{{%task_image}}',
            'file_id',
            '{{%file}}',
            'id',
            'CASCADE'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        // drops foreign key for table `{{%task}}`
        $this->dropForeignKey(
            '{{%fk-task_image-task_id}}',
            '{{%task_image}}'
        );

        // drops index for column `task_id`
        $this->dropIndex(
            '{{%idx-task_image-task_id}}',
            '{{%task_image}}'
        );

        // drops foreign key for table `{{%file}}`
        $this->dropForeignKey(
            '{{%fk-task_image-file_id}}',
            '{{%task_image}}'
        );

        // drops index for column `file_id`
        $this->dropIndex(
            '{{%idx-task_image-file_id}}',
            '{{%task_image}}'
        );

        $this->dropTable('{{%task_image}}');
    }
}
