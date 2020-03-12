Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 31A9C182AEF
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2020 09:14:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726028AbgCLIOn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Mar 2020 04:14:43 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43237 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725268AbgCLIOn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Mar 2020 04:14:43 -0400
Received: by mail-wr1-f67.google.com with SMTP id v9so6163297wrf.10
        for <linux-man@vger.kernel.org>; Thu, 12 Mar 2020 01:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kiXa/MAU4fnzy9Vmx3XK2rSbuOHGbTMEPtEIUstE1uI=;
        b=kVYYlvsBkSPJi1olci+y6sYVb+3dVXtpea+pk0Qp1YQrxQ18T+UYos4FHGdvUWUCbg
         ZtUB7kFUBiIWSkgV8UVIG88fXXtUjf+veq6ea2dZ4ZvKZppZ33jA9+ECILD0D7e97KRu
         cYWPmimJR8XN6zUW+apO2Cwtiq4Iw7/0DNt33mONhD0JeB1Qj6TO3+8lFvBPb2a4DqwT
         6RVKr1dKdumRE8ry9MW4/5RvzKJs5HkBh2+lV/boqMBcYHq2hMS5BOK5RnfjLJHQ7UoR
         dF2Qh8/y4aXW2RuV1A9wNCdVi99NZXtRRgc81t0dm4CS0+SH0ilkv9atVUMgT6KU8aOq
         Tb2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kiXa/MAU4fnzy9Vmx3XK2rSbuOHGbTMEPtEIUstE1uI=;
        b=W7Gtglqh9Sgj+Mt9H0Ea5lA4/xzL7yeE8L0M017LZBrIEIofxEEl0wDu7y+AAIjCvc
         wSIImzTKpf7cDPw9ID6byesJMrnPFKOhrwaYrte7OuZP4I9AOiNQWspxNJuUEpT0Q2Fj
         pdEAXSxPlafiPS/5Uc/zWETni0AaF+DM7R3iOBpIPTtidqwKtrDX5uNa87+/h5nb51Yl
         6urYWO5lRE/870AYgehYrL+0RydigB05Q/6hnTXB40N3mlK3FMV/lRYnkKA396tNUO+8
         qP5UN7qpO7BvjlSLf9CfqSd7bdFUGL5D2IyLSySZwiDScckz49pVpr9aPnvnYHEveT8P
         Mitw==
X-Gm-Message-State: ANhLgQ3bVGodTX/mmwoPQJzWTypIyaLP9mu+bkIKbM51YjUf6jGGmQ3k
        7S7TDgvdcxaEsabBfG1vU+wb6QpnMeU=
X-Google-Smtp-Source: ADFU+vvg7jL0tVaSP8R4h/u1MFPiD3UmEUHYiBhspvBf0MCTUd9ccNyW3Pgn0AOUIrGH0uUOvAKySg==
X-Received: by 2002:adf:fc06:: with SMTP id i6mr8865323wrr.285.1584000880941;
        Thu, 12 Mar 2020 01:14:40 -0700 (PDT)
Received: from [10.5.49.236] ([195.171.175.163])
        by smtp.gmail.com with ESMTPSA id a1sm33844520wru.75.2020.03.12.01.14.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:14:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] clone.2: tfix
To:     =?UTF-8?Q?Krzysztof_Ma=c5=82ysa?= <varqox@gmail.com>
References: <20200305213537.35763-1-varqox@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fb3c6ed3-9aeb-b2fc-3b85-7901de24c1d6@gmail.com>
Date:   Thu, 12 Mar 2020 09:14:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200305213537.35763-1-varqox@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/5/20 10:35 PM, Krzysztof Małysa wrote:
> Fix clone3() syscall description for CLONE_PARENT_SETTID: kernel uses
> cl_args.parent_tid instead of the specified cl_args.child_tid.

Thanks, Krzysztof, Patch applied.

Cheers,

Michael

> Signed-off-by: Krzysztof Małysa <varqox@gmail.com>
> ---
>  man2/clone.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index f9920ee66..39cec4c86 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -765,7 +765,7 @@ Store the child thread ID at the location pointed to by
>  .I parent_tid
>  .RB ( clone ())
>  or
> -.I cl_args.child_tid
> +.I cl_args.parent_tid
>  .RB ( clone3 ())
>  in the parent's memory.
>  (In Linux 2.5.32-2.5.48 there was a flag
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
