Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E212E31C2B6
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 20:58:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230494AbhBOT53 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 14:57:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbhBOT5Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 14:57:25 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B353C061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:56:45 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id a132so705474wmc.0
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ishdDQbkUUaR0170sUK7MCrIuorPx7Ky+5bEzGz4g0c=;
        b=hSnU11pbq+aJ/o8yIWE27mdXUoTjLBroG1aflRJUZTZU/tqYnGvkGsfMJ6d+gWRMp8
         XmezqJ2nCofNqDJCdH8v1dLCXmC+HkJ2tSfW+qkDzR4bO93bMvutZfjMrZd7Q+bUorVi
         PbyinHXRGeXcTh7L0LN7wKGte0GdnzU5eCQbwT25wkX8kdHRzYTtALgdQ719hMQWJeZ4
         K6iGRiu6eTiC1fjAGT+q1leBo0xEVRG04SljZTaGYGF6xe7Mcb6rPud9+Qpj8EexmzDD
         F2rV/25ltoQq8t6TTA3Vi8G1cc2BneJJX8Gj/6hvuxS1VfH5dHaaTgF99Es0DgL+c9to
         vzyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ishdDQbkUUaR0170sUK7MCrIuorPx7Ky+5bEzGz4g0c=;
        b=GWZW39RcUI2QrD7hGu5yS/NoFpOxsgYispFd/1/Q7J93MddVkgXUvdu96jlkTuAS6B
         NPcZwBPEZihwCnnnLYHWqQScGKf3rPB8miiDQMTyA6lUwFobzflGQUc6XdmDZWVQA1ER
         YTfImsRr8wRDIIhd+b7ZTnDdUhUnlQotTgmhNtQCTcZZ3h8pWI59t/ud2MqD09Q37cw2
         jH70a1A1psBwahfDgpWivHy5ONOe5p1FLDEYlHp/BYJFsgEfezkUUyoTa3MmwiDQWRQ+
         6zReRJoiixyXMA+VBBy/OCW5yaDnYfCydcBr9oob7ZQkiIz0Hc5DQMGpcVcAw5av4RwU
         BkKQ==
X-Gm-Message-State: AOAM533qNfsUC+CQVXMSaniCrqTn95JlljHYkrksJksPntl8MQRje7MQ
        Qb3zPN6MW0EnHXdenbbOZZj6L1vNXkNagA==
X-Google-Smtp-Source: ABdhPJwbhVFy8rhNm0gQshce2TEz0fxd6RdBRKPXnxwaIzKj8XZGFvPrZ+dQ4oEX9k7AqKWxambNog==
X-Received: by 2002:a05:600c:4a23:: with SMTP id c35mr380146wmp.172.1613419003823;
        Mon, 15 Feb 2021 11:56:43 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id t2sm25458174wru.53.2021.02.15.11.56.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 11:56:43 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] sched_setattr.2: Add note about missing glibc wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <354e4c8d-1ea6-e5b2-6bad-f2ac55f0050a@gmail.com>
Date:   Mon, 15 Feb 2021 20:56:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> ......
> 
> .../glibc$ grep_glibc_prototype sched_setattr
> .../glibc$ grep_glibc_prototype sched_getattr
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/sched_setattr.2 | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/man2/sched_setattr.2 b/man2/sched_setattr.2
> index ecbdbffc4..c79b74a49 100644
> --- a/man2/sched_setattr.2
> +++ b/man2/sched_setattr.2
> @@ -37,6 +37,9 @@ set and get scheduling policy and attributes
>  .BI "                  unsigned int " size ", unsigned int " flags );
>  .fi
>  .\" FIXME . Add feature test macro requirements
> +.PP
> +.IR Note :
> +There are no glibc wrappers for these system calls; see NOTES.
>  .SH DESCRIPTION
>  .SS sched_setattr()
>  The
> @@ -388,6 +391,9 @@ These system calls first appeared in Linux 3.14.
>  .SH CONFORMING TO
>  These system calls are nonstandard Linux extensions.
>  .SH NOTES
> +Glibc does not provide wrappers for these system calls; call them using
> +.BR syscall (2).
> +.PP
>  .BR sched_setattr ()
>  provides a superset of the functionality of
>  .BR sched_setscheduler (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
