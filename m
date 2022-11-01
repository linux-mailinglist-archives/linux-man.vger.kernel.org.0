Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5928D61531C
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 21:22:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230185AbiKAUWP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 16:22:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230184AbiKAUWO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 16:22:14 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D9C11E72A
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 13:22:13 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id j4so25037905lfk.0
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 13:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=32gM9ij9ReudQCMZz8UHpUlimPf8ouoSZGi1g3QA/ck=;
        b=kfSJ6o5b7gVwwJXjjh2G15BwWSSl/TuxFMCUhelWwtYwb5rmPcOPbFXcCq5TxhHnb7
         0njYZWozFu43j6Pj3mfTCLUNnFYiNg34jJLGob6yZPiMfEXufRUFM7nN+BrbTlvhGATL
         X/GUGHrdB91kLbKOehE81NqbbWmmpPv1WdHFo2vZm7zEMpAW9VIsB/zrgdq9e6Mb6J/+
         3ajEj0KWo77lytpWP5EywqrxKVM+AoL2PKXuyNYqVcDM8SwhTN5k7HsMg1QUXHLYXbnZ
         ALsNz8CIWB4J430YRaYrvxBYPXxipF9QEr9alJz6GFG6Q9mc2beAITeWs+65kp4Y5pAk
         +rNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=32gM9ij9ReudQCMZz8UHpUlimPf8ouoSZGi1g3QA/ck=;
        b=mcQGoQMdaUWFupIxKDDfz/21vuYv9WyQtYoo8wwcoZVB1gMyjf54pBL9KAmEYdGLdk
         TEYxCuYrua/lCKw05WIXSX9n88vOnb1yBPkasucBexZfx1d492OFVgI0J+fJSFsJBFA5
         ALqWQzcvDlbPMiG3+csxVn4OfyIetet82PmloUtRFiha41MhpEdddZsvJS0tikDOILGd
         qdnwIvPTQ/nG194xwaFRj6OaxAJm2365IIqCWqFNY8JzkpdGJy9CWCHC6O7YeqB50rjr
         BcV5JEHQMA88e3HFGsbdL53vHf5b/gyaHUUTK7fhMKto+t1ZZXkfVWYHJZOb27QROKJM
         150w==
X-Gm-Message-State: ACrzQf2fVWwshSNwYU4pss5w7ergKTW9lEav3Yf3AOhwhuqwq9Vz0+ZB
        Ej1LwwpB88fYB28v3FRTr06pZh6XXaSmKUUIsy1YHw==
X-Google-Smtp-Source: AMsMyM766m4i2Ov5WZI57Hw8BxcLJ63yKovdNuYMc0YW4F7Bz0c+CRyiuljCAedMq9EzFtVCXmg+yO7KKJ3nfWt978U=
X-Received: by 2002:a19:6708:0:b0:4ae:d9b4:bd31 with SMTP id
 b8-20020a196708000000b004aed9b4bd31mr92670lfc.645.1667334131267; Tue, 01 Nov
 2022 13:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <20221101150323.89743-1-zokeefe@google.com> <d97032ba-0fb4-c182-f1fb-cc8411218b7f@gmail.com>
In-Reply-To: <d97032ba-0fb4-c182-f1fb-cc8411218b7f@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Tue, 1 Nov 2022 13:21:34 -0700
Message-ID: <CAAa6QmTR=BGyK3bp6gQunOFJxxddvExT9c_XD=JkSC5RFAepXA@mail.gmail.com>
Subject: Re: [PATCH man-pages v5] madvise.2: add documentation for MADV_COLLAPSE
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Alex!

On Tue, Nov 1, 2022 at 8:47 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Zach!
>
> On 11/1/22 16:03, Zach OKeefe wrote:
> > From: Zach O'Keefe <zokeefe@google.com>
> >
> > Linux 6.1 introduced MADV_COLLAPSE in upstream commit 7d8faaf15545
> > ("mm/madvise: introduce MADV_COLLAPSE sync hugepage collapse") and
> > upstream commit 34488399fa08 ("mm/madvise: add file and shmem support to
> > MADV_COLLAPSE").  Update the man-pages for madvise(2) and
> > process_madvise(2).
> >
> > Link: https://lore.kernel.org/linux-mm/20220922224046.1143204-1-zokeefe@google.com/
> > Link: https://lore.kernel.org/linux-mm/20220706235936.2197195-1-zokeefe@google.com/
> > Signed-off-by: Zach O'Keefe <zokeefe@google.com>
>
> Patch applied.
> See a minor edit below for curiosity.
> It was very nice to get this patch set improved and applied!
>

Awesome! Very excited to see it in :)

> Cheers,
>
> Alex
>
> > ---
> >
> > v4[1] -> v5
> > - Rebased to latest master
> > - (Alejandro Colomar) Applied diff to remove spurious file and fix
> >    semantic newlines.
> > - (Alejandro Colomar) Reworded documentation describing behavior of
> >    setting errno when multiple hugepage-aligned/sized regions fail to
> >    collapse.
> >
> > v3[2] -> v4
> > - Rebased to latest master
> > - (Alejandro Colomar) Fixed weird, non-ascii chars: e2 80 99 -> "'"
> > - (Alejandro Colomar) Replaced .BR with .B directive when the entire
> >    line was bold (no non-bold part)
> >
> > [1] https://lore.kernel.org/linux-man/20221031225500.3994542-1-zokeefe@google.com/
> > [2] https://lore.kernel.org/linux-man/bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com/T/#u
> >
> >   man2/madvise.2         | 91 +++++++++++++++++++++++++++++++++++++++++-
> >   man2/process_madvise.2 | 10 +++++
> >   2 files changed, 99 insertions(+), 2 deletions(-)
> >
> > diff --git a/man2/madvise.2 b/man2/madvise.2
> > index edf805740..038e6023d 100644
> > --- a/man2/madvise.2
> > +++ b/man2/madvise.2
> > @@ -386,9 +386,10 @@ set (see
> >   .BR prctl (2)).
> >   .IP
> >   The
> > -.B MADV_HUGEPAGE
> > +.BR MADV_HUGEPAGE ,
> > +.BR MADV_NOHUGEPAGE ,
> >   and
> > -.B MADV_NOHUGEPAGE
> > +.B MADV_COLLAPSE
> >   operations are available only if the kernel was configured with
> >   .B CONFIG_TRANSPARENT_HUGEPAGE
> >   and file/shmem memory is only supported if the kernel was configured with
> > @@ -401,6 +402,82 @@ and
> >   .I length
> >   will not be backed by transparent hugepages.
> >   .TP
> > +.BR MADV_COLLAPSE " (since Linux 6.1)"
> > +.\" commit 7d8faaf155454f8798ec56404faca29a82689c77
> > +.\" commit 34488399fa08faaf664743fa54b271eb6f9e1321
> > +Perform a best-effort synchronous collapse of
> > +the native pages mapped by the memory range
> > +into Transparent Huge Pages (THPs).
> > +.B MADV_COLLAPSE
> > +operates on the current state of memory of the calling process and
> > +makes no persistent changes or guarantees on how pages will be mapped,
> > +constructed,
> > +or faulted in the future.
> > +.IP
> > +.B MADV_COLLAPSE
> > +supports private anonymous pages (see
> > +.BR mmap (2)),
> > +shmem pages,
> > +and file-backed pages.
> > +See
> > +.B MADV_HUGEPAGE
> > +for general information on memory requirements for THP.
> > +If the range provided spans multiple VMAs,
> > +the semantics of the collapse over each VMA is independent from the others.
> > +If collapse of a given huge page-aligned/sized region fails,
> > +the operation may continue to attempt collapsing
> > +the remainder of the specified memory.
> > +.B MADV_COLLAPSE
> > +will automatically clamp the provided range to be hugepage-aligned.
> > +.IP
> > +All non-resident pages covered by the range
> > +will first be swapped/faulted-in,
> > +before being copied onto a freshly allocated hugepage.
> > +If the native pages compose the same PTE-mapped hugepage,
> > +and are suitably aligned,
> > +allocation of a new hugepage may be elided and
> > +collapse may happen in-place.
> > +Unmapped pages will have their data directly initialized to 0
> > +in the new hugepage.
> > +However,
> > +for every eligible hugepage-aligned/sized region to be collapsed,
> > +at least one page must currently be backed by physical memory.
> > +.IP
> > +.B MADV_COLLAPSE
> > +is independent of any sysfs
> > +(see
> > +.BR sysfs (5))
> > +setting under
> > +.IR /sys/kernel/mm/transparent_hugepage ,
> > +both in terms of determining THP eligibility,
> > +and allocation semantics.
> > +See Linux kernel source file
> > +.I Documentation/admin\-guide/mm/transhuge.rst
> > +for more information.
> > +.B MADV_COLLAPSE
> > +also ignores
> > +.B huge=
> > +tmpfs mount when operating on tmpfs files.
> > +Allocation for the new hugepage may enter direct reclaim and/or compaction,
> > +regardless of VMA flags
> > +(though
> > +.B VM_NOHUGEPAGE
> > +is still respected).
> > +.IP
> > +When the system has multiple NUMA nodes,
> > +the hugepage will be allocated from
> > +the node providing the most native pages.
> > +.IP
> > +If all hugepage-sized/aligned regions covered by the provided range were
> > +either successfully collapsed,
> > +or were already PMD-mapped THPs,
> > +this operation will be deemed successful.
> > +Note that this doesn't guarantee anything about
> > +other possible mappings of the memory.
> > +In the event multiple hugepage-aligned/sized areas fail to collapse,
> > +only the most recently-failed code will be set in
>
> I slightly changed the use of hyphens above with the following diff:
>
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index 038e6023d..331465cfc 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -475,7 +475,7 @@ .SS Linux-specific advice values
>   Note that this doesn't guarantee anything about
>   other possible mappings of the memory.
>   In the event multiple hugepage-aligned/sized areas fail to collapse,
> -only the most recently-failed code will be set in
> +only the most-recently\[en]failed code will be set in
>   .IR errno .
>   .TP
>   .BR MADV_DONTDUMP " (since Linux 3.4)"
>
>
> Rationale:
> <https://lists.gnu.org/archive/html/groff/2022-10/msg00019.html>
>

Appreciate the change, and thanks for the link -- very subtle. The
differences between various dashes (which I was only made aware of by
yourself) is still a little unclear to me.

Again, thank you so much for your patience and help throughout this
process -- I really appreciate it.

Best,
Zach

>
> > +.IR errno .
> > +.TP
> >   .BR MADV_DONTDUMP " (since Linux 3.4)"
> >   .\" commit 909af768e88867016f427264ae39d27a57b6a8ed
> >   .\" commit accb61fe7bb0f5c2a4102239e4981650f9048519
> > @@ -620,6 +697,11 @@ A kernel resource was temporarily unavailable.
> >   .B EBADF
> >   The map exists, but the area maps something that isn't a file.
> >   .TP
> > +.B EBUSY
> > +(for
> > +.BR MADV_COLLAPSE )
> > +Could not charge hugepage to cgroup: cgroup limit exceeded.
> > +.TP
> >   .B EFAULT
> >   .I advice
> >   is
> > @@ -717,6 +799,11 @@ maximum resident set size.
> >   Not enough memory: paging in failed.
> >   .TP
> >   .B ENOMEM
> > +(for
> > +.BR MADV_COLLAPSE )
> > +Not enough memory: could not allocate hugepage.
> > +.TP
> > +.B ENOMEM
> >   Addresses in the specified range are not currently
> >   mapped, or are outside the address space of the process.
> >   .TP
> > diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> > index ac98850a9..92878286b 100644
> > --- a/man2/process_madvise.2
> > +++ b/man2/process_madvise.2
> > @@ -73,6 +73,10 @@ argument is one of the following values:
> >   See
> >   .BR madvise (2).
> >   .TP
> > +.B MADV_COLLAPSE
> > +See
> > +.BR madvise (2).
> > +.TP
> >   .B MADV_PAGEOUT
> >   See
> >   .BR madvise (2).
> > @@ -173,6 +177,12 @@ The caller does not have permission to access the address space of the process
> >   .TP
> >   .B ESRCH
> >   The target process does not exist (i.e., it has terminated and been waited on).
> > +.PP
> > +See
> > +.BR madvise (2)
> > +for
> > +.IR advice -specific
> > +errors.
> >   .SH VERSIONS
> >   This system call first appeared in Linux 5.10.
> >   .\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
>
> --
> <http://www.alejandro-colomar.es/>
