Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E47294DD041
	for <lists+linux-man@lfdr.de>; Thu, 17 Mar 2022 22:34:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230311AbiCQVgA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Mar 2022 17:36:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230232AbiCQVf7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Mar 2022 17:35:59 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 775371AE62D
        for <linux-man@vger.kernel.org>; Thu, 17 Mar 2022 14:34:42 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id o68-20020a17090a0a4a00b001c686a48263so1729418pjo.1
        for <linux-man@vger.kernel.org>; Thu, 17 Mar 2022 14:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5S6dVhkWAZf2dxqyt5ewkbBphe4+GzQf8csGtwvhQhc=;
        b=FsJpNkeOEKBNKzNf5bOgVE3qElvLd8vrecxaRsWDu1fg/uBA/9AAWAzdXfpOWsIMtL
         5YEKGoxWYUTMHhq/CoV2nc6W0JZ/c9Wbf/7f08PIc/uLreqhRWZ9jowcvKyPASWzDpLQ
         uY/RDU2OvZyWk7IYcFUXRLoRkJrr/Tl7ZOvM6wUtFbsZI3iPXFTSo5QFwpwibKCqzHrf
         VUG9vLU9eZPx7Ezfr0PahausZd7ybGxJ5VRn0Pz+w6ZL2gqEWpbo8RlyIrWE1WuJgFG/
         K/u5RJU6w5ROZKZGeH2qgPQdJYvUtwPX2HkNL+zKL6K5a0QOeoLqekkmmk0u0spRB73k
         S7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5S6dVhkWAZf2dxqyt5ewkbBphe4+GzQf8csGtwvhQhc=;
        b=GKJCNXglzV9aO129DABGE0EL38MmY+ipIspF6qVy7d/sSjXlpeJyR9OrT8+FRqvdqa
         vW5rNPW3M6/VZv/eP3ZDyMVmGx0GnqgNDr856JlSMGp2CO5FkqJWZawdBXz/1LKU93Dq
         o/RymjjeT8HYPCmqBoO9M2vmQkMRoji1fajpNN8Ni4Fm0AGyMwOZ3bswlFbrwjg/+rVy
         oiFIacZsUbhmtu3I+ma+FQ6RfKoEGhZAvalfG75tuEv0+v3GK/Kj+NlpVjM21Uf/Xdx5
         kKeVQktiOy4EA6dRD4yVwgAwNk3Pii529H/cePOkoVXo+VVA2zqNU/86w5j3WJyV/HNr
         nTmQ==
X-Gm-Message-State: AOAM531XgmYjNRhtn6l8/tRnc82hgbF4vZn4PyMqXLxsaZPDwXe/UmEI
        lQdo3kyvLxQUBGZ39ku6rGnQBw==
X-Google-Smtp-Source: ABdhPJzscIC5m5VbA/IjQUAMu0iv9bpmxfk2Jhm3zYYwxEFgZLGjMOwJaGe3Y678NOJylK2MPjWw5Q==
X-Received: by 2002:a17:90a:19d2:b0:1be:d815:477f with SMTP id 18-20020a17090a19d200b001bed815477fmr7784621pjj.23.1647552881617;
        Thu, 17 Mar 2022 14:34:41 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:15ac:a3e9:6f84:adfb])
        by smtp.gmail.com with ESMTPSA id m11-20020a17090a3f8b00b001bc299e0aefsm10213242pjc.56.2022.03.17.14.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 14:34:41 -0700 (PDT)
Date:   Fri, 18 Mar 2022 08:34:30 +1100
From:   Matthew Bobrowski <repnop@google.com>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <YjOpZlqLgbkzUQvx@google.com>
References: <cover.1635135968.git.repnop@google.com>
 <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
 <YZt8nVu1Ze4vHGdr@google.com>
 <CAOQ4uxhFWAfodZ=upZmBXgGkoGRaGF1rk0V2nVgHc0dBxSEP7g@mail.gmail.com>
 <YZx4+NumHKWsuA7o@google.com>
 <CAOQ4uxhmX9sgfgqFamcPRhwGnSi++mScgSOnTNL4JrhkOV3EKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxhmX9sgfgqFamcPRhwGnSi++mScgSOnTNL4JrhkOV3EKQ@mail.gmail.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Amir,

On Thu, Mar 17, 2022 at 12:09:45PM +0200, Amir Goldstein wrote:
> On Tue, Nov 23, 2021 at 7:15 AM Matthew Bobrowski <repnop@google.com> wrote:
> >
> > On Mon, Nov 22, 2021 at 03:37:30PM +0200, Amir Goldstein wrote:
> > > On Mon, Nov 22, 2021 at 1:19 PM Matthew Bobrowski <repnop@google.com> wrote:
> > > >
> > > > On Sat, Nov 20, 2021 at 12:36:26PM +0200, Amir Goldstein wrote:
> > > > > On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
> > > > > >
> > > > > > Hi Michael,
> > > > > >
> > > > > > This patch series documents the new FAN_REPORT_PIDFD feature that is
> > > > > > available from v5.15.
> > > > > >
> > > > > > Note that this patch series is diffbased against the FANOTIFY_UNPRIV
> > > > > > [0, 1] man page updates that are yet to be merged with upstream. That
> > > > > > said, if you could please merge the FANOTIFY_UNPRIV updates first
> > > > > > followed by the FAN_REPORT_PIDFD updates, that would be much
> > > > > > appreciated.
> > > > > >
> > > > > > [0] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> > > > > > [1] https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> > > > > >
> > > > >
> > > > > Alejandro,
> > > > >
> > > > > Is there any changes of getting those long due 5.13 fanotify update
> > > > > patches merged?
> > > > >
> > > > > Matthew,
> > > > >
> > > > > For v2 please base your own fanotify_pidfd branch on top of fanotify_unpriv
> > > > > (I just rebased it to master again) and provide a branch, that Gabriel
> > > > > and I could
> > > > > base the next man page updates on.
> > > > >
> > > > > Currently, neither your fanotify_pidfd patch nor Gabriel's fan-fs-error patch
> > > > > conflict with fanotify_unpriv changes, but fan-fs-error does have conflicts
> > > > > with fanotify_pidfd.
> > > >
> > > > ACK.
> > > >
> > > > As per request, v2 of the FAN_REPORT_PIDFD documentation can be found
> > > > here [0].
> > > >
> > > > The branch fanotify_pidfd_v2 is based off your fanotify_unpriv
> > > > branch. I'd like to post through this series at some point tomorrow,
> > > > so if you could PTAL in the interim, that'd be appreciated.
> > > >
> > > > I've incorporated the explicit documentation of the
> > > > fanotify_event_info_header structure, rather than duplicating field
> > > > explanations of such a structure across each information record types
> > > > as we had discussed.
> > > >
> > > > [0] https://github.com/matthewbobrowski/man-pages/tree/fanotify_pidfd_v2
> > > >
> > >
> > > Hi Mattew,
> > >
> > > I'm basically fine with most of the text in the sections, but
> > > the sections need some reordering IMO to make more sense.
> > > High level, I think it should look something like:
> >
> > Right, I had thought that the ordering might need some work, thanks
> > for pulling this up.
> >
> > > - "...the read buffer contains one or more struct fanotify_event_metadata..."
> > > - Text about several optional information records in event
> > > - Explain about fanotify_event_info_header and info_type
> > > - List of fanotify_event_info_* that belong to specific info types
> > >
> > > Commented in github.
> >
> > OK, I think this will make more sense when I read through the comments
> > on GitHub. I'll get around to this tonight/tomorrow.
> >
> 
> Hi Matthew,
> 
> Did you ever get the chance to work on those edits?
> If you do not have time for this please let us know so that somebody can
> pick up this work and unclog the queue of man-page updates sitting on top
> of your branch:
> 
> https://github.com/amir73il/man-pages/commits/fan-fs-error
> https://github.com/amir73il/man-pages/commits/fan_rename

I've been on parental leave for the last couple of months so I haven't
really had a chance to wrap the pending man-pages updates up. Now that
I'm back, I'll get the refactoring completed and sent through for
review.

Sorry about the delay on this.

/M
