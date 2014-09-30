<div class="cart--item{if $basketItem.modus == 1} is--premium-article{elseif $basketItem.modus == 10} is--bundle-article{/if}">
    {* Article image *}
	{block name='frontend_checkout_ajax_cart_articleimage'}
		<div class="thumbnail--container{if $basketItem.image.src.0} has--image{/if}">
			{if $basketItem.image.src.0}
				<img class="thumbnail--image" src="{$basketItem.image.src.0}" alt="{$basketItem.articlename|escape:"html"}" />
			{/if}
		</div>
	{/block}

    {* Article actions *}
    {block name='frontend_checkout_ajax_cart_actions'}
        <div class="action--container">
            {if $basketItem.modus != 4}
                <a href="{url controller="checkout" action='ajaxDeleteArticleCart' sDelete=$basketItem.id}" class="btn is--small action--remove" title="{s name="AjaxCartRemoveArticle" namespace="frontend/checkout/ajax_cart"}Remove article{/s}">
                    <i class="icon--cross"></i>
                </a>
            {/if}
        </div>
    {/block}

    {* Article name *}
    {block name='frontend_checkout_ajax_cart_articlename'}
        <a class="item--link" href="{if $basketItem.modus != 4}{$basketItem.linkDetails}{else}#{/if}" title="{$basketItem.articlename|escape:"html"}">
            <span class="item--quantity">{$basketItem.quantity}x</span>
            <span class="item--name">
                {if $basketItem.modus == 10}
                    {s name='AjaxCartInfoBundle' namespace="frontend/checkout/ajax_cart"}{/s}
                {else}
                    {if $theme.offcanvasCart}
                        {$basketItem.articlename}
                    {else}
                        {$basketItem.articlename|truncate:28:"...":true}
                    {/if}
                {/if}
            </span>
            <span class="item--price">{if $basketItem.amount}{$basketItem.amount|currency}{else}{s name="AjaxCartInfoFree" namespace="frontend/checkout/ajax_cart"}{/s}{/if}*</span>
        </a>
    {/block}
</div>