Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2797B613B61
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 17:34:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231674AbiJaQdu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 12:33:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231876AbiJaQdm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 12:33:42 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C23C7B
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 09:33:41 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id k19so17048545lji.2
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 09:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nr4kGPG1ThX/VOdbvfAuqtiy4NRvTu3/gQg/bZ0f2ss=;
        b=dp/j2aWv4bculz/bfdKAADjnLCjMsidQGp9uEriE3DfhmiQvoW7kweu9BYWcRM/vBW
         qRvBaVxrbIpZijIBIaDKq72TdD4HQH9ok/5R+x/paZEMjodKY1TFRJd7fRy9psjEME2v
         XPgIRFKl261LZ9H637+TqrpsxhzPJn2SE/oLFgLljOgP34Vc1zBCgBcuymdjrwK03NXk
         UnOJKz3xyELEKvsFazwgM5nrgAEVoZCDoRBNBQQfMhEHPDC0nZpg7MFbSdj7IWo9xpv0
         6NF26lJ2dpIeI8EJU3+/OTHAfqE8iX43n7RENC+jkiMUO5gxP4GPPPQ0CpoirHfhesKq
         sDyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nr4kGPG1ThX/VOdbvfAuqtiy4NRvTu3/gQg/bZ0f2ss=;
        b=eEqs+twe/Av+LvKUEj4RMTDGUBMM0Pj9TBPTpCIr+Z+irxKC8oww89uQKmDp3LGRha
         bf0TzP7IO/ZJY7T+Qrymlj+fxXiPMUbQGv7+DwMv5VitnD/hzMD4fS1PEAFaoI4EpLU7
         maoZFfEh/DDy2arEnTYHriU8z3ocQBeC0rK+p2g+XsjuphuIK4bONbkr9Yb/qARHJIpL
         l5+Hd6AEt0Xgdd9Vhpyc0aMgFL4h0upAKVCOHfAUyLbNvZw4nH5jXFntbvWttHxCvags
         Guas4o0FB28Qf1jvu3tZvGdKdOZ5OJ4CZ0Rjt5rwVz6z6OQbmcTn4VheETwp36qeGHqE
         3mSw==
X-Gm-Message-State: ACrzQf092EqoaVa/HDuS5/pSkyPZzX6hWnWMZZGub88nfZldeMe9Zq9A
        mLAcnZYCT/P0rKpppOzFN40/Okr+iF0AXKV1uWENytGG+dk=
X-Google-Smtp-Source: AMsMyM4uP+ZYwkLC2x9YZkVBQNth9mry9vJtu5TTKKKnZMeGhtC9QZEavxCGxsfo6J1SVtzyEX4Bx5IOx0h+kYInGqQ=
X-Received: by 2002:a2e:b605:0:b0:277:970:6207 with SMTP id
 r5-20020a2eb605000000b0027709706207mr6227816ljn.296.1667234019010; Mon, 31
 Oct 2022 09:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com> <20221021223300.3675201-2-zokeefe@google.com>
 <715d8645-16ea-d230-0488-46ea01792bc6@gmail.com>
