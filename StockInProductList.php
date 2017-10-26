<?php
/**
 * Created by PhpStorm.
 * User: swieland
 * Date: 26.10.17
 * Time: 16:15
 */

namespace StockInProductList;


use Enlight_Controller_ActionEventArgs as ActionEventArgs;
use Shopware\Components\Plugin;

class StockInProductList extends Plugin
{
    public static function getSubscribedEvents()
    {
        return [
            ActionEventArgs::POST_SECURE_EVENT . '_Frontend_Listing' => 'addTemplateDirectory',
        ];
    }

    public function addTemplateDirectory(ActionEventArgs $args)
    {
        $view = $args->getSubject()->View();
        $view->addTemplateDir($this->getPath(). '/Resources/Views/');
    }
}