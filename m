Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDFE6351BD6
	for <lists+linux-man@lfdr.de>; Thu,  1 Apr 2021 20:12:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236677AbhDASLU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Apr 2021 14:11:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237858AbhDASEn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Apr 2021 14:04:43 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA9F3C0613B1;
        Thu,  1 Apr 2021 05:00:30 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id x16so1557317wrn.4;
        Thu, 01 Apr 2021 05:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IN8ma/Di2llyrq0H/t/B4q1AvpJ/EKX/tn/NrDgiOPo=;
        b=NF9+CybshsLJC4JuAI+jV/yXLbq7pjAZf9ZSHdQ0WJEI8c9SymKyVThTP6FHpe/2Ct
         DNYd4RW3Wo9MXqdcdtywsadSESKmNKi4Bhtl+wkCE7Y2Q2iurIck4+JwlKq3WwKJy200
         Ysf2KZg+3VHRf7eG9kSSrwAV+PbNhXeq+rgHEuqkHdEpvy7xM1FkJBS3Y3ygB70AQZ3e
         eV1BxBpAkF6kvMvKj2ZQQJsMRzo2pqCQmoXRBo4j0ImYvHZPy+8LMUZxZUNDDwqm7Kdj
         wyRVHAiEI9Cj4pM15rfKtxKUuToiGBbSTrstpTObEogTVHhbsz8SOma1BN5Lyj3a8Op/
         qpRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IN8ma/Di2llyrq0H/t/B4q1AvpJ/EKX/tn/NrDgiOPo=;
        b=hjs+coMNFGIDk6KgqULy+BV1lYfOyvaiI3IaKk+I+9vMLEQXupjVuU2OtA6OZ34PLv
         lc2tg1WNexqrBsDDMEdxqCtuMPikD0USJlk2shHnnhAlcQuz0nyxtPCqak85NXa4KoXj
         ULPKIuw9dqdbzHM1ocr3Fl5fI/T24S+jX8Fk34W6ybKZaFbrhT8iYr8c8L1osCAFVk7Q
         ez+0molWk3kg8oMdKl9JcS0YNvcmeyJeqtiGbjPDxrZIiX/kFkgni/ZtnWMynKgtpjc+
         68GirUiWqMIc99qN/+nVwyObWPQRsmjnp4Q97acSCA/rG9YIULky23zDS5uCMnx2j9FP
         ZzVg==
X-Gm-Message-State: AOAM532opkxuZkpkwqz7vVrwokFJL7n8EeKIKaNQJ40U8PvICyRHVs2L
        lsxrriN7pMeummB2+KW/fBA=
X-Google-Smtp-Source: ABdhPJzpjYtrF2kVsDEgbJBP4aFj+go6/vx/MuIjXCtxMLpnHvHXJ3i009fdqrpu5QmTLXIcPLjEvA==
X-Received: by 2002:a5d:564b:: with SMTP id j11mr9364649wrw.326.1617278429421;
        Thu, 01 Apr 2021 05:00:29 -0700 (PDT)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w22sm8770829wmi.22.2021.04.01.05.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 05:00:28 -0700 (PDT)
Subject: Re: [PATCH v5 0/4] man2: udpate mm/userfaultfd manpages to latest
To:     Peter Xu <peterx@redhat.com>, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Cc:     Axel Rasmussen <axelrasmussen@google.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
References: <20210329221833.517923-1-peterx@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <76f5d3a7-626e-563b-c1bd-d318a476a8ed@gmail.com>
Date:   Thu, 1 Apr 2021 14:00:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210329221833.517923-1-peterx@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

On 3/30/21 12:18 AM, Peter Xu wrote:
> v5:
> - add r-bs for Mike R.
> - Fix spelling mistake "diable" [Mike R.]
> - s/Starting from/Since/ for patch 2 (also replaced two existing ones in the
>    same file) [Alex]
> - s/un-write-protect/write-unprotect/ [Alex]
> - s/The process was interrupted and need to retry/The process was interrupted;
>    retry this call/ in the last patch. [Alex]
> 
> v4:
> - Fixed a few "subordinate clauses" (SC) cases [Alex]
> - Reword in ioctl_userfaultfd.2 to use bold font for the two modes referenced,
>    so as to be clear on what is "both" referring to [Alex]
> 
> v3:
> - Don't use "Currently", instead add "(since x.y)" mark where proper [Alex]
> - Always use semantic newlines across the whole patchset [Alex]
> - Use quote when possible, rather than escapes [Alex]
> - Fix one missing replacement of ".BR" -> ".B" [Alex]
> - Some other trivial rephrases here and there when fixing up above
> 
> v2 changes:
> - Fix wordings as suggested [MikeR]
> - convert ".BR" to ".B" where proper for the patchset [Alex]
> - rearrange a few lines in the last two patches where they got messed up
> - document more things, e.g. UFFDIO_COPY_MODE_WP; and also on how to resolve a
>    wr-protect page fault.
> 
> There're two features missing in current manpage, namely:
> 
>    (1) Userfaultfd Thread-ID feature
>    (2) Userfaultfd write protect mode
> 
> There's also a 3rd one which was just contributed from Axel - Axel, I think it
> would be great if you can add that part too, probably after the whole
> hugetlbfs/shmem minor mode reaches the linux master branch.
> 
> Please review, thanks.
> 
> Peter Xu (4):
>    userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>    userfaultfd.2: Add write-protect mode
>    ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>    ioctl_userfaultfd.2: Add write-protect mode docs

I applied all 4 patches (with a few minor fixes to 1/4 and 4/4 (cosmetic 
fixes; some of them about the 80-col right margin)): 
<https://github.com/alejandro-colomar/man-pages/tree/eb8f2001d493d458d08b9b87605ed2ac453c7f5f>

Thanks!

Alex

> 
>   man2/ioctl_userfaultfd.2 |  89 +++++++++++++++++++++++++++-
>   man2/userfaultfd.2       | 121 +++++++++++++++++++++++++++++++++++++--
>   2 files changed, 203 insertions(+), 7 deletions(-)
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
