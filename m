Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 451F4549EE0
	for <lists+linux-man@lfdr.de>; Mon, 13 Jun 2022 22:19:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351044AbiFMUTi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jun 2022 16:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351097AbiFMUSw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jun 2022 16:18:52 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8E1BC8BC6
        for <linux-man@vger.kernel.org>; Mon, 13 Jun 2022 11:57:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 94E99B80EC6
        for <linux-man@vger.kernel.org>; Mon, 13 Jun 2022 18:57:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05A33C34114;
        Mon, 13 Jun 2022 18:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
        s=korg; t=1655146653;
        bh=RtZIBWe+05gHsYyngX/4j7BVWoIboX+tQ3jXoAWIZrE=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=IOK463q+lGp4saZIQb0kwtsiwK+7afH/PAaPe7nrq0o+/Fsq1sTxZS3kdc4vQbr+h
         TzA/P0FnfjZzZwOgbSk4X2RLr+aCJXbFXNznZmXhpeYpF0MBnuP0t2UkoAvCpp0PoY
         uoaQPPvOd1TTdBnuiYqwVkoeofrFXRyrzJ8yiUMc=
Date:   Mon, 13 Jun 2022 11:57:32 -0700
From:   Andrew Morton <akpm@linux-foundation.org>
To:     Mike kravetz <mike.kravetz@oracle.com>
Cc:     Matthew Wilcox <willy@infradead.org>, linux-man@vger.kernel.org,
        linux-mm@kvack.org, David Hildenbrand <david@redhat.com>,
        Muchun Song <songmuchun@bytedance.com>,
        Naoya Horiguchi <naoya.horiguchi@linux.dev>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Dave Hansen <dave.hansen@intel.com>,
        Michal Hocko <mhocko@suse.com>
Subject: Re: [PATCH] hugetlbfs: zero partial pages during fallocate hole
 punch
Message-Id: <20220613115732.3bf59ca4b31512153e27c548@linux-foundation.org>
In-Reply-To: <YqeDriDTVtoPrY+t@monkey>
References: <20220613180858.15933-1-mike.kravetz@oracle.com>
        <YqeCPljxCJfMgA2Y@casper.infradead.org>
        <YqeDriDTVtoPrY+t@monkey>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 13 Jun 2022 11:36:30 -0700 Mike kravetz <mike.kravetz@oracle.com> wrote:

> On Mon, Jun 13, 2022 at 07:30:22PM +0100”, Matthew Wilcox wrote:
> > On Mon, Jun 13, 2022 at 11:08:58AM -0700, Mike Kravetz wrote:
> > > diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
> > > index eca1d0fabd7e..b0d0947a7e9b 100644
> > > --- a/fs/hugetlbfs/inode.c
> > > +++ b/fs/hugetlbfs/inode.c
> > > @@ -584,41 +584,79 @@ static void hugetlb_vmtruncate(struct inode *inode, loff_t offset)
> > >  	remove_inode_hugepages(inode, offset, LLONG_MAX);
> > >  }
> > >  
> > > +static void hugetlbfs_zero_partial_page(struct hstate *h,
> > > +					struct address_space *mapping,
> > > +					unsigned long start,
> > 
> > This should be loff_t.  Otherwise we can truncate on 32-bit machines.
> > 
> 
> Thanks!  I missed that.

I did this:

--- a/fs/hugetlbfs/inode.c~hugetlbfs-zero-partial-pages-during-fallocate-hole-punch-fix
+++ a/fs/hugetlbfs/inode.c
@@ -602,8 +602,7 @@ static void hugetlb_vmtruncate(struct in
 
 static void hugetlbfs_zero_partial_page(struct hstate *h,
 					struct address_space *mapping,
-					unsigned long start,
-					unsigned long end)
+					loff_t start, loff_t end)
 {
 	pgoff_t idx = start >> huge_page_shift(h);
 	struct page *page;
_

