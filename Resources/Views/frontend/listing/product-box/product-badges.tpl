{extends file="parent:frontend/listing/product-box/product-badges.tpl"}

{block name='frontend_listing_box_article_new'}
    <div class="product--badge badge--{if $sArticle.instock}recommend{else}discount{/if}">
        {if $sArticle.instock > 5}
            In stock
        {else}
            Out of stock
        {/if}
    </div>
{/block}