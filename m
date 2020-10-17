Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B03E291168
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 12:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408924AbgJQK00 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 06:26:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2410665AbgJQK0Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 06:26:25 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9548CC061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 03:26:25 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id d3so7978101wma.4
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 03:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w+5bmLMDEc0iavgb9Yz8NQpuMW0w/5KP/K48lDFgbjc=;
        b=VmoZxgnsf8HFKVihDxcLgK0vNJoLCswZJ5QM7HF+qjK4wvX5YsUmAGTWJz23Uj+TbB
         LqvRsWjklxHoIty0VE4a1t1WZzELNerrTyCRN39LkoEnZlYgDsjmciNQ0oqR/vYjNAo1
         xPZtGH0b+lf5fqSpOGgIa6ocdBjp0ldpmOWaqVLdyPN+ye+JiYfGryGqFdBq6Ju8ojXu
         TLi8dP+YGx4tQK8655OGEzlz7iINna9kGYvWv39jlryInJvBfRRkIdPfY4XA4MubkNlf
         4hgY5xPM0vrmAj45It0g2eaTz/XYkR/F6pOJgEY9NlRcUV8k9IP1ytVGPCjAHBtrJ/BK
         CSSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w+5bmLMDEc0iavgb9Yz8NQpuMW0w/5KP/K48lDFgbjc=;
        b=RD09MzPuvLOdnAuuL9IjREbV5NugUMY/K2D+J98Uuy6AKFn3OFxq4E+6JAaHc3p6SS
         xiUqxKILXN0PoN411czctn2Lctk+D+jGls4c9ezdvy5HXFFjh74mloX+sJbeYCVeAKZP
         ESyEEhE4TGXAevLb06s0YWzMm7Xisybe+k/7DgzzBH6k85C6UtjRjVyX3Wawkqls8EmD
         GlsvVU8+ZmP3civMZzms40j46gvIAuz1nGQOyZrdCY7swiRSzagu0FKh29+4F33h0vb0
         PtxEjsSLarnmhWmzXEOxqMQKeG5/BgLZ9zBOkA0Pih4TG3wBadJm5KwgLYYgKzSuEBZ5
         E9WQ==
X-Gm-Message-State: AOAM533I7ueY1JcHytLyj17uGdMgVpg1VsdbFZ8JCFUfNjVRpexn9Qhy
        G4GdPsIKgtdE4JAxJEGNmUU=
X-Google-Smtp-Source: ABdhPJxZ1CLApPdH9dJBC/L0zAeg9gdKO9FQNxBeNfaCfF+0jKPu3f092DEZCR2o5u/l2DO4BmtgQw==
X-Received: by 2002:a1c:b402:: with SMTP id d2mr3553355wmf.128.1602930384317;
        Sat, 17 Oct 2020 03:26:24 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id s19sm7936884wmc.0.2020.10.17.03.26.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 03:26:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] queue.3: stailq: Complete example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201017101616.27633-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <313a84cb-decc-591b-ea09-e15b4caea454@gmail.com>
