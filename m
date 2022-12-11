Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6776496CA
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 23:37:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbiLKWhw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 17:37:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230390AbiLKWhv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 17:37:51 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 936C16377
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 14:37:49 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id t17so23764517eju.1
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 14:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NUy5YkFtqaqqqUW8yQYlhRA93pY1uG4lTwQS2s2TXck=;
        b=RrJKlCKdnbYizUYaixBwjt2yD0vA6rHUDLcKTjdWAYikS/PnDQOmp6U/HAygm29FNJ
         3C1dvxF+oRLZicDHxGr2wqJhDr0tyVnkum/8kLiRAg4ywCenF4h6Yplwcel46qcgFQGl
         16aXJdtgNl9cSIgeA8q8yYi/JWMzT+UmlxZQORuovY1aem+LQpsh41cFC7MCuQa1db3Y
         hrxh0NkcX6tHq9mmmYx24R7SX/4rbTMzNKIQ1Sbgat22rnJPkXjf0IGvEa8v8dCe8/9C
         Gdpj2L4y6cQfwpVKwI4YZ5gKW3X6JYXDyIlC56GqQy+8luHrNuqslwB5xQPX7x9Z50as
         DF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NUy5YkFtqaqqqUW8yQYlhRA93pY1uG4lTwQS2s2TXck=;
        b=MxgacBk4I3sU/B8ZOZP1PEu59OJHOIie/zkKsADOeuGbo/kT2YZbOSSPcJ3l+rkxbI
         CxAt7S/G/4SW1VzdU0XbjcPc+SW/LdlQpam6B+nvxQ9c4cWrNEI/NyRMU1WlHHD20Xm6
         2+0Wkm2GmT0Pa6RyJEzc1ksIKx24laDOfjrmNhW0+SgFHCeAAnOjNs8qpn1/QMZYnuU/
         lG/fAvF8bzkAAHb7HaAsDX3bfho/15F2oQaIDV/gD5hWN/4sshLcgG/a4MKqVIxAd8uY
         QcQbRlc7vfPACVt+apccnvpEMSHGfMCEMSJiuniQJb+m8ibe+lYkjnoh98hjqs6a34vf
         p02Q==
X-Gm-Message-State: ANoB5pkdTHrtn35FI3dryQW/uK0RJbguGz7u7s1cD0dkhtEE3+pPZqma
        FDyINEPh1RP9OuByuiNYgP96Y2CF6EgCHm5xmuJOiQ==
X-Google-Smtp-Source: AA0mqf55aJYLlIfK68r7bTyf5XZphUYZP5lsQvMPmF0D/Y2cJOd4p+gACqdTgOdgVVWX0007lovsdWuNHFfeod1hOvs=
X-Received: by 2002:a17:906:3542:b0:7ad:aedb:140b with SMTP id
 s2-20020a170906354200b007adaedb140bmr11733112eja.477.1670798267761; Sun, 11
 Dec 2022 14:37:47 -0800 (PST)
MIME-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com> <20221021223300.3675201-5-zokeefe@google.com>
 <374b1dcd-6a2c-a452-9c1b-9f5945df493b@gmail.com> <CAAa6QmQU5T9E1kCxE3MpU6ybp0vR6kftwJiw68+5X14PoD-a5A@mail.gmail.com>
 <f5e276a1-cfb5-4b92-37d2-4630cc55bbc1@gmail.com>
In-Reply-To: <f5e276a1-cfb5-4b92-37d2-4630cc55bbc1@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Sun, 11 Dec 2022 14:37:10 -0800
Message-ID: <CAAa6QmT4qUUQiSa3FfBjNh9bdM15BZWPzcs0rNJasDV=ndNzmQ@mail.gmail.com>
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for MADV_COLLAPSE
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Sun, Dec 11, 2022 at 1:55 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hey Zach,
>
> On 12/11/22 22:51, Zach O'Keefe wrote:
> > On Sun, Dec 11, 2022 at 9:59 AM Alejandro Colomar
> > <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Zach,
> >
> > Hey Alex,
> >
> >> On 10/22/22 00:33, Zach OKeefe wrote:
> >>> From: Zach O'Keefe <zokeefe@google.com>
> >>>
> >>> Linux 6.1 introduced MADV_COLLAPSE in upstream commit 7d8faaf15545
> >>> ("mm/madvise: introduce MADV_COLLAPSE sync hugepage collapse") and
> >>> upstream commit 34488399fa08 ("mm/madvise: add file and shmem support=
 to
> >>> MADV_COLLAPSE").  Update the man-pages for madvise(2) and
> >>> process_madvise(2).
> >>>
> >>> Link: https://lore.kernel.org/linux-mm/20220922224046.1143204-1-zokee=
fe@google.com/
> >>> Link: https://lore.kernel.org/linux-mm/20220706235936.2197195-1-zokee=
fe@google.com/
> >>> Signed-off-by: Zach O'Keefe <zokeefe@google.com>
> >>
> >> Please see a few comments below.
> >>
> >
> > Thanks for the mail. So, this patch was taken as commit b106cd5bf
> > ("madvise.2: add documentation for MADV_COLLAPSE"). Some of your
> > comments below were
> > applied (I think, by you) as fixes pre-commit. However, there are some
> > new comments (or ones
> > that address the same lines, but in different ways). Is this mail to
> > log ~ what changes were done,
> > or is there anything actionable here on my side?
>
> Ah no, it's just that I had it marked as unread for some reason, so I tho=
ught I
> had forgotten to respond (and I forgot that I had applied it).  :-)
>
> So, no action required.
>
> Regarding different suggestions, heh, it demonstrates that it's not exact=
ly
> deterministic :P
>

