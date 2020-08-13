Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CED92434F3
	for <lists+linux-man@lfdr.de>; Thu, 13 Aug 2020 09:28:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726174AbgHMH2o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Aug 2020 03:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726167AbgHMH2n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Aug 2020 03:28:43 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96630C061757
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 00:28:43 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id g8so3832124wmk.3
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 00:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1cPA0yIrS2Uy6mE237XlB8WB8qPHCloec7hvNAf95H4=;
        b=VFq8DOYJajnvqs57qkhDhkWk5GtXO40c4wXeWLvpOG2rYan/gq+GP3tRluVc4FeBP/
         i3QXEws1Q+Hj1TKazV5AmkSmMj7H18/7AsISCROtfNbBQKo+PpCVE9jiODNLKZXBDEGs
         NY8KiGgUTjYWuSbr74+TZzMguX06EB8EeB5ijaGOrtN5lVUUoSGjq+RPgLxIXnmAfdVO
         P3DWm95ThdVSBmWzVCLeP1W88pjLdeEIIIuUfBz3bBBwwGHwZqs6S5KB8KnVnzap//G6
         6esWunIybFgeCLI7kUaWHsMu1RM6hSoAuWS+FJbilCqlMSJ85bvMV0DTEHjBG7Z48jT/
         LGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1cPA0yIrS2Uy6mE237XlB8WB8qPHCloec7hvNAf95H4=;
        b=XNGcl6Bcgck7UHDquTzkB5xj2f6GI8XE5r1IsOJk0u03+0mFgYu4SWY5k8Su2jDOQa
         a8oAF2i7surkPr0ZAA+F//j0qUak6s2HG49bxWXeIlY2Tgf9rp/c1jLpOMdyVdo1YiKc
         ZemFrViQVf1F5oasPZTAvIJ1Ej/1qVZxYQVgNn0145R7DkPInjTbMM4xUA5UTAHZcI/y
         2qfBZEnh6JK15+Cwr3Zesfr3dQeLRzYpjJ/CNGA7cXWsMtqbmDbHm5F2Yr7w+ZH6ZPu8
         4ohXR9xHu57sISJDW8fOIv+s22zE5oFGGKNS/2PjnkjzDmlFY4PHEKlfO0Tchs5Gz2XI
         0m6A==
X-Gm-Message-State: AOAM530+iERJFUytugA7zaPDoYhmng6B53AB8vg4/Ldu4Bu9rhztvynN
        guIxOKNJ0Ge5WOsn6m5N0r0=
X-Google-Smtp-Source: ABdhPJysa6bkiqPRELL99D06BByHOQhF5u9Wp1CjKjBPouEjEAOeb1tx4wsKwTwVFxnm+tnZRymw+w==
X-Received: by 2002:a1c:4c17:: with SMTP id z23mr3218434wmf.49.1597303722324;
        Thu, 13 Aug 2020 00:28:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.gmail.com with ESMTPSA id o124sm8117523wmb.2.2020.08.13.00.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 00:28:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [patch] queue.3: Remove wrong code from example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
References: <82f99243-d624-1122-2b20-a4f1e6eb68cc@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <458342db-1e21-5504-da0e-d431fbe11649@gmail.com>
Date:   Thu, 13 Aug 2020 09:28:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <82f99243-d624-1122-2b20-a4f1e6eb68cc@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Lejandro,

On 8/12/20 9:43 AM, Alejandro Colomar wrote:
> There was code containing ``CIRCLEQ_*`` in the examples for ``TAILQ_*``. 
>   It was introduced by accident in commit ``041abbe``.
> 
>  From 0c9dfbe9b1ce1130e9a92d1a16fbecd4a08bbe29 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Wed, 12 Aug 2020 09:11:27 +0200
> Subject: [PATCH] queue.3: Remove wrong code from example
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>   man3/queue.3 | 12 ------------
>   1 file changed, 12 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index ff1f42f3a..260a5b8a5 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -1219,18 +1219,6 @@ while (n1 != NULL) {
>   }
> 
>   TAILQ_INIT(&head);
> -n2 = malloc(sizeof(struct entry));  /* Insert before. */
> -CIRCLEQ_INSERT_BEFORE(&head, n1, n2, entries);
> -                                    /* Forward traversal. */
> -for (np = head.cqh_first; np != (void *)&head;
> -        np = np\->entries.cqe_next)
> -    np\-> ...
> -                                    /* Reverse traversal. */
> -for (np = head.cqh_last; np != (void *)&head; np = np\->entries.cqe_prev)
> -    np\-> ...
> -                                    /* Delete. */
> -while (head.cqh_first != (void *)&head)
> -    CIRCLEQ_REMOVE(&head, head.cqh_first, entries);
>   .Ed
>   .Sh CONFORMING TO
>   Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
