<?php

namespace frontend\controllers;

class SystemController extends \yii\web\Controller
{
    public function actionHowToUseGii()
    {
        return $this->render('how-to-use-gii');
    }

    public function actionIAmStartingASystem()
    {
        return $this->render('i-am-starting-a-system');
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

}
