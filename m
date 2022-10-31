Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F9ED613E10
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 20:13:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229752AbiJaTNz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 15:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbiJaTNx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 15:13:53 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6494C13CF5
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 12:13:52 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id f205so14857823yba.2
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 12:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YESZVpAPSr5V8ydBxH4teaVc2gti9rjXuWC7z8MOzbs=;
        b=Egp6DPeAXAbGblVbELnd+D5sIu0Z64+4l1uEMjjgRF4lA24ugyLHMInpYgR1x9kPpk
         n4Y91mVW1nracVAcDu0O9puMp1/cH+bn1p0Zxv740z1eIudxD7Gw3G5LoocYB/L0cdNu
         hWJ6i/PJfs6/iLMKoZGg7fO1VGv3VvtqrFUj1shiEEjveQj7DPpnMmt9Yz7eHlJV90U4
         SPfDdseODTIlEWvsgz0+odubA+NOAYlLYMdULGnxAuuHV3md3QObc8uItAX+XssuiOur
         ffcSNbSKhmQ8F/KgJLk11XWY9U819SmEHrIzjy/BxfBNCbHRNowCCDHaYc5fyd9B6Voo
         xXSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YESZVpAPSr5V8ydBxH4teaVc2gti9rjXuWC7z8MOzbs=;
        b=yem5qpsPtK96fg08+X6lFeK4P7I3qmxAVoFCFmdgt+HyK/FGa3jSCQt/waSaBIlfTX
         vzV8yCeQZuuTdfj6zY8CFiwwPTfJ7GBKei+pYpA16nB3LXlsZNoufbcc6SC5VPLZOVc7
         3B2PAcnjBqd0DBGVOei17IREHZLnABZ+eZWmP8lnR4ktRpJ7D2kDRSOREAKkW2pRsE7r
         5EU7Was1VidbYAthYdB3c6ZG/z3lrd0QDzjTC8SLpLcivZM0lpIgQhL2QgfTlM4F+ohu
         SPmJLtWzvN3/T2pyRlfgLjgchEyJkCvlXFVb8q6iQmGZyFz685kir/TPAjMADgA09hWC
         7uSw==
X-Gm-Message-State: ACrzQf0xxi9r0Mx+O42TAx4NxJlzNXf6xC2Z12a5BunzcA1rbbBtgFbP
        2I8eGd83Nm/mipIzJ1kEGsJcyvpVBezsejlAe3fevpJynyjf0w==
X-Google-Smtp-Source: AMsMyM5t1vb/UUHxaFELwLbrCFUP2Pcq7okgt2sJbap+4vIHr4PxpRCv651wfUiiBDLTcOBRbKfKFOjk+2IwcrjSrSk=
X-Received: by 2002:a05:6902:1201:b0:6ca:b14e:8aaa with SMTP id
 s1-20020a056902120100b006cab14e8aaamr14508700ybu.316.1667243631361; Mon, 31
 Oct 2022 12:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <20221021223300.3675201-1-zokeefe@google.com> <20221021223300.3675201-4-zokeefe@google.com>
 <ad6a0605-3494-ca32-c577-dbd4142ea7f8@gmail.com>
In-Reply-To: <ad6a0605-3494-ca32-c577-dbd4142ea7f8@gmail.com>
From:   Suren Baghdasaryan <surenb@google.com>
Date:   Mon, 31 Oct 2022 12:13:40 -0700
Message-ID: <CAJuCfpFvrhcfLAMDaz-3cRNtYXmHuP7FBZWy4TrYxcg8AF9c8w@mail.gmail.com>
Subject: Re: [PATCH man-pages v3 3/4] process_madvise.2: fix capability and
 ptrace requirements
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
        Zach OKeefe <zokeefe@google.com>,
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

Hi Alex,

On Sun, Oct 30, 2022 at 4:50 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Suren,
>
> On 10/22/22 00:32, Zach OKeefe wrote:
> > From: Zach O'Keefe <zokeefe@google.com>
> >
> > The initial commit of process_madvise(2) to Linux, commit ecb8ac8b1f14
> > ("mm/madvise: introduce process_madvise() syscall: an external memory
> > hinting API"), relied on PTRACE_MODE_ATTACH_FSCREDS (see ptrace(2)),
> > but was amended by commit 96cfe2c0fd23 ("mm/madvise: replace ptrace
> > attach requirement for process_madvise") which replaced this with a
> > combination of PTRACE_MODE_READ and CAP_SYS_NICE (PTRACE_MODE_READ to
> > prevent leaking ASLR metadata and CAP_SYS_NICE for influencing process
> > performance).
> >
> > The initial commit of process_madvise(2) to man-pages project, made
> > after the second patch, included two errors:
> >
> > 1) CAP_SYS_ADMIN instead of CAP_SYS_NICE
> > 2) PTRACE_MODE_READ_REALCREDS instead of PTRACE_MODE_READ_FSCREDS
> >
> > Correct this in the man-page for process_madvise(2).
> >
> > Fixes: a144f458b ("process_madvise.2: Document process_madvise(2)")
> > Cc: Suren Baghdasaryan <surenb@google.com>
> > Cc: Minchan Kim <minchan@kernel.org>
> > Signed-off-by: Zach O'Keefe <zokeefe@google.com>

Reviewed-by: Suren Baghdasaryan <surenb@google.com>

>
> You added your Reviewed-by tag to v2 of this patch.  I guess you'd like to put
> it in this one too, but since it changed slightly, I'd like you to confirm.

Thanks for the reminder!
Suren.

>
> Thanks,
>
> Alex
>
> > ---
> >   man2/process_madvise.2 | 21 +++++++++++++++++----
> >   1 file changed, 17 insertions(+), 4 deletions(-)
> >
> > diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> > index 6208206e4..44d3b94e8 100644
> > --- a/man2/process_madvise.2
> > +++ b/man2/process_madvise.2
> > @@ -105,16 +105,20 @@ remote process.
> >   No further elements will be processed beyond that point.
> >   (See the discussion regarding partial advice in RETURN VALUE.)
> >   .PP
> > -Permission to apply advice to another process is governed by a
> > +.\" commit 96cfe2c0fd23ea7c2368d14f769d287e7ae1082e
> > +Starting in Linux 5.12,
> > +permission to apply advice to another process is governed by
> >   ptrace access mode
> > -.B PTRACE_MODE_READ_REALCREDS
> > +.B PTRACE_MODE_READ_FSCREDS
> >   check (see
> >   .BR ptrace (2));
> >   in addition,
> >   because of the performance implications of applying the advice,
> >   the caller must have the
> > -.B CAP_SYS_ADMIN
> > -capability.
> > +.B CAP_SYS_NICE
> > +capability
> > +(see
> > +.BR capabilities (7)).
> >   .SH RETURN VALUE
> >   On success,
> >   .BR process_madvise ()
> > @@ -180,6 +184,15 @@ configuration option.
> >   The
> >   .BR process_madvise ()
> >   system call is Linux-specific.
> > +.SH NOTES
> > +When this system call first appeared in Linux 5.10,
> > +permission to apply advice to another process was entirely governed by
> > +ptrace access mode
> > +.B PTRACE_MODE_ATTACH_FSCREDS
> > +check (see
> > +.BR ptrace (2)).
> > +This requirement was relaxed in Linux 5.12 so that the caller didn't require
> > +full control over the target process.
> >   .SH SEE ALSO
> >   .BR madvise (2),
> >   .BR pidfd_open (2),
>
> --
> <http://www.alejandro-colomar.es/>
