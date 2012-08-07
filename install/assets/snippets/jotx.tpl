/**
 * JotX
 * 
 * User comments with moderation and email subscription
 *
 * @category 	snippet
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal	@properties
 * @internal	@modx_category Content
 * @internal    @installset base, sample
 * @author      Armand "bS" Pondman (apondman@zerobarrier.nl)
 * @author      Temus (temus3@gmail.com)
 */


if(!defined('MODX_BASE_PATH')) die();
$jotPath = MODX_BASE_PATH . 'assets/snippets/jot/';
$config = (isset($config)) ? $jotPath.'configs/'.$config.'.config.php' : $jotPath.'configs/default.config.php';
if (is_file($config)) include $config;
include_once($jotPath.'jot.class.inc.php');
if (!isset($action)) $action='default';

$Jot = new CJot;
$Jot->Set("path",$jotPath);
$Jot->Set("action", $action);
$Jot->Set("postdelay", $postdelay);
$Jot->Set("docid", $docid);
$Jot->Set("tagid", $tagid);
$Jot->Set("docids", $docids);
$Jot->Set("tagids", $tagids);
$Jot->Set("subscribe", $subscribe);
$Jot->Set("subscriber", $subscriber);
$Jot->Set("moderated", $moderated);
$Jot->Set("captcha", $captcha);
$Jot->Set("badwords", $badwords);
$Jot->Set("bw", $bw);
$Jot->Set("sortby", $sortby);
$Jot->Set("numdir", $numdir);
$Jot->Set("customfields", $customfields);
$Jot->Set("guestname", $guestname);
$Jot->Set("canpost", $canpost);
$Jot->Set("canview", $canview);
$Jot->Set("canedit", $canedit);
$Jot->Set("canmoderate", $canmoderate);
$Jot->Set("trusted", $trusted);
$Jot->Set("pagination", $pagination);
$Jot->Set("placeholders", $placeholders);
$Jot->Set("subjectSubscribe", $subjectSubscribe);
$Jot->Set("subjectModerate", $subjectModerate);
$Jot->Set("subjectAuthor", $subjectAuthor);
$Jot->Set("subjectEmails", $subjectEmails);
$Jot->Set("notify", $notify);
$Jot->Set("notifyAuthor", $notifyAuthor);
$Jot->Set("notifyEmails", $notifyEmails);
$Jot->Set("validate", $validate);
$Jot->Set("title", $title);
$Jot->Set("authorid", $authorid);
$Jot->Set("css", $css);
$Jot->Set("cssFile", $cssFile);
$Jot->Set("cssRowAlt", $cssRowAlt);
$Jot->Set("cssRowMe", $cssRowMe);
$Jot->Set("cssRowAuthor", $cssRowAuthor);
$Jot->Set("js", $js);
$Jot->Set("jsFile", $jsFile);
$Jot->Set("tplForm", $tplForm);
$Jot->Set("tplComments", $tplComments);
$Jot->Set("tplModerate", $tplModerate);
$Jot->Set("tplNav", $tplNav);
$Jot->Set("tplNavPage", $tplNavPage);
$Jot->Set("tplNavPageCur", $tplNavPageCur);
$Jot->Set("tplNavPageSpl", $tplNavPageSpl);
$Jot->Set("tplNotify", $tplNotify);
$Jot->Set("tplNotifyModerator", $tplNotifyModerator);
$Jot->Set("tplNotifyAuthor", $tplNotifyAuthor);
$Jot->Set("tplNotifyEmails", $tplNotifyEmails);
$Jot->Set("tplSubscribe", $tplSubscribe);
$Jot->Set("debug", $debug);
$Jot->Set("output", $output);
$Jot->Set("upc", $upc);
$Jot->Set("limit", $limit);
$Jot->Set("depth", $depth);

//events
$Jot->Set("onBeforeConfiguration", $onBeforeConfiguration);
$Jot->Set("onBeforeRunActions", $onBeforeRunActions);
$Jot->Set("onRunActions", $onRunActions);
$Jot->Set("onConfiguration", $onConfiguration);
$Jot->Set("onBeforeFirstRun", $onBeforeFirstRun);
$Jot->Set("onFirstRun", $onFirstRun);
$Jot->Set("onSubscriptionCheck", $onSubscriptionCheck);
$Jot->Set("onDeleteComment", $onDeleteComment);
$Jot->Set("onGetCommentFields", $onGetCommentFields);
$Jot->Set("onBeforeSaveComment", $onBeforeSaveComment);
$Jot->Set("onSaveComment", $onSaveComment);
$Jot->Set("onGetSubscriptions", $onGetSubscriptions);
$Jot->Set("onBeforeGetSubscriptions", $onBeforeGetSubscriptions);
$Jot->Set("onBeforeGetUserInfo", $onBeforeGetUserInfo);
$Jot->Set("onBeforeNotify", $onBeforeNotify);
$Jot->Set("onBeforeSubscribe", $onBeforeSubscribe);
$Jot->Set("onBeforeUnsubscribe", $onBeforeUnsubscribe);
$Jot->Set("onBeforeValidateFormField", $onBeforeValidateFormField);
$Jot->Set("onValidateFormFieldFail", $onValidateFormFieldFail);
$Jot->Set("onBeforePOSTProcess", $onBeforePOSTProcess);
$Jot->Set("onProcessForm", $onProcessForm);
$Jot->Set("onBeforeProcessPassiveActions", $onBeforeProcessPassiveActions);
$Jot->Set("onProcessPassiveActions", $onProcessPassiveActions);
$Jot->Set("onBeforeGetUserPostCount", $onBeforeGetUserPostCount);
$Jot->Set("onBeforeGetCommentCount", $onBeforeGetCommentCount);
$Jot->Set("onBeforeGetComments", $onBeforeGetComments);
$Jot->Set("onGetComments", $onGetComments);
$Jot->Set("onReturnOutput", $onReturnOutput);
$Jot->Set("onSetDefaultOutput", $onSetDefaultOutput);
$Jot->Set("onSetFormOutput", $onSetFormOutput);
$Jot->Set("onSetCommentsOutput", $onSetCommentsOutput);

return $Jot->Run();
