Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4646D549E3C
	for <lists+linux-man@lfdr.de>; Mon, 13 Jun 2022 21:59:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347746AbiFMT7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jun 2022 15:59:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242025AbiFMT7j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jun 2022 15:59:39 -0400
Received: from casper.infradead.org (casper.infradead.org [IPv6:2001:8b0:10b:1236::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F107EA98BF
        for <linux-man@vger.kernel.org>; Mon, 13 Jun 2022 11:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=bL3US9PMAaILRk1isUycCjQ1+xOW1BhBiqmFRKRzJTk=; b=JV/59Mkt+B84K2gNKvaE9h9YwE
        waM22vtujbvcADQoM/J+jtmTp/mDBLFD3BKUUpOrEyFUjODTUBw40+HczJspjAy2y61fSmnfZGgr0
        52F9r9cLwFDUDlXVI/kpHXFVVqSVT6KXKRrf3Om/2gIW+aExuewuG0X6Abvobn2/wALA0UnwrNUVW
        M83hvAT8vvt3GdruP7sU/Sx4jqHsGnHuA7yNgD8mXJ+sRVn40uk0x2LjzZLNHQ2VCCGw2wmmWBO0O
        gIjSwsD3+ax2TtI8nAyP63BykerwHuyIzWhF5MzfufIECrmpivy1RcoG5cGfLYihwQ13pvjajefip
        vRelHLrQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
        id 1o0opS-00H4VK-Qq; Mon, 13 Jun 2022 18:30:22 +0000
Date:   Mon, 13 Jun 2022 19:30:22 +0100
From:   Matthew Wilcox <willy@infradead.org>
To:     Mike Kravetz <mike.kravetz@oracle.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        David Hildenbrand <david@redhat.com>,
        Muchun Song <songmuchun@bytedance.com>,
        Naoya Horiguchi <naoya.horiguchi@linux.dev>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Dave Hansen <dave.hansen@intel.com>,
        Michal Hocko <mhocko@suse.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] hugetlbfs: zero partial pages during fallocate hole punch
Message-ID: <YqeCPljxCJfMgA2Y@casper.infradead.org>
References: <20220613180858.15933-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220613180858.15933-1-mike.kravetz@oracle.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jun 13, 2022 at 11:08:58AM -0700, Mike Kravetz wrote:
> diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
> index eca1d0fabd7e..b0d0947a7e9b 100644
> --- a/fs/hugetlbfs/inode.c
> +++ b/fs/hugetlbfs/inode.c
> @@ -584,41 +584,79 @@ static void hugetlb_vmtruncate(struct inode *inode, loff_t offset)
>  	remove_inode_hugepages(inode, offset, LLONG_MAX);
>  }
>  
> +static void hugetlbfs_zero_partial_page(struct hstate *h,
> +					struct address_space *mapping,
> +					unsigned long start,

This should be loff_t.  Otherwise we can truncate on 32-bit machines.

> +					unsigned long end)
> +{
> +	pgoff_t idx = start >> huge_page_shift(h);
> +	struct page *page;
> +
> +	page = find_lock_page(mapping, idx);
> +	if (!page)
> +		return;
> +
> +	start = start & ~huge_page_mask(h);
> +	end = end & ~huge_page_mask(h);
> +	if (!end)
> +		end = huge_page_size(h);
> +
> +	zero_user_segment(page, (unsigned int)start, (unsigned int)end);
> +
> +	unlock_page(page);
> +	put_page(page);

We haven't started converting hugetlbfs to folios yet, but here's how
that would look (which will save us converting it later):

	folio = filemap_lock_folio(mapping, idx);
	if (!folio)
		return;
...
	folio_zero_segment(folio, start, end);
	folio_unlock(folio);
	folio_put(folio);

Pretty much a 1-for-1 replacement.

