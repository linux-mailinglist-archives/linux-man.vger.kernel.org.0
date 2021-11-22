Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D3B7458D3E
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 12:19:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237156AbhKVLW3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 06:22:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232836AbhKVLWM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 06:22:12 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40CE4C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:19:06 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id h24so13585141pjq.2
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=y46O4SRmmfgXBOU6GnJjTqQC+0ax37Bl+vxCa3CsUaE=;
        b=sVNY4+0o9SLKKubYJwwRH4EvwSeU3BJIAEM5MJqWvIWO6nar9X3R+5ojAdvPD+bKGd
         B6kccdHulhrHlJMMY8/EYnyLkicnVgKQXmBzXadRsxYg3NF0PNU0JYdXMnasW1sTOlfu
         gP/n2LRIW/sZJNTIP2YPAU6PdlR021Vaa19cb9+BZARkQpGRKwpEzOkoQZrnBRC3wejv
         idPgSFkDCCKz3m9pES/Vu8qwIWJQtOVhbVTSUxgNVez3PvWX6QhZSkLFJNCASbNFqrJP
         QekPmpTlsVQvJ262TOqYL9F1SV30PEqR5mK0mSHN0CNaZeRUlQJdxCfOcq7DzGNk9RwZ
         E18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=y46O4SRmmfgXBOU6GnJjTqQC+0ax37Bl+vxCa3CsUaE=;
        b=WSG+jb5Hl8qFhcOA8uD4ffER0pt0DMPRTfzL8qbBB3hULFE43UtyBnfav4D13Pbqy1
         q6cqTJT16cBGz2NfyGi68D5Fa2m46rgHOW0l1Fs5PN/TXCX21B8PAcbCjNa5cSpfY69m
         7Ckqyc2Anma3igiEdOmn+0nXOQTP8OLmu/XT2Sq3lExfostLbYmlK2JwNRQdXQ4ksNck
         YkPVLngXar0BZkJ7gLgiMPI+8NuicWvWPiKnvHhqjaxiByPBvvOj1Js9dNdhaaprvx3S
         t2B9jIMi2AZEMJrEM1mIVdNxjoGA2nNzxHLXTRFMLVtRRSSKWlRSnh8FP5c9F6Y8GPIN
         pzaA==
X-Gm-Message-State: AOAM532jsZjWQ2r9xSkaDQR42DigCXq3Ogue9aGvIRKlHmzabs7Aa4zP
        +Whx+22aGn/Cse+52NWOZIDlaw==
X-Google-Smtp-Source: ABdhPJxxLQTp6a5e96PpVZ9XnY7dTfrkmTs47YDI8lwmFQiMf8MZv6qe2BSAmLbLaq781kGsqDg9nA==
X-Received: by 2002:a17:90b:38c1:: with SMTP id nn1mr30916292pjb.91.1637579945570;
        Mon, 22 Nov 2021 03:19:05 -0800 (PST)
Received: from google.com ([2401:fa00:9:211:de12:dd5f:8d5c:4e51])
        by smtp.gmail.com with ESMTPSA id l12sm8539914pfu.100.2021.11.22.03.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 03:19:04 -0800 (PST)
Date:   Mon, 22 Nov 2021 22:18:53 +1100
From:   Matthew Bobrowski <repnop@google.com>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <YZt8nVu1Ze4vHGdr@google.com>
References: <cover.1635135968.git.repnop@google.com>
 <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Nov 20, 2021 at 12:36:26PM +0200, Amir Goldstein wrote:
> On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
> >
> > Hi Michael,
> >
> > This patch series documents the new FAN_REPORT_PIDFD feature that is
> > available from v5.15.
> >
> > Note that this patch series is diffbased against the FANOTIFY_UNPRIV
> > [0, 1] man page updates that are yet to be merged with upstream. That
> > said, if you could please merge the FANOTIFY_UNPRIV updates first
> > followed by the FAN_REPORT_PIDFD updates, that would be much
> > appreciated.
> >
> > [0] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> > [1] https://github.com/amir73il/man-pages/commits/fanotify_unpriv
> >
> 
> Alejandro,
> 
> Is there any changes of getting those long due 5.13 fanotify update
> patches merged?
> 
> Matthew,
> 
> For v2 please base your own fanotify_pidfd branch on top of fanotify_unpriv
> (I just rebased it to master again) and provide a branch, that Gabriel
> and I could
> base the next man page updates on.
> 
> Currently, neither your fanotify_pidfd patch nor Gabriel's fan-fs-error patch
> conflict with fanotify_unpriv changes, but fan-fs-error does have conflicts
> with fanotify_pidfd.

ACK.

As per request, v2 of the FAN_REPORT_PIDFD documentation can be found
here [0].

The branch fanotify_pidfd_v2 is based off your fanotify_unpriv
branch. I'd like to post through this series at some point tomorrow,
so if you could PTAL in the interim, that'd be appreciated.

I've incorporated the explicit documentation of the
fanotify_event_info_header structure, rather than duplicating field
explanations of such a structure across each information record types
as we had discussed.

[0] https://github.com/matthewbobrowski/man-pages/tree/fanotify_pidfd_v2

/M
