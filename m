Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E97B528A82D
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 18:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387553AbgJKQGM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 12:06:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387782AbgJKQF5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 12:05:57 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7264CC0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 09:05:57 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id n15so16139914wrq.2
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 09:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DGPqPU7uGy3u2yc3zZrx9FUW/duN0h7k4QU14GbWCUk=;
        b=f6gN35Szbw5jjVJ5HO2J7JgPRuZd2++FlbT3T7/FTW4Nhux5zPuuaGT9/wmRsZDbco
         2sYOmxnjKFTDz39yh6dQdLBA5LklGtVJCzqqsLwnHGM7KTgsV1Dnrrs2w/MyQopYt6mq
         LRY0po3y9cS3ZC5x/SMJAL6G8U+HFF/SxDHqi2On+g1RYZYA+xX/vjadvIZfiT/gDXD3
         d+HUSE84OdARqi5zGp06rIIOmr+6qC4bWRgOIq2yCiOjAPbLFGeVAEVH2cQBImCREYQl
         8jIqB574EPAwMBuHSEmezDOOELzJCsYN9o+KDIbhim3SMICAYRoRrvLikiuaGXZgEhmk
         6cLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DGPqPU7uGy3u2yc3zZrx9FUW/duN0h7k4QU14GbWCUk=;
        b=dFl99kgI/X6ZiJ8pwsvUC+G3to8AAxfS5JpmFcoJ2ReJKNKq1HUjsU89qJwAMosz60
         cc1Ylaojild0k1BGXERw6o3PLyQmX5TMWqPeLwuoKjOy7iYmY6Adj7Em8QUQliupY1+S
         PvxjB2PEq0M2X1vOXtagwafIsanyGvM3/Qchjbfu4NnafM5hEuwDc1OfuzAIeoFmE5lr
         DJghRl8t0KzwFjflfWil9988sQHUbWx9MOumpQbHOb7FEJ/glir5mHF75gn79qDS6u3W
         YvdDRNaoA+Hnu5uId/IoL6QRuAsPwWZYSAdMbgzHDunU1bJO7R0z90xGeiU2TCYeLAyH
         peSQ==
X-Gm-Message-State: AOAM533GGaz3go+F3mEQozM7jvrqRIcZC0DUYCPJJu91qhf9T7GdAnqR
        /sl2srz5rOs2BP6R6r7KZEQ=
X-Google-Smtp-Source: ABdhPJz9zDEKnfDBcGU8abq93UIY551FNTZfwQZyvMvSAdRqlfQ87ruXYzOtpZrT+IPPl9Jr1FSH2w==
X-Received: by 2002:a5d:6a86:: with SMTP id s6mr16141819wru.344.1602432355989;
        Sun, 11 Oct 2020 09:05:55 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id d9sm19257235wmb.30.2020.10.11.09.05.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 09:05:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] queue.3: slist: Complete example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201011155120.30482-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bf8633cc-f4fe-91b3-d5d6-44f43c549c04@gmail.com>
Date:   Sun, 11 Oct 2020 18:05:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201011155120.30482-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/20 5:51 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

With best regards,

Michael

> ---
>  man3/queue.3 | 102 +++++++++++++++++++++++++++++----------------------
>  1 file changed, 59 insertions(+), 43 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index ea43f018b..63c43dadc 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -545,49 +545,8 @@ from the list.
>  .\" .Fa head1
>  .\" and
>  .\" .Fa head2 .
> -.Ss Singly-linked list example
> -.Bd -literal
> -SLIST_HEAD(slisthead, entry) head =
> -    SLIST_HEAD_INITIALIZER(head);
> -struct slisthead *headp;		/* Singly-linked List
> -                                           head. */
> -struct entry {
> -	...
> -	SLIST_ENTRY(entry) entries;	/* Singly-linked List. */
> -	...
> -} *n1, *n2, *n3, *np;
> -
> -SLIST_INIT(&head);			/* Initialize the list. */
> -
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> -SLIST_INSERT_HEAD(&head, n1, entries);
> -
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> -SLIST_INSERT_AFTER(n1, n2, entries);
> -
> -SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
> -free(n2);
> -
> -n3 = SLIST_FIRST(&head);
> -SLIST_REMOVE_HEAD(&head, entries);	/* Deletion from the head. */
> -free(n3);
> -					/* Forward traversal. */
> -SLIST_FOREACH(np, &head, entries)
> -	np\-> ...
> -.\"					/* Safe forward traversal. */
> -.\"SLIST_FOREACH_SAFE(np, &head, entries, np_temp) {
> -.\"	np\->do_stuff();
> -.\"	...
> -.\"	SLIST_REMOVE(&head, np, entry, entries);
> -.\"	free(np);
> -.\"}
> -
> -while (!SLIST_EMPTY(&head)) {		/* List Deletion. */
> -	n1 = SLIST_FIRST(&head);
> -	SLIST_REMOVE_HEAD(&head, entries);
> -	free(n1);
> -}
> -.Ed
> +.Pp
> +See the EXAMPLES section below for an example program using a singly-linked list.
>  .Ss Singly-linked tail queues
>  A singly-linked tail queue is headed by a structure defined by the
>  .Nm STAILQ_HEAD
> @@ -1409,6 +1368,63 @@ while (n1 != (void *)&head) {
>  CIRCLEQ_INIT(&head);
>  .Ed
>  .Sh EXAMPLES
> +.Ss Singly-linked list example
> +.Bd -literal
> +
> +#include <stddef.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/queue.h>
> +
> +struct entry {
> +    int data;
> +    SLIST_ENTRY(entry) entries;             /* Singly-linked List. */
> +};
> +
> +SLIST_HEAD(slisthead, entry);
> +
> +int
> +main(void)
> +{
> +    struct entry    *n1, *n2, *n3, *np;
> +    struct slisthead head;                  /* Singly-linked List
> +                                               head. */
> +
> +    SLIST_INIT(&head);                      /* Initialize the queue. */
> +
> +    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
> +    SLIST_INSERT_HEAD(&head, n1, entries);
> +
> +    n2 = malloc(sizeof(struct entry));      /* Insert after. */
> +    SLIST_INSERT_AFTER(n1, n2, entries);
> +
> +    SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
> +    free(n2);
> +
> +    n3 = SLIST_FIRST(&head);
> +    SLIST_REMOVE_HEAD(&head, entries);      /* Deletion from the head. */
> +    free(n3);
> +
> +    for (int i = 0; i < 5; i++) {
> +        n1 = malloc(sizeof(struct entry));
> +        SLIST_INSERT_HEAD(&head, n1, entries);
> +        n1->data = i;
> +    }
> +
> +                                            /* Forward traversal. */
> +    SLIST_FOREACH(np, &head, entries)
> +        printf("%i\en", np->data);
> +
> +    while (!SLIST_EMPTY(&head)) {           /* List Deletion. */
> +        n1 = SLIST_FIRST(&head);
> +        SLIST_REMOVE_HEAD(&head, entries);
> +        free(n1);
> +    }
> +    SLIST_INIT(&head);
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
