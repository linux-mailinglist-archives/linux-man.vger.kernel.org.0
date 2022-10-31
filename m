Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF6B613FDF
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 22:26:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229997AbiJaV0L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 17:26:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229711AbiJaV0L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 17:26:11 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 204CFE00F
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 14:26:10 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id t4so8082213lfp.2
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 14:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m+7whBA9wgYFfhkwWMpwK9OzrODVMRYtNrc5/dueSx0=;
        b=FxRPvUhCtpNpeaNIECgOonJbVpLidYDmVqaaFrbh/V/A6WTnKFEpjynrPpmLTLrqj4
         CZKwMEEve8YQGRSM7VcCy85Nf5xhZ7oQsEfV9yWasVh4MzNyBFVwcYaH7Ug1XVetODAy
         6lh6eGh/RftilQcRsfbq5AvwbqWeyPCrnLOgxlbpQoFthmCuTQIaf7vqQZuQF4XnhRJP
         gf4cwi64/gjpaNk44pqisRaD2cTJ4G6JrSc752F/j0kO09LDme4GpjW0Pwe4+ejjE0Ay
         cqHZ4AG9LUx3hu59sIXn1oTl5GzEcAhDVn7PR95dFFl/rdVkyewpBuGcelgrGdnTqVRd
         Wnpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m+7whBA9wgYFfhkwWMpwK9OzrODVMRYtNrc5/dueSx0=;
        b=oCI9MLj+d25hlm2AJbgvD02hQMk/BBZ77McVukwtY/4xc94bghqZ6n21fxR6mFp6vs
         OvFkv7aRkgO1gTEDtt/WfVsqhps3KgHqShBY33OuhD4I8tk7uyHAOO8C3UTEQ3iiUOyg
         /aeS/Bb23WIHRd5uTeUuOyvZ0w3Wgk2hMpeHnfeiVW5ByWKYJ3FXwntBQV2V/0eOIUwX
         At2LD9gFUoqy4kI09Cc71g5GgT2b7oMksLvFLhNHhcXFpeo5pKntgtvoYKdf6C/BbcQ8
         nfSdqEpwv1sEjev/L3FyESw8nMeGXvx3QcgsM3tC5Asv/L74MOLfxV7WzWGdC6Yro3yM
         lN8Q==
X-Gm-Message-State: ACrzQf14RQtTz5tucvaFY9sr74MQ+SzIBPOwu4auk8QnJG+aE4SdkU+1
        wct9eA8gKhN3CHbqO6Vu1EkRB6LtJ3cAu887HdPDWA==
X-Google-Smtp-Source: AMsMyM7jxCnALAAD9BefsLbCg1TVjNe/04u3AhVJkjQnhaHgHj5tNurqIDZBpGgge4ufZZJMcMQWjotrKeV3j8aQs2M=
X-Received: by 2002:a05:6512:60d:b0:4ad:2170:1a1e with SMTP id
 b13-20020a056512060d00b004ad21701a1emr6659705lfe.674.1667251568257; Mon, 31
 Oct 2022 14:26:08 -0700 (PDT)
MIME-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com> <20221021223300.3675201-4-zokeefe@google.com>
 <ad6a0605-3494-ca32-c577-dbd4142ea7f8@gmail.com> <CAJuCfpFvrhcfLAMDaz-3cRNtYXmHuP7FBZWy4TrYxcg8AF9c8w@mail.gmail.com>
 <07d9c046-0284-2e1d-9948-3530a5356938@gmail.com>
In-Reply-To: <07d9c046-0284-2e1d-9948-3530a5356938@gmail.com>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Mon, 31 Oct 2022 14:25:31 -0700
Message-ID: <CAAa6QmT3BvAoYHeAFNYLZcLuQp4AvdMH1m8YWK6q7yqSCAYHGQ@mail.gmail.com>
Subject: Re: [PATCH man-pages v3 3/4] process_madvise.2: fix capability and
 ptrace requirements
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Suren Baghdasaryan <surenb@google.com>,
        Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
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

