Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D813BD341
	for <lists+linux-man@lfdr.de>; Tue, 24 Sep 2019 22:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728175AbfIXUFK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Sep 2019 16:05:10 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37485 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727602AbfIXUFK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Sep 2019 16:05:10 -0400
Received: by mail-wm1-f65.google.com with SMTP id f22so1539195wmc.2
        for <linux-man@vger.kernel.org>; Tue, 24 Sep 2019 13:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IsNgdlbPricpOFjFPrTHpeFJcQOHz0ck1bhA5dlgiIU=;
        b=lq0HiBLjzktdbmidALZYRu4XjOHAs5EnuYHXLwwki1ZVUiDOgw9GsH/iwybv2zR8gP
         R5YC+ieN59gwLQjUAc0BcFH+djfk+BmKggcKs58BROuRrQ12ZW9RkyE3t3d3ybozTI3f
         wIyh3DOkUQKKp2VuwZMwj/paWBNBYZbdef2SqhCP+zvsIvg1Iyp+/+shyIwskNiRYmny
         03fHv/aWChP7KgBSo0I0IgnwqSfTu3FpawhX00TrA0XAqatLTbf9b0uGe9cnioWvni06
         kEaEdEMb6fTzHNW621jOx0RF51tApt5t6OWLWdcQ9dTef2ibmFwT0/vaJ4uQAI91rAaP
         BZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IsNgdlbPricpOFjFPrTHpeFJcQOHz0ck1bhA5dlgiIU=;
        b=TKFVkZbUt5wNCtx8FlYNLkqEx/Lohjr0NHNCY/RlCU2YLsiVcGYzjgRE7jczZrME3T
         r1QEP7Yyl2re3QicCxxaaZ1pmeoOwVz7n7T/n9NVy5X9sN9WinpJJ5VfMdXWIV+qrFV0
         PkIl/vWa6b1Bw0Ts5aFsMkCoxLtxM48o5v087j9HrIyzUzSwsGywnuIhuFBfy235dZdH
         4sepJqMQi2JZ896wecoDRDar/7CUbD4tjZDXus7xf0/CMtp5MXQcCZeFzNlA1onQcNKl
         +nOcwRF3zQl+Td7xlI8X8dYMSTFf74xoYfQxM3BH1IPo/TUzWy+TSRAfv9Ep7uIPGbzv
         VQGA==
X-Gm-Message-State: APjAAAU00TPX8UnlUT1XXkj4QZtLoGPzs8cCmJmwN/smKsHe+KZ60aJU
        4BQ3RM4ctHTlw8AZ+/Nqntw=
X-Google-Smtp-Source: APXvYqyDvXCeT8UJrvc/86+dYho6SkkF6bsXku2jfWkUH0JMBR95BCr/RW5+pj90DVl/28O+v3/9Rw==
X-Received: by 2002:a7b:c8c3:: with SMTP id f3mr2105153wml.157.1569355507859;
        Tue, 24 Sep 2019 13:05:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:24d6:4e01:ef75:e978:47cd:1c50? ([2001:a61:24d6:4e01:ef75:e978:47cd:1c50])
        by smtp.gmail.com with ESMTPSA id t6sm1642766wmf.8.2019.09.24.13.05.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 13:05:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        benh@kernel.crashing.org, mpe@ellerman.id.au
Subject: Re: [PATCH v2] getauxval.3: Add new cache geometry entries
To:     Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
References: <9f0ee256-bc65-c850-a8ae-a833ca7a124d@gmail.com>
 <20190924131142.6126-1-rzinsly@linux.vnet.ibm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eb513b92-6ce6-a2e1-dbab-65764248931c@gmail.com>
Date:   Tue, 24 Sep 2019 22:05:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190924131142.6126-1-rzinsly@linux.vnet.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Raphael,

On 9/24/19 3:11 PM, Raphael Moreira Zinsly wrote:
> Add entries for the new cache geometry values of the auxiliary vectors
> that got included in the kernel.

Thanks the rewording, and also the explanation of the geometry 
value.

I've applied the patch.

Thanks,

Michael

> Signed-off-by: Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
> ---
>  man3/getauxval.3 | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/man3/getauxval.3 b/man3/getauxval.3
> index 794bc97b5..b78a63225 100644
> --- a/man3/getauxval.3
> +++ b/man3/getauxval.3
> @@ -123,6 +123,34 @@ The instruction cache block size.
>  .\" .TP
>  .\" .BR AT_NOTELF
>  .TP
> +.\" Kernel commit 98a5f361b8625c6f4841d6ba013bbf0e80d08147
> +.BR AT_L1D_CACHEGEOMETRY
> +Geometry of the L1 data cache, encoded with the cache line size in
> +bytes in the bottom 16 bits and the cache associativity in the next 16
> +bits. The associativity is such that if N is the 16-bit value, the cache
> +is N-way set associative.
> +.TP
> +.BR AT_L1D_CACHESIZE
> +The L1 data cache size.
> +.TP
> +.BR AT_L1I_CACHEGEOMETRY
> +Geometry of the L1 instruction cache, encoded as for AT_L1D_CACHEGEOMETRY.
> +.TP
> +.BR AT_L1I_CACHESIZE
> +The L1 instruction cache size.
> +.TP
> +.BR AT_L2_CACHEGEOMETRY
> +Geometry of the L2 cache, encoded as for AT_L1D_CACHEGEOMETRY.
> +.TP
> +.BR AT_L2_CACHESIZE
> +The L2 cache size.
> +.TP
> +.BR AT_L3_CACHEGEOMETRY
> +Geometry of the L3 cache, encoded as for AT_L1D_CACHEGEOMETRY.
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
