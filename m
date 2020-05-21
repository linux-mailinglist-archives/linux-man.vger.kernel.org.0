Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FAF81DDACD
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2020 01:14:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730749AbgEUXOC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 May 2020 19:14:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730626AbgEUXOC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 May 2020 19:14:02 -0400
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com [IPv6:2607:f8b0:4864:20::b44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 782CCC061A0E
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 16:14:01 -0700 (PDT)
Received: by mail-yb1-xb44.google.com with SMTP id g79so3680584ybf.0
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 16:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=prum5QcrbZCO0F65OHvFGChvc11UJdGytJaiM86CTfc=;
        b=EJO8LmragjkCPmJ41c+po3zpR8kk9FxzpYkfolWjsWm/p7Z1mDP1PIVanxntgtIjlu
         IIEJgNn+vOewvEKC794pIXsbPqh8K8K8K/z05EU22q84qbvWwXurP8L8pN2CTB1Lxn07
         wllQh86f2e/faYICaeOC4O1GSbyjHy6ie2HEZ5z7EIzd2FayPfgAoow1OdWChmponEJE
         qvX2TW9MTEBvPOGdbNguA6cGVH2G2Atn7Kta5orCn1jcJQ4/e2CD17+qZZDgy5e7Zgt7
         TvRbB7OI5BqzzfXt6+2b29plh5CGUZ4d80DMgmw4moH55QZMIUJEtiP0CnYYwk4t5Sck
         CiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=prum5QcrbZCO0F65OHvFGChvc11UJdGytJaiM86CTfc=;
        b=lbwCTDYtucFEsb7O2cPUoMyFhMRdBjMJ1NPEpzvvtWt7z4dG2IVHdrF5F0cHoPJK60
         cN77fX0bLOx2A58YcUUoLLBs2SFl6B+bUSCJ8WZrZD9/SN9+zV3mbyDbN1BA/LwwfvJc
         SuQA86dQQrsaEwVd9bz7X7eygDMUL/tz3Boj/v2tMC+aJuKhgfFCIfaDkHRLzRVOO/kR
         lwwuLKePwGKxgiSC5XjlQjYOVkZ7GhjPEnS8CVcx30bBn2Ct/eRbeyklguXZRuWWzV0B
         LG7wKmD5a5hh23Ueyy9ZhusbuDebGE0yIzBi/hJA/AxqiSTigunVB+oVhS5L2WW2OgPt
         jdBw==
X-Gm-Message-State: AOAM533CkCsiPj1bxmHVK28atHZq0MYhZXeVrF9kE6gdxnOIs310Vkp1
        RF+MMrfV+TolUImgd7YgkNYllDXPMECh4l03/Seq2NRWT+O0tA==
X-Google-Smtp-Source: ABdhPJwyeBZVNqGDDn7EXqfUoPtnSiRN0M0U3xT9gYtJelmdRXVjJEVDRKm0e+Um+Naji4fd1bnb3ChFlyDdmcHH2Ts=
X-Received: by 2002:a25:bb42:: with SMTP id b2mr18715117ybk.383.1590102840392;
 Thu, 21 May 2020 16:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200521222551.259804-1-irogers@google.com>
In-Reply-To: <20200521222551.259804-1-irogers@google.com>
From:   Ian Rogers <irogers@google.com>
Date:   Thu, 21 May 2020 16:13:48 -0700
Message-ID: <CAP-5=fXjXgWEgp9gqReByrDBTvjDbPEsubeAFxrpxj_+FsFn6w@mail.gmail.com>
Subject: Re: [PATCH] proc.5: add "wf" to VmFlags in /proc/[pid]/smaps
To:     Rik van Riel <riel@redhat.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        linux-mm@kvack.org, linux-api@vger.kernel.org, nilal@redhat.com,
        Florian Weimer <fweimer@redhat.com>,
        =?UTF-8?Q?Colm_MacC=C3=A1rtaigh?= <colm@allcosts.net>,
        Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, May 21, 2020 at 3:25 PM Ian Rogers <irogers@google.com> wrote:
>
> This patch documents a flag added in the following kernel commit:
>
> commit d2cd9ede6e193dd7d88b6d27399e96229a551b19
> Author: Rik van Riel <riel@redhat.com>
> Date:   Wed Sep 6 16:25:15 2017 -0700
>
>     mm,fork: introduce MADV_WIPEONFORK
>
> This was already documented in man2/madvise.2 in the commit:
>
> commit c0c4f6c29c494c466f3a2a6273c5b55b76a72927
> Author: Rik van Riel <riel@redhat.com>
> Date:   Tue Sep 19 20:32:00 2017 +0200
>
>     madvise.2: Document MADV_WIPEONFORK and MADV_KEEPONFORK
>
> Signed-off-by: Ian Rogers <irogers@google.com>

Doing a quick audit of fs/proc/task_mmu.c having noticed this flag was
missing I note:
 - "mp" isn't documented, only possible with INTEL_MPX
 - "nl" is documented but not present in show_smap_vma_flags
 - "um" and "uw" aren't documented

Thanks,
Ian

> ---
>  man5/proc.5 | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/man5/proc.5 b/man5/proc.5
> index 46d603f28..3e5b91af0 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -2020,6 +2020,7 @@ encoded using the following two-letter codes:
>      ht  - area uses huge tlb pages
>      nl  - non-linear mapping
>      ar  - architecture specific flag
> +    wf  - wipe on fork
>      dd  - do not include area into core dump
>      sd  - soft-dirty flag
>      mm  - mixed map area
> --
> 2.27.0.rc0.183.gde8f92d652-goog
>
