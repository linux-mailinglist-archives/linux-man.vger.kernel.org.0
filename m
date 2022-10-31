Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C38061414A
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 00:00:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiJaXA4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 19:00:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbiJaXAz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 19:00:55 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0721C11155
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 16:00:54 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id j16so21398212lfe.12
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 16:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=je3RWK/jwHg4RTk2Yi+5VjtTtmuvrAAJ/bTCACIImPA=;
        b=l0vcfxwJ0NyDO02QUTKO3mhyGL92EHyE3UH6Qi1NqoS8yDz8HTyVbSruMoa+ow0We6
         0xqe0Nz5YlEAZLuBU/5jcRFLC/CXPRRQ0sLBpFo6mAnYneUxagDrCv8NVOj8R2wAAP08
         9GU+vLD3zl5JBXih86bWyqpgOecsF6WGxoTN6Oxqj8qjFYrIIR6CTff1Z5r6ft1tt5jB
         GcFvXlRKNCGQSF91LgAae0wLkfv/ezAe25QybiBTPS0ZYhHZe8B4mthscXWllpveHEYF
         vQdJboahdtgsxnwHyYS7rj5+u2LLFKoMOCRp0De4qFvzx/XZNSvF/WPz3jnV/AGP5ZeY
         YjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=je3RWK/jwHg4RTk2Yi+5VjtTtmuvrAAJ/bTCACIImPA=;
        b=bQcN1HHmuXguKW/TTwh3c5PBO7LzkiG1Gfc9PIPRZxivUBl/Ep3DO+lpKYz/L9Gxoq
         pHG2xp5AOj6/3s8oYlXN0dkgTOCyVF5tMeWjlDo7aWbAefTGZFtikOk5Pl2paxMYyaLt
         DTlyoO0FW1cRe+9xiBMCM7CA4KdJCJjOCTxdmCt67OXSa8PFnLv8pL7eJlFHrXR0njdR
         oAxGLwMF4yyRXXNLKrAsqsn3d1EJIgGqDPHtTh5GgvyLRzgucSW3LYCTMF2yQg4a94cm
         OlFFxRL4Q+XYHm2OkDwy/oekzIfF77jrNCjrGCu2RAIMDJeHWcPDJUBnfQewv+5cT7Au
         cnLQ==
X-Gm-Message-State: ACrzQf0TIYo6GVQWL00E9pScNvjPrvh9QUDr+brIvgp4IdEEJ5JO/zdn
        aT7kdVtjApVUnjTKuQIIAHl10TSaaL6Xr3Sy1E5pCg==
X-Google-Smtp-Source: AMsMyM4EZtz6GjDmWSeexDQQS/rsLRi2U9SDpynKQAtAguTDdU5IdwxLS0yPSModOEAQafch6G1I0FbdqZlyQCKWxkk=
X-Received: by 2002:a05:6512:60d:b0:4ad:2170:1a1e with SMTP id
 b13-20020a056512060d00b004ad21701a1emr6760848lfe.674.1667257252065; Mon, 31
 Oct 2022 16:00:52 -0700 (PDT)
MIME-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com> <20221021223300.3675201-5-zokeefe@google.com>
 <bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com>
In-Reply-To: <bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Mon, 31 Oct 2022 16:00:15 -0700
Message-ID: <CAAa6QmSVPPcvxWdHYLytH8EREvLgK0mtCh1Xs-j63KBOo9-eDQ@mail.gmail.com>
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for MADV_COLLAPSE
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
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

Hey Alex!

On Mon, Oct 31, 2022 at 2:15 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Zach!
>
> On 10/22/22 00:33, Zach OKeefe wrote:
> > From: Zach O'Keefe <zokeefe@google.com>
> >
> > Linux 6.1 introduced MADV_COLLAPSE in upstream commit 7d8faaf15545
> > ("mm/madvise: introduce MADV_COLLAPSE sync hugepage collapse") and
> > upstream commit 34488399fa08 ("mm/madvise: add file and shmem support t=
o
> > MADV_COLLAPSE").  Update the man-pages for madvise(2) and
> > process_madvise(2).
> >
> > Link: https://lore.kernel.org/linux-mm/20220922224046.1143204-1-zokeefe=
@google.com/
> > Link: https://lore.kernel.org/linux-mm/20220706235936.2197195-1-zokeefe=
@google.com/
> > Signed-off-by: Zach O'Keefe <zokeefe@google.com>
>
> There are a few issues with this patch:
>
> alx@asus5775:~/src/linux/man-pages/man-pages$ make lint-man-groff
> LINT (groff)    tmp/lint/man2/madvise.2.lint-man.groff.touch
> eqn:man2/madvise.2:473: error: invalid input character code '128'
> eqn:man2/madvise.2:473: error: invalid input character code '153'
> an.tmac:man2/madvise.2:445: style: .BR expects at least 2 arguments, got =
1
> an.tmac:man2/madvise.2:456: style: .BR expects at least 2 arguments, got =
1
> an.tmac:man2/madvise.2:463: style: .BR expects at least 2 arguments, got =
1
> found style problems; aborting
> make: *** [lib/lint-man.mk:77: tmp/lint/man2/madvise.2.lint-man.groff.tou=
ch] Error 1
>
>
> Let's investigate them:
>

Thank you :)

