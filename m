Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56C2325140B
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 10:19:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728599AbgHYITt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 04:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728080AbgHYITr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 04:19:47 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDE33C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 01:19:46 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id v6so11564868iow.11
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 01:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MqgJLrCutYarVltqr4Ci+dzGADQJ+1vVuYXN2ibqDvs=;
        b=sl06qRMLlo0qG+efzqyanelkTrWIMJvq41Gvh7CLdBHBVuZMjhHM/AIYhD52feKfRF
         69safk+M3rnHHsqhlzK4ZGz35CJeAbnKOBUy+usoLNoGZajH3hrmXTMWhL733n8H7TzZ
         5V/cX5yLBRurrnrPBuRcU1elGomH4o7NltENnKKewx0kLjgaKUzYC2fI3rMlgq1QaAOw
         eTTcxpcXZbG+qKnoxHUA9TiVOt+YwfGieY0Lp1VAfMR80foUxJV4AGzTdKizvr0xfm0V
         lw6rTbmuIXYKFkmYJ0ofK4bBmTtaaBB1dEWYcf/5OKjPbJ0+wSjMJcWNvyAa7LPiEWWd
         jYXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MqgJLrCutYarVltqr4Ci+dzGADQJ+1vVuYXN2ibqDvs=;
        b=qXpMS3s3Qu/NFshSKooO7SFSWJjZIsjfjXxAoQDZG7JcroGOmtr0d0OW5xTQAcwCcJ
         9GdegPF38C4mgmSqdk6h3DPkAXejxBn4PsJYskGu+xgH+icIHNqmEBkhK0SJyfSZtBrY
         Ur6cBiYGAca7kx4HmOOdreqdCYf5aZ8/Ctm3Lpn+7384+IqbdGQpITOK3iXsxnesY96u
         A//H/5CC+UxmBADF3nTaegReTUyJjN0HdBdqEkWGr/ZCkygJ598GjStE6mECcpdWXkJE
         5ppTQCzE5yz4iB0yDPtBt/n19/3u9GYlWO+3vLORrfR91K4RgN+2XgBvUlXb5+KwYVio
         AJuw==
X-Gm-Message-State: AOAM533c7v8uMsSroGjyUixWmTZWtnTLRDh6To33Rt08tW9K9whuZD4o
        Lut8eGTH4HLwxLFgVHUdNYUlYH1Xagoi4dxOX4M=
X-Google-Smtp-Source: ABdhPJzHerq1FKTNrCzX4bpZ388U8qGMJL5NiYsWRBHinpQV2Nir5wNsSfddLUqwhAE8vHDHFrdvno6y2kqZeUFO9sc=
X-Received: by 2002:a02:3f16:: with SMTP id d22mr9357853jaa.30.1598343586148;
 Tue, 25 Aug 2020 01:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200824080326.5012-1-amir73il@gmail.com> <20200824080326.5012-2-amir73il@gmail.com>
 <20200824235048.GA29428@mail.bobrowski.net>
In-Reply-To: <20200824235048.GA29428@mail.bobrowski.net>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Tue, 25 Aug 2020 11:19:35 +0300
Message-ID: <CAOQ4uxitp36zeid9WLgDjvQS=4pDbGZa0GRZOotooNcshy4D0w@mail.gmail.com>
Subject: Re: [PATCH 1/3] fanotify.7, fanotify_mark.2: Generalize documentation
 of FAN_REPORT_FID
To:     Matthew Bobrowski <mbobrowski@mbobrowski.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Aug 25, 2020 at 2:50 AM Matthew Bobrowski
<mbobrowski@mbobrowski.org> wrote:
>
> On Mon, Aug 24, 2020 at 11:03:24AM +0300, Amir Goldstein wrote:
> > With fanotify_init(2) flag FAN_REPORT_FID, the group identifies
> > filesystem objects by file handles in a single event info record of type
> > FAN_EVENT_INFO_TYPE_FID.
> >
> > We indend to add support for new fanotify_init(2) flags for which the
> > group identifies filesystem objects by file handles and add more event
> > info record types.
> >
> > To that end, start by changing the language of the man page to refer
> > to a "group that identifies filesystem objects by file handles" instead
> > of referring to the FAN_REPORT_FID flag and document the extended event
> > format structure in a more generic manner that allows more than a single
> > event info record and not only a record of type FAN_EVENT_INFO_TYPE_FID.
> >
> > Clarify that the object identified by the file handle refers to the
> > directory in directory entry modification events.
> >
> > Remove a note about directory entry modification events and monitoring
> > a mount point that I found to be too confusing and out of context.
> >
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
>
> ...
>
> > diff --git a/man7/fanotify.7 b/man7/fanotify.7
> > index a7d60b2b9..a7b219168 100644
> > --- a/man7/fanotify.7
> > +++ b/man7/fanotify.7
> > @@ -110,13 +110,11 @@ Two types of events are generated:
> >  events and
> >  .I permission
> >  events.
> > -Notification events are merely informative
> > -and require no action to be taken by
> > -the receiving application with the exception being that the file
> > -descriptor provided within a generic event must be closed.
> > -The closing of file descriptors for each event applies only to
> > -applications that have initialized fanotify without using
> > -.BR FAN_REPORT_FID
> > +Notification events are merely informative and require no action to be taken
> > +by the receiving application with one exception - if a valid file descriptor
> > +is provided within a generic event, the file descriptor must be closed.
>
> Changes read well up until this point.
>
> > +File descriptors are not provided with event to applications that have
> > +created fanotify group so that it identifies filesystem objects by file handles
> >  (see below).
>
> Then there's this sentence, which doesn't really read overly smoothly
> as if there was a few words missing or something. Or, quite possibly
> it's just me not understanding something?
>

Yeh. I think this sentence doesn't serve anything in this context.
I will remove it.

So can I add your reviewed-by on this patch as well?

Thanks!
Amir.
