<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%testimonial}}`.
 * Has foreign keys to the tables:
 *
 * - `{{%task}}`
 * - `{{%file}}`
 */
class m240821_110930_create_testimonial_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%testimonial}}', [
            'id' => $this->primaryKey(),
            'task_id' => $this->integer()->notNull(),
            'customer_image_id' => $this->integer()->notNull(),
            'title' => $this->string()->notNull(),
            'customer_name' => $this->string()->notNull(),
            'review' => $this->text()->notNull(),
            'rating' => $this->integer()->notNull(),
        ]);

        // creates index for column `task_id`
        $this->createIndex(
            '{{%idx-testimonial-task_id}}',
            '{{%testimonial}}',
            'task_id'
        );

        // add foreign key for table `{{%task}}`
        $this->addForeignKey(
            '{{%fk-testimonial-task_id}}',
            '{{%testimonial}}',
            'task_id',
            '{{%task}}',
            'id',
            'CASCADE'
        );

        // creates index for column `customer_image_id`
        $this->createIndex(
            '{{%idx-testimonial-customer_image_id}}',
            '{{%testimonial}}',
            'customer_image_id'
        );

        // add foreign key for table `{{%file}}`
        $this->addForeignKey(
            '{{%fk-testimonial-customer_image_id}}',
            '{{%testimonial}}',
            'customer_image_id',
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
            '{{%fk-testimonial-task_id}}',
            '{{%testimonial}}'
        );

        // drops index for column `task_id`
        $this->dropIndex(
            '{{%idx-testimonial-task_id}}',
            '{{%testimonial}}'
        );

        // drops foreign key for table `{{%file}}`
        $this->dropForeignKey(
            '{{%fk-testimonial-customer_image_id}}',
            '{{%testimonial}}'
        );

        // drops index for column `customer_image_id`
        $this->dropIndex(
            '{{%idx-testimonial-customer_image_id}}',
            '{{%testimonial}}'
        );

        $this->dropTable('{{%testimonial}}');
    }
}
