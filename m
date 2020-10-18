Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22FE0291797
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 15:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726657AbgJRNKh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 09:10:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725837AbgJRNKg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 09:10:36 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10ECC061755
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 06:10:36 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id e17so8373869wru.12
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 06:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QNCERSKaA8TUzdc2gv20BvxrccU0t6RnCwtivFyJA6g=;
        b=DmGCtlJAHHDqSstLG1xl0BCn9XFQLn1b88po8UnwAl8fgcaDuhpt8ssamJHsxcveWk
         SfZNHfXL84jL+8itXUR4h4yi9QDbyUlBl41u42+rah3BQw9EE2ulJWHPGRhLqdi9RIrh
         HT9mHxUqEXVh2tBTvWtzXeYSw/6PnRWDmogihZeohHVYMGJ0RvC+PZnhWrWu0Y84g5OV
         I+zwiE9GUeQP1C7bra6ngCxWjPQD7yADaLpQtksOptytBFuf9A7fPzYD6NEv46/EeDpP
         K8gFE+9Q9OIGN1Surr4t3QpKEKozwNJrHplbaKRLw+gPAio8BKqVtC887f7zhGVFd0KH
         Arog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QNCERSKaA8TUzdc2gv20BvxrccU0t6RnCwtivFyJA6g=;
        b=toVH+Lu12r3HX5KbJp71VDvVL2G/GbiIfZZiVE8AhWJKcIMaAOV5JnzPyzPNJwsNDA
         SBjkzTaE+hdP5Y6JeNo9Es8OrNVbbtdg8gWrrDsuaap+Piv7bioHwA8vr8tDoLCx9NFO
         RV1JQ0/5Dmbh2P9IsjC0ySy8oq4Fmf2wRFpUCDhsiiey5nYfmACF32YDaiT68FGS4Cq2
         DBnuiMDw0AYUC0E5yht/RR6JjpIICOOmu6pemnWDSzwu9Oivuw3bj/A01STl6wSII3EE
         nsjxyf4HBwMbD1cLHbRkSbNH19s8TgEGCumhXt93dxnfKNT3YhJipIYo+hNPCe60JgZP
         TDZw==
X-Gm-Message-State: AOAM531x+1YZCEgol1A8EYq+iL5gh1dA2IgJWTv7ukoNqfVFeeH/gGeK
        zJIxrtWwkPKxnD1HoeCBxJo=
X-Google-Smtp-Source: ABdhPJzGA0gLczkv6g1Huf3HcbUgXV7buZ9dvxSo89LCrb3138BX4odK6hTxOS0pu4GyNzB5qqJ7ig==
X-Received: by 2002:a5d:5086:: with SMTP id a6mr14735803wrt.283.1603026634447;
        Sun, 18 Oct 2020 06:10:34 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id v8sm12378839wmb.20.2020.10.18.06.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 06:10:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 2/3] system_data_types.7: Add 'clock_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201018094917.9293-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4f9d936f-3bdb-c450-75fd-6ba92396bf05@gmail.com>
Date:   Sun, 18 Oct 2020 15:10:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201018094917.9293-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/18/20 11:49 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 8a894b2e0..abc456f0b 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -85,6 +85,31 @@ See also:
>  .BR aio_write (3),
>  .BR lio_listio (3)
>  .RE
> +.\"------------------------------------- clock_t ----------------------/
> +.TP
> +.I clock_t
> +.RS
> +Include:
> +.I <time.h>
> +or
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <sys/time.h> .
> +.PP
> +Used for system time in clock ticks or
> +.B CLOCKS_PER_SEC
> +(defined in
> +.IR <time.h> ).
> +According to POSIX,
> +it shall be an integer type or a real-floating type.
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR times (2),
> +.BR clock (3)
> +.RE
>  .\"------------------------------------- div_t ------------------------/
>  .TP
>  .I div_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
