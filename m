Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEAEB317204
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 22:10:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233484AbhBJVKd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 16:10:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233556AbhBJVKC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 16:10:02 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDFDFC061756
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:09:21 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id g10so4730304eds.2
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MJ5xpa0UdiDloTEfhaTbboYKCA1JGX64XrfQVrhPeSw=;
        b=UWJBQEN9qKSTT2fjnEdFrjaW8L3IavNoAHY+aX/ebOmAZzHlV+9XCDNMJISMOsLoEV
         EFXehT5oZ7SdqZZgunj+Mieerhz/zYDRL/PtcEKZuSeqBe5i9iEmoruI0NGbwrxByHOE
         LnuJOcXmxk3XB32H+SYKKyonE3OAcOWjsZQj7hUdYjExQwlV192NP6FNQrDqiaCdRULt
         zMkfZo0MKnc7nMv/XQcCvPJmSKesRTesPIbeLmmpHuqZ+wqhT/+3TmvxRoPJN0k/9WGo
         Y0y72fs5fxHzJ5IidmkwOdYCYtTazE4qc/S+7eiwlW/HoSruRCh6BPIEIyr9bPbEoOgG
         1pJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MJ5xpa0UdiDloTEfhaTbboYKCA1JGX64XrfQVrhPeSw=;
        b=HymHeEKCoP/kg9spXmSJs/P9ptUchogqR9yS7UZ8ZlOzObL/MI0Vkcttugtn75hj+6
         PG/Nq+m8l/+4McX4ZdvH4wBhf8MpyMoF7RE8+DerdMqb9j29BayCVqlAB2FjZcHJJ70F
         wc24JqD/y5ZNGFFsMYUDwxwTdNm9oVowiF3qH1F/HbXLOEKFYZfwpnNTg/7g+L2G6EzC
         wqD7TmQv9o2twINp9YRYtx2QbAJZ2/BZHRHje8giswahWXOooeCwNGimFP0FkyxcGmFP
         8UdRds80Iq9e5gmR/HFC4fAiro9GO1qnFLtY6JKPn0fsJWVbZ4ntZaFXCwX1yUJzHlhL
         LDfg==
X-Gm-Message-State: AOAM532W2lyXCypOiO0iItFu5l2jT89Kpev/3HX6VBv0lMlfjdgjM/ci
        no2u4amep9Ncvubg1aXPYxX1QaCGAF999w==
X-Google-Smtp-Source: ABdhPJzBztEU0H2dHlTil+r0GVotoE4ugXGlidwtvsi4TldetWbsjOOCdtSY1yXPcWR4tAHbnDPH2Q==
X-Received: by 2002:a50:f318:: with SMTP id p24mr5094298edm.13.1612991360459;
        Wed, 10 Feb 2021 13:09:20 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id z16sm2173139ejd.102.2021.02.10.13.09.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:09:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH] open.2, rename.2: refer to tmpfs rather than shmem
To:     Alyssa Ross <hi@alyssa.is>, linux-man@vger.kernel.org
References: <20210210174245.17027-1-hi@alyssa.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4c148621-6593-e259-6b6d-d77aa2426e1d@gmail.com>
Date:   Wed, 10 Feb 2021 22:09:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210210174245.17027-1-hi@alyssa.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alyssa,

On 2/10/21 6:42 PM, Alyssa Ross wrote:
> Skimming open(2), I was surprised not to see tmpfs mentioned as a
> filesystem supported by O_TMPFILE.
> 
> If I'm understanding correctly (I'm very possibly not!), tmpfs is a
> filesystem built on shmem, so I think it's more correct (and probably
> much more widely understandable) to refer to tmpfs here.

Agreed. Thanks for the patch. I've applied.

Cheers,

Michael

> ---
>  man2/open.2   | 2 +-
>  man2/rename.2 | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/open.2 b/man2/open.2
> index b30dc1532..03fff1b65 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -885,7 +885,7 @@ as described above).
>  requires support by the underlying filesystem;
>  only a subset of Linux filesystems provide that support.
>  In the initial implementation, support was provided in
> -the ext2, ext3, ext4, UDF, Minix, and shmem filesystems.
> +the ext2, ext3, ext4, UDF, Minix, and tmpfs filesystems.
>  .\" To check for support, grep for "tmpfile" in kernel sources
>  Support for other filesystems has subsequently been added as follows:
>  XFS (Linux 3.15);
> diff --git a/man2/rename.2 b/man2/rename.2
> index 527bafacf..cb36405fe 100644
> --- a/man2/rename.2
> +++ b/man2/rename.2
> @@ -208,11 +208,11 @@ Support for various filesystems was added as follows:
>  ext4 (Linux 3.15);
>  .\" ext4: commit 0a7c3937a1f23f8cb5fc77ae01661e9968a51d0c
>  .IP *
> -btrfs, shmem, and cifs (Linux 3.17);
> +btrfs, tmpfs, and cifs (Linux 3.17);
>  .IP *
>  xfs (Linux 4.0);
>  .\" btrfs: commit 80ace85c915d0f41016f82917218997b72431258
> -.\" shmem: commit 3b69ff51d087d265aa4af3a532fc4f20bf33e718
> +.\" tmpfs: commit 3b69ff51d087d265aa4af3a532fc4f20bf33e718
>  .\" cifs: commit 7c33d5972ce382bcc506d16235f1e9b7d22cbef8
>  .\"
>  .\" gfs2 in 4.2?
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
