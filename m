Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4092F31AFC1
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 09:37:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbhBNIhi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 03:37:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbhBNIhh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 03:37:37 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03909C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:36:57 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id l12so4982193wry.2
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MNCE6fuWFkG4CXQn3QJU6mQ8zaoUo0M2TxJlhTkx4b0=;
        b=mOiC6Jt3VQFqX7p3wagQ30Ty/D9yZGnO1y/mL1JdpMqKsy+dqkmV5wKIu1gmI0KRjc
         DUiJBqmajJH2zGusg1YnR685/i/KO8v99yW8PmqibP5n6NFbaJhX9A3iAcpXcaa4eKwp
         xMK8lgrbZ3UC/SdrosFmHMJkElikBLK6ppDRsEe0c7WTPhJYObj6hd5jdiNAHM8i8cFJ
         4yelQ+NVJ3/0NdZcfNGrRCXPiPaFgirtuGqU1MtepscExcvFhfbty3PdoGhj10qcOEp6
         CEPeYJHYN+Z+lsRYWnF8wQGH3fP4//pljiPlGD+X1B2MtJYeludpIxoj2yqQ3Xv8sgzg
         5Eig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MNCE6fuWFkG4CXQn3QJU6mQ8zaoUo0M2TxJlhTkx4b0=;
        b=FLDcxqimhppBimU8EOZkM6tMFk312qeff5z5GyuZk5bBZ2o3CeN/yhM/9elBK71s32
         puLv2VFBOW7SQ14ICQLQALa9SDTtHOXywmi3szi6BX7YEkYHBqjn0kur3LaTnDYcBLCp
         HFjeGHvNg1GEqJ5OJ2RBAsfTRrVJYzmGCZsrBuiN8dTOcgqlcjsM/WzjXTRUGMTmj2Px
         fDGiSPhCmfm1fMWITUnPvLKDb+/Bz3gJXZ3tRQEPd7kkw2LLTq0+NWIRTFYZY7gw43Cj
         WPwxit7/LXI2Lhi5mtkYV5XVU5lZM6J54Ltg0ZcgoSOS6vyuY0+CDCPj5XV6EGFIWLP6
         SZUA==
X-Gm-Message-State: AOAM533Kpf6pobIPG+yD2EAz0D1/QuV+Pvo26PtN38zBi9SR9VF0vtZz
        fS5y9xvmvzZJeAQppHi4er8a3hXOpkLLnQ==
X-Google-Smtp-Source: ABdhPJyg3tAlOPvVYE9W7r07o3CPtKZCA3xqSvAJU5v8J2XWjWGA7URRmp5T1ixMVMN8LX/89ACCNw==
X-Received: by 2002:a5d:4987:: with SMTP id r7mr12403459wrq.423.1613291815551;
        Sun, 14 Feb 2021 00:36:55 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id j23sm18017375wmo.18.2021.02.14.00.36.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 00:36:55 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] epoll_pwait2.2: New link to epoll_wait(2)
To:     "Dmitry V. Levin" <ldv@altlinux.org>
References: <20210213080000.GA25299@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c4376c5b-9369-6463-39b6-8035c0f3e72d@gmail.com>
Date:   Sun, 14 Feb 2021 09:36:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210213080000.GA25299@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dmitry!

On 2/13/21 9:00 AM, Dmitry V. Levin wrote:
> Complements: ba47eb5e3 "epoll_wait.2: Add documentation of epoll_pwait2()"
> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>

Thanks! I should have though of that one already! Patch applied.

Cheers,

Michael

> ---
>  man2/epoll_pwait2.2 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man2/epoll_pwait2.2
> 
> diff --git a/man2/epoll_pwait2.2 b/man2/epoll_pwait2.2
> new file mode 100644
> index 000000000..9282a7064
> --- /dev/null
> +++ b/man2/epoll_pwait2.2
> @@ -0,0 +1 @@
> +.so man2/epoll_wait.2
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
