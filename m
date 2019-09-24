Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6BFFBBC10F
	for <lists+linux-man@lfdr.de>; Tue, 24 Sep 2019 06:27:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390377AbfIXE1m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Sep 2019 00:27:42 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:56106 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727043AbfIXE1m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Sep 2019 00:27:42 -0400
Received: by mail-wm1-f66.google.com with SMTP id a6so421746wma.5
        for <linux-man@vger.kernel.org>; Mon, 23 Sep 2019 21:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=c7FGu3yL/rRnLYU5tSVDPa6868uqcK//CgPC/gTR4Sc=;
        b=T/rqpKa0ipOUxVDRkNFF5uVD1z11ZPbC3fY3zi7JbxaFVYkeI/hHy8gGjJTKIaN6NS
         q6C/mchvyGB6k+aF1uTPpTcdOlOmFgQHLzVeB22MdVXYtTS/VyP4+veEvVHWicOfMyM/
         UmSvO5wMJmQ2gkvtEbn14C3q+OQzjaYbor3CIWZ/FIXAWK8Uyh34zqFMQ7m782lQKKxS
         JL+bA0PVYj74oC03TJNwIXNWEQ4i2OaGbHczSlD+V/qJHtxdGxwj3fXWU+iZUj7XsIov
         /LTDH6u09taEdMTtVdXW/RvNyzevAUcyLovuFNiEqDnfjGntXXoMTNW2CdDxH9vdHqxA
         0Mmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=c7FGu3yL/rRnLYU5tSVDPa6868uqcK//CgPC/gTR4Sc=;
        b=fdh7fw0drFzLu3jQ2EedY/puE9oSrWuzv/fEl84NOzQ3uu9yAgfaHfKJg5g9ePtTrS
         /1Ntpw+WLuezeJ9SuUZg/h49UqwquGIkV67rDlIdvE7M1LSwjPbigThvBQ6/voN7B2QH
         j1GDt+lrYCXxABA9TEAtbKYRVOA8hzYwFb6RlNiMu/YpEoYf2j/FlApgm046aqvQbSH5
         kpuwG0yba/YgLFoLNKz6PJ7Y7pmaqHsoiE57W6Km7PmTQzukuDYi1e/1AWNeoAEn5QkR
         ZJL9D2oVKFh3gYn2hqTgJGf5Nv6byw0KKszb9HVQbU4bEw7Y6gTwXLY2JRnOTtPuUPKS
         ASkA==
X-Gm-Message-State: APjAAAWJMktKQpD5W4Kh7EuFeEriuAokWQ8pScCzKfECE0I/MWv8uUxa
        ehDHOz7K2HlKFlX7+e0T0Ew=
X-Google-Smtp-Source: APXvYqwUaUsM/juj7AmI0IEVybMzCN0aesVPG5Nix0f4FpGYnNqXX/3yv3N2lRBnEWm3IUm4RoxHmg==
X-Received: by 2002:a1c:7fcc:: with SMTP id a195mr826255wmd.27.1569299260049;
        Mon, 23 Sep 2019 21:27:40 -0700 (PDT)
Received: from ?IPv6:2001:a61:24d6:4e01:ef75:e978:47cd:1c50? ([2001:a61:24d6:4e01:ef75:e978:47cd:1c50])
        by smtp.gmail.com with ESMTPSA id a14sm423047wmm.44.2019.09.23.21.27.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 21:27:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        benh@kernel.crashing.org, mpe@ellerman.id.au
Subject: Re: [PATCH] getauxval.3: Add new cache geometry entries
To:     Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
References: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9f0ee256-bc65-c850-a8ae-a833ca7a124d@gmail.com>
Date:   Tue, 24 Sep 2019 06:27:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Raphael,

On 9/16/19 8:41 PM, Raphael Moreira Zinsly wrote:
> Add entries for the new cache geometry values of the auxiliary vectors
> that got included in the kernel.
> 
> Signed-off-by: Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
> ---
>  man3/getauxval.3 | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/man3/getauxval.3 b/man3/getauxval.3
> index 794bc97b5..30f0757b5 100644
> --- a/man3/getauxval.3
> +++ b/man3/getauxval.3
> @@ -123,6 +123,33 @@ The instruction cache block size.
>  .\" .TP
>  .\" .BR AT_NOTELF
>  .TP
> +.\" Kernel commit 98a5f361b8625c6f4841d6ba013bbf0e80d08147
> +.BR AT_L1D_CACHEGEOMETRY
> +Geometry of the L1 data cache, that is, line size and number
> +of ways.

Thanks for the clarification of "ways" in you other mail.

So, I think what could be added here is how these two pieces
of  information are encoded into the value. Could you add a
sentence here? The other CACHEGEOMETRY entries could then
just have a sentence "Encoded as for AT_L1D_CACHEGEOMETRY."

Thanks,

Michael

> +.TP
> +.BR AT_L1D_CACHESIZE
> +The L1 data cache size.
> +.TP
> +.BR AT_L1I_CACHEGEOMETRY
> +Geometry of the L1 instruction cache, that is, line size and
> +number of ways.
> +.TP
> +.BR AT_L1I_CACHESIZE
> +The L1 instruction cache size.
> +.TP
> +.BR AT_L2_CACHEGEOMETRY
> +Geometry of the L2 cache, that is, line size and number of ways.
> +.TP
> +.BR AT_L2_CACHESIZE
> +The L2 cache size.
> +.TP
> +.BR AT_L3_CACHEGEOMETRY
> +Geometry of the L3 cache, that is, line size and number of ways.
> +.TP
> +.BR AT_L3_CACHESIZE
> +The L3 cache size.
> +.TP
>  .BR AT_PAGESZ
>  The system page size (the same value returned by
>  .IR sysconf(_SC_PAGESIZE) ).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
