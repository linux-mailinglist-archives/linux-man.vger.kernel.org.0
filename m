Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B677F2706E0
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:20:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726159AbgIRUUK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRUUK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:20:10 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF101C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:20:09 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id s13so6425025wmh.4
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=T1P56WulgZtwGZrBV40EFq2C2HaauwrNMHMmVaS/fsw=;
        b=cBTDnj6FHZOV9wBLSYAtc5eEfZCkWQP3/eoC7A/RUSPNmhe/EG59xRdrBkhVf7DoMn
         yj3YOAJkBpk5bh5x8QHN/JGi9HOV6VQJs2mh8MA0LXlbnzrTC9KdDfYl20JHBJe+ozO+
         ATPVLd/IabVxcej2tcJfthEACXVsgXZH2qacJNuX+NiN049iKy1nhTIwDgG/cPWnj8zo
         HQ2qBei26I/2VSgUw49PuBdJBtFC73+3y0DLuyQ8S2bRTTcUzGozZl6LTsB+ST+aNBR+
         lcrpGp0UzMGV5kSexS4/PhTIC7z2Eh5KWkDziYMdWf1M9abxqnzea11Wu9Y7yVfoXeYB
         W5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=T1P56WulgZtwGZrBV40EFq2C2HaauwrNMHMmVaS/fsw=;
        b=qPoFLYjvcY9ZL/JzecSSgvZhsOTygEbcTQTBEnnKM1VuEupkIzZtogTXQD4WUyhJjN
         ldWJ4L15Y/iEl1Af0AhUbwHw7wJ9dyWMTmV8ccq0j2kO78CvXe8xC0R3GvZOT2wB5s6X
         9muZ7s5IT5Vt5BsrFP2wZggS/HCJLWW1MJGudiU2OMZC9Tto1xVehX2sh3X/hm0oPXNC
         aCLVuzLPSaa+rEFKE5bdzBdl/L0VJC8nilciOk/D1bb+SuYZrauJPk6WSfw75COevDIT
         McvUCxRX0Y9la0MoJH7IyhnMa5FtZzvWmydYeQuQijobPotl8/MDpQDSNaez11HHAaqF
         v3PQ==
X-Gm-Message-State: AOAM530+fA46i2ItL+nFWDDHn8S0aaZA9oYiDNSymlzrsdKDRdBuG0WU
        0L2fcJYOqnF0r50/lWmk9rY=
X-Google-Smtp-Source: ABdhPJwHiOZRMY6jjtguQflm3de0x7Pu4p5DxQHJxR6Q9sO5XylOUVO+hwFOSv3/3/xHzrdhsSgjGw==
X-Received: by 2002:a1c:bdc4:: with SMTP id n187mr17129179wmf.109.1600460408583;
        Fri, 18 Sep 2020 13:20:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v17sm7869171wrc.23.2020.09.18.13.20.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:20:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 4/4] ptrdiff_t.3: New link to new documented type in
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
 <20200918120440.30281-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <17c0002f-165c-9222-7c60-57e84c6318fe@gmail.com>
Date:   Fri, 18 Sep 2020 22:20:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918120440.30281-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 2:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man3/ptrdiff_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/ptrdiff_t.3
> 
> diff --git a/man3/ptrdiff_t.3 b/man3/ptrdiff_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/ptrdiff_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
