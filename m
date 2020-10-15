Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44FC928F8E2
	for <lists+linux-man@lfdr.de>; Thu, 15 Oct 2020 20:50:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389951AbgJOSuV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Oct 2020 14:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726877AbgJOSuV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Oct 2020 14:50:21 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073EDC061755
        for <linux-man@vger.kernel.org>; Thu, 15 Oct 2020 11:50:21 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id z22so85318wmi.0
        for <linux-man@vger.kernel.org>; Thu, 15 Oct 2020 11:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1HV0Y2mxO9UrXA8TAZdANpysCWD+avfg5PAwJw2MpOs=;
        b=GB04occSjCNiW3WtdGw1LRRuusOPYl1F4s1oZYwA+hwYsjGZQEjPm1R+3zVu5SS+iS
         sHNoOY6Fka8nrwQB139/eJT5qTEZIJX5FmWICfIMWx0meaGKbb0j0sIkh1MqQSbaiyu7
         mmUc1P+79yUy0rHv+L1lZMSQ+k3JOnugJvmVfBvzzcgXr969vmEnUxc/gXD4zhHh1DrM
         m4xzx2+qX92YIK4xuvyWBGWdI//USEI62Z9VOY7yJ7TSbHkVagoZq79p0Br47N/WIHkq
         /9cpQf2TeGcF/rMLWrvmwzR2zt/EpF/juPtuUN7FeV7CXsr9AQJsqLGWEprN7obThID/
         V1HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1HV0Y2mxO9UrXA8TAZdANpysCWD+avfg5PAwJw2MpOs=;
        b=V2e9Jn4W0//WYTcnkXiKDCID81B3a+/PtU5frCV/3eFzO/k2dkKeZfpYEjHqOzH/nS
         gDZkjKTUF02VPzc9baCC6p8RA6eQXm6VRpM1xIP6vdaHGBWa7tBozFwnV6K6J4TsjM4p
         xjYkQHWX3X+luWIYNQWExLCf/EalYSn3/LyyKuIRv69YrVzOfiCEqVazPgEHQrKCPrid
         VpiYqQbpGO/B1IyzHf7v7noUdULUhJ7dV6AtUFCCYvK9PdbJVGU0q650yZ/QN4kOWWlv
         p0v4yw6J7veDKNqFr7JWF+ZT9x7NbonIz6j2PCeQQNEQAVkg4KkIBiZB68e+CyHLo482
         A23w==
X-Gm-Message-State: AOAM532rzVgHTxQ3C7e5vw3P+QKvnQlF/eKU/1V7xujBUgRX6J7EjIss
        oeyFWZ2HJNDDTbHIwsu1tHs=
X-Google-Smtp-Source: ABdhPJz9UtG9/CzuogaJu+PE4fjl0O3z8vX883YpS7Q0zt1Ma8GhPsJA2V7XL/t8iry+L3feQZ52WQ==
X-Received: by 2002:a1c:3283:: with SMTP id y125mr49080wmy.61.1602787819715;
        Thu, 15 Oct 2020 11:50:19 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id c1sm236513wru.49.2020.10.15.11.50.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 11:50:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] queue.3: list: Complete example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201015112901.2121-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b8dd3967-8268-81ac-9cb2-8a47e7bf1d05@gmail.com>
Date:   Thu, 15 Oct 2020 20:50:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201015112901.2121-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/15/20 1:29 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/queue.3 | 105 +++++++++++++++++++++++++++------------------------
>  1 file changed, 55 insertions(+), 50 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index fed8d126f..9cd6ff378 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -921,56 +921,8 @@ from the list.
>  .\" .Fa head1
>  .\" and
>  .\" .Fa head2 .
> -.Ss List example
> -.Bd -literal
> -LIST_HEAD(listhead, entry) head =
> -    LIST_HEAD_INITIALIZER(head);
> -struct listhead *headp;			/* List head. */
> -struct entry {
> -	...
> -	LIST_ENTRY(entry) entries;	/* List. */
> -	...
> -} *n1, *n2, *n3, *np, *np_temp;
> -
> -LIST_INIT(&head);			/* Initialize the list. */
> -
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> -LIST_INSERT_HEAD(&head, n1, entries);
> -
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> -LIST_INSERT_AFTER(n1, n2, entries);
> -
> -n3 = malloc(sizeof(struct entry));	/* Insert before. */
> -LIST_INSERT_BEFORE(n2, n3, entries);
> -
> -LIST_REMOVE(n2, entries);		/* Deletion. */
> -free(n2);
> -					/* Forward traversal. */
> -LIST_FOREACH(np, &head, entries)
> -	np\-> ...
> -
> -.\" 					/* Safe forward traversal. */
> -.\" LIST_FOREACH_SAFE(np, &head, entries, np_temp) {
> -.\" 	np\->do_stuff();
> -.\" 	...
> -.\" 	LIST_REMOVE(np, entries);
> -.\" 	free(np);
> -.\" }
> -.\"
> -while (!LIST_EMPTY(&head)) {		/* List Deletion. */
> -	n1 = LIST_FIRST(&head);
> -	LIST_REMOVE(n1, entries);
> -	free(n1);
> -}
> -
> -n1 = LIST_FIRST(&head);			/* Faster List Deletion. */
> -while (n1 != NULL) {
> -	n2 = LIST_NEXT(n1, entries);
> -	free(n1);
> -	n1 = n2;
> -}
> -LIST_INIT(&head);
> -.Ed
> +.Pp
> +See the EXAMPLES section below for an example program using a linked list.
>  .Ss Tail queues
>  A tail queue is headed by a structure defined by the
>  .Nm TAILQ_HEAD
> @@ -1376,6 +1328,59 @@ main(void)
>      exit(EXIT_SUCCESS);
>  }
>  .Ed
> +.Ss List example
> +.Bd -literal
> +#include <stddef.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/queue.h>
> +
> +struct entry {
> +    int data;
> +    LIST_ENTRY(entry) entries;              /* List. */
> +};
> +
> +LIST_HEAD(listhead, entry);
> +
> +int
> +main(void)
> +{
> +    struct entry    *n1, *n2, *n3, *np;
> +    struct listhead head;                   /* List head. */
> +    int     i;
> +
> +    LIST_INIT(&head);                       /* Initialize the list. */
> +
> +    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
> +    LIST_INSERT_HEAD(&head, n1, entries);
> +
> +    n2 = malloc(sizeof(struct entry));      /* Insert after. */
> +    LIST_INSERT_AFTER(n1, n2, entries);
> +
> +    n3 = malloc(sizeof(struct entry));      /* Insert before. */
> +    LIST_INSERT_BEFORE(n2, n3, entries);
> +
> +    i = 0;                                  /* Forward traversal. */
> +    LIST_FOREACH(np, &head, entries)
> +        np->data = i++;
> +
> +    LIST_REMOVE(n2, entries);               /* Deletion. */
> +    free(n2);
> +                                            /* Forward traversal. */
> +    LIST_FOREACH(np, &head, entries)
> +        printf("%i\en", np->data);
> +                                            /* List Deletion. */
> +    n1 = LIST_FIRST(&head);
> +    while (n1 != NULL) {
> +        n2 = LIST_NEXT(n1, entries);
> +        free(n1);
> +        n1 = n2;
> +    }
> +    LIST_INIT(&head);
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.Ed
>  .Ss Tail queue example
>  .Bd -literal
>  #include <stddef.h>
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
