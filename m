Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B335459B70
	for <lists+linux-man@lfdr.de>; Tue, 23 Nov 2021 06:15:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232579AbhKWFS4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Nov 2021 00:18:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229728AbhKWFS4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Nov 2021 00:18:56 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E349DC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 21:15:48 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id 71so1809647pgb.4
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 21:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+T4XxeLu7pjV7fLbsuW2Ix/NTtSU7ulUVOw82suUtog=;
        b=G8xAS14TPczKXZrLsD00nOPnEliRfAD18FhrnqISv/aZP7cjFyKQ+YYlS9JbmmSLmU
         PTdi7aV0NuM3lAaYhy0c+qj7iJMbJEb/9g1rbgFVBkMDHvUOxTHXb56stSFdw8D5CLSM
         zS8yzCAVwfWofJsu4Ht7oW2lSwtHZ159iTIeD9SQrqX7ekoUC5ssAYC27M+oNRTGInNL
         LJvPeh1JJTIuKqlskaABuEMWLf4tvCMx/hp9JioRWfjjjRaxp8UcQ+hjsfBl7NDvZ6IH
         swCaLy0o+I8VarZoOYIY2xj2wEfN1lKEwgUrSxi97Ho/YquJ8dY52EB92JVThMhAQr86
         ataA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+T4XxeLu7pjV7fLbsuW2Ix/NTtSU7ulUVOw82suUtog=;
        b=wQeElqHPiiT7sO+LoDkqfCp4e3gCfUN/syVFR9rT4T00jTvrlEJ5ioN2OWy4HGgNas
         R3FE8cVg8E8Wx3MB3zUhS/lWGJYBSdNG3irolQFvZO45olVsrUZ+X15ZnMMtg7JuVz3T
         GfPcjdLoF+72b++Gfgv5DEEQKRYCGOzvcbeKsBJ0xbSmBBBlagHw7XsHoS8dhqfH27tx
         bHB9GGGR+qgHzLgURJu+0cT4r4l1dg4xCJ04ej9VbQyk9iLhkMC7VnrVo4ZpnyWbHSCw
         DCvJWmZUWG+3+Sn7J0QyVwfhqqHlQf68kzt0qoQKSYjQU3oCdtEFZEm5/5NcYfaQRGVW
         25CA==
X-Gm-Message-State: AOAM5324/bH3Lg1fRrqGpB40+hKJIxx2bn8ov+LAixildPdWsRWLOup/
        4iPXp2ztzsgvy+GqTeWYoDNd3w==
X-Google-Smtp-Source: ABdhPJzNpnVXMFlzBBnboBZO96eRh/7hOpmEsmbbKu/2CnT9ZHEIMcll5Mqy9TWSv2F47ZiZlZwXnw==
X-Received: by 2002:aa7:84d7:0:b0:49f:aa6d:8745 with SMTP id x23-20020aa784d7000000b0049faa6d8745mr2930116pfn.50.1637644548209;
        Mon, 22 Nov 2021 21:15:48 -0800 (PST)
Received: from google.com ([2401:fa00:9:211:de12:dd5f:8d5c:4e51])
        by smtp.gmail.com with ESMTPSA id z7sm11235703pfe.77.2021.11.22.21.15.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 21:15:47 -0800 (PST)
Date:   Tue, 23 Nov 2021 16:15:36 +1100
From:   Matthew Bobrowski <repnop@google.com>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <YZx4+NumHKWsuA7o@google.com>
References: <cover.1635135968.git.repnop@google.com>
 <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
 <YZt8nVu1Ze4vHGdr@google.com>
 <CAOQ4uxhFWAfodZ=upZmBXgGkoGRaGF1rk0V2nVgHc0dBxSEP7g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxhFWAfodZ=upZmBXgGkoGRaGF1rk0V2nVgHc0dBxSEP7g@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Nov 22, 2021 at 03:37:30PM +0200, Amir Goldstein wrote:
> On Mon, Nov 22, 2021 at 1:19 PM Matthew Bobrowski <repnop@google.com> wrote:
> >
> > On Sat, Nov 20, 2021 at 12:36:26PM +0200, Amir Goldstein wrote:
> > > On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
> > > >
> > > > Hi Michael,
> > > >
> > > > This patch series documents the new FAN_REPORT_PIDFD feature that is
> > > > available from v5.15.
> > > >
> > > > Note that this patch series is diffbased against the FANOTIFY_UNPRIV
> > > > [0, 1] man page updates that are yet to be merged with upstream. That
> > > > said, if you could please merge the FANOTIFY_UNPRIV updates first
> > > > followed by the FAN_REPORT_PIDFD updates, that would be much
> > > > appreciated.
> > > >
> > > > [0] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> > > > [1] https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> > > >
> > >
> > > Alejandro,
> > >
> > > Is there any changes of getting those long due 5.13 fanotify update
> > > patches merged?
> > >
> > > Matthew,
> > >
> > > For v2 please base your own fanotify_pidfd branch on top of fanotify_unpriv
> > > (I just rebased it to master again) and provide a branch, that Gabriel
> > > and I could
> > > base the next man page updates on.
> > >
> > > Currently, neither your fanotify_pidfd patch nor Gabriel's fan-fs-error patch
> > > conflict with fanotify_unpriv changes, but fan-fs-error does have conflicts
> > > with fanotify_pidfd.
> >
> > ACK.
> >
> > As per request, v2 of the FAN_REPORT_PIDFD documentation can be found
> > here [0].
> >
> > The branch fanotify_pidfd_v2 is based off your fanotify_unpriv
> > branch. I'd like to post through this series at some point tomorrow,
> > so if you could PTAL in the interim, that'd be appreciated.
> >
> > I've incorporated the explicit documentation of the
> > fanotify_event_info_header structure, rather than duplicating field
> > explanations of such a structure across each information record types
> > as we had discussed.
> >
> > [0] https://github.com/matthewbobrowski/man-pages/tree/fanotify_pidfd_v2
> >
> 
> Hi Mattew,
> 
> I'm basically fine with most of the text in the sections, but
> the sections need some reordering IMO to make more sense.
> High level, I think it should look something like:

Right, I had thought that the ordering might need some work, thanks
for pulling this up.

> - "...the read buffer contains one or more struct fanotify_event_metadata..."
> - Text about several optional information records in event
> - Explain about fanotify_event_info_header and info_type
> - List of fanotify_event_info_* that belong to specific info types
> 
> Commented in github.

OK, I think this will make more sense when I read through the comments
on GitHub. I'll get around to this tonight/tomorrow.

/M
