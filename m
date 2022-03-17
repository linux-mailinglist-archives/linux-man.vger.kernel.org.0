Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CFE74DC3AF
	for <lists+linux-man@lfdr.de>; Thu, 17 Mar 2022 11:10:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbiCQKLO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Mar 2022 06:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232375AbiCQKLN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Mar 2022 06:11:13 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5739E1DDFD7
        for <linux-man@vger.kernel.org>; Thu, 17 Mar 2022 03:09:57 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id z8so5100635oix.3
        for <linux-man@vger.kernel.org>; Thu, 17 Mar 2022 03:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O0dkRK8Y+G+C0a3RAxFZGuP/9Ys7KQs5MVhA2+23Mvo=;
        b=J8GDX4CRCpZuwd1QfR0S32pGCehdo/GhPoVhbRLFyr753v0GlTcFK6hgT3hAjRkw25
         4gRwsjQoKa4jU2+/Mlg0lghcUtcZogyC/l1EDg6EMN6XBEnhFTOB6E30uQ6OwLQVdKkh
         xHl5pHeR/9vLsKeKZWBChSSLMKxX+fhSHzzr4ZIHd+xdsVT9YmE1elw6xI2wnExsUAsd
         NjHBrlHSYoAQ6jijgMxjIi29o6lWwmnh9WMebwuQA6VGg+fI6SPbl+Pp05OEwKlQph1p
         GDK8ljFQaVjjki4+fI21TDMBYPK+PzRBhl5HbIPj61TAgJEgZ3A6cLb02P6J8xWy/ZZp
         hmGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O0dkRK8Y+G+C0a3RAxFZGuP/9Ys7KQs5MVhA2+23Mvo=;
        b=fVpawwZUf0+OupSE7NySXWeXFLjcWtUfFDOA5FEH8x5iEV7JXfkw+ak39ualRuX1tP
         Kw9aUiP9TcZ1iOUxtHjj/044+t2Xkk1J5mLywfSBpnAr3JKxF22Pd7CniQDsooT9D8dL
         6eYpxcQD/KlX4vGGMlCRZNIN9iieN6W9tG6GhPeamaBu/djLhO4FeQ+rsB04VH0Vz9PK
         tyzyOch1PfSW2vIFj5XyP5rxk2UL15XtCUbsfa0Qvt+Bkf8elDNP4O9MomkTwl92wJ1b
         RtREjJfhbEMNaY1H1FMmY/XxzqhgOoW2eWl1f5+IeoijRyNQ/C0l0Ab9cfvb6LZ400mA
         RZyw==
X-Gm-Message-State: AOAM533uWiR/UIJ8ki7iewwwpuAjCtTU0uzvcuNiNg6yP846KtGGdQCF
        6k2zqBMy9c6cLHP6c3iVkjH7BvnbE8j48G+n57s=
X-Google-Smtp-Source: ABdhPJze//BJ0qPMOiiV4K8Yv4SXok2hWIwSmAk7UJvRhechzz2wKHorFk09D2qyh2Qa/ed9OfrtNLCxfqlioWs+R10=
X-Received: by 2002:a05:6808:23c1:b0:2da:30fd:34d9 with SMTP id
 bq1-20020a05680823c100b002da30fd34d9mr5283732oib.203.1647511796682; Thu, 17
 Mar 2022 03:09:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1635135968.git.repnop@google.com> <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
 <YZt8nVu1Ze4vHGdr@google.com> <CAOQ4uxhFWAfodZ=upZmBXgGkoGRaGF1rk0V2nVgHc0dBxSEP7g@mail.gmail.com>
 <YZx4+NumHKWsuA7o@google.com>
In-Reply-To: <YZx4+NumHKWsuA7o@google.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Thu, 17 Mar 2022 12:09:45 +0200
Message-ID: <CAOQ4uxhmX9sgfgqFamcPRhwGnSi++mScgSOnTNL4JrhkOV3EKQ@mail.gmail.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
To:     Matthew Bobrowski <repnop@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 23, 2021 at 7:15 AM Matthew Bobrowski <repnop@google.com> wrote:
>
> On Mon, Nov 22, 2021 at 03:37:30PM +0200, Amir Goldstein wrote:
> > On Mon, Nov 22, 2021 at 1:19 PM Matthew Bobrowski <repnop@google.com> wrote:
> > >
> > > On Sat, Nov 20, 2021 at 12:36:26PM +0200, Amir Goldstein wrote:
> > > > On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
> > > > >
> > > > > Hi Michael,
> > > > >
> > > > > This patch series documents the new FAN_REPORT_PIDFD feature that is
> > > > > available from v5.15.
> > > > >
> > > > > Note that this patch series is diffbased against the FANOTIFY_UNPRIV
> > > > > [0, 1] man page updates that are yet to be merged with upstream. That
> > > > > said, if you could please merge the FANOTIFY_UNPRIV updates first
> > > > > followed by the FAN_REPORT_PIDFD updates, that would be much
> > > > > appreciated.
> > > > >
> > > > > [0] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> > > > > [1] https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> > > > >
> > > >
> > > > Alejandro,
> > > >
> > > > Is there any changes of getting those long due 5.13 fanotify update
> > > > patches merged?
> > > >
> > > > Matthew,
> > > >
> > > > For v2 please base your own fanotify_pidfd branch on top of fanotify_unpriv
> > > > (I just rebased it to master again) and provide a branch, that Gabriel
> > > > and I could
> > > > base the next man page updates on.
> > > >
> > > > Currently, neither your fanotify_pidfd patch nor Gabriel's fan-fs-error patch
> > > > conflict with fanotify_unpriv changes, but fan-fs-error does have conflicts
> > > > with fanotify_pidfd.
> > >
> > > ACK.
> > >
> > > As per request, v2 of the FAN_REPORT_PIDFD documentation can be found
> > > here [0].
> > >
> > > The branch fanotify_pidfd_v2 is based off your fanotify_unpriv
> > > branch. I'd like to post through this series at some point tomorrow,
> > > so if you could PTAL in the interim, that'd be appreciated.
> > >
> > > I've incorporated the explicit documentation of the
> > > fanotify_event_info_header structure, rather than duplicating field
> > > explanations of such a structure across each information record types
> > > as we had discussed.
> > >
> > > [0] https://github.com/matthewbobrowski/man-pages/tree/fanotify_pidfd_v2
> > >
> >
> > Hi Mattew,
> >
> > I'm basically fine with most of the text in the sections, but
> > the sections need some reordering IMO to make more sense.
> > High level, I think it should look something like:
>
> Right, I had thought that the ordering might need some work, thanks
> for pulling this up.
>
> > - "...the read buffer contains one or more struct fanotify_event_metadata..."
> > - Text about several optional information records in event
> > - Explain about fanotify_event_info_header and info_type
> > - List of fanotify_event_info_* that belong to specific info types
> >
> > Commented in github.
>
> OK, I think this will make more sense when I read through the comments
> on GitHub. I'll get around to this tonight/tomorrow.
>

Hi Matthew,

Did you ever get the chance to work on those edits?
If you do not have time for this please let us know so that somebody can
pick up this work and unclog the queue of man-page updates sitting on top
of your branch:

https://github.com/amir73il/man-pages/commits/fan-fs-error
https://github.com/amir73il/man-pages/commits/fan_rename

Thanks,
Amir.