In-Reply-To: <715d8645-16ea-d230-0488-46ea01792bc6@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Mon, 31 Oct 2022 09:33:02 -0700
Message-ID: <CAAa6QmTqSpct3hf0M6eGJx_n1-dF3oNZ17LWonqbnmAC1W6FwA@mail.gmail.com>
Subject: Re: [PATCH man-pages v3 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
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

On Sun, Oct 30, 2022 at 4:42 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Zach!
>
> On 10/22/22 00:32, Zach OKeefe wrote:
> > From: Zach O'Keefe <zokeefe@google.com>
> >
> > Since Linux 5.4, Transparent Huge Pages now support both file-backed
> > memory and shmem memory. Update MADV_HUGEPAGE advice description to
> > reflect this.
> >
> > Additionally, expand the description of requirements for memory to be
> > considered eligible for THP: alignment / mapping requirements, VMA
> > flags, prctl(2) settings, inode status, etc.
> >
> > Signed-off-by: Zach O'Keefe <zokeefe@google.com>
>
> Patch applied!  Thanks.
> Since you were interested, I amended it with the following diff:
>
>
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index 64f788ace..48bda703c 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -361,9 +361,10 @@ .SS Linux-specific advice values
>   and file-backed pages.
>   For all memory types,
>   memory may only be replaced by huge pages on hugepage-aligned boundaries.
> -For file-mapped memory \(em including tmpfs (see
> -.BR tmpfs (2))
> -\(em the mapping must also be naturally hugepage-aligned within the file.
> +For file-mapped memory
> +\(emincluding tmpfs (see
> +.BR tmpfs (2))\(em
> +the mapping must also be naturally hugepage-aligned within the file.
>   Additionally,
>   for file-backed,
>   non-tmpfs memory,
> @@ -382,7 +383,7 @@ .SS Linux-specific advice values
>   The process must also not have
>   .B PR_SET_THP_DISABLE
>   set (see
> -.BR prctl (2) ).
> +.BR prctl (2)).
>   .IP
>   The
>   .B MADV_HUGEPAGE
>
>
> - The em dashes you used were correct with spaces in both sides; there are those
> who use them with spaces in both sides and those who use them with no spaces at
> all.  And then there are those who put spaces as if they were parentheses
> (admittedly this is much less common).  I prefer this latter case, since it
> makes technical texts more parseable.
>
> - I used a semantic newline break for the em dashes, since they are similar to a
> coma.
>
> - Removed a spurious space in BR that would have made the formatting weird.
>
> Cheers,
>

Thanks for taking the patch, and thanks for taking the time with the
explanation! Glad I wasn't *too* far off :)

Changes look good to me - thank you!

Best,
Zach

> Alex
>
>
> > ---
> >   man2/madvise.2 | 38 +++++++++++++++++++++++++++++++++++---
> >   1 file changed, 35 insertions(+), 3 deletions(-)
> >
> > diff --git a/man2/madvise.2 b/man2/madvise.2
> > index 81cce56af..64f788ace 100644
> > --- a/man2/madvise.2
> > +++ b/man2/madvise.2
> > @@ -320,8 +320,6 @@ Enable Transparent Huge Pages (THP) for pages in the range specified by
> >   .I addr
> >   and
> >   .IR length .
> > -Currently, Transparent Huge Pages work only with private anonymous pages (see
> > -.BR mmap (2)).
> >   The kernel will regularly scan the areas marked as huge page candidates
> >   to replace them with huge pages.
> >   The kernel will also allocate huge pages directly when the region is
> > @@ -354,12 +352,46 @@ an access pattern that the developer knows in advance won't risk
> >   to increase the memory footprint of the application when transparent
> >   hugepages are enabled.
> >   .IP
> > +.\" commit 99cb0dbd47a15d395bf3faa78dc122bc5efe3fc0
> > +Since Linux 5.4,
> > +automatic scan of eligible areas and replacement by huge pages works with
> > +private anonymous pages (see
> > +.BR mmap (2)),
> > +shmem pages,
> > +and file-backed pages.
> > +For all memory types,
> > +memory may only be replaced by huge pages on hugepage-aligned boundaries.
> > +For file-mapped memory \(em including tmpfs (see
> > +.BR tmpfs (2))
> > +\(em the mapping must also be naturally hugepage-aligned within the file.
> > +Additionally,
> > +for file-backed,
> > +non-tmpfs memory,
> > +the file must not be open for write and the mapping must be executable.
> > +.IP
> > +The VMA must not be marked
> > +.BR VM_NOHUGEPAGE ,
> > +.BR VM_HUGETLB ,
> > +.BR VM_IO ,
> > +.BR VM_DONTEXPAND ,
> > +.BR VM_MIXEDMAP ,
> > +or
> > +.BR VM_PFNMAP ,
> > +nor can it be stack memory or backed by a DAX-enabled device
> > +(unless the DAX device is hot-plugged as System RAM).
> > +The process must also not have
> > +.B PR_SET_THP_DISABLE
> > +set (see
> > +.BR prctl (2) ).
> > +.IP
> >   The
> >   .B MADV_HUGEPAGE
> >   and
> >   .B MADV_NOHUGEPAGE
> >   operations are available only if the kernel was configured with
> > -.BR CONFIG_TRANSPARENT_HUGEPAGE .
> > +.B CONFIG_TRANSPARENT_HUGEPAGE
> > +and file/shmem memory is only supported if the kernel was configured with
> > +.BR CONFIG_READ_ONLY_THP_FOR_FS .
> >   .TP
> >   .BR MADV_NOHUGEPAGE " (since Linux 2.6.38)"
> >   Ensures that memory in the address range specified by
>
> --
> <http://www.alejandro-colomar.es/>
