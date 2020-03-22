Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2617E18E7A1
	for <lists+linux-man@lfdr.de>; Sun, 22 Mar 2020 09:33:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726738AbgCVIdy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Mar 2020 04:33:54 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:40625 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726728AbgCVIdx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Mar 2020 04:33:53 -0400
Received: by mail-lj1-f194.google.com with SMTP id 19so11082143ljj.7
        for <linux-man@vger.kernel.org>; Sun, 22 Mar 2020 01:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GYodu1hNAeAFvsnGp4c01oeXRlI7ca0lNBKuCrt4USY=;
        b=xA9t41iwzU3rmuI25Ttw6r0xiC/AkGVhv2DijmSzsj8OvXACJUJ23FTgsgcgnod1c/
         e3q+mRPx6Lhr4FIkaLnzxWjCp05TFrx4mjWhsPWhpas0AFonhcI8TwMMTJz5izVE2fjR
         jrkk/4ciPyk/4dVj8G2B/LYhUzEHXktfQ2TOo3nuHqjbUCpwDvHkSzmTnzxrkk0eDEOc
         p+ekQiVSMWezqPdJlM3dOrin1KVYvYkuKxfPIe2LqEPvONtxEWvZM7FcHqGZZVmLTznd
         IBW6hps1AsKbeQgJ7q+sQwxe9pKkmj/o8DoggCVmzd3ROM31RvG/inq3k7LMdHrbe+3a
         eiLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GYodu1hNAeAFvsnGp4c01oeXRlI7ca0lNBKuCrt4USY=;
        b=qNTNmBmFDLGbALBvvDJKm2mj0hgN+qpZ1f1Ukq8IJDUOyxIxwaMTE19p5EGegbAQeL
         zlPoYsLuk0NV/vsRhfBXOx+4HuOFk3Ze/QnMczp04uj2oP6X+i2kgAUayp8VWJaCMl5T
         QoaM3gor/bHzPYrDKbxcGtp4WOxMySxfT5/+R0YR2/ZNu6xuvJqn6pRHs/RINlOmYC9G
         V0MrFoRKXRW+N+TYpk19hIB98Q1obOfCglXQUX7wsL6MYzJjYyfNb6JL+qJZue2YnzIP
         lCaEvRb/etzTp0l0aMuj7SSJdYJYTuA+spZ25j/RVnn4KsALyCYWHnrOLtGu6vAjIRUG
         l/Sw==
X-Gm-Message-State: ANhLgQ1mQlxZHCnGFatQAMibOtZCooPCv15m44pZN9D/KaMz2J0nBkOq
        wBoiiTLMZP23V7Rm3ipARqQvfg==
X-Google-Smtp-Source: ADFU+vuI5Tkw5meA3Xbn2em83MyEo8gnVpoDHqSWCfvI72ZfI0JP4vg3rOr+eXuzCdAf0NHXrwRHXg==
X-Received: by 2002:a05:651c:106c:: with SMTP id y12mr2510877ljm.170.1584866030990;
        Sun, 22 Mar 2020 01:33:50 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:4416:1ee0:bdcc:9012:53a3:648d? ([2a00:1fa0:4416:1ee0:bdcc:9012:53a3:648d])
        by smtp.gmail.com with ESMTPSA id d26sm7993714lfm.0.2020.03.22.01.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 01:33:50 -0700 (PDT)
Subject: Re: [PATCH] getauxval.3: MIPS, AT_BASE_PLATFORM passes ISA level
To:     YunQiang Su <syq@debian.org>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20200322053916.391906-1-syq@debian.org>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <4d4b7b0f-7e55-c400-3b5f-5c9a04bac40f@cogentembedded.com>
Date:   Sun, 22 Mar 2020 11:33:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200322053916.391906-1-syq@debian.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

On 22.03.2020 8:39, YunQiang Su wrote:

> Since Linux 5.7, on MIPS, we use AT_BASE_PLATFORM to pass ISA level.
> The values may be:
>    mips2, mips3, mips4, mips5,
>    mips32, mips32r2, mips32r6,
>    mips64, mips64r2, mips64r6.
> 
> This behaivor is different with PowerPC.

    Behavior.

> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=e585b768da111f2c2d413de6214e83bbdfee8f22
> Signed-off-by: YunQiang Su <syq@debian.org>
> ---
>   man3/getauxval.3 | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/getauxval.3 b/man3/getauxval.3
> index 456371c6a..518faf5d3 100644
> --- a/man3/getauxval.3
> +++ b/man3/getauxval.3
> @@ -60,9 +60,10 @@ values are present on all architectures.
>   The base address of the program interpreter (usually, the dynamic linker).
>   .TP
>   .BR AT_BASE_PLATFORM
> -A pointer to a string identifying the real platform; may differ from
> -.BR AT_PLATFORM
> -(PowerPC only).
> +A pointer to a string (PowerPC and MIPS only).
> +On PowerPC, this identifys the real platform; may differ from

    Identifies.

> +.BR AT_PLATFORM "."
> +On MIPS, this identifys the ISA level (Since 5.7).

    Same here.

[...]

MBR, Sergei
