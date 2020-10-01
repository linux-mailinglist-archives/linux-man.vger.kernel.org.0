Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D520C27FE27
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:11:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731628AbgJALLG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:11:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731548AbgJALLF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:11:05 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F337C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:11:05 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x14so5185542wrl.12
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jGolOgB2MigqtqY42B7EhqQIhj1TzuYgfHoO2X0FxxY=;
        b=Cio/vkbS45mXfuPQ8cePnihjKe5br2vSOf4C2+QR7cUYco3VQ/A3V41lqBkNrt+Lld
         nk0F6XMDl3lDBID96sY4+ZJghxsHycXUWLPy8fUQ+5NF+cwwfzYSMtTZIx61AhU/G5Lu
         T6qasIPk0NQuxx9kiFJCCG8FcxguoLPI0SPSV1UtixAPSciwMERhpW0yH8J8ovaZHL8P
         D0+r8M0zsUlYqodqYXPlVJdBwx5HsFcc6BbDW56jJmAwmHHfzFjLSgHUgokW/VR6mcB8
         Hml7g1FGpSa9qCKTyQiHHg0+7CnZntE3Uzwo6SRkdRBj5b2c6Pc9J6GhjsNRIGNWiUVn
         LEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jGolOgB2MigqtqY42B7EhqQIhj1TzuYgfHoO2X0FxxY=;
        b=ebQqMRB7RUgyP/kakin1qldRcatwcK+ZFMVNV6FMs654/ho2Ffw4YdGQ25g++cZL9A
         etNHzovSrljS6pPjh/KYFqccrDtTQ/4Frw+oCxFmy0Sq5CN2wQjwrcK21LNQ3F7oAxip
         yCGvPr52Pt+aGJtjf/foiATAZRwawXYyH1u7UgnOlr6UJFcoGTQHbRgjWeeDemV+R+zd
         tTxkRVRbzwkADWalQRGHxf94JaWSWuEhV+nQHwSaxBGrjsojkDYb2eURy4+ogrM2hgPp
         tGfsbyWCRFIvFTrE6PAkJyo0hylrtXlKWYQyFqehgi375j6V/g0A3QzSj2SOpYMGNfov
         bpew==
X-Gm-Message-State: AOAM533vf6st8E5tc3nrcuISi4+dT7499O1Fi4KSoeFdmEcW0txfehZk
        yjtMuuhRqZebc0adzCnpMuLVDt2gsko=
X-Google-Smtp-Source: ABdhPJz8FjQe3D77+J39x7KBJMjunWB2S3+3e9zudL2fI520g3Fe5M6jhWgnBJLIPx8wT7kKFkGU0A==
X-Received: by 2002:adf:e9c3:: with SMTP id l3mr8166378wrn.63.1601550663988;
        Thu, 01 Oct 2020 04:11:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t15sm7982691wmj.15.2020.10.01.04.11.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:11:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] feature_test_macros.7: Update list of macros that inhibit
 default definitions
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20201001095419.6908-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b0871a4a-97a5-c183-6342-aaaede0a2a2b@gmail.com>
Date:   Thu, 1 Oct 2020 13:11:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001095419.6908-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/1/20 11:54 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man7/feature_test_macros.7 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Thanks, Jakub. patch applied.

Cheers,

Michael

> diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
> index 8c80b087e..2d7bcacfc 100644
> --- a/man7/feature_test_macros.7
> +++ b/man7/feature_test_macros.7
> @@ -672,10 +672,13 @@ and
>  If any of
>  .BR __STRICT_ANSI__ ,
>  .BR _ISOC99_SOURCE ,
> +.BR _ISOC11_SOURCE
> +(since glibc 2.18),
>  .BR _POSIX_SOURCE ,
>  .BR _POSIX_C_SOURCE  ,
>  .BR _XOPEN_SOURCE ,
> -.BR _XOPEN_SOURCE_EXTENDED ,
> +.BR _XOPEN_SOURCE_EXTENDED
> +(in glibc 2.11 and earlier),
>  .BR _BSD_SOURCE
>  (in glibc 2.19 and earlier),
>  or
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
