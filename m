Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 560232A0E79
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 20:20:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727318AbgJ3TUR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 15:20:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727394AbgJ3TSw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 15:18:52 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A6B7C0613CF;
        Fri, 30 Oct 2020 12:18:51 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x7so7651179wrl.3;
        Fri, 30 Oct 2020 12:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IrqyDdMvE+JRoxAk0MitbhLtaLtVtioGwkRtLnVXhjI=;
        b=Q8UWGuaUdpOZOxFlJeo+0oULNHZOeF+d4H9IVO8eySyMqnQzVteo45TO5LbvwYLfuo
         oFsDM8w8wX+oojpeQ34TSgfZlJrWx3KyElfjLq6nk/jbbdUaSZzvwxvJXV/XpzzXzqu0
         n8uQMUb0qH+hFD6qq9UVWLf4HEtutadJ7o8HxfyAJyuzRIVKs7t+x+PEu+0SClMOZv3Y
         HNo16y6RfzphDX3X0cl2KYIeIjUMkOT/MPkRjA49yfz0/BPEabbr5EBYBPEyVlEa1k9y
         NK5JaOcSsLI7qH55urPYCoBaKzthA8QjwVblD7imY+aSwdjnEMRT0KbpWoFWV9hs0Aba
         JRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IrqyDdMvE+JRoxAk0MitbhLtaLtVtioGwkRtLnVXhjI=;
        b=SntI9wmA4ZUrkmfkWXtvt/lDU4kSC2ywFQ6eohbM0wdbcXk8fVEMeC8xtUhufBjPhi
         WMcYhfQscpSN82tUjXfnnC/ioT3v4YeJblOecZ0G4TmQKgzbLsm8p+kbAeqcekJEqzv5
         NK71ncChRWxWyPfWYYkNFrbfnf6tHZdHlswbf4YAQTUYI5Zey5nfGhDp6HBi4O9V4zNt
         vt+UNn/HneKVkGG0nMDV293/XZnrn21IlX6MFPxPgRtvciwdWzOg+MIzXPfHg4tdmLQT
         uz+xTLP4m5d/s2l3vF7Y6bhEoiElE30LcxfJYXCo9G9bsM5Nibgt4BozJ2nYzDUfa5su
         BrvQ==
X-Gm-Message-State: AOAM533Y7CL0BOnMw4vlR6MAS1strAkTfwqTRQwL61G6mywI0LDETiCR
        0GCH4ciAHI29LK2AQmMqqZ5REOwReGE=
X-Google-Smtp-Source: ABdhPJz1g3k1ZxPyZhhlG2zkxLi40WxeZ5ikkdQDUqsy3nOOpRbyHRzUVhdTGlTt4fvE0tyoPc1FeQ==
X-Received: by 2002:adf:f212:: with SMTP id p18mr5204719wro.386.1604085529607;
        Fri, 30 Oct 2020 12:18:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id v24sm11953700wrv.80.2020.10.30.12.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:18:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] futex.2: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cc2918a3-5413-7f88-46b1-c73c1d24d27a@gmail.com>
Date:   Fri, 30 Oct 2020 20:18:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/30/20 1:39 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Hi Alex,

I've applied this patch, but would prefer to avoid such
patches in the future. Nothing is actually broken in the 
old version, so I tend to regard such patches as unnecessary
chur,.

Thanks,

Michael

> ---
>  man2/futex.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index f82602c11..837adbd25 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -25,8 +25,8 @@ futex \- fast user-space locking
>  .SH SYNOPSIS
>  .nf
>  .PP
> -.B "#include <linux/futex.h>"
> -.B "#include <sys/time.h>"
> +.B #include <linux/futex.h>
> +.B #include <sys/time.h>
>  .PP
>  .BI "int futex(int *" uaddr ", int " futex_op ", int " val ,
>  .BI "          const struct timespec *" timeout , \
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