Heh -- no worries :) Thanks for following up!

> Cheers,
>
> Alex
>
> P.S.: Do you know if I have anything missing from you or any of your coll=
egues?

At least on my part, I think you've taken all my patches (with help &
edits -- thank you!). I can't speak for anyone else at Google, however
(though, just a very hasty cross reference between git log and
lore.kernel.org/linux-man seems to indicate patches sent from
*@google.com since man-pages-6.00 have previously made it into
man-pages-6.01, and nothing afterwards).

Have a great rest of your weekend,

Best,
Zach

>
> >
> > Best,
> > Zach
> >
> > Thanks for this.
> >> Cheers,
> >>
> >> Alex
> >>
> >>> ---
> >>>    man2/madvise.2         | 90 ++++++++++++++++++++++++++++++++++++++=
+++-
> >>>    man2/process_madvise.2 | 10 +++++
> >>>    2 files changed, 98 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/man2/madvise.2 b/man2/madvise.2
> >>> index df3413cc8..b03fc731d 100644
> >>> --- a/man2/madvise.2
> >>> +++ b/man2/madvise.2
> >>> @@ -385,9 +385,10 @@ set (see
> >>>    .BR prctl (2) ).
> >>>    .IP
> >>>    The
> >>> -.B MADV_HUGEPAGE
> >>> +.BR MADV_HUGEPAGE ,
> >>> +.BR MADV_NOHUGEPAGE ,
> >>>    and
> >>> -.B MADV_NOHUGEPAGE
> >>> +.B MADV_COLLAPSE
> >>>    operations are available only if the kernel was configured with
> >>>    .B CONFIG_TRANSPARENT_HUGEPAGE
> >>>    and file/shmem memory is only supported if the kernel was configur=
ed with
> >>> @@ -400,6 +401,81 @@ and
> >>>    .I length
> >>>    will not be backed by transparent hugepages.
> >>>    .TP
> >>> +.BR MADV_COLLAPSE " (since Linux 6.1)"
> >>> +.\" commit 7d8faaf155454f8798ec56404faca29a82689c77
> >>> +.\" commit 34488399fa08faaf664743fa54b271eb6f9e1321
> >>> +Perform a best-effort synchronous collapse of the native pages mappe=
d by the
> >>
> >> Please use semantic line breaks.  In this case, I'd break after "pages=
".
> >>
> >> man-pages(7):
> >>      Use semantic newlines
> >>          In  the source of a manual page, new sentences should be star=
ted on new
> >>          lines, long sentences should be split into lines at clause br=
eaks (com=E2=80=90
> >>          mas, semicolons, colons, and so on), and long clauses should =
 be  split
> >>          at  phrase  boundaries.   This convention, sometimes known as=
 "semantic
> >>          newlines", makes it easier to see the effect of  patches,  wh=
ich  often
> >>          operate at the level of individual sentences, clauses, or phr=
ases.
> >>
> >>> +memory range into Transparent Huge Pages (THPs).
> >>> +.B MADV_COLLAPSE
> >>> +operates on the current state of memory of the calling process and m=
akes no
> >>
> >> Here I'd break after "and".
> >>
> >>> +persistent changes or guarantees on how pages will be mapped,
> >>> +constructed,
> >>> +or faulted in the future.
> >>> +.IP
> >>> +.B MADV_COLLAPSE
> >>> +supports private anonymous pages (see
> >>> +.BR mmap (2)),
> >>> +shmem pages,
> >>> +and file-backed pages.
> >>> +See
> >>> +.B MADV_HUGEPAGE
> >>> +for general information on memory requirements for THP.
> >>> +If the range provided spans multiple VMAs,
> >>> +the semantics of the collapse over each VMA is independent from the =
others.
> >>> +If collapse of a given huge page-aligned/sized region fails,
> >>> +the operation may continue to attempt collapsing the remainder of th=
e
> >>
> >> Break after "collapsing".
> >>
> >>> +specified memory.
> >>> +.B MADV_COLLAPSE
> >>> +will automatically clamp the provided range to be hugepage-aligned.
> >>> +.IP
> >>> +All non-resident pages covered by the range will first be
> >>
> >> Break after "range".
> >>
> >>> +swapped/faulted-in,
> >>> +before being copied onto a freshly allocated hugepage.
> >>> +If the native pages compose the same PTE-mapped hugepage,
> >>> +and are suitably aligned,
> >>> +allocation of a new hugepage may be elided and collapse may happen
> >>
> >> Break before or after "and".
> >>
> >>> +in-place.
> >>> +Unmapped pages will have their data directly initialized to 0 in the=
 new
