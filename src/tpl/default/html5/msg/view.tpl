{include file="tpl:comm.head" title="查看信息"}
收件箱：
<a href="msg.index.inbox.all.{$bid}">全部</a>
<a href="msg.index.inbox.no.{$bid}">未读</a>
<a href="msg.index.inbox.yes.{$bid}">已读</a>
<a href="msg.index.send.{$bid}">发信</a>
<hr />
查看信息：<hr />
发给:<a href="msg.index.send.{$msg.touid}.{$bid}">{$msg.toname}</a><br />
来自:<a href="msg.index.send.{$msg.byuid}.{$bid}">{$msg.byname}</a><br />
状态:{if $msg.isread==0}(未读){else}(已读){/if}<br />
内容:{$msg.content}<br />
发送时间:{date("Y-m-d H:i:s",$msg.ctime)}<br />
{if $msg.rtime}阅读时间:{date("Y-m-d H:i:s",$msg.rtime)}{/if}<hr />
{form action="msg.index.send.{$bid}" method="post"}
{input type="hidden" name="touid" value="{$msg.byuid}"}<br />
回复内容:{input type="textarea" name="content" }<br />
{input type="submit" value="确认回复"}
{/form}
<hr />
发件箱：
<a href="msg.index.outbox.all.{$bid}">全部</a>
<a href="msg.index.outbox.no.{$bid}">对方未读</a>
<a href="msg.index.outbox.yes.{$bid}">对方已读</a>
<a href="msg.index.@.{$bid}">@信息</a>
{include file="tpl:comm.foot"}