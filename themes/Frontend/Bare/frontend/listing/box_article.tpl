{block name="frontend_listing_box_article_includes"}

	{$templateName = ''}

	{if $productBoxLayout == 'minimal'}
		{$templateName = 'frontend/listing/product-box/box-minimal.tpl'}
	{elseif $productBoxLayout == 'image'}
		{$templateName = 'frontend/listing/product-box/box-big-image.tpl'}
	{elseif $productBoxLayout == 'slider'}
		{$templateName = 'frontend/listing/product-box/box-product-slider.tpl'}
	{elseif $productBoxLayout == 'emotion'}
		{$templateName = 'frontend/listing/product-box/box-emotion.tpl'}
	{elseif $productBoxLayout == 'list'}
		{$templateName = 'frontend/listing/product-box/box-list.tpl'}
	{/if}

	{if $templateName == ''}
		{block name="frontend_listing_box_article_includes_additional"}
			{include file="frontend/listing/product-box/box-basic.tpl" productBoxLayout="basic"}
		{/block}
	{else}
		{include file=$templateName}
	{/if}
{/block}