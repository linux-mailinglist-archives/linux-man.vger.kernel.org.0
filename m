Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A92A263022
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 17:04:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729525AbgIIPEA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 11:04:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728936AbgIIMTp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 08:19:45 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01C67C06179E
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 05:19:24 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id s13so2064097wmh.4
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 05:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VMyoK1HXqO6H9OrlDZ90N8KlgDrsWBiDagKKejoK+eE=;
        b=ft6OMQ3dziEjPG8pllZ63S7bawzatICR3rGzar/n9Pxh6XO9mwBJ41hRuXhpIUhc4D
         PznHDZioPaF+eJLsnUII7OlsHkxFXYXpIxB0b05MXWQUv93nfxJgZrV4PE7zvHf265pg
         5neYZGfRnkF7fFNZ3ppXuXWR9iO4ka9RjJhZkgGUxN+811/I/TaVNqmLnp40fzqw3TUN
         YAGa4CnlU3/HJemTJgLFUhz7zoHYuZWRnwM1AgI/NwA0goQZHpXVOj0pESEr1BXol2N5
         AxS2W5bauUvECv9E35Ik8kzJVMCbOyx3tlOFc1FXRzGlHOiEDLgC3LtirjtGtMRw5VEY
         KXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VMyoK1HXqO6H9OrlDZ90N8KlgDrsWBiDagKKejoK+eE=;
        b=R2iHpuCTfL/wiN7uIV/SOIqX6vkrIw56Kdc8hIpCzU7GEZmCXy08/Bsr/ljafa62Kg
         wRUg56cCFMwXIhyxK8uxLqC0p6VO2fOtNJdVPAzIiYAdsQy2KJQ9vt/1t42RIXVARpNL
         7MWxZudFuFD2gEKNqyUPln6kOxwP83B5QnrVIF91BR33A+ObO0LAk/MEVs39uDlUrvh3
         sfaTbfQX+mtf6cHkQhmxmBuGtMa5CjvZmGn8tgSXO6YuUaGhZg7d33YvNF7in4olfmHT
         y+iUJaKoyDE97D9dzU5NZuiL//PAaxTBdYo55qeX9QGNQb/DBL8WCX3Gl9+2PVviH1Ed
         h6HQ==
X-Gm-Message-State: AOAM533iGHs+GNmoenvIUL5tj6UsyEny0At19o8Fz7DIJWIy1RocmE6h
        8wCpBCmJx5MHrpP8IfVpPTLpwTSJOb8=
X-Google-Smtp-Source: ABdhPJyYnzug9gFmru1PXUa2cv0sxiFpaipGY6LSF1+Q9zK3XdfMtBmAsuFTeCNodjqcYVi17ZEXNA==
X-Received: by 2002:a1c:2002:: with SMTP id g2mr3297666wmg.122.1599653963234;
        Wed, 09 Sep 2020 05:19:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o9sm3861702wrw.58.2020.09.09.05.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 05:19:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] msgop.2: Add restriction on ENOSYS error
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1599623862-6490-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <add7b495-2345-5736-5a08-bce2a309f463@gmail.com>
Date:   Wed, 9 Sep 2020 14:19:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1599623862-6490-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On 9/9/20 5:57 AM, Yang Xu wrote:
> When calling msgrcv with MSG_COPY flag on 3.8 or new kernel, it will
> report EINVAL error even we have disabled CONFIG_CHECKPOINT_RESTORE.
> It also needs to specify IPC_NOWAIT flag.
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/msgop.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/msgop.2 b/man2/msgop.2
> index 373e53aa7..e559097a7 100644
> --- a/man2/msgop.2
> +++ b/man2/msgop.2
> @@ -467,7 +467,9 @@ and the queue contains less than
>  messages.
>  .TP
>  .BR ENOSYS " (since Linux 3.8)"
> -.I MSG_COPY
> +.B IPC_NOWAIT
> +and
> +.B MSG_COPY
>  was specified in
>  .IR msgflg ,
>  and this kernel was configured without

Thanks for the patch, and your clarifications to my confusion. I applied the
patch, and then did some light editing, so that the change looks as below.

Cheers,

Michael


diff --git a/man2/msgop.2 b/man2/msgop.2
index 373e53aa7..6a8dfcdf8 100644
--- a/man2/msgop.2
+++ b/man2/msgop.2
@@ -467,8 +467,11 @@ and the queue contains less than
 messages.
 .TP
 .BR ENOSYS " (since Linux 3.8)"
-.I MSG_COPY
-was specified in
+Both
+.B MSG_COPY
+and
+.B IPC_NOWAIT
+were specified in
 .IR msgflg ,
 and this kernel was configured without
 .BR CONFIG_CHECKPOINT_RESTORE .


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
