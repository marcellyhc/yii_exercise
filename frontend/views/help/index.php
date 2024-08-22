<?php
use yii\helpers\Html;

$this->title = 'Help Center';
$this->params['breadcrumbs'][] = $this->title;

?>

<div class="help-index">

    <h1><?= Html::encode($this->title); ?></h1>

    <p>
        Escrita.
    </p>

    <div>
        <?= Html::a('Account Settings', ['help/account-settings']) ?>
    </div>

    <div>
        <?= Html::a('Login and Security', ['help/login-and-security']) ?>
    </div>

    <div>
        <?= Html::a('Privacy', ['help/privacy']) ?>
    </div>

</div>
