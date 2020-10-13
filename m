Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F8EA28D15C
	for <lists+linux-man@lfdr.de>; Tue, 13 Oct 2020 17:37:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730639AbgJMPhD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Oct 2020 11:37:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730637AbgJMPhD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Oct 2020 11:37:03 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C23EC0613D0
        for <linux-man@vger.kernel.org>; Tue, 13 Oct 2020 08:37:02 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l15so222626wmh.1
        for <linux-man@vger.kernel.org>; Tue, 13 Oct 2020 08:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sBNfcNFcP0XHWEnvglALYLEQmuD48oWjAiLLz0hxC3Q=;
        b=rfkatwkH2plC1xeVr1iZPDc4IIwpnyW0QAfBlFiHrWB68fQIxaMwfpx6IDd7NKrD0D
         fYvkkwXEuZU+cBL6zOwNAHx175I48mAwJcS93GqKjiVtlXK+JXEYz0DW1MQDdjQqT1bc
         6JTNwsnJEg9dY3+P9puL4c9he888PGMWvv597UStLY1l3CXSyNxSuLUnVkPscQU3/HFh
         TWpo5HKhvV8OexN4BNMK9OZ5/WK0iiGCjFwrIpd/r44WnIK4haPVGC5btIF0bxLzbFxi
         flTzXp2xgef8qG695rt+xgwgG//r4Uab7MCJqcIxbTOrP7f1dfYoKzHPWUrabHvABRgf
         btng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sBNfcNFcP0XHWEnvglALYLEQmuD48oWjAiLLz0hxC3Q=;
        b=UpB3STy6kMx3w0ys4WA9VEnaTo+IDnqwsG7lqWehP646VCdxJWCLGE5qxxYiFPrGdH
         aYHY6esVc5JPl9K+wCtMCZxaq7VQ+IV5c9u+OHJ6tqlUGkpsGZnBHTp9VJ+YiSlMihYC
         aBiqxO/O34Ke8Owray9N5IHhQ9JyRnSyEFlIfHP2y67T0f5b9AJbozsbxP3zvFIrzvOE
         ZLN30n0LE/o2npyCfukCp7g1HjESBvWKtAdaH9qNmp0MgBztG5zVJ9f7Sn1OLuOJjotf
         JAH5dQENKnisDUtsTwb2f4MlqRej5b4dySkgojsSAcL45aofD1xEr70YqoNfL54iMmN7
         A2MA==
X-Gm-Message-State: AOAM533b1zo7kasagqv13ZJ3cE7Vjz+o4m+tTAe8kqdOjYgPa7N2GLYw
        6C14moGhoj9NCuGeGoo9FEw=
X-Google-Smtp-Source: ABdhPJw/H3Ricbr5bJMry4ykxELaBtnVWn8cFDk+d1N090C942Hgiai8Go80Mq/ypQBjPLkhfm4ZSw==
X-Received: by 2002:a1c:4d01:: with SMTP id o1mr449383wmh.39.1602603421047;
        Tue, 13 Oct 2020 08:37:01 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id c68sm108816wmd.34.2020.10.13.08.36.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 08:36:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] queue.3: circleq: Complete example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201013145548.14387-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <78286397-45ac-80c6-2b41-bfac240a50d9@gmail.com>
Date:   Tue, 13 Oct 2020 17:36:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201013145548.14387-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/13/20 4:55 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hola Michael,
> 
> I'm a little busy this week as last week,
> so I'll send less/simpler patches than in the previous weeks :-)
> 
> Un abrazo,

Thanks! Patch applied.

Cheers,

Michael

>  man3/queue.3 | 105 +++++++++++++++++++++++++++------------------------
>  1 file changed, 56 insertions(+), 49 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index 95bc7d5bc..fed8d126f 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -1318,55 +1318,6 @@ The macro
>  removes the element
>  .Fa elm
>  from the circular queue.
> -.Ss Circular queue example
> -.Bd -literal
> -CIRCLEQ_HEAD(circleq, entry) head =
> -    CIRCLEQ_HEAD_INITIALIZER(head);
> -struct circleq *headp;			/* Circular queue head. */
> -struct entry {
> -	...
> -	CIRCLEQ_ENTRY(entry) entries;	/* Circular queue. */
> -	...
> -} *n1, *n2, *n3, *np;
> -
> -CIRCLEQ_INIT(&head);			/* Initialize the queue. */
> -
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> -CIRCLEQ_INSERT_HEAD(&head, n1, entries);
> -
> -n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
> -CIRCLEQ_INSERT_TAIL(&head, n1, entries);
> -
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> -CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
> -
> -n3 = malloc(sizeof(struct entry));	/* Insert before. */
> -CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
> -
> -CIRCLEQ_REMOVE(&head, n2, entries);	/* Deletion. */
> -free(n2);
> -					/* Forward traversal. */
> -CIRCLEQ_FOREACH(np, &head, entries)
> -	np\-> ...
> -					/* Reverse traversal. */
> -CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
> -	np\-> ...
> -					/* CircleQ Deletion. */
> -while (!CIRCLEQ_EMPTY(&head)) {
> -	n1 = CIRCLEQ_FIRST(&head);
> -	CIRCLEQ_REMOVE(&head, n1, entries);
> -	free(n1);
> -}
> -					/* Faster CircleQ Deletion. */
> -n1 = CIRCLEQ_FIRST(&head);
> -while (n1 != (void *)&head) {
> -	n2 = CIRCLEQ_NEXT(n1, entries);
> -	free(n1);
> -	n1 = n2;
> -}
> -
> -CIRCLEQ_INIT(&head);
> -.Ed
>  .Sh EXAMPLES
>  .Ss Singly-linked list example
>  .Bd -literal
> @@ -1481,6 +1432,62 @@ main(void)
>      exit(EXIT_SUCCESS);
>  }
>  .Ed
> +.Ss Circular queue example
> +.Bd -literal
> +#include <stddef.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/queue.h>
> +
> +struct entry {
> +    int data;
> +    CIRCLEQ_ENTRY(entry) entries;           /* Queue. */
> +};
> +
> +CIRCLEQ_HEAD(circlehead, entry);
> +
> +int
> +main(void)
> +{
> +    struct entry    *n1, *n2, *n3, *np;
> +    struct circlehead head;                 /* Queue head. */
> +    int     i;
> +
> +    CIRCLEQ_INIT(&head);                    /* Initialize the queue. */
> +
> +    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
> +    CIRCLEQ_INSERT_HEAD(&head, n1, entries);
> +
> +    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
> +    CIRCLEQ_INSERT_TAIL(&head, n1, entries);
> +
> +    n2 = malloc(sizeof(struct entry));      /* Insert after. */
> +    CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
> +
> +    n3 = malloc(sizeof(struct entry));      /* Insert before. */
> +    CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
> +
> +    CIRCLEQ_REMOVE(&head, n2, entries);     /* Deletion. */
> +    free(n2);
> +                                            /* Forward traversal. */
> +    i = 0;
> +    CIRCLEQ_FOREACH(np, &head, entries)
> +        np->data = i++;
> +                                            /* Reverse traversal. */
> +    CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
> +        printf("%i\en", np->data);
> +                                            /* Queue deletion. */
> +    n1 = CIRCLEQ_FIRST(&head);
> +    while (n1 != (void *)&head) {
> +        n2 = CIRCLEQ_NEXT(n1, entries);
> +        free(n1);
> +        n1 = n2;
> +    }
> +    CIRCLEQ_INIT(&head);
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.Ed
>  .Sh CONFORMING TO
>  Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
>  Present on the BSDs.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
