Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59BC125E06F
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 18:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727827AbgIDQ62 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 12:58:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725966AbgIDQ61 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 12:58:27 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93B15C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 09:58:26 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o5so7357994wrn.13
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 09:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2SvK2gklbjKHEzQkrET+G6ipr7UetbW+KoQM1zJ1abI=;
        b=gfIZ8+bafHvMdHDcG27Iy9tY3Nf7jL9M8euHE5dgBKq00LQHJ1l/qq+UxbJQDlTEK7
         dQ8bm+u17HBczcNdZ3+/QNQ0CMZ5sXfg1MnZxKTJH/d153HWRwDmsAjTEXiWSBNqqmfB
         dhMViNNsoHP87pguYBzOH0GwvDN3XYLVOyWC0jMjpL6Tg0EBzNky3XORh/m9VWvaqHIl
         fGZ71t2mhreODUo+tex8kDCPZTWToS2zEe6mzwwymM+YO4b4s7Dka5iFLEvWJjZY9Whc
         07RBIef49NnbCLJi/okma2gOV+LOvUbQLRY4dLgX5u7UARhDqY0Jk3E3BbZQYt4d5jK5
         nBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2SvK2gklbjKHEzQkrET+G6ipr7UetbW+KoQM1zJ1abI=;
        b=CwmrFhIchAXj+94xbP5o4kcLYy03lPBlDjcJzx+vU8LL1zELxjsjS6gQrWyWkwIgdK
         SuDIqN59zk2J+o6Pyn2Fd2q6HijUqx3/MIR8WfA3KUxFMF54qxHBcFkf7Qzp38dITx/r
         ZPpl1xvNbqY8+eO4eEafG9iIWS4D/n8E1+OsMbqhWYKbRMgDBd40jW3gp4FsDzm+CAUM
         Coq6hyT7m7XPYucR7PHRZ0nD9B9uXZfHr9H2NGy2THWwFslHG7TwkCc5LXLUc4DNAFhD
         xFTyMeeRgoM5IdGbOaEctDUTvCvgWO33z+im5wQyBNrBB5RJNGaT6C58/3oHIYkfp+9p
         NPbA==
X-Gm-Message-State: AOAM5318XdLAyQOapQrQjJr0I5h2VjIduUW/6UKq9yFffXi3HYDmqgJy
        soIxqmCLVlvxHPmOPZS8tm8fzW1fDv8=
X-Google-Smtp-Source: ABdhPJwVigyIYvJBSMulXpNIrendMc6jrShEdtYroLQ3CEPf60/x59+w8ktlCVYGy+zuoG8bJ+HyDg==
X-Received: by 2002:adf:ee8d:: with SMTP id b13mr7695003wro.249.1599238705122;
        Fri, 04 Sep 2020 09:58:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id f3sm12290736wmb.35.2020.09.04.09.58.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 09:58:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 24/34] queue.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <00642d3b-f0a6-9761-a039-ef56f538165e@gmail.com>
Date:   Fri, 4 Sep 2020 18:58:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:50 PM, Alejandro Colomar wrote:
>>From 6f3e17cf38bc3718332c7151899e253dbc91affb Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:53:51 +0200
> Subject: [PATCH 24/34] queue.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

I don't think this change improves readability. Looking at the code as
it is, one can immediately see that it is the same structure being 
allocated everywhere. After the change, that's not so obvious. I think
I won't apply this.

Cheers,

Michael

> ---
>  man3/queue.3 | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index 55cd5847e..2ea5ff4f5 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -559,10 +559,10 @@ struct entry {
> 
>  SLIST_INIT(&head);			/* Initialize the list. */
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the head. */
>  SLIST_INSERT_HEAD(&head, n1, entries);
> 
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> +n2 = malloc(sizeof(*n2));		/* Insert after. */
>  SLIST_INSERT_AFTER(n1, n2, entries);
> 
>  SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
> @@ -775,13 +775,13 @@ struct entry {
> 
>  STAILQ_INIT(&head);			/* Initialize the queue. */
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the head. */
>  STAILQ_INSERT_HEAD(&head, n1, entries);
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
>  STAILQ_INSERT_TAIL(&head, n1, entries);
> 
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> +n2 = malloc(sizeof(*n2));		/* Insert after. */
>  STAILQ_INSERT_AFTER(&head, n1, n2, entries);
>  					/* Deletion. */
>  STAILQ_REMOVE(&head, n2, entry, entries);
> @@ -975,13 +975,13 @@ struct entry {
> 
>  LIST_INIT(&head);			/* Initialize the list. */
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the head. */
>  LIST_INSERT_HEAD(&head, n1, entries);
> 
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> +n2 = malloc(sizeof(*n2));		/* Insert after. */
>  LIST_INSERT_AFTER(n1, n2, entries);
> 
> -n3 = malloc(sizeof(struct entry));	/* Insert before. */
> +n3 = malloc(sizeof(*n3));		/* Insert before. */
>  LIST_INSERT_BEFORE(n2, n3, entries);
> 
>  LIST_REMOVE(n2, entries);		/* Deletion. */
> @@ -1233,16 +1233,16 @@ struct entry {
> 
>  TAILQ_INIT(&head);			/* Initialize the queue. */
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the head. */
>  TAILQ_INSERT_HEAD(&head, n1, entries);
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
>  TAILQ_INSERT_TAIL(&head, n1, entries);
> 
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> +n2 = malloc(sizeof(*n2));		/* Insert after. */
>  TAILQ_INSERT_AFTER(&head, n1, n2, entries);
> 
> -n3 = malloc(sizeof(struct entry));	/* Insert before. */
> +n3 = malloc(sizeof(*n3));		/* Insert before. */
>  TAILQ_INSERT_BEFORE(n2, n3, entries);
> 
>  TAILQ_REMOVE(&head, n2, entries);	/* Deletion. */
> @@ -1426,16 +1426,16 @@ struct entry {
> 
>  CIRCLEQ_INIT(&head);			/* Initialize the queue. */
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the head. */
>  CIRCLEQ_INSERT_HEAD(&head, n1, entries);
> 
> -n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
> +n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
>  CIRCLEQ_INSERT_TAIL(&head, n1, entries);
> 
> -n2 = malloc(sizeof(struct entry));	/* Insert after. */
> +n2 = malloc(sizeof(*n2));		/* Insert after. */
>  CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
> 
> -n3 = malloc(sizeof(struct entry));	/* Insert before. */
> +n3 = malloc(sizeof(*n3));		/* Insert before. */
>  CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
> 
>  CIRCLEQ_REMOVE(&head, n2, entries);	/* Deletion. */
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
