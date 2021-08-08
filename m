Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFB943E3CE6
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 23:30:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhHHVbB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 17:31:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHVbA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 17:31:00 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 740F0C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 14:30:40 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so31434207pjr.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 14:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eIgKGn/RF5lWJrN+gzGfJ/ujGuBUJBCKuJi4vGpOmOk=;
        b=pZsUaDUKvF+gU/s5whU/ijgVZ9moiTJRk6L2X9nY4OpqNb0ef+W4f5Jl/b36vhXRVy
         BPswb5w+9oP8u8gOheNBwKAMdMRgQ/5YbYnmRrCRYSJZQ8fL+1n77vKpDSSPKIeGOCzM
         5VHql4uGFCVlRHtV+lIJtH3b6Kq/fM/dBisM94sQ5alJ7j3mGzdbQe+wyZ/lkpZ/l1T7
         VVHkyzcobDUlzb6/3q2Bloha7vWf5KkgWZvDjt2/kuIDDmUUe3UyeW4iwHUNbvWuAYXL
         qGOtlgh0jELaEiLYzODGuV6fEjeTsEkMTga0lPglGG3OZ6bAMhULkRZ17qczurpw2kKT
         X6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eIgKGn/RF5lWJrN+gzGfJ/ujGuBUJBCKuJi4vGpOmOk=;
        b=AeE/aRZpZruUlO/mHruN0G4d2E0RfThhHEroqFvxIJpjUzDAd8XolH8hC5Hg6smcpQ
         nbyQkWbrFJs51eoRqqr35HHSR/pSXoB3zKUQMyIovptoX0u4pyQj5728NFkgLPcOc5AM
         sWPz6I2lGiht1HtbZCAW2u3OUlPWPcEC68CV4LjLq5o/gVf33cYKHNaz8IoARN0+pV65
         b+0GRR//NI8d0fbTP9ktif0vxoExSnPcecUI64J7LZw7RqcbUOHGtb/QG2hKcf49qsrW
         EjviEY5ODAjozTtAOBLDSA+elQq7fHLapiaoLVQrT5iJBfn++F0k482SZtBf2P1FfJ9d
         e7JQ==
X-Gm-Message-State: AOAM533LSpZQhVx25Xzh6G/JszNHSxghCUNZkSsj92/Cns6qahkg4pLG
        W+8LjafKo5AMAT6GjZhtlExwHFNS1Vg=
X-Google-Smtp-Source: ABdhPJwdXS5olnVUCye3zNtTTfQ3mT7SupYdd+eYkKUVu5/DYL1rieUY4+3lmc3eypwDqvLYsynstA==
X-Received: by 2002:a63:134e:: with SMTP id 14mr1145890pgt.312.1628458239659;
        Sun, 08 Aug 2021 14:30:39 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id c14sm21079165pjr.3.2021.08.08.14.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 14:30:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 13/23] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-14-alx.manpages@gmail.com>
 <7a378d4c-36a5-be42-79fb-aeb1c160984c@gmail.com>
 <20210808211501.iokfmydpsrrshabg@pali>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <62a83b1c-bb88-722a-87ab-7016d9ae16da@gmail.com>
Date:   Sun, 8 Aug 2021 23:30:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808211501.iokfmydpsrrshabg@pali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali,

>> The Linux man-pages generally try to maintain historical and 
>> version info (at least back as far as 2.6.0), so I applied
>> the patch below.
> 
> Hello Michael! That is a good idea. Anyway, these ioctls were not added
> for all architectures as for some they are not needed (when version 1
> already contains everything what was introduced in version 2).
> 
> I collected all details which I found and I know in this email
> https://lore.kernel.org/linux-man/20210808210530.ykqrihpfmdabbdl2@pali/
> and it is something which should be properly documented. But I do not
> how to put these details into structured manpage...

It's not immediately obvious to me, either, how to do this.
Perhaps you eventually have some more ideas, but in the meantime,
thanks for the improvements so far.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
