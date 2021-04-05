Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE4C9354189
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:33:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234748AbhDELc0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233431AbhDELcZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:32:25 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89913C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:32:18 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a7so16397050ejs.3
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+PInTMX9m4gaFiNsa6dEglWk2z2F2bXYLasXLkzfQ9A=;
        b=ZkyQlazcJls6pBfp1oB9QyA8qXZKGVO8lKg5icqD16wmmsoWAvwvCJdgkVLtSe1PAW
         SOor7MI3215lN4RIhCF93cF0eEyX7fCVCIYOdcoDRnit7GykBhEWa2uBzoViiXOLY4lg
         DxVWHcQNML4mSPycuBPE3LhQg92PgELfe5JyNGYwjD5bgiDHLcOH4WcvTizEOSJj1usl
         fz9Z6RgV9MA3YTs1FiTfzzhciFcbuOQMibzSi3m42ATFQxWlFrgTMZfDbY+ceLwSqOT2
         fj5VdKC3FSJCdl9VJfQ7/T/vQogw/BIV0os6LRK89JoaehBFFLPe2jsTtBnAPRHFWlTw
         /i1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+PInTMX9m4gaFiNsa6dEglWk2z2F2bXYLasXLkzfQ9A=;
        b=r6aTPxXZvPLC0n8sUbS1Arz//i0R2wJg7U73n3aq/t/EHoCGO5magzS+mICDwrHIR4
         yRncNotU9S3E9kniFGx64iP+2r9PhDZ5Iub/rMznnjwnJul+7cqeNLJJrhqpkl56tf7R
         f3I1kDbVWOVYZ8CnyYR8HxLo3b1DWB8HXAAsWO0AAi+yQDzMhP2nqahBUeO3hRUnsr6/
         QT51t9kaP93U1H9LbZMEADNo4+jpKU/cBKnPo4R/MeU5sVqw6ghOLP5zSdHyQc90YKGx
         SzYmvnOeYUke10jJs7n8nsGpcvzOjxl66z0Vln11o9E5IIOZD1lkF4g1Do3+FaUbsViP
         Ortg==
X-Gm-Message-State: AOAM530Jsvg3xa05wVqreTYXZI1tcL1C2oSDonQKNrylnW08KXt08p5o
        RpOCDSeopjCwx8qCRGMIEWg=
X-Google-Smtp-Source: ABdhPJySSoQj7S4H956rEPhEvSPyqAage+UouZcaPWIqrw0B3llho4MVh24b2GDLn34+TGvwGkGRnQ==
X-Received: by 2002:a17:906:d8a3:: with SMTP id qc3mr5518735ejb.353.1617622337323;
        Mon, 05 Apr 2021 04:32:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id l11sm689763edq.97.2021.04.05.04.32.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:32:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 13/35] dup.2: SYNOPSIS: Use consistent comments through
 pages
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-14-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <63ffcfb7-d370-f744-9f9c-eb09e5fe042a@gmail.com>
Date:   Mon, 5 Apr 2021 13:32:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-14-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/dup.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.

Thanks,

Michael


> diff --git a/man2/dup.2 b/man2/dup.2
> index 725b9d7d5..b9e0828b0 100644
> --- a/man2/dup.2
> +++ b/man2/dup.2
> @@ -45,7 +45,7 @@ dup, dup2, dup3 \- duplicate a file descriptor
>  .BI "int dup2(int " oldfd ", int " newfd );
>  .PP
>  .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
> -.BR "#include <fcntl.h>" "              /* Obtain O_* constant definitions */"
> +.BR "#include <fcntl.h>" "              /* Definition of " O_* " constants */"
>  .B #include <unistd.h>
>  .PP
>  .BI "int dup3(int " oldfd ", int " newfd ", int " flags );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