> alx@asus5775:~/src/linux/man-pages/man-pages$ sed -n 473p man2/madvise.2
> this operation will be deemed successful.
>
> This one was a bit difficult to track, since the line count seems to be o=
ff by one:
>
> alx@asus5775:~/src/linux/man-pages/man-pages$ tbl man2/madvise.2 | hd | g=
rep -C1
> ' 80 '
> 00003d40  63 65 73 73 66 75 6c 2e  0a 4e 6f 74 65 20 74 68  |cessful..Not=
e th|
> 00003d50  61 74 20 74 68 69 73 20  64 6f 65 73 6e e2 80 99  |at this does=
n...|
> 00003d60  74 20 67 75 61 72 61 6e  74 65 65 20 61 6e 79 74  |t guarantee =
anyt|
> alx@asus5775:~/src/linux/man-pages/man-pages$ sed -n 474p man2/madvise.2
> Note that this doesn=E2=80=99t guarantee anything about other possible ma=
ppings of
>
> The issue was in line 474, and the issue is that it uses a weird single q=
uote.
> Please use the foillowing ASCII character for the single quote (see ascii=
(7)):
> 047   39    27    '
>

Very weird and good find! Honestly, I had prototyped this in Google
Docs and copy-pasta'd this over as the basis. I tried testing this
again - and same thing - Google Docs uses some other character.
Anyways - glad you caught this.

> The rest of issues seems trivial:
> Use .B instead of .BR because there's no "roman" (i.e., non-bold) part.
>

This was the first time it clicked what ".BR" meant: "bold followed by roma=
n".

> alx@asus5775:~/src/linux/man-pages/man-pages$ sed -n 445p man2/madvise.2
> .BR MADV_COLLAPSE
> alx@asus5775:~/src/linux/man-pages/man-pages$ sed -n 456p man2/madvise.2
> .BR MADV_COLLAPSE
> alx@asus5775:~/src/linux/man-pages/man-pages$ sed -n 463p man2/madvise.2
> .BR VM_NOHUGEPAGE
>

These didn't show up with my version of groff (as in 1/2), but I've
applied the fixes and sent out a v4 for this patch. Again, thank you
for all your help here!

Best,
Zach

>
> I'll report a bug to groff(1) about the issue with the line count.
>

Ya that's an odd one. Sorry for having to encounter this - must have
been quite confusing. Thank you!

> Cheers,
>
> Alex
>
> > ---
> >   man2/madvise.2         | 90 +++++++++++++++++++++++++++++++++++++++++=
-
> >   man2/process_madvise.2 | 10 +++++
> >   2 files changed, 98 insertions(+), 2 deletions(-)
> >
> > diff --git a/man2/madvise.2 b/man2/madvise.2
> > index df3413cc8..b03fc731d 100644
> > --- a/man2/madvise.2
> > +++ b/man2/madvise.2
> > @@ -385,9 +385,10 @@ set (see
> >   .BR prctl (2) ).
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
> >   and file/shmem memory is only supported if the kernel was configured =
with
> > @@ -400,6 +401,81 @@ and
> >   .I length
> >   will not be backed by transparent hugepages.
> >   .TP
> > +.BR MADV_COLLAPSE " (since Linux 6.1)"
> > +.\" commit 7d8faaf155454f8798ec56404faca29a82689c77
> > +.\" commit 34488399fa08faaf664743fa54b271eb6f9e1321
> > +Perform a best-effort synchronous collapse of the native pages mapped =
by the
> > +memory range into Transparent Huge Pages (THPs).
> > +.B MADV_COLLAPSE
> > +operates on the current state of memory of the calling process and mak=
es no
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
> > +the semantics of the collapse over each VMA is independent from the ot=
hers.
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
> > +Unmapped pages will have their data directly initialized to 0 in the n=
ew
> > +hugepage.
> > +However,
> > +for every eligible hugepage-aligned/sized region to be collapsed,
> > +at least one page must currently be backed by physical memory.
> > +.IP
> > +.BR MADV_COLLAPSE
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
> > +.BR MADV_COLLAPSE
> > +also ignores
> > +.B huge=3D
> > +tmpfs mount when operating on tmpfs files.
> > +Allocation for the new hugepage may enter direct reclaim and/or compac=
tion,
> > +regardless of VMA flags
> > +(though
> > +.BR VM_NOHUGEPAGE
> > +is still respected).
> > +.IP
> > +When the system has multiple NUMA nodes,
> > +the hugepage will be allocated from the node providing the most native
> > +pages.
> > +.IP
> > +If all hugepage-sized/aligned regions covered by the provided range we=
re
> > +either successfully collapsed,
> > +or were already PMD-mapped THPs,
> > +this operation will be deemed successful.
> > +Note that this doesn=E2=80=99t guarantee anything about other possible=
 mappings of
> > +the memory.
> > +Also note that many failures might have occurred since the operation m=
ay
> > +continue to collapse in the event collapse of a single hugepage-sized/=
aligned
> > +region fails.
> > +.TP
> >   .BR MADV_DONTDUMP " (since Linux 3.4)"
> >   .\" commit 909af768e88867016f427264ae39d27a57b6a8ed
> >   .\" commit accb61fe7bb0f5c2a4102239e4981650f9048519
> > @@ -619,6 +695,11 @@ A kernel resource was temporarily unavailable.
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
> > @@ -716,6 +797,11 @@ maximum resident set size.
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
> > index 44d3b94e8..8b0ddccdd 100644
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
> > @@ -173,6 +177,12 @@ The caller does not have permission to access the =
address space of the process
> >   .TP
> >   .B ESRCH
> >   The target process does not exist (i.e., it has terminated and been w=
aited on).
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
