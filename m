Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B69832D918
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 18:57:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232448AbhCDR42 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 12:56:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230464AbhCDR4F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 12:56:05 -0500
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83D73C06175F
        for <linux-man@vger.kernel.org>; Thu,  4 Mar 2021 09:55:25 -0800 (PST)
Received: by mail-il1-x12e.google.com with SMTP id f10so25116801ilq.5
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 09:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vVsAz+bfPua+BgXPwRsHjwhxV1PYCiqHXac39+Nd7vQ=;
        b=Ht9DAia0wRl1APiTezDx/62uZlAr7huxBCMyzegvKENlFmWag5T1fR9wZVFYXk46AO
         2DL45TWPor0JU6xZaBQXcGETKh5oKTaKrptllgd/4FhFJ18XAnGEvXw0aTUTO2duXocp
         7x4zr/V9wRLKlap3fHa1n2J5KMpcQuPb5x5dMgYmDe/YCYPLjh/iliUsPsLslzLaue6G
         s22qdLa5zOqU9l2zdn2T8PCBv3NhuZgYqX8cxNYr/2oA7TYChcRwbR2hWw8XT/Cjx2Bl
         WAOV5OXDESvk8TndQH7H3OJgTrgveItlr2DwN6TvdL/fGPegjzTIvVJ+A7UnPGaXd08I
         ltSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vVsAz+bfPua+BgXPwRsHjwhxV1PYCiqHXac39+Nd7vQ=;
        b=Ww3Z6wfE7WMWyAY83RexWq+wDb9fsz9DL+pLO/wQ10S6XMy+M/SiWrNnB1+x5itORm
         bhOrZfYgBZwmfCcwFud3tb1exPUWZ/fcTHp689nqcmyGhAiSWVo3oCPBoLR9lqHWoZND
         uJ8BGnA1Lw7N8yIQZMcv/PbctfwBUnjW8feyb2EkLT5R7Ol01OLMNWv1yK2Spm1F8l8i
         VVNQbTZ9o3lCFu7cqbbC1DFVwQWq8i1qSTL6TIn7kXr3goJXD17DUGRo2klwbRG7wDH4
         PTh1faODDEV7AIlA36DH1BiitTT1k2/BgFhDiXRgDrypzPWWr7/vhWxJDpbH702s+f66
         D4Hg==
X-Gm-Message-State: AOAM530aQ+brx14kdfGGN5Bru/gPm87X7bgBsqczHUVdaWkizn68eEa/
        +faiTafR3YaJrjSL4apQPtSrx23Xk9Q6rCzmY2mCrQ==
X-Google-Smtp-Source: ABdhPJzeN4MV9/0O1RDyM6JpznHJpH9JakxKdRL8bNri8FMMO5JTAk5AqM1bavcWQdCJa3jGoi/0CCZ84UUyi1rS45Q=
X-Received: by 2002:a92:d8d1:: with SMTP id l17mr5120394ilo.85.1614880524843;
 Thu, 04 Mar 2021 09:55:24 -0800 (PST)
MIME-Version: 1.0
References: <20210304163140.543171-1-peterx@redhat.com>
In-Reply-To: <20210304163140.543171-1-peterx@redhat.com>
From:   Axel Rasmussen <axelrasmussen@google.com>
Date:   Thu, 4 Mar 2021 09:54:49 -0800
Message-ID: <CAJHvVchMCEkjfkytajTXXUrgTjG35MA-taES_znhO-TygmPsiQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] man2: udpate mm/userfaultfd manpages to latest
To:     Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux MM Mailing List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 4, 2021 at 8:31 AM Peter Xu <peterx@redhat.com> wrote:
>
> v2 changes:
> - Fix wordings as suggested [MikeR]
> - convert ".BR" to ".B" where proper for the patchset [Alex]
> - rearrange a few lines in the last two patches where they got messed up
> - document more things, e.g. UFFDIO_COPY_MODE_WP; and also on how to resolve a
>   wr-protect page fault.
>
> There're two features missing in current manpage, namely:
>
>   (1) Userfaultfd Thread-ID feature
>   (2) Userfaultfd write protect mode
>
> There's also a 3rd one which was just contributed from Axel - Axel, I think it
> would be great if you can add that part too, probably after the whole
> hugetlbfs/shmem minor mode reaches the linux master branch.

Ack, this is on my list of "todos". Agree it makes sense to wait until
the code is in Linus' tree, then I'll send a patch for the man pages.

>
> Please review, thanks.
>
> Peter Xu (4):
>   userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>   userfaultfd.2: Add write-protect mode
>   ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>   ioctl_userfaultfd.2: Add write-protect mode docs
>
>  man2/ioctl_userfaultfd.2 |  81 ++++++++++++++++++++++++++--
>  man2/userfaultfd.2       | 111 ++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 187 insertions(+), 5 deletions(-)
>
> --
> 2.26.2
>
>