Date:   Sat, 17 Oct 2020 12:26:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201017101616.27633-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/17/20 12:16 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/queue.3 | 117 ++++++++++++++++++++++++++++-----------------------
>  1 file changed, 64 insertions(+), 53 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index 9cd6ff378..c48b4ba9f 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -721,59 +721,9 @@ from the tail queue.
>  .\" .Fa head1
>  .\" and
>  .\" .Fa head2 .
> -.Ss Singly-linked tail queue example
> -.Bd -literal
> -STAILQ_HEAD(stailhead, entry) head =
> -    STAILQ_HEAD_INITIALIZER(head);
> -struct stailhead *headp;		/* Singly-linked tail queue head. */
> -struct entry {
> -	...
> -	STAILQ_ENTRY(entry) entries;	/* Tail queue. */
> -	...
> -} *n1, *n2, *n3, *np;
> -
> -STAILQ_INIT(&head);			/* Initialize the queue. */
> -
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> -STAILQ_INSERT_HEAD(&head, n1, entries);
> -
> -n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
> -STAILQ_INSERT_TAIL(&head, n1, entries);
> -
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> -STAILQ_INSERT_AFTER(&head, n1, n2, entries);
> -					/* Deletion. */
> -STAILQ_REMOVE(&head, n2, entry, entries);
> -free(n2);
> -					/* Deletion from the head. */
> -n3 = STAILQ_FIRST(&head);
> -STAILQ_REMOVE_HEAD(&head, entries);
> -free(n3);
> -					/* Forward traversal. */
> -STAILQ_FOREACH(np, &head, entries)
> -	np\-> ...
> -.\"					/* Safe forward traversal. */
> -.\"STAILQ_FOREACH_SAFE(np, &head, entries, np_temp) {
> -.\"	np\->do_stuff();
> -.\"	...
> -.\"	STAILQ_REMOVE(&head, np, entry, entries);
> -.\"	free(np);
> -.\"}
> -					/* TailQ Deletion. */
> -while (!STAILQ_EMPTY(&head)) {
> -	n1 = STAILQ_FIRST(&head);
> -	STAILQ_REMOVE_HEAD(&head, entries);
> -	free(n1);
> -}
> -					/* Faster TailQ Deletion. */
> -n1 = STAILQ_FIRST(&head);
> -while (n1 != NULL) {
> -	n2 = STAILQ_NEXT(n1, entries);
> -	free(n1);
> -	n1 = n2;
> -}
> -STAILQ_INIT(&head);
> -.Ed
> +.Pp
> +See the EXAMPLES section below for an example program
> +using a singly-linked tail queue.
>  .Ss Lists
>  A list is headed by a structure defined by the
>  .Nm LIST_HEAD
> @@ -1328,6 +1278,67 @@ main(void)
>      exit(EXIT_SUCCESS);
>  }
>  .Ed
> +.Ss Singly-linked tail queue example
> +.Bd -literal
> +#include <stddef.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/queue.h>
> +
> +struct entry {
> +    int data;
> +    STAILQ_ENTRY(entry) entries;            /* Singly-linked tail queue. */
> +};
> +
> +STAILQ_HEAD(stailhead, entry);
> +
> +int
> +main(void)
> +{
> +    struct entry    *n1, *n2, *n3, *np;
> +    struct stailhead head;                  /* Singly-linked tail queue
> +                                               head. */
> +
> +    STAILQ_INIT(&head);                     /* Initialize the queue. */
> +
> +    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
> +    STAILQ_INSERT_HEAD(&head, n1, entries);
> +
> +    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
> +    STAILQ_INSERT_TAIL(&head, n1, entries);
> +
> +    n2 = malloc(sizeof(struct entry));      /* Insert after. */
> +    STAILQ_INSERT_AFTER(&head, n1, n2, entries);
> +
> +    STAILQ_REMOVE(&head, n2, entry, entries);/* Deletion. */
> +    free(n2);
> +
> +    n3 = STAILQ_FIRST(&head);
> +    STAILQ_REMOVE_HEAD(&head, entries);     /* Deletion from the head. */
> +    free(n3);
> +
> +    n1 = STAILQ_FIRST(&head);
> +    n1->data = 0;
> +    for (int i = 1; i < 5; i++) {
> +        n1 = malloc(sizeof(struct entry));
> +        STAILQ_INSERT_HEAD(&head, n1, entries);
> +        n1->data = i;
> +    }
> +                                            /* Forward traversal. */
> +    STAILQ_FOREACH(np, &head, entries)
> +        printf("%i\en", np->data);
> +                                            /* TailQ Deletion. */
> +    n1 = STAILQ_FIRST(&head);
> +    while (n1 != NULL) {
> +        n2 = STAILQ_NEXT(n1, entries);
> +        free(n1);
> +        n1 = n2;
> +    }
> +    STAILQ_INIT(&head);
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.Ed
>  .Ss List example
>  .Bd -literal
>  #include <stddef.h>
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
