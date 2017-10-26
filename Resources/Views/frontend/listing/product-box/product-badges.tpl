{extends file="parent:frontend/listing/product-box/product-badges.tpl"}

{block name='frontend_listing_box_article_new'}
    {$smarty.block.parent}
    {block name='frontend_listing_box_article_stock'}
        <div class="product--badge badge--{if $sArticle.instock}recommend{else}discount{/if}">
            {if $sArticle.instock > 5}
                In stock
            {else}
                Out of stock
            {/if}
        </div>
    {/block}
{/block}