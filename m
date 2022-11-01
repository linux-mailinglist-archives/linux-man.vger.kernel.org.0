Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 615DA614261
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 01:38:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiKAAim (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 20:38:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiKAAil (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 20:38:41 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02ADB15FD3
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 17:38:40 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id bp15so21615234lfb.13
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 17:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7zsi25LUppNRGZUBCxJU8+sdcNTiVadS3JzFP7kRgEw=;
        b=VCtELJc8MpnTOhzvmwq1D92X+KwkHolIGDSCmNDgPra9ucS1f6mhIp62SoWfyCJgvw
         QX/0JG0kVF21JoOSe3WNSiNlz4zRJh8IAMyTZ1GssiHcgQVYh0eZekrLSKCfkTOPrVHW
         kYWu4glDoOBenOdZEiU4GTYUWP7Dw0v8etUF4PPe87M9rfifPB+tEoRstKvXoAzAoScz
         1ljOwAMWpJjJMO72fAVAAGnCmGv3+LNwdsqDpoNIgVbxYLpscdiGklcOKES1iQT7mujz
         stEcjGKOA7ey8xMQA4h61Ollrfv5xoWKxFY3j0vuJfs38Y+QYIAscmUrFiScApbUiAPk
         lI3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7zsi25LUppNRGZUBCxJU8+sdcNTiVadS3JzFP7kRgEw=;
        b=PA8AdcNHauJXMXzNvPtEDxsa5WwvbIOPk4UDaJ2Itwyg2TfIpycE7Jb912W/HBxhcQ
         YDI6Gxse611luGUakAIxIs6b9+QySE1YdSWalyqH3dKFOWgOLTkkfjw+EW7ZkTGRo9M/
         8Vv9XOCJ70L6Zbr52OZsGwLWpDWAPvM0IX1XlAzWJVBSq4Amx8WpJ/tRqz/ra30Uun5h
         vpKj3tr5KqQzEh/anrrvpMbVSoIQ15v9EqxIGq6qT4Sbb0LXBxhySaistVyDKPWuUEd5
         2ULNUJSZeVTxI2aR7TY47jqaO+ZPYsB4COA/a9YOjCvuQqcHRTdRaXBtHLPTwr4+W/tJ
         Y7ag==
X-Gm-Message-State: ACrzQf0GDsqbFT/C2v0c6Qd10y9Zg5myfqT7mBwnwxRJBaw52dfd5wnd
        Flz/R/cp32fo9hKLDIcMfZ3RnhX0iRTQaVk/vZYb6o07zf4=
X-Google-Smtp-Source: AMsMyM5aJ9tUtcJltmfyJ8qfpfIyIflHP9MUtBpl3kb/WyJW4FwimsgcmcBCPhYkHRt2tWslVvUOBmwrqA9jU3j7cRk=
X-Received: by 2002:a05:6512:2282:b0:4a2:7dc5:6630 with SMTP id
 f2-20020a056512228200b004a27dc56630mr6377087lfu.645.1667263118098; Mon, 31
 Oct 2022 17:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <20221031225500.3994542-1-zokeefe@google.com> <4b4a42ee-9243-96aa-b581-d56ae420f84a@gmail.com>
In-Reply-To: <4b4a42ee-9243-96aa-b581-d56ae420f84a@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Mon, 31 Oct 2022 17:38:01 -0700
Message-ID: <CAAa6QmQN1u5ynyE7Lce9xEKwRQpG6OU8ZOcgFk5nc1h-AN4YgQ@mail.gmail.com>
Subject: Re: [PATCH man-pages v4] madvise.2: add documentation for MADV_COLLAPSE
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

Hey Alex,

On Mon, Oct 31, 2022 at 4:37 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hey Zach!
>
> On 10/31/22 23:55, Zach OKeefe wrote:
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
> Okay, now I have some more comments:
>

Thank you :)

> - A few changes about semantic newlines.  See a diff at the bottom of this email
> that you can apply.
>
> - An accident.
>
> - Some paragraph I don't really understand.
>
> Cheers,
>
> Alex
>
> > ---
> >
> > v3[1] -> v4
> > - Rebased to latest master
> > - (Alejandro Colomar) Fixed weird, non-ascii chars: e2 80 99 -> "'"
> > - (Alejandro Colomar) Replaced .BR with .B directive when the entire
> >    line was bold (no non-bold part)
> >
> > [1] https://lore.kernel.org/linux-man/bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com/T/#u
> >
> >   man2/madvise           |  0
> >   man2/madvise.2         | 90 +++++++++++++++++++++++++++++++++++++++++-
> >   man2/process_madvise.2 | 10 +++++
> >   3 files changed, 98 insertions(+), 2 deletions(-)
> >   create mode 100644 man2/madvise
> >
> > diff --git a/man2/madvise b/man2/madvise
> > new file mode 100644
> > index 000000000..e69de29bb
>
> Heh!  This was a funny accident.  I realized because autocomplete showed it as a
> possibility. :)
>
> The diff at the bottom removes it.
>

Sorry about that - thanks for noticing!

> > diff --git a/man2/madvise.2 b/man2/madvise.2
> > index edf805740..dca42c7d6 100644
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
> > @@ -401,6 +402,81 @@ and
> >   .I length
> >   will not be backed by transparent hugepages.
> >   .TP
> > +.BR MADV_COLLAPSE " (since Linux 6.1)"
> > +.\" commit 7d8faaf155454f8798ec56404faca29a82689c77
> > +.\" commit 34488399fa08faaf664743fa54b271eb6f9e1321
> > +Perform a best-effort synchronous collapse of the native pages mapped by the
> > +memory range into Transparent Huge Pages (THPs).
> > +.B MADV_COLLAPSE
> > +operates on the current state of memory of the calling process and makes no
> > +persistent changes or guarantees on how pages will be mapped,
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
> > +the operation may continue to attempt collapsing the remainder of the
> > +specified memory.
> > +.B MADV_COLLAPSE
> > +will automatically clamp the provided range to be hugepage-aligned.
> > +.IP
> > +All non-resident pages covered by the range will first be
> > +swapped/faulted-in,
> > +before being copied onto a freshly allocated hugepage.
> > +If the native pages compose the same PTE-mapped hugepage,
> > +and are suitably aligned,
> > +allocation of a new hugepage may be elided and collapse may happen
> > +in-place.
> > +Unmapped pages will have their data directly initialized to 0 in the new
> > +hugepage.
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
> > +the hugepage will be allocated from the node providing the most native
> > +pages.
> > +.IP
> > +If all hugepage-sized/aligned regions covered by the provided range were
> > +either successfully collapsed,
> > +or were already PMD-mapped THPs,
> > +this operation will be deemed successful.
> > +Note that this doesn't guarantee anything about other possible mappings of
> > +the memory.
> > +Also note that many failures might have occurred since the operation may
> > +continue to collapse in the event collapse of a single hugepage-sized/aligned
> > +region fails.
>
> I don't understand this last paragraph (since "Also note ...").  Could you
> please reword it a little bit?
>

Sure - I can see that it's hard to parse.

Further up I note that, "If collapse of a given huge
page-aligned/sized region fails, the operation may continue to attempt
collapsing the remainder of the specified memory."

Then perhaps it's enough to just state, "In the event multiple
hugepage-aligned/sized areas fail to collapse, only the most
recently-failed code will be set in errno"

The idea here being: errno only communicates the reason for 1/N
failures that might have occured.

However -- on second thought -- perhaps this isn't particularly
useful, as it's already implied. So, my new suggestion would be that
we should drop it. What do you think?

> > +.TP
> >   .BR MADV_DONTDUMP " (since Linux 3.4)"
> >   .\" commit 909af768e88867016f427264ae39d27a57b6a8ed
> >   .\" commit accb61fe7bb0f5c2a4102239e4981650f9048519
> > @@ -620,6 +696,11 @@ A kernel resource was temporarily unavailable.
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
> > @@ -717,6 +798,11 @@ maximum resident set size.
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
> Diff for changing a few line breaks (and removing the spurious file):
>

Thank you so much for this! :)

> diff --git a/man2/madvise b/man2/madvise
> deleted file mode 100644
> index e69de29bb..000000000
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index dca42c7d6..7f34301d3 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -405,11 +405,12 @@ .SS Linux-specific advice values
>   .BR MADV_COLLAPSE " (since Linux 6.1)"
>   .\" commit 7d8faaf155454f8798ec56404faca29a82689c77
>   .\" commit 34488399fa08faaf664743fa54b271eb6f9e1321
> -Perform a best-effort synchronous collapse of the native pages mapped by the
> -memory range into Transparent Huge Pages (THPs).
> +Perform a best-effort synchronous collapse of
> +the native pages mapped by the memory range
> +into Transparent Huge Pages (THPs).
>   .B MADV_COLLAPSE
> -operates on the current state of memory of the calling process and makes no
> -persistent changes or guarantees on how pages will be mapped,
> +operates on the current state of memory of the calling process and
> +makes no persistent changes or guarantees on how pages will be mapped,
>   constructed,
>   or faulted in the future.
>   .IP
> @@ -424,20 +425,20 @@ .SS Linux-specific advice values
>   If the range provided spans multiple VMAs,
>   the semantics of the collapse over each VMA is independent from the others.
>   If collapse of a given huge page-aligned/sized region fails,
> -the operation may continue to attempt collapsing the remainder of the
> -specified memory.
> +the operation may continue to attempt collapsing
> +the remainder of the specified memory.
>   .B MADV_COLLAPSE
>   will automatically clamp the provided range to be hugepage-aligned.
>   .IP
> -All non-resident pages covered by the range will first be
> -swapped/faulted-in,
> +All non-resident pages covered by the range
> +will first be swapped/faulted-in,
>   before being copied onto a freshly allocated hugepage.
>   If the native pages compose the same PTE-mapped hugepage,
>   and are suitably aligned,
> -allocation of a new hugepage may be elided and collapse may happen
> -in-place.
> -Unmapped pages will have their data directly initialized to 0 in the new
> -hugepage.
> +allocation of a new hugepage may be elided and
> +collapse may happen in-place.
> +Unmapped pages will have their data directly initialized to 0
> +in the new hugepage.
>   However,
>   for every eligible hugepage-aligned/sized region to be collapsed,
>   at least one page must currently be backed by physical memory.
> @@ -464,15 +465,15 @@ .SS Linux-specific advice values
>   is still respected).
>   .IP
>   When the system has multiple NUMA nodes,
> -the hugepage will be allocated from the node providing the most native
> -pages.
> +the hugepage will be allocated from
> +the node providing the most native pages.
>   .IP
>   If all hugepage-sized/aligned regions covered by the provided range were
>   either successfully collapsed,
>   or were already PMD-mapped THPs,
>   this operation will be deemed successful.
> -Note that this doesn't guarantee anything about other possible mappings of
> -the memory.
> +Note that this doesn't guarantee anything about
> +other possible mappings of the memory.
>   Also note that many failures might have occurred since the operation may
>   continue to collapse in the event collapse of a single hugepage-sized/aligned
>   region fails.
>
>
> --
> <http://www.alejandro-colomar.es/>

Best,
Zach
