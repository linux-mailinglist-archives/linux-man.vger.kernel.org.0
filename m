Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2238B3E3CE9
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 23:34:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232670AbhHHVek (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 17:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232674AbhHHVej (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 17:34:39 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 430B3C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 14:34:19 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id j18-20020a17090aeb12b029017737e6c349so17565815pjz.0
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 14:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vJkWXpbr/7tmLno6JB3Dibyv+Wf11Uy3zwuNXaDUtbE=;
        b=LbsKKGyiyJ7/ryJneVGID4T9ziNzZoZXnGJjIsDOHACrzMLv2z6laTgMV/DRMcydll
         15uqZPXPgEifelWUrd1s7kwSAhxJmMojlxsTTnkrTbkOispGyjRiTjoPT+7ptK+QUMx3
         G0WXUiGYn5rdPbY2DhbDExtDFjFjjhRKrGvQChtf0W8bBrb7a7cjDd3LsF9kIkexapUE
         MbSs5Nh99+wr9HiVIxUcvlplg81qL5vHuJEufRg38L2xErNFnSEwQyDRC6sWrKRbw7kw
         DZaudFFQ0MbfZsql5TbRIM5T99+9/JWl/GvXBVahUKRzOd/Rbn7ep/b3BIb8KVlKTepx
         heaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vJkWXpbr/7tmLno6JB3Dibyv+Wf11Uy3zwuNXaDUtbE=;
        b=mTa+Yh/nXJWRRPJFTsAoDHuqBtQC35IDqoiE3Gf6HnQ5XS682KHX0aWglPu62EeuQr
         pR9gjmRsvNNms+eTS+bM3BTJ/4vp6lBPtBqbbjzfyCgXevN2xv474GQWvyWIdOw7JJuk
         ww0HQkpfABJWCgHcSPaMWXEyiHORdcho7vi9RLvHtK+EEGus9DSUL5Ruia2mfOAjxWlu
         /peVsn2StQ8LMsBE0NIkAUpVuqwOLuXBrbx7sNnr4Ryi4xdlZ4LDrPIFjneufOolx0wo
         gv0fmt6M8bxkwo31qLNwfZAJTlEayQDn1SxT47R+fOk1d4RNV/rBiyTYysOBvGsB3pO4
         FOdw==
X-Gm-Message-State: AOAM530HO+gfFGJrF7wX1OgmN4ocqdCdunatEhciRB2ajAgguK/l+JG2
        7UMAsHSdP7lcCbHhBhzl+yAhJ0b9DYM=
X-Google-Smtp-Source: ABdhPJx33fq9cfLpvW74hW/JmLWbQrjjPd3jlR+VYnQFKrW38ZAO7/5YjzpMTPKhIUNBk0P8v4+pVw==
X-Received: by 2002:a17:902:dac9:b029:12c:c84a:ce2b with SMTP id q9-20020a170902dac9b029012cc84ace2bmr17808104plx.4.1628458458627;
        Sun, 08 Aug 2021 14:34:18 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id a2sm4550096pgb.19.2021.08.08.14.34.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 14:34:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 00/32] Patches from others
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <24704e97-8302-8d8a-43e7-8c4e23620db2@gmail.com>
Date:   Sun, 8 Aug 2021 23:34:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Here is a patch set including patches from others, patches of mine fixing
> bug reports of others, tweaks to others' patches, and small patches of mine.
> 
> I resent in this patch set all the patches that I sent a few weeks ago,
> so you can ignore any older threads of mine.

Hi Alex,

I think I've now dealt with all of tese, except for two 
that you reposted in a following series.

Thanks for taking care of all of these patches!

Cheers,

Michael

> --
> 
> 
> Alejandro Colomar (11):
>   readv.2: Minor tweaks to Will's patch
>   vdso.7: Remove outdated limitation for powerpc
>   vdso.7: Add y2038 compliant gettime for ppc/32
>   posixoptions.7: Fix legacy functions list (s/getcwd/getwd/)
>   printf.3: wfix
>   futex.2: Minor tweaks to Kurt's patch
>   capabilities.7: Minor tweaks to Kir's patch
>   seccomp_unotify.2: Minor tweaks to Rodrigo's patch
>   strstr.3: Add special case for empty needle
>   sigaction.2: Apply minor tweaks to Peter's patch
>   strlen.3, wcslen.3: Add recommendations for safer variants
> 
> Dan Robertson (1):
>   man2/fallocate.2: tfix documentation of shared blocks
> 
> Jakub Wilk (3):
>   seccomp_unotify.2: tfix
>   proc.5: tfix
>   scripts/bash_aliases: tfix
> 
> Kir Kolyshkin (3):
>   capabilities.7: tfix
>   user_namespaces.7: fix a ref
>   capabilities.7, user_namespaces.7: describe CAP_SETFCAP
> 
> Kurt Kanzenbach (1):
>   futex.2: Document FUTEX_LOCK_PI2
> 
> Peter Collingbourne (1):
>   sigaction.2: Document SA_EXPOSE_TAGBITS and the flag support detection
>     protocol
> 
> Richard Palethorpe (1):
>   wait.2: Add ESRCH for when pid == INT_MIN
> 
> Rodrigo Campos (1):
>   seccomp_unotify.2: Add doc for SECCOMP_ADDFD_FLAG_SEND
> 
> Sagar Patel (1):
>   tkill.2: tfix
> 
> Shawn Landden (1):
>   execve.2: Fix absolute/relative pathname
> 
> Thomas Voss (1):
>   Various pages: Consistently use '*argv[]'
> 
> Viet Than (1):
>   time.2: wfix regarding year-2038
> 
> Will Manley (1):
>   readv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS section
> 
> kXuan (1):
>   recv.2: tfix
> 
> Štěpán Němec (2):
>   path_resolution.7: tfix
>   namespaces.7: fix confusion caused by text reorganization
> 
> наб (2):
>   ascii.7: add vertical rule to separate the two columns
>   pipe.7: also mention writev(2) in atomicity sexion
> 
>  man2/bpf.2                |   2 +-
>  man2/copy_file_range.2    |   2 +-
>  man2/execve.2             |   9 ++-
>  man2/fallocate.2          |   2 +-
>  man2/futex.2              | 110 +++++++++++++++++++++----------
>  man2/membarrier.2         |   4 +-
>  man2/perf_event_open.2    |   2 +-
>  man2/readv.2              |  11 +++-
>  man2/recv.2               |   2 +-
>  man2/seccomp.2            |   2 +-
>  man2/seccomp_unotify.2    |  30 ++++++++-
>  man2/sigaction.2          | 133 ++++++++++++++++++++++++++++++++++++++
>  man2/time.2               |   2 +-
>  man2/tkill.2              |   2 +-
>  man2/wait.2               |   9 +++
>  man3/bsearch.3            |   2 +-
>  man3/getopt.3             |   2 +-
>  man3/getsubopt.3          |   2 +-
>  man3/printf.3             |   2 +-
>  man3/pthread_setname_np.3 |   2 +-
>  man3/strlen.3             |   6 ++
>  man3/strstr.3             |   8 +++
>  man3/wcslen.3             |   9 ++-
>  man3/wordexp.3            |   2 +-
>  man5/proc.5               |   2 +-
>  man7/ascii.7              |   2 +-
>  man7/capabilities.7       |   9 ++-
>  man7/fanotify.7           |   2 +-
>  man7/namespaces.7         |   4 +-
>  man7/path_resolution.7    |   2 +-
>  man7/pipe.7               |   2 +
>  man7/posixoptions.7       |   2 +-
>  man7/user_namespaces.7    |   8 ++-
>  man7/vdso.7               |  27 +-------
>  scripts/bash_aliases      |   2 +-
>  35 files changed, 330 insertions(+), 89 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