On Mon, Oct 31, 2022 at 1:24 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Suren, Zach,
>
> On 10/31/22 20:13, Suren Baghdasaryan wrote:
> > Hi Alex,
> >
> > On Sun, Oct 30, 2022 at 4:50 AM Alejandro Colomar
> > <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Suren,
> >>
> >> On 10/22/22 00:32, Zach OKeefe wrote:
> >>> From: Zach O'Keefe <zokeefe@google.com>
> >>>
> >>> The initial commit of process_madvise(2) to Linux, commit ecb8ac8b1f14
> >>> ("mm/madvise: introduce process_madvise() syscall: an external memory
> >>> hinting API"), relied on PTRACE_MODE_ATTACH_FSCREDS (see ptrace(2)),
> >>> but was amended by commit 96cfe2c0fd23 ("mm/madvise: replace ptrace
> >>> attach requirement for process_madvise") which replaced this with a
> >>> combination of PTRACE_MODE_READ and CAP_SYS_NICE (PTRACE_MODE_READ to
> >>> prevent leaking ASLR metadata and CAP_SYS_NICE for influencing process
> >>> performance).
> >>>
> >>> The initial commit of process_madvise(2) to man-pages project, made
> >>> after the second patch, included two errors:
> >>>
> >>> 1) CAP_SYS_ADMIN instead of CAP_SYS_NICE
> >>> 2) PTRACE_MODE_READ_REALCREDS instead of PTRACE_MODE_READ_FSCREDS
> >>>
> >>> Correct this in the man-page for process_madvise(2).
> >>>
> >>> Fixes: a144f458b ("process_madvise.2: Document process_madvise(2)")
> >>> Cc: Suren Baghdasaryan <surenb@google.com>
> >>> Cc: Minchan Kim <minchan@kernel.org>
> >>> Signed-off-by: Zach O'Keefe <zokeefe@google.com>
> >
> > Reviewed-by: Suren Baghdasaryan <surenb@google.com>
>
> Thanks!  Patch applied.

Thanks Suren & Alex!

Best,
Zach

> >
> >>
> >> You added your Reviewed-by tag to v2 of this patch.  I guess you'd like to put
> >> it in this one too, but since it changed slightly, I'd like you to confirm.
> >
> > Thanks for the reminder!
>
> :)
>
> Cheers,
>
> Alex
>
> > Suren.
> >
> >>
> >> Thanks,
> >>
> >> Alex
> >>
> >>> ---
> >>>    man2/process_madvise.2 | 21 +++++++++++++++++----
> >>>    1 file changed, 17 insertions(+), 4 deletions(-)
> >>>
> >>> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> >>> index 6208206e4..44d3b94e8 100644
> >>> --- a/man2/process_madvise.2
> >>> +++ b/man2/process_madvise.2
> >>> @@ -105,16 +105,20 @@ remote process.
> >>>    No further elements will be processed beyond that point.
> >>>    (See the discussion regarding partial advice in RETURN VALUE.)
> >>>    .PP
> >>> -Permission to apply advice to another process is governed by a
> >>> +.\" commit 96cfe2c0fd23ea7c2368d14f769d287e7ae1082e
> >>> +Starting in Linux 5.12,
> >>> +permission to apply advice to another process is governed by
> >>>    ptrace access mode
> >>> -.B PTRACE_MODE_READ_REALCREDS
> >>> +.B PTRACE_MODE_READ_FSCREDS
> >>>    check (see
> >>>    .BR ptrace (2));
> >>>    in addition,
> >>>    because of the performance implications of applying the advice,
> >>>    the caller must have the
> >>> -.B CAP_SYS_ADMIN
> >>> -capability.
> >>> +.B CAP_SYS_NICE
> >>> +capability
> >>> +(see
> >>> +.BR capabilities (7)).
> >>>    .SH RETURN VALUE
> >>>    On success,
> >>>    .BR process_madvise ()
> >>> @@ -180,6 +184,15 @@ configuration option.
> >>>    The
> >>>    .BR process_madvise ()
> >>>    system call is Linux-specific.
> >>> +.SH NOTES
> >>> +When this system call first appeared in Linux 5.10,
> >>> +permission to apply advice to another process was entirely governed by
> >>> +ptrace access mode
> >>> +.B PTRACE_MODE_ATTACH_FSCREDS
> >>> +check (see
> >>> +.BR ptrace (2)).
> >>> +This requirement was relaxed in Linux 5.12 so that the caller didn't require
> >>> +full control over the target process.
> >>>    .SH SEE ALSO
> >>>    .BR madvise (2),
> >>>    .BR pidfd_open (2),
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
>
> --
> <http://www.alejandro-colomar.es/>
