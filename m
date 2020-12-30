Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF0762E7D02
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 23:41:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726302AbgL3WlD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 17:41:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726293AbgL3WlD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 17:41:03 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B9EFC061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:40:23 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id q18so18776031wrn.1
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2MjOD7r54pV+fpXtcx4moD/nNgtRv/ajUbSGb4oRpko=;
        b=RWzBt/fZUKPF/LU62CwQG3SC8Gd+nSdptJnO8ip6mTfTWraKQwX2KMxJxrvLdK0+PV
         SzkytvxDo5MSrPT5JB1jrzuXFAHFq+wasUtJmfXq4Blp2Sj0lagNTwxm4eKCUgV3GxFt
         JKQ9E7k8sQigrAoM7k9EfT/L7Wnp97hBNr1Az4guP/vMSwj7TaMnzhaz+ekTye6Zsikp
         hakFkQN3Pnoo8W6gCkiwE3f+tFbGOdyXfLTK9BgGPkklqqIYgHlMiM7pxJfE9bg1FT5E
         D9yr0pv/bGglFw/ebNp1BLig3fy3AQtgbxqt/8ySPBx+/TrMUmqD/th0c4HBFzQMm54C
         MKrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2MjOD7r54pV+fpXtcx4moD/nNgtRv/ajUbSGb4oRpko=;
        b=fxPBCeAB1pOt1t5EmuLtnvqeyFovXMXJYyFxDiUhBQSDFWRkINIMRazZBC4iHg4g/J
         GCSYlFzvpYCt710QVMbrEDGA/yiWjoSwSEhAlDwsi0MGdw0mwKr7qkSlWPcsVc4IZ94+
         TDeQukNyBOzkqlzTUrNO+v8NYZK2dX8w69RrgjVggMV4gCispGWM5un7CkwwIpzMGJml
         hoZ3SQyKlU+15S0ppMAtdd9lx89GMJtz7wkKpbbmVFd4k/JEooj+0X43dyuEAZutW6si
         7V4GPdEhs21b34RMXfHPBbMgbBVBCH1ZmHnx2TwdGIq8xzTSVqc/WEZxNg2aNILdMlwI
         KMmQ==
X-Gm-Message-State: AOAM532ClU+BFqbyJMg3an5N9M21ZdK8gt9rUl8c5ZTDj1wIS96E9gDx
        5p99dy2IKlWSkPcoCNKObaT72vEZ8vY=
X-Google-Smtp-Source: ABdhPJzpCegI/q7H6TJVMOLXH8gWav9+QdT6hd4g8rI8Il0Hto8T7e7cqLOsoflsJCIgfzKNrlUHtQ==
X-Received: by 2002:adf:dec7:: with SMTP id i7mr62508868wrn.373.1609368021856;
        Wed, 30 Dec 2020 14:40:21 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id o7sm67423865wrw.62.2020.12.30.14.40.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 14:40:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] get_phys_pages.3: glibc gets the info from sysinfo(2)
 since 2.23
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201230214147.874671-7-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ff303eb6-ffd0-8567-1a72-72fd86671f0e@gmail.com>
Date:   Wed, 30 Dec 2020 23:40:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230214147.874671-7-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alewx,

On 12/30/20 10:41 PM, Alejandro Colomar wrote:
> See glibc's commit: 0ce657c576bf1b24
> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24
> 
> Reported-by: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/get_phys_pages.3 | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
> index 35f83fedb..a8a1ce3f4 100644
> --- a/man3/get_phys_pages.3
> +++ b/man3/get_phys_pages.3
> @@ -55,15 +55,20 @@ The system could not provide the required information
>  (possibly because the
>  .I /proc
>  filesystem was not mounted).
> -.SH CONFORMING TO
> -These functions are GNU extensions.
> -.SH NOTES
> -These functions obtain the required information by scanning the
> +.SH VERSIONS
> +Before glibc 2.23,
> +these functions obtained the required information by scanning the
>  .I MemTotal
>  and
>  .I MemFree
>  fields of
>  .IR /proc/meminfo .

Thanks for the patch. But I think it would be better to put 
all the info into NOTES, rather than splitting some out into
VERSIONS.

> +.SH CONFORMING TO
> +These functions are GNU extensions.

And it's good to add this, but let's make it a separate patch.

> +.SH NOTES
> +Since glibc 2.23,
> +these functions obtain the required information by calling
> +.BR sysinfo (2).
>  .PP
>  The following
>  .BR sysconf (3)


Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
