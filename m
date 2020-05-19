Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C28B61DA277
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 22:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726432AbgESUV2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 16:21:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726290AbgESUV2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 16:21:28 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D45ADC08C5C0
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 13:21:27 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id f13so12760edr.13
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 13:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UxQ4U5i4/FeHyLc3Pcov8ackEwhKapQ1CH8MU2i1Qp4=;
        b=gh9+u7ZgtEChnaZ1OLnyWbzbf7xAXaTPMcREedDe0SMVbv8Dd4zJSUKECWp++iulz6
         3JBrd79kSIKWCKmfaRFbLlKu0l2Umb7J2Y3NiOSFi1YhHSRFmWLG9c7gBqmXZbWp1uXt
         bGK7ma4sk4rqd6u3VRHe34dr1Mxsh4U7DonYBKIrJ4T/jYYlmhu9mmm0W9n3O2y64E0G
         qy5AS3w2EK79FJft977v5plN6bnbRyUDmIhsx/G6ygx9smclR5MbuM6A+i4rdBociacz
         JqFZOdT9KH50d28XgOZdlfOwiVQYdaStH65C4XT+eam0mM6BnytAZ05eFIKne3cAEbvr
         V1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UxQ4U5i4/FeHyLc3Pcov8ackEwhKapQ1CH8MU2i1Qp4=;
        b=PjXxQ2GPnobFrSJDaf5xbelkrvV2lvSXAwKCoU+C+RuJRZ58GIHioBoeSeYgVS7diy
         w84GcgeSHXDMF+AqE6B9ENLchlFZ5606UnIBSPir9o0o0DSit1SF1fsDhE4dh2tyniqZ
         2IGQXjchtxwuHw14aqebvIqgeWieCHc62Ywd2yE6YJez/4vZdrNRytaRA/erF4DZJ5wM
         Pu+M7VRjLFoVfowEcA3Eazfhd3E+6pABDoB14yDZRNgiiIpVcEU5KWYrjqA6ulo+jvL9
         xNKY/8X8IsshIEsaeQLr3jsrVmREaQDtVyBx3cMP38/sK38WMPt4Iv+UW92NKBldNn5X
         VWaA==
X-Gm-Message-State: AOAM533XX3G0/gLpni53hmSaX4mCMwDSX6YP4T0emXcInmIJRMEiPhyY
        RmkNS5DSXIUOzT897VmHg2A81D66K3k=
X-Google-Smtp-Source: ABdhPJzKuUyygOTj5KCplcg2Ip2ZhqsHOIiT4rcFKC4y+nUKPu7XWpe+OAA8aplCJrP14vTLiSzLmQ==
X-Received: by 2002:aa7:dd0a:: with SMTP id i10mr509605edv.291.1589919686328;
        Tue, 19 May 2020 13:21:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id k2sm264826ejv.71.2020.05.19.13.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 13:21:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] dlsym.3: Extend discussion of NULL symbol values
To:     Alexander Monakov <amonakov@ispras.ru>
References: <20200516100250.16402-1-amonakov@ispras.ru>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5706e2be-9f00-6ea9-96f5-bb7ace9c2e22@gmail.com>
Date:   Tue, 19 May 2020 22:21:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200516100250.16402-1-amonakov@ispras.ru>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alexander,

On 5/16/20 12:02 PM, Alexander Monakov wrote:
> Avoid implying that use of IFUNC is the only way to produce a symbol
> with NULL value. Give more scenarios how a symbol may get NULL value,
> but explain that in those scenarios dlsym will fail with Glibc ld.so
> due to an implementation inconsistency.
> 
> Signed-off-by: Alexander Monakov <amonakov@ispras.ru>

Thanks for the nicely written patch! Applied.

Cheers,

Michael

> ---
> Hello!
> 
> Michael, in
> https://stackoverflow.com/questions/13941944/why-can-the-value-of-the-symbol-returned-by-dlsym-be-null
> you're in agreement with Petr Skocik that dlsym failure on NULL absolute symbols
> is a Glibc bug. I'm also in agreement.
> 
> In any case, current wording implies that apart from IFUNC there's no way a
> symbol will have NULL value, which is not true: the symbol may have NULL value,
> only it can't be looked up via dlsym. This patch clarifies the situation.
> 
> Thanks.
> Alexander
> 
> 
>  man3/dlsym.3 | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/man3/dlsym.3 b/man3/dlsym.3
> index 8a1ae7789..5ea151209 100644
> --- a/man3/dlsym.3
> +++ b/man3/dlsym.3
> @@ -143,16 +143,22 @@ The
>  .BR dlvsym ()
>  function is a GNU extension.
>  .SH NOTES
> -The value of a symbol returned by
> +There are several scenarios when the address of a global symbol is NULL.
> +For example, a symbol can be placed at zero address by the linker, via
> +a linker script or with
> +.I --defsym
> +command-line option. Undefined weak symbols also have NULL value.
> +Finally, the symbol value may be the result of
> +a GNU indirect function (IFUNC) resolver function that returns
> +NULL as the resolved value. In the latter case,
>  .BR dlsym ()
> -will never be NULL if the shared object is the result of normal compilation,
> -since a global symbol is never placed at the NULL address.
> -There are nevertheless cases where a lookup using
> +also returns NULL without error. However, in the former two cases, the
> +behavior of GNU dynamic linker is inconsistent: relocation processing
> +succeeds and the symbol can be observed to have NULL value, but
>  .BR dlsym ()
> -may return NULL as the value of a symbol.
> -For example, the symbol value may be the result of
> -a GNU indirect function (IFUNC) resolver function that returns
> -NULL as the resolved value.
> +fails and
> +.BR dlerror ()
> +indicates a lookup error.
>  .\"
>  .SS History
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
