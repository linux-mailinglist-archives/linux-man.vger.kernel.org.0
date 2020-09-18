Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69272270775
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:50:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726343AbgIRUu4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:50:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRUu4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:50:56 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6B27C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:50:55 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k18so6830471wmj.5
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SDQoDyeyI7pl9wPh8myLX+zxG4Cl1as2VaSO+k0uiFk=;
        b=a1/xD3aQTieA2bp2z+FqGla+myJjwXAHFfh2QyZmKjmShPFfONAFuVuWphawi7Qc1j
         MVI1/jEkpMyhRBHGzyhrfT001/AD7xk8JJ7LaYMMGYKL+0ClX2SkMywDwxxWfRcF3Tby
         qJ1Vqy4itH4uUuVwW3dJlCjV/qQYA37NyLZ+UOBfliA4T9QR2jkM/SK57h2boRzjVK6k
         U0CgR2bbRro7mraIztP0EpeGcwgYeMgM3UOAZqrp5310Cc28i/93rGvmkKoTfYWoTkn1
         QJDanY4PGpaG8i5KkH0pjJvfl8iJscCgoQQAOtgtKi2+UcMhxyQhdraDUotrZaHDgmMI
         1wvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SDQoDyeyI7pl9wPh8myLX+zxG4Cl1as2VaSO+k0uiFk=;
        b=bvwnTRZ6KVCWj7LeVTJVa9C36NGB7ERMy5tXdjbVMZGSjVGUGmMqwJZE8GgBamCweB
         V4Nx+2dFBjhxotAVe9ygGLeebQwos+FHeLogWc/zl+aH0npAxRFiVU7hX4UsY6XVQkIc
         NIs+UdgaPGSGIDbRzz9dlfGsEDllSlDRcw3hv75VsBklhzJ3rLm32CxFRAcN0dkqah17
         TEjwsl9oB6QhetlTs50XFTunihPRI5PT5jL/NR+FPQ7Dy0PXdF76faVlqgyxAyJQBeIX
         NjTEv7x+2eGSFx6aqEQZUpXQ4hXir6mJQhBtz2KkS3LVcaD0ZcTULVPmz5nKXvygbfuG
         Iw7Q==
X-Gm-Message-State: AOAM531pP4OVXSRH6IFrTeEP99LfEQvEVQu/Udhrxql9Zk4t0FAHFkFv
        mKwR9laxSseMCSfFGTsJpzM=
X-Google-Smtp-Source: ABdhPJx5tYFUw97uZpCDu37T+K1F1XENYtW2XvXlskd3/xqcqou0GZB3ieyymgrkeXHHIev4yE02oQ==
X-Received: by 2002:a1c:9ad0:: with SMTP id c199mr17488901wme.54.1600462254328;
        Fri, 18 Sep 2020 13:50:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n10sm7095917wmk.7.2020.09.18.13.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:50:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/9] system_data_types.7: srcfix: Add FIXME note: Add
 descriptions
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e140181-ff02-6cb5-a46b-7057436d685e@gmail.com>
Date:   Fri, 18 Sep 2020 22:50:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918170442.94920-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 7:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man7/system_data_types.7 | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 5352f3ef2..48871e4eb 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -96,6 +96,8 @@ typedef struct {
>                          * the end of substring */
>  } regmatch_t;
>  .EE
> +.\".IP
> +.\" FIXME: Add a description?
>  .IP
>  Conforming to: POSIX.1-2001 and later.
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
