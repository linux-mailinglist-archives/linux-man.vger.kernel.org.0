Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0D46297345
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 18:12:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465159AbgJWQM3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 12:12:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465156AbgJWQM3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 12:12:29 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59F58C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 09:12:27 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so2276730wmj.5
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 09:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/LVfU7bIoS0mn3j7rlzGUmRof4/yCJ7QIwzeHGnte6A=;
        b=iBJ4/JKHJw2xQod9vfRdKL820FoujohyOKI5q1jYE7i27+7MgiE7frt8A0Q4CZFm+a
         iiBa7YvtV63SJOGuGn0Ruyu4l0pKioxpD/bstjoZQ6spVfX8PgS4o1OJ1RX+EvNXFewA
         12N+tUQPHmNC9AVXJxfkfqHqrZo9CCe9DzNuf+FWG8CTRYNNKHxL0O+tYZ3U0vxvR6eB
         XYwTe8L4/naOIxayrDU0ISuVprG4i16OVKatAFyVXSIcc7D0XnGvXZA1QFMAZqIGb5C7
         93gjJKopCfNeTv716+TP+A84JKHMl0D77EPqv+sVkdEq8LZa+tn8VKUAV3H2DtdBcQp5
         jHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/LVfU7bIoS0mn3j7rlzGUmRof4/yCJ7QIwzeHGnte6A=;
        b=fcKeBgb+RBDMUx7Sw94TZvDTPdbVrb/ANqgpPEH1suYC8vtdMnB4QkUlazy88etfZT
         Uc4TFs/Wtlm38j8XtmoxL/dSogGuNJLUTzBPko3v9piM33Dw9ceatoX7lQs3i5Z4zUL9
         aexHZkDqgSFO3s5oZWI9AAbn0JK9QJwHy7++fYnajTzAw1guCKR+zUGSNwmCsYPzSmI4
         spx6Ppdd3bcsMOKDafdNX8wH6miKmQeoWXKT0RQQcc+NPiEoBLXXkxKRrpgUD1nWpNva
         SZ7vop8SlkMJ13ujyW5Whvo5dx1skXTzQ80stJrkw8cOKxe3Nux3sGGqJbvCR+3o4r/i
         aL+A==
X-Gm-Message-State: AOAM530vfQvL9ZH3g6dJgHaeoNIotEb52ymZX0CMPekCkTFgGq7KRbKa
        pdKxM3c9u+sxUxA7LdIH2PMq5APbAlk=
X-Google-Smtp-Source: ABdhPJzLbJ5yeBfFrVai9nhlCUEcLcsMQY9e0w1RCApSSAj6OayIOc1wKAAAgn06f57WJbXfGpM0vQ==
X-Received: by 2002:a1c:1946:: with SMTP id 67mr3052083wmz.15.1603469545819;
        Fri, 23 Oct 2020 09:12:25 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id s19sm4450089wmc.41.2020.10.23.09.12.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 09:12:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] queue.3: Sort alphabetically
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201023143825.101968-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1e97fefe-ec5c-4ce7-77e1-324e1da21b4b@gmail.com>
Date:   Fri, 23 Oct 2020 18:12:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201023143825.101968-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/23/20 4:38 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/queue.3 | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index bcf5ce00a..36432718d 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -40,8 +40,8 @@
>  .Nm STAILQ_FIRST ,
>  .Nm STAILQ_FOREACH ,
>  .\" .Nm STAILQ_FOREACH_FROM ,
> -.\" .Nm STAILQ_FOREACH_SAFE ,
>  .\" .Nm STAILQ_FOREACH_FROM_SAFE ,
> +.\" .Nm STAILQ_FOREACH_SAFE ,
>  .Nm STAILQ_HEAD ,
>  .Nm STAILQ_HEAD_INITIALIZER ,
>  .Nm STAILQ_INIT ,
> @@ -50,9 +50,9 @@
>  .Nm STAILQ_INSERT_TAIL ,
>  .\" .Nm STAILQ_LAST ,
>  .Nm STAILQ_NEXT ,
> +.Nm STAILQ_REMOVE ,
>  .\" .Nm STAILQ_REMOVE_AFTER ,
>  .Nm STAILQ_REMOVE_HEAD ,
> -.Nm STAILQ_REMOVE ,
>  .\" .Nm STAILQ_SWAP ,
>  .Nm TAILQ_CONCAT ,
>  .Nm TAILQ_EMPTY ,
> @@ -60,12 +60,12 @@
>  .Nm TAILQ_FIRST ,
>  .Nm TAILQ_FOREACH ,
>  .\" .Nm TAILQ_FOREACH_FROM ,
> -.\" .Nm TAILQ_FOREACH_SAFE ,
>  .\" .Nm TAILQ_FOREACH_FROM_SAFE ,
>  .Nm TAILQ_FOREACH_REVERSE ,
>  .\" .Nm TAILQ_FOREACH_REVERSE_FROM ,
> -.\" .Nm TAILQ_FOREACH_REVERSE_SAFE ,
>  .\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE ,
> +.\" .Nm TAILQ_FOREACH_REVERSE_SAFE ,
> +.\" .Nm TAILQ_FOREACH_SAFE ,
>  .Nm TAILQ_HEAD ,
>  .Nm TAILQ_HEAD_INITIALIZER ,
>  .Nm TAILQ_INIT ,
> @@ -107,8 +107,8 @@ lists, tail queues, and circular queues
>  .Fn STAILQ_FIRST "STAILQ_HEAD *head"
>  .Fn STAILQ_FOREACH "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
>  .\" .Fn STAILQ_FOREACH_FROM "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
> -.\" .Fn STAILQ_FOREACH_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
>  .\" .Fn STAILQ_FOREACH_FROM_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
> +.\" .Fn STAILQ_FOREACH_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
>  .Fn STAILQ_HEAD "HEADNAME" "TYPE"
>  .Fn STAILQ_HEAD_INITIALIZER "STAILQ_HEAD head"
>  .Fn STAILQ_INIT "STAILQ_HEAD *head"
> @@ -117,9 +117,9 @@ lists, tail queues, and circular queues
>  .Fn STAILQ_INSERT_TAIL "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
>  .\" .Fn STAILQ_LAST "STAILQ_HEAD *head" "TYPE" "STAILQ_ENTRY NAME"
>  .Fn STAILQ_NEXT "TYPE *elm" "STAILQ_ENTRY NAME"
> +.Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
>  .\" .Fn STAILQ_REMOVE_AFTER "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
>  .Fn STAILQ_REMOVE_HEAD "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
> -.Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
>  .\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
>  .\"
>  .Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
> @@ -128,12 +128,12 @@ lists, tail queues, and circular queues
>  .Fn TAILQ_FIRST "TAILQ_HEAD *head"
>  .Fn TAILQ_FOREACH "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
>  .\" .Fn TAILQ_FOREACH_FROM "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
> -.\" .Fn TAILQ_FOREACH_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
>  .\" .Fn TAILQ_FOREACH_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
>  .Fn TAILQ_FOREACH_REVERSE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
>  .\" .Fn TAILQ_FOREACH_REVERSE_FROM "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
> -.\" .Fn TAILQ_FOREACH_REVERSE_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
>  .\" .Fn TAILQ_FOREACH_REVERSE_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
> +.\" .Fn TAILQ_FOREACH_REVERSE_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
> +.\" .Fn TAILQ_FOREACH_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
>  .Fn TAILQ_HEAD "HEADNAME" "TYPE"
>  .Fn TAILQ_HEAD_INITIALIZER "TAILQ_HEAD head"
>  .Fn TAILQ_INIT "TAILQ_HEAD *head"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
