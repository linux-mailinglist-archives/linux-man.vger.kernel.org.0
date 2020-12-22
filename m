Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6023F2E0DC8
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 18:17:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727554AbgLVRQt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 12:16:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727264AbgLVRQt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 12:16:49 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2632BC06179C
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 09:16:09 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w5so15222446wrm.11
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 09:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C2reDzGuCa3dK9sENKQ1wJ/piOFbRaOp+FgkOMOFJdw=;
        b=VXPn3uhc1CrkK77NjiQl9QRMVplG23nTLopt4mapR4A/i1e8MlAXVMGmP/qNA6Fhxq
         4v8wjeuSm3GZsUis47OQWiL9Eu47rWC8fvYteWC+XhCRpneepjagoWiAKxO635DvS7D4
         XuPbCZNa7B2NrygHWYihHbdOn4b2wVgPXiXcxb6mBDepnuMww1ALN1ucRbu04+PyuBXI
         gkc6jvDwJEr/Pycssex5etK5SHwSACqbXTwUvP1qlZHr3+Mu0dDKkBQZE2Sa4syZtyWZ
         8oDIr8QYVQRROLp2SVj/pISvfooojSOc2EwxRV4GgrSU9s9E5eKziverDJt/fXOBzv6K
         mZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C2reDzGuCa3dK9sENKQ1wJ/piOFbRaOp+FgkOMOFJdw=;
        b=BtWw3gtC6WSf9W3CJkP0L2q61zofqth0lrrRTlVeAGYcyUE52adzVn75br67bu5klN
         I62Ty9kMzZO06I8mX96qRW+S63LPcDgOugnnQ01M9e2E2yoPZSVUKQOyaH0/lMMVJTWo
         SlArZYbrMoKBDL7vcA4nYdh6vHnxExhM8y87tPzA641GJjh/lrf1Iklc/K2DlB4pHOiI
         SKR8F/CDurGUsaNZEEeZf8I9CdC8jQuDrfDNBmeS/R1asdUgKXoqmkObFFRjqaTcBe49
         jeSMaQGWHgu09p+6lJctmbiEhXsXqngf638xPB47u1eVQe789dW7WmVeuwfRT8joeBD4
         KNHw==
X-Gm-Message-State: AOAM53041T++9vYKNk+1Sm1pRYMUH0/lS8QO/lq/TiqAGMmy7LnKpZw3
        q85ivXZ32jeMIXOAlPInVYSg7aYD1gmeuA==
X-Google-Smtp-Source: ABdhPJzpMXuExigHF05/Zj+HgCpQu3c7nkMEdMDR9IToThEkMR3sBX0BstNHHq6NybIZ412FQgm4Yg==
X-Received: by 2002:adf:a34d:: with SMTP id d13mr25499647wrb.194.1608657367644;
        Tue, 22 Dec 2020 09:16:07 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id x66sm27061090wmg.26.2020.12.22.09.16.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 09:16:06 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] syscall.2: Update superh syscall convention
To:     =?UTF-8?Q?Peter_Fr=c3=b6hlich?= <peter.hans.froehlich@gmail.com>,
        alx.manpages@gmail.com
References: <CAHXXO6EzZ-3iRj9tm-4N4-nrWDy44sZX=bq9N0wmL5L=PmWYLg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e871a76-e75b-5342-fc43-57d190f9139e@gmail.com>
Date:   Tue, 22 Dec 2020 18:16:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAHXXO6EzZ-3iRj9tm-4N4-nrWDy44sZX=bq9N0wmL5L=PmWYLg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/22/20 1:28 PM, Peter Fröhlich wrote:
> I noticed this while working on some silly "hello, world" programs,
> see https://git.sr.ht/~phf/hello-again if you're curious.
> Disassembling sh4 code showed trap #31 all over the place but the
> syscall(2) man page talked about trap #0x17 and friends. Checking the
> kernel sources I got lucky in arch/sh/kernel/entry-common.S where in
> commit 3623d138213ae Rich Felker clarifies the situation. (I would
> have cc'ed Rich but I cannot find his email.) I've attached the patch
> since I am less than convinced that gmail will properly preserve it
> inline.

Thanks, Peter. Patch applied.

Cheers,

Michael


> ---
>  man2/syscall.2 | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 986db9d11..87de539dd 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -216,7 +216,7 @@ powerpc64    sc    r0    r3    -    cr0.SO    1
>  riscv    ecall    a7    a0    a1    -
>  s390    svc 0    r1    r2    r3    -    3
>  s390x    svc 0    r1    r2    r3    -    3
> -superh    trap #0x17    r3    r0    r1    -    4, 6
> +superh    trapa #31    r3    r0    r1    -    4, 6
>  sparc/32    t 0x10    g1    o0    o1    psr/csr    1, 6
>  sparc/64    t 0x6d    g1    o0    o1    psr/csr    1, 6
>  tile    swint1    R10    R00    -    R01    1
> @@ -252,15 +252,9 @@ For s390 and s390x,
>  .I "svc\ NR"
>  if it is less than 256.
>  .IP [4]
> -On SuperH, the trap number controls the maximum number of arguments passed.
> -A
> -.IR "trap\ #0x10"
> -can be used with only 0-argument system calls, a
> -.IR "trap\ #0x11"
> -can be used with 0- or 1-argument system calls,
> -and so on up to
> -.IR "trap #0x17"
> -for 7-argument system calls.
> +On SuperH additional trap numbers are supported for historic reasons, but
> +.BR trapa #31
> +is the recommended "unified" ABI.
>  .IP [5]
>  The x32 ABI shares syscall table with x86-64 ABI, but there are some
>  nuances:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
