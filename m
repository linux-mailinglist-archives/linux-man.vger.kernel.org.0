Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B5D6442722
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 07:31:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbhKBGdu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 02:33:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbhKBGds (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 02:33:48 -0400
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A078C061714
        for <linux-man@vger.kernel.org>; Mon,  1 Nov 2021 23:31:14 -0700 (PDT)
Received: by mail-il1-x12f.google.com with SMTP id f10so16333925ilu.5
        for <linux-man@vger.kernel.org>; Mon, 01 Nov 2021 23:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cYpnuSXmxsPFVxVT73MqVPBtL7h7QyE08bBPaH5Dm/U=;
        b=SS4Wzqr78yXF5ORGfFuUzyYtlFvPblLxGU68CFEmkoYRBd3mC1Lg/1ommzvmS3Ewk3
         SlFqNxOzCwG3aWbO6hl3Tngr6Z0GScubjItrNtmqYmzUXNZ1sR+PmZ77i2Inope4nTKu
         2rwhJWzwLxvug0cJdbrgI53i7ocLnLWh2bljAb7SnpI6vIYMut3JF87SsLW1BhSnVFDc
         z7N/nZUA6HLFLUzSWsbrpEPrMkIqqZwivGegK/vBNvL40MMEzbJ/YjFAepvLiBE1LGXa
         jL7gazpsukLIiT7kp2Q1AGrkCeaDh3AU0wUy30BFZK0xTQOMlxSjU0oZd+v3Tqm8URMk
         kd+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cYpnuSXmxsPFVxVT73MqVPBtL7h7QyE08bBPaH5Dm/U=;
        b=PGLmxHPJDsR2nQaWFsNE2M6JM+2xKYoqOmrIM49KFyli74emz/geJnm9fkw8u1DkGY
         t30+0sY4MkO4CyL1SJ5XJMPwbosU+Nu2rfWxHVnMORyPJ3pvdJn1rdTBP/lrZaouAhxF
         X8MfsK0jHJwNCuDzx94jUGafhFPVwjQYoW4xIBoTFyHbccvayKu4iA+7TKSELh12K5zg
         77H4BRbJxc4Ab4Gh5X9PvAeRFk97LBSLgezlEpQiwQCmiaq6LqP/fJe39weVG3fN0QF6
         NHMEIDqlmvRHbss8q6I8s6TxMRh93FuCQQvsCQ9Ek5dgpAHCVocsZ3vd4RgihLBVjGyL
         olnA==
X-Gm-Message-State: AOAM533cQ2y2dXG7UunCHa/QIaKfA6psDF6Z3YbS+63MnbF7pCwVJ7dp
        8Dy5iP69NW9Kg7DWDtAKkmSQbMVVNhksvVxQ9ACH4KzW
X-Google-Smtp-Source: ABdhPJz8YIIlDisq/r0ax/vtzfAGZtDmttGDESWhcf8iUCNN2/Aq1pc0Sk1CUdhZI1ddUI2F1qRl+WSZDxOd0L5hYaU=
X-Received: by 2002:a05:6e02:19ca:: with SMTP id r10mr24350136ill.319.1635834673673;
 Mon, 01 Nov 2021 23:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1635135968.git.repnop@google.com> <6ea10a58db3446aabc729b1082611bdadb1ce4ed.1635135968.git.repnop@google.com>
 <CAOQ4uxiBJBqfH=eoA8sPven2tXzUmPftKJZCSpw=8f23SoAs0g@mail.gmail.com> <YYBV2J4cDWbL6bLu@google.com>
In-Reply-To: <YYBV2J4cDWbL6bLu@google.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Tue, 2 Nov 2021 08:31:02 +0200
Message-ID: <CAOQ4uxiNNK5R2=azr3RJabhFJrzi5zdui8+yyHVXBAEJ4yyruw@mail.gmail.com>
Subject: Re: [PATCH 1/1] Document the new fanotify initialization flag FAN_REPORT_PIDFD
To:     Matthew Bobrowski <repnop@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > > @@ -188,6 +200,27 @@ struct fanotify_event_info_fid {
> > >  .EE
> > >  .in
> > >  .PP
> > > +In the instance that the fanotify group has been initialized with
> > > +.BR FAN_REPORT_PIDFD ,
> > > +the listening application should expect to receive a single
> > > +information record object as detailed below alongside the generic
> > > +.I fanotify_event_metadata structure:
> > > +.PP
> > > +.in +4n
> > > +.EX
> > > +struct fanotify_event_info_header {
> > > +    __u8 info_type;
> > > +    __u8 pad;
> > > +    __u16 len;
> > > +};
> >
> > This structure was just listed a few lines up.
> > There is no need to re-list it here.
>
> ACK.
>
> > > +
> > > +struct fanotify_event_info_pidfd {
> > > +        struct fanotify_event_info_header hdr;
> > > +        __s32 pidfd;
> > > +};
> > > +.EE
> > > +.in
> > > +.PP
> > >  For performance reasons, it is recommended to use a large
> > >  buffer size (for example, 4096 bytes),
> > >  so that multiple events can be retrieved by a single
> > > @@ -510,6 +543,64 @@ and the file handle is followed by a null terminated string that identifies the
> > >  name of a directory entry in that directory, or '.' to identify the directory
> > >  object itself.
> > >  .PP
> > > +The fields of the
> > > +.I fanotify_event_info_pidfd
> > > +structure are as follows:
> > > +.TP
> > > +.I hdr
> > > +This is a structure of type
> > > +.IR fanotify_event_info_header .
> > > +Exactly like the one that is provided in a
> > > +.I fanotify_event_info_fid
> > > +structure, it is a generic header that contains information used to
> > > +describe an additional information record object that is attached to
> > > +an event.
> > > +In the instance that
> > > +.BR FAN_REPORT_PIDFD
> > > +is supplied during fanotify group initialization, a single information
> > > +record object is expected to be attached alongside the generic
> > > +metadata event with its
> > > +.I info_type
> > > +field set to the value of
> > > +.BR FAN_EVENT_INFO_TYPE_PIDFD .
> > > +The
> > > +.I fanotify_event_info_header
> > > +structure also contains a
> > > +.I len
> > > +field.
> > > +The value of the
> > > +.I len
> > > +field is the total size of the
> > > +.I fanotify_event_info_pidfd
> > > +structure, which also includes
> > > +.IR fanotify_event_info_header .
> >
> > It would be a shame if we needed to repeat the same text for every new info_type
> > that we add. There should be no duplicate documentation of the
> > fanotify_event_info_header fields. Perhaps we need to describe those fields
> > before documenting fanotify_event_info_fid fields instead of inline in the
> > documentation of hdr field.
>
> Right, I see where you're coming from and I do generally agree. If we
> continue repeating the same pattern for each bonus event that is based
> on fanotify_event_info_header, then we'll end up unnecessarily
> polluting the documentation.
>
> Would you like me to try shuffle things around in a patch that
> precedes this one?
>

Yes, please do. Either prep patch or in same patch is fine by me.

Thanks,
Amir.
