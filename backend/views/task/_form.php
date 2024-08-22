<?php

use kartik\editors\Summernote;
use kartik\select2\Select2;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var common\models\Task $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="task-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->widget(Summernote::class, [
    'useKrajeePresets' => true,
        ]); ?>


    <?= $form->field($model, 'due_date')->widget(\yii\jui\DatePicker::class, [
        'options' => ['readOnly' => true],
    ]) ?>


    <?= $form->field($model, 'status')->widget(Select2::class, [
        'data' => [
            'concluido' => 'Concluído',
            'pendente' => 'Pendente',
            'progresso' => 'Em Progresso'
        ],
        'options' => ['placeholder' => 'Selecione o status...'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]); ?>




    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
