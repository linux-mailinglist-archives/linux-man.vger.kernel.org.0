Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27ED75467D5
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 15:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349518AbiFJN4s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 09:56:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349526AbiFJN42 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 09:56:28 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0008110655D
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 06:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654869330;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=KhmwYCGS5+alLgBQSHpprYPniF2p22jufikZUe24i6Y=;
        b=VOuqo8qfDNWyBGgVSOSh1gLRk4iKsxHvvQVwK6H39pt7oZqICywXHpyaYovpfLQ4nombIJ
        ZVbNLqaCvDPEdczaljH0sfjLBS6LorNZfmY/6mEIog4pQ2Wejq7Ib8y7eAmqDTCSC+k5C7
        b17C2qknFh7m51LfLJf+vCnifUEm2J0=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-118-NJTzEqlaNyGlklTkVQbeuw-1; Fri, 10 Jun 2022 09:55:28 -0400
X-MC-Unique: NJTzEqlaNyGlklTkVQbeuw-1
Received: by mail-io1-f72.google.com with SMTP id p3-20020a6b8d03000000b00669c6d6c089so175324iod.1
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 06:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KhmwYCGS5+alLgBQSHpprYPniF2p22jufikZUe24i6Y=;
        b=c5wu8vkh4TQXzG0XdVYJrO5leEAOi2quRz3UE4Tp8pVG+A6jZrqdv6MVh+o06Q41AV
         uaVFbKG7NSqePr2+zE7iUnHLEis0liSctd7Bwv8pEDWUTkqat1OgwgknuxSJ1Dt64MJ5
         oX9ZnRSeAOCC/9L9xel/dogKT4GDG01p5+K0kMa8f65QPfvDZgS6cLbWkNDzNVVVj0oK
         vY21Oqkei0v8qN2MYR6rWxsJHsBv2A2PxvTCbxqNUP7BLiN2Xz/13LnFThveM908NtGc
         xY/deHq0Dxk7btqP7R/UKH1iBhj2JbOQDTfdWUKFC+npENHLDYNNoPtZjpSXgbZSQDA9
         KpMA==
X-Gm-Message-State: AOAM530c6VejWUDGqAx0yhegBYACqWQYRTE19q3lc1O1vF04KijJWOti
        J7pb0aVY92dWy8ev1JJpn3MVMxBsixqMCQV2PN18ZJdTYIKnRaSIpNDSAx3k/E7whja/FzRtGo1
        w+1k6++cVZd2hT7G7LIhV
X-Received: by 2002:a05:6e02:17ca:b0:2d3:e6bf:7724 with SMTP id z10-20020a056e0217ca00b002d3e6bf7724mr25319994ilu.312.1654869328040;
        Fri, 10 Jun 2022 06:55:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzP2hBOvcFTF8rmgs8I2H/0XiExAEEvHlAGdmF1d10PJxGmbptOPj+BqsPNQGtuBvxJ8qXOzg==
X-Received: by 2002:a05:6e02:17ca:b0:2d3:e6bf:7724 with SMTP id z10-20020a056e0217ca00b002d3e6bf7724mr25319986ilu.312.1654869327772;
        Fri, 10 Jun 2022 06:55:27 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id j5-20020a02cb05000000b00331743a983asm9506566jap.179.2022.06.10.06.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 06:55:27 -0700 (PDT)
Date:   Fri, 10 Jun 2022 09:55:25 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Message-ID: <YqNNTQvSqYUBfC9m@xz-m1.local>
References: <20220610105141.16649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220610105141.16649-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jun 10, 2022 at 12:51:41PM +0200, Alejandro Colomar wrote:
> Reported-by: Peter Xu <peterx@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/man-pages.7 | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 547ed660a..4da2dfe5c 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -578,6 +578,11 @@ project.
>  For details not covered below, the Chicago Manual of Style
>  is usually a good source;
>  try also grepping for preexisting usage in the project source tree.
> +.PP
> +.UR https://www.ualberta.ca/\:computing-science/\:media-library/\:docs/\:unix-beginners.pdf
> +UNIX for Beginners [2nd ed., Brian W. Kernighan]
> +.UE
> +also contains an interesting section on "Hints for Preparing Documents".
>  .SS Use of gender-neutral language
>  As far as possible, use gender-neutral language in the text of man
>  pages.
> -- 

Thanks for adding this!

There's a little bit of a pity though on that the PDF version will IMHO
loose one very important aspect of being an live example of how to do
semantics newlines itself.  Personally after I read the format I don't even
need to read the groff man page because the example is the best to describe
that this rule means.

I meant the possibility to quote the thing behind generated PDF just as you
did in the commit message:

---8<---
Brian W. Kernighan, 1974 [UNIX For Beginners]:

[
Hints for Preparing Documents

Most documents go through several versions
(always more than you expected)
before they are finally finished.
Accordingly,
you should do whatever possible
to make the job of changing them easy.

First,
when you do the purely mechanical operations of typing,
type so subsequent editing will be easy.
Start each sentence on a new line.
Make lines short,
and break lines at natural places,
such as after commas and semicolons,
rather than randomly.
Since most people change documents
by rewriting phrases and
adding, deleting and rearranging sentences,
these precautions simplify any editing you have to do later.
]
---8<---

So I was wondering whether this section (along with its newline formats,
which is IMHO even more helpful) can be quoted altogether, because both the
content and format could help the reader in this case.

Thanks,

-- 
Peter Xu

