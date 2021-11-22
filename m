Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C4D645938E
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 18:00:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233819AbhKVRDO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:03:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230370AbhKVRDN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:03:13 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5E2FC061574;
        Mon, 22 Nov 2021 09:00:06 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id y196so16073168wmc.3;
        Mon, 22 Nov 2021 09:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FtCcbTrUYRVGjyYuCKh5umY2iqsyOwVwL4ku8j12JiI=;
        b=iHXjcImlDkZ5ot4jZ/x1lPSVD+7cHWSOOYR4BuhjKJM9fixHYMea/VPh42YKDtUW7+
         J1A0KrRd421sTiQo4hTXgMAzIOG7A4L2Q634N4TSf9v0oqfAzXzRcSn01Ol5ql2v83ub
         kk8TPOqZ63gBfp2AwXA9p5BoQS7N/kNjOivtywJV7/J8JxCGkLampsDSvLbCe9gHQrgi
         Cq0C7vnKymCnRTFN+0AxMW2jrKIfZrgNF8dc363cTlj4BU/CvaaPFoRAj4FGAuKu/vSg
         zsxcyezvorqRYpnCe0sWTkqFD40fAk+RCPWh7Q2t16vMjTfMlVkD6G+Pbeg7ddnTePZz
         ozmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FtCcbTrUYRVGjyYuCKh5umY2iqsyOwVwL4ku8j12JiI=;
        b=Bw36YMlYrE7NxBj9SEQmXhp7sEoiTfrwNsVw6T1vjSUpm8L/GENL7W0dtQ23wTm8Ai
         8+HkF1nt2r/iJLxxbtG/r7eK0s8pLZv3lpGuR9X9+6JklzAJzYa9rDBOfgaXd2itnvxt
         j8F246GQJ3EJ7jXAOVKFR/BBbD1RuNGOCXpG8M1bbw0n0z/1x6VRIL2DMOPW5XZshRGM
         fMNmQ0jGlNkGJiiQbTXlZ8c7OIwy2NlIZXI4eWGBRUAIXIQJSlDMWOTFwN89UYCu7YRe
         T5VdTsmD00ch46uCu5QSmqAi3dheAQtPjFA5cHFxIfyQ2eqRJVlTM9Mx1H1n7X3ah5ZH
         oP0Q==
X-Gm-Message-State: AOAM532uLlLhhFA+qGJxDr9r5IhMIl2+Y1EKcufcLynvcOmETqNuQHk5
        siaNskpVawhM2K2SwgYRP9w=
X-Google-Smtp-Source: ABdhPJyAeG4dyZexLhhaNk0pYyUPdyIXPyGBt68fxduV+gE6Rnu17DR/s8KZpEAxXBUeU/dFdAysBw==
X-Received: by 2002:a05:600c:4793:: with SMTP id k19mr32837762wmo.72.1637600405162;
        Mon, 22 Nov 2021 09:00:05 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a9sm8908171wrt.66.2021.11.22.09.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 09:00:04 -0800 (PST)
Message-ID: <2b0b02c6-7488-548e-8ed4-1bb17712f8f9@gmail.com>
Date:   Mon, 22 Nov 2021 18:00:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] mmap.2: ENOMEM possible when exceeding VA space
Content-Language: en-US
To:     Topi Miettinen <toiwoton@gmail.com>
Cc:     linux-mm@vger.kernel.org, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <20211111180417.8382-1-toiwoton@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211111180417.8382-1-toiwoton@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Topi,

On 11/11/21 19:04, Topi Miettinen wrote:
> A bit surprisingly, mmap(2) returns ENOMEM when the virtual address
> space of the CPU is exceeded.
> 
> The expectation could be EINVAL instead ("We don't like _addr_,
> length, or offset (e.g., they are _too large_, or not aligned on a
> page boundary)").
> 
> This is demonstrated with the following program:
> 
>   #include <stdio.h>
>   #include <sys/mman.h>
> 
>   int main(void) {
>   	for (int i = 12; i < 64; i++) {
> 		void *addr = mmap((void *)(1UL << i), 4096, PROT_NONE,
> 				  MAP_ANON | MAP_FIXED_NOREPLACE | MAP_PRIVATE,
> 				  -1, 0);
> 		if (addr == MAP_FAILED)
> 			fprintf(stderr, "mmap %lx: %m\n", (1UL << i));
> 		continue;
> 		munmap(addr, 4096);
> 	}
>   }
> 
> It gives the following output when running on CPU with 48 bit VA
> space:
> 
> mmap 800000000000: Cannot allocate memory
> mmap 1000000000000: Cannot allocate memory
> mmap 2000000000000: Cannot allocate memory
> mmap 4000000000000: Cannot allocate memory
> mmap 8000000000000: Cannot allocate memory
> mmap 10000000000000: Cannot allocate memory
> mmap 20000000000000: Cannot allocate memory
> mmap 40000000000000: Cannot allocate memory
> mmap 80000000000000: Cannot allocate memory
> mmap 100000000000000: Cannot allocate memory
> mmap 200000000000000: Cannot allocate memory
> mmap 400000000000000: Cannot allocate memory
> mmap 800000000000000: Cannot allocate memory
> mmap 1000000000000000: Cannot allocate memory
> mmap 2000000000000000: Cannot allocate memory
> mmap 4000000000000000: Cannot allocate memory
> mmap 8000000000000000: Cannot allocate memory
> 
> Signed-off-by: Topi Miettinen <toiwoton@gmail.com>

Patch applied!

Thanks,
Alex

> ---
>   man2/mmap.2 | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index 96b7444b0..59fd5c904 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -603,6 +603,11 @@ limit, described in
>   .BR getrlimit (2),
>   would have been exceeded.
>   .TP
> +.B ENOMEM
> +We don't like
> +.IR addr ,
> +because it exceeds the virtual address space of the CPU.
> +.TP
>   .B EOVERFLOW
>   On 32-bit architecture together with the large file extension
>   (i.e., using 64-bit
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
