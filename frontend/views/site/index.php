<?php

/** @var yii\web\View $this */

use yii\helpers\Html;

$this->title = Yii::$app->name . ' - My tasks';
?>
<div class="site-index">
    <div class="p-5 mb-4 bg-transparent rounded-3">
        <div class="container-fluid py-5 text-center">

            <h1 class="site-index__h1"><?= Yii::t('app', 'Bem-vindo!') ?></h1>

            <p class="lead"><?= Yii::t('app', 'Gerencie suas tarefas com facilidade') ?></p>

            <p>
                <?= Html::a(Yii::t('app', 'Ir para as tarefas'), ['/task'], ['class' => 'btn btn-lg btn-success']) ?>
            </p>



        </div>
    </div>
</div>
