Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D949C458F8E
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 14:37:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235993AbhKVNkt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 08:40:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233288AbhKVNks (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 08:40:48 -0500
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C4D1C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 05:37:42 -0800 (PST)
Received: by mail-il1-x131.google.com with SMTP id w15so18074600ill.2
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 05:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pkW93azp38J5N74YgRB7pou3f5c89XKP0Z4zI4TIZZg=;
        b=GSUHTHd3sPWkh/9tzW6C61Fk/SwkC487qMbzg93485xmEpah8ai0V27bS4LwoNQHxv
         N9f2qVhZhG0CvYlDiOO01Kx+RlGXtICWKrJYNqUff9t+Htk41FXrQlZR66vdrIZJx3Vi
         bXYhReQ1faWtzcArMBJewhRMdhJsktVctl+Z4q7SJ8I9ilPvtEIYjAd31gFghQrIY5mY
         nW5hxlKIMNRvsUXo1YsUMUKkIWqV5UNBXXHJ0sjqsKgSKeAGh8uMKeQ77X99MKN8kDRp
         krSpOUfHLfcWDdQxKGG44SpZ+SINI/uNz+NDYGWUOGKz7I7NfPWoIRIRbe20HbOOiO3W
         a9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pkW93azp38J5N74YgRB7pou3f5c89XKP0Z4zI4TIZZg=;
        b=iGzz3uPNlpJXeTdujd/Ilvde72cb8ObkpVrAGk9dN99hlR7MRTo2XGh7SRJYFkyZhA
         e3hVKukh0ozRlc1KSGnPtNLgiWg4xvDc5cl9g0EUNpuBgt73xuVld7HPWQr63tHWmveX
         Me8AXpIdVSK8GTrgp4aBlCIC2dhsUqn1yyeMZr4gxHdO1yvWc8/QXEJDEQTApYn2zEWY
         ajc3bi2n5R4SIEfx8LhAoePBp0yvT5ohcWTJhuUNi8WjPwAV6q5SjUjI5JvVdYrOZvqV
         pnzIBc0Viq0VFJORh97F3VVrU7ppyyywaa+S3/fAIXbQ67Celdzqz7bITOhS3TaD4Pc0
         YdGA==
X-Gm-Message-State: AOAM533yJclOSXFwwoBp5fEHO93CH4g0wBf7BVCe5lczcylwjEt8cwd6
        lQxsc8leVQyTP95rfpUcC3JmW5lHNP5l0U1lkrK9341Q2eQ=
X-Google-Smtp-Source: ABdhPJwL/bnYLtsS2RCEGEx8P7HV+6BNzGPIV+RjxBrb9EKB8TZjUCRd6DjnI0B7WnKYp8OuCSHTyTc28h5rZLuhCVc=
X-Received: by 2002:a92:d643:: with SMTP id x3mr19371514ilp.107.1637588261537;
 Mon, 22 Nov 2021 05:37:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1635135968.git.repnop@google.com> <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
 <YZt8nVu1Ze4vHGdr@google.com>
In-Reply-To: <YZt8nVu1Ze4vHGdr@google.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Mon, 22 Nov 2021 15:37:30 +0200
Message-ID: <CAOQ4uxhFWAfodZ=upZmBXgGkoGRaGF1rk0V2nVgHc0dBxSEP7g@mail.gmail.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
To:     Matthew Bobrowski <repnop@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Nov 22, 2021 at 1:19 PM Matthew Bobrowski <repnop@google.com> wrote:
>
> On Sat, Nov 20, 2021 at 12:36:26PM +0200, Amir Goldstein wrote:
> > On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
> > >
> > > Hi Michael,
> > >
> > > This patch series documents the new FAN_REPORT_PIDFD feature that is
> > > available from v5.15.
> > >
> > > Note that this patch series is diffbased against the FANOTIFY_UNPRIV
> > > [0, 1] man page updates that are yet to be merged with upstream. That
> > > said, if you could please merge the FANOTIFY_UNPRIV updates first
> > > followed by the FAN_REPORT_PIDFD updates, that would be much
> > > appreciated.
> > >
> > > [0] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> > > [1] https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> > >
> >
> > Alejandro,
> >
> > Is there any changes of getting those long due 5.13 fanotify update
> > patches merged?
> >
> > Matthew,
> >
> > For v2 please base your own fanotify_pidfd branch on top of fanotify_unpriv
> > (I just rebased it to master again) and provide a branch, that Gabriel
> > and I could
> > base the next man page updates on.
> >
> > Currently, neither your fanotify_pidfd patch nor Gabriel's fan-fs-error patch
> > conflict with fanotify_unpriv changes, but fan-fs-error does have conflicts
> > with fanotify_pidfd.
>
> ACK.
>
> As per request, v2 of the FAN_REPORT_PIDFD documentation can be found
> here [0].
>
> The branch fanotify_pidfd_v2 is based off your fanotify_unpriv
> branch. I'd like to post through this series at some point tomorrow,
> so if you could PTAL in the interim, that'd be appreciated.
>
> I've incorporated the explicit documentation of the
> fanotify_event_info_header structure, rather than duplicating field
> explanations of such a structure across each information record types
> as we had discussed.
>
> [0] https://github.com/matthewbobrowski/man-pages/tree/fanotify_pidfd_v2
>

Hi Mattew,

I'm basically fine with most of the text in the sections, but
the sections need some reordering IMO to make more sense.
High level, I think it should look something like:

- "...the read buffer contains one or more struct fanotify_event_metadata..."
- Text about several optional information records in event
- Explain about fanotify_event_info_header and info_type
- List of fanotify_event_info_* that belong to specific info types

Commented in github.

Thanks,
Amir.
