Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 06F8A18288A
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2020 06:44:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387810AbgCLFoL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Mar 2020 01:44:11 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:35941 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387802AbgCLFoL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Mar 2020 01:44:11 -0400
Received: by mail-wm1-f65.google.com with SMTP id g62so4847994wme.1
        for <linux-man@vger.kernel.org>; Wed, 11 Mar 2020 22:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SrOUyVyzy4pM7WcjCbBH0hOeslRZHUiugcoIT9Qny6M=;
        b=FPL2zUe+e5kcNVwjtDCYsawPFqP4RhOpTTC+lsD5dHxxGM00fccLQxaVOoZcK63dCL
         a+KirecsHbtJRQ6/Sln/1himv10cNPg2b9tJArE85bkxiUsIP4pIlKZq1Q4lRCue179v
         6OLt7+Kr+mv7WlrJdRBdut2McGZa2x11gO/yrRkoZhgNzwQlHDchjH2gwy0GvOhYpvab
         3c/rRsWUhDRq6R4QQrLlwOdKorw3yMa7xgH7Mwzxcuqlu+cLMJh50YbotqQ3/BnAC/6s
         n+Taw15SX34kLf0lU/w/9Bba8s3mEDqvt1rQisQADNiHEnsAyHChmMoUC52hj2VNE8Ay
         iU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SrOUyVyzy4pM7WcjCbBH0hOeslRZHUiugcoIT9Qny6M=;
        b=jMX+0taa/L9shhKRhy7Z+zF2Z0uyJVg6R7oeMRyORhXQe3MmLLHv2f2EDaq5Qm6acq
         hk2/1/QVfOJqWhxvHgtZVkQ7WCnyAjyUWU+eQO25jb9djjKGJRjupPogHEW8CPgILteg
         2/oNgO4NC4/evkT/9AuzwtmjsV8QXpkLfUtQonoaY6h0gjUJZYxgbljo4qfB0L5TFQ4m
         Rm+Y39HFww+W+TXdjrIEFPcd6AJDe7ErlClJpqbjwp93hF/+YlytOWA2udEYfW84AEP8
         tjAuBnESl9LZ4v1QvAcYxK6Gd/vY3nPC7fB9I6I8ovrIh+/DV/3snnmdFvl4CIL4fxGw
         MgaQ==
X-Gm-Message-State: ANhLgQ0fRjzVajBDI+8zOklJX4kHHnoPu9RwuWcOxab/v6geMO/4Jm9W
        WAWr8G0rh3cxBql+asWR/rJUvDecDEI=
X-Google-Smtp-Source: ADFU+vuIM38WaIzaI7f8C/gowJVkJTNpcQzWBB1k8GgqtaQuTXmhhvxScc19zhnJI9C8mI8W/vvPHA==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr2855907wmk.104.1583991847369;
        Wed, 11 Mar 2020 22:44:07 -0700 (PDT)
Received: from [10.5.49.236] ([195.171.175.163])
        by smtp.gmail.com with ESMTPSA id 19sm11530909wma.3.2020.03.11.22.44.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 22:44:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mlock.2: fix missing func styling
To:     Mike Frysinger <vapier@gentoo.org>
References: <20200306060057.21910-1-vapier@gentoo.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1af27ba3-0b3a-be5a-5089-65f9e1574232@gmail.com>
Date:   Thu, 12 Mar 2020 06:44:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306060057.21910-1-vapier@gentoo.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/6/20 7:00 AM, Mike Frysinger wrote:
> Signed-off-by: Mike Frysinger <vapier@gentoo.org>

Thanks, Mike. Patch applied.

Cheers,

Michael

> ---
>  man2/mlock.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/mlock.2 b/man2/mlock.2
> index 1e3d13257d1c..920b09d969ee 100644
> --- a/man2/mlock.2
> +++ b/man2/mlock.2
> @@ -273,7 +273,7 @@ glibc support was added in version 2.27.
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, SVr4.
>  .PP
> -mlock2 ()
> +.BR mlock2 ()
>  is Linux specific.
>  .SH AVAILABILITY
>  On POSIX systems on which
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
