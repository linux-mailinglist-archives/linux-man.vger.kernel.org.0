Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D27728224E
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 10:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725681AbgJCIBv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 04:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725648AbgJCIBv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 04:01:51 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7F60C0613D0;
        Sat,  3 Oct 2020 01:01:50 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l15so2482806wmh.1;
        Sat, 03 Oct 2020 01:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vuCwt/HhHLXbCNrxSYxh8rmLHgkWRSUuSZzo3V3bnzU=;
        b=uaW8pLwidd8y5z49rnqBXsRqXB7tmRS09/5CSrjqcEudalbI52Jqo12Cnt4dEGJN9c
         paxf8K31rfBftIKBE3OUbDGnNUKn20or17NmeTRNYnn/QSAI67Z4tuIQM56oCyjLNj4d
         g2GfHxaqPhmMreMD0AMDzkGgD5Xgmj1xPFEQHNS6Q9IZtWvCw+m6EgRHQueK4Pi830tM
         y3yhqX77rN2+AK9KYTFLRmYnaRwUoNxG0WDWUcXQEk1+xP91e9EOm6/yeGpWMbkh3JN0
         UZZs+59bIJUWYFOpiV1U8FbBAZ/nYLONgmGoHvD9DnJTEOgbh4rpsgP6L4eZ4Uq1DJBf
         POlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vuCwt/HhHLXbCNrxSYxh8rmLHgkWRSUuSZzo3V3bnzU=;
        b=OyyYmfHBk54ZSsI2b9On60bz3D6uzyQz8vj3Gr3HkcH0qdHvlPzaxfPEcf/XjOgLkJ
         xvUvDPDCXPe0OOfA6HDZBHNmFvtY4eSHxMxlPdoMztkneQLGWzgNsmmwy3o+2TeB8ux1
         RUURnf7gFABokbmkEMTUALFNIzf6BKzVlx0PNMzQ+HsIEoPKPEeAUapLHoIDjSl8xzT1
         ebLi4zII5bQ3oC805BjShMkTLNSi914c03+/ShauQNwyAKIKpxW+2Odfl+y2k3ytMUGi
         ykMnHuFkEzUe5sHx92oBcdCc9akQxyUWsRkfca1u/0h+C27YzhAxqI1LnAQOI8ZUtbri
         owAA==
X-Gm-Message-State: AOAM532nl4vDYeFByMKXZudYP2t8QSCKxIdRt5qVFQ/0JuMY+0oZPJBC
        l8cKAxuk9P4ZSYma8Mtrn7E=
X-Google-Smtp-Source: ABdhPJzOlZZPqJA9PSu9JywlEz8QeDlrsQRirMEIQoF5VbbDBIe2P9dWlWXXL+XdwGeUd16pr3JeRw==
X-Received: by 2002:a1c:2042:: with SMTP id g63mr6559588wmg.174.1601712109693;
        Sat, 03 Oct 2020 01:01:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id f5sm4310777wmh.16.2020.10.03.01.01.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 01:01:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        eggert@cs.ucla.edu, linux-kernel@vger.kernel.org,
        jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: Re: [PATCH v5 2/2] void.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
 <20201002192814.14113-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <836888b0-22c8-0904-aa9d-04c987c5ef41@gmail.com>
Date:   Sat, 3 Oct 2020 10:01:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201002192814.14113-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/2/20 9:28 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied.

And, I think we're now at a sync point.

Thanks,

Michael


> ---
>  man3/void.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/void.3
> 
> diff --git a/man3/void.3 b/man3/void.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/void.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