> >>
> >> Break after "0".
> >>
> >>> +hugepage.
> >>> +However,
> >>> +for every eligible hugepage-aligned/sized region to be collapsed,
> >>> +at least one page must currently be backed by physical memory.
> >>> +.IP
> >>> +.BR MADV_COLLAPSE
> >>
> >> s/BR/B/
> >>
> >>> +is independent of any sysfs
> >>> +(see
> >>> +.BR sysfs (5))
> >>> +setting under
> >>> +.IR /sys/kernel/mm/transparent_hugepage ,
> >>> +both in terms of determining THP eligibility,
> >>> +and allocation semantics.
> >>> +See Linux kernel source file
> >>> +.I Documentation/admin\-guide/mm/transhuge.rst
> >>> +for more information.
> >>> +.BR MADV_COLLAPSE
> >>
> >> s/BR/B/
> >>
> >>> +also ignores
> >>> +.B huge=3D
> >>> +tmpfs mount when operating on tmpfs files.
> >>> +Allocation for the new hugepage may enter direct reclaim and/or comp=
action,
> >>> +regardless of VMA flags
> >>> +(though
> >>> +.BR VM_NOHUGEPAGE
> >>
> >> s/BR/B/
> >>
> >>> +is still respected).
> >>> +.IP
> >>> +When the system has multiple NUMA nodes,
> >>> +the hugepage will be allocated from the node providing the most nati=
ve
> >>
> >> Break after "from".
> >>
> >>> +pages.
> >>> +.IP
> >>> +If all hugepage-sized/aligned regions covered by the provided range =
were
> >>
> >> Prefer English rather than "/".
> >>
> >>> +either successfully collapsed,
> >>> +or were already PMD-mapped THPs,
> >>> +this operation will be deemed successful.
> >>> +Note that this doesn=E2=80=99t guarantee anything about other possib=
le mappings of
> >>
> >> Break after "about".
> >>
> >>> +the memory.
> >>> +Also note that many failures might have occurred since the operation=
 may
> >>> +continue to collapse in the event collapse of a single hugepage-size=
d/aligned
> >>
> >> Add some omitted "that" or something that will help readability to
> >> non-native-English readers.
> >>
> >> And break at a better place.
> >>
> >>> +region fails.
> >>> +.TP
> >>>    .BR MADV_DONTDUMP " (since Linux 3.4)"
> >>>    .\" commit 909af768e88867016f427264ae39d27a57b6a8ed
> >>>    .\" commit accb61fe7bb0f5c2a4102239e4981650f9048519
> >>> @@ -619,6 +695,11 @@ A kernel resource was temporarily unavailable.
> >>>    .B EBADF
> >>>    The map exists, but the area maps something that isn't a file.
> >>>    .TP
> >>> +.B EBUSY
> >>> +(for
> >>> +.BR MADV_COLLAPSE )
> >>> +Could not charge hugepage to cgroup: cgroup limit exceeded.
> >>> +.TP
> >>>    .B EFAULT
> >>>    .I advice
> >>>    is
> >>> @@ -716,6 +797,11 @@ maximum resident set size.
> >>>    Not enough memory: paging in failed.
> >>>    .TP
> >>>    .B ENOMEM
> >>> +(for
> >>> +.BR MADV_COLLAPSE )
> >>> +Not enough memory: could not allocate hugepage.
> >>> +.TP
> >>> +.B ENOMEM
> >>>    Addresses in the specified range are not currently
> >>>    mapped, or are outside the address space of the process.
> >>>    .TP
> >>> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> >>> index 44d3b94e8..8b0ddccdd 100644
> >>> --- a/man2/process_madvise.2
> >>> +++ b/man2/process_madvise.2
> >>> @@ -73,6 +73,10 @@ argument is one of the following values:
> >>>    See
> >>>    .BR madvise (2).
> >>>    .TP
> >>> +.B MADV_COLLAPSE
> >>> +See
> >>> +.BR madvise (2).
> >>> +.TP
> >>>    .B MADV_PAGEOUT
> >>>    See
> >>>    .BR madvise (2).
> >>> @@ -173,6 +177,12 @@ The caller does not have permission to access th=
e address space of the process
> >>>    .TP
> >>>    .B ESRCH
> >>>    The target process does not exist (i.e., it has terminated and bee=
n waited on).
> >>> +.PP
> >>> +See
> >>> +.BR madvise (2)
> >>> +for
> >>> +.IR advice -specific
> >>> +errors.
> >>>    .SH VERSIONS
> >>>    This system call first appeared in Linux 5.10.
> >>>    .\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
>
> --
> <http://www.alejandro-colomar.es/>
