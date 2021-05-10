Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F83C377998
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 03:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbhEJBDk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 21:03:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbhEJBDk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 21:03:40 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 230C2C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 18:02:36 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id m37so12107114pgb.8
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 18:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/izs4QAVmwQrLa+bGXcdxKq0aRxKksP1Kv/mMZfL8cs=;
        b=BYUA+ZLFvzPvh67UzHDz8GKpRPvVn0ltDlDChpbeS0vC/NflI7ifYHSXp3NwmDXTqB
         yayr3exiC0vghLCBR+wZGIXr+SkNyvTCiCk7j8T14evRKWa+pIcHziCR+mzqLKg9gbRG
         NBUDdV85oDFDyV6i67PWINWWa7gRPRNhEL7jEmMq0EbBEQZajAzPqWBktjcA13n8Dcis
         aupwGC9bHm3/0NAQvKn6ipMStIDWyjZJcGn5JaVAAFCL+ld95tuiecUolKP/A2e5AcSb
         4fXttQJ1HYgGQMXcJcuMeMmOpvXjeoU8OGp5trxBAOvYrCeJPKwUMcZ1becnxZ8UhRk3
         SN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/izs4QAVmwQrLa+bGXcdxKq0aRxKksP1Kv/mMZfL8cs=;
        b=eBV8FCkg2H58E9YMKHZuUYjIv3nWHazcQCB6Q5oAcbQH6mYM90tjMVgqVebYtK5DGC
         C6lDB3/dvT7EG69SoDzGL1/o1/A3XF2sTAV/TvnHW2b6S13B8W8tkRWm/X17f8LGQqml
         qOL75utUZScnNpBclylWjLU0EeCBXeKFEE+LbpWlFr0r112MgsvstxP+myOZI+JfNbjN
         Yjed6I5zsRuWMY4PVm5dDkxtuNaFTIDycKN0SERErdRoYG2Yz8EVvBDs93zxFQKlYy7d
         K96gEf2eYboGkTWZ1m59/ZSAxgKPzUiRP/m9SS3KhuNlKDlKKHrvw44FK2qDrA/JRVct
         gREg==
X-Gm-Message-State: AOAM533t/p4lv1WzHGa/kvo0M7sZhTDzToE5Q64+5UGyEbP6rxP/twSR
        /j9FS/x4vdJunuiKWgPqZbc=
X-Google-Smtp-Source: ABdhPJwyVwO9RPrlIoy8pdjw/QHXbhU/RLcjuU5lpodKDbpPq+Ci8b0iwQJWdLAUcrAm5Evp8yYF1Q==
X-Received: by 2002:a63:4a4b:: with SMTP id j11mr22092496pgl.451.1620608555656;
        Sun, 09 May 2021 18:02:35 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id k69sm9959887pgc.45.2021.05.09.18.02.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 18:02:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: Re: [PATCH] .gitignore: Add file
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-35-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ada1af82-0d46-6d84-c175-02755fef5968@gmail.com>
Date:   Mon, 10 May 2021 13:02:31 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-35-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Ignore everything new by default.
> 
> This avoids having to update the .gitignore when we need to ignore
> something new.  It also avoids accidents that may add an unwanted
> temporary file.
> 
> Cc: Debian man-pages <manpages@packages.debian.org>
> Cc: Dr. Tobias Quathamer <toddy@debian.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  .gitignore | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>  create mode 100644 .gitignore
> 
> diff --git a/.gitignore b/.gitignore
> new file mode 100644
> index 000000000..9eb9fc096
> --- /dev/null
> +++ b/.gitignore
> @@ -0,0 +1,13 @@
> +# Ignore everything new by default
> +/*
> +
> +# Ignore everything in man?/ that doesn't follow conventions (e.g., tmp files)
> +!/man?/
> +/man?/**
> +!/man?/**.?

Why '**'? Is '*' not sufficient in both of the above?

Thanks,

Michael

> +
> +# These files change name in each release
> +!/man-pages*.Announce
> +!/man-pages*.lsm
> +
> +!/scripts/
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
