Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35E613468C6
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 20:17:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233299AbhCWTQ7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 15:16:59 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:43574 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233109AbhCWTQ0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 15:16:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616526985;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=pzzsxO+/RfVNYyJ9yVIRqP2Pb3Z/0Xf0ayACN5hk9Gc=;
        b=bZfCg2/4YHIX3OcHeS6v8hsAtVOh0At8f3d0r1TXAl/Pv1EL5Qro/nFT5Zcy8MpkgTNRQT
        rOJNFRS4O2KuDxflFtvB8ZbG5f3+BQZIviwxcFJAFwnVuJwsUTpfI48y4QebJMlLv2WgBF
        bTmJJoWu4JvxSwNXXVRAUiaOwksjf14=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-b3oel21POoKUaCr8kCrcXw-1; Tue, 23 Mar 2021 15:16:21 -0400
X-MC-Unique: b3oel21POoKUaCr8kCrcXw-1
Received: by mail-qt1-f199.google.com with SMTP id j2so1840515qtv.10
        for <linux-man@vger.kernel.org>; Tue, 23 Mar 2021 12:16:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pzzsxO+/RfVNYyJ9yVIRqP2Pb3Z/0Xf0ayACN5hk9Gc=;
        b=pz18SAgSSsrWH+lYYUnjAstSTV3Dgv96yifiMmr1YGMNlKWggQ6JfisllPtPAzkMtk
         mCviREcwnpRFoFYksNUV5TyX49v2RvDflTl/DVSH5GWsBtjpCXc57t5skjEDJOFRpFos
         Y5bs4ihLa2zAUjmZ5ZcaxpxDntCETatNvsMtb1pnzc1XxRWyGCCT4yvM/99EQWbpCeMN
         I0krZjpRTWrj3tcmUIeXZr7nLPIsSsi/AMBFOdDh//ZJbEY7Qcsm5Kicq4+Ma/R6aQ8Z
         e/8nkp0nwRB939AVdV/bz72OvePprN/sYrSf47EKlP1WXTnKh3jM96MbcJV+cjT89LMX
         OK2w==
X-Gm-Message-State: AOAM533dRTWE0qJHJmeDw2EnYyuM9NemHZRfS7bAtIJaT6FDephqn0i4
        nM1OxJJyZFJSJRTBSk4QAos0UAxszRYpv2yjY1KB5NSmirDUVjPuvnT5rwoozoMLCsvEJOqa0ET
        4gX8vbxu7ecB8WQVsfVH6
X-Received: by 2002:ac8:5cc4:: with SMTP id s4mr5746085qta.214.1616526981083;
        Tue, 23 Mar 2021 12:16:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyHY7AQpSRZ5sUCEytixnvvAU37W64P8ZvCT5RyjQklc7t6g0fRMp/6jlGC8fQFAZSP3c28BA==
X-Received: by 2002:ac8:5cc4:: with SMTP id s4mr5746070qta.214.1616526980827;
        Tue, 23 Mar 2021 12:16:20 -0700 (PDT)
Received: from xz-x1 (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id g4sm7523813qtg.86.2021.03.23.12.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 12:16:20 -0700 (PDT)
Date:   Tue, 23 Mar 2021 15:16:18 -0400
From:   Peter Xu <peterx@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v4 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
Message-ID: <20210323191618.GJ6486@xz-x1>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-5-peterx@redhat.com>
 <c65b5f04-4620-4c7e-e71f-91fc8394d164@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c65b5f04-4620-4c7e-e71f-91fc8394d164@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Mar 23, 2021 at 07:11:04PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Peter,

Hi, Alex,

[...]

> > +.TP
> > +.B UFFDIO_COPY_MODE_WP
> > +Copy the page with read-only permission.
> > +This allows the user to trap the next write to the page,
> > +which will block and generate another write-protect userfault message.
> 
> s/write-protect/write-protected/
> ?

I think here "write-protect" is the wording I wanted to use, it is the name of
the type of the message in plain text.

[...]

> > +.B EAGAIN
> > +The process was interrupted and need to retry.
> 
> Maybe: "The process was interrupted; retry this call."?
> I don't know what other pager say about this kind of error.

Frankly I see no difference between the two..  If you prefer the latter, I can
switch.

> 
> > +.TP
> > +.B ENOENT
> > +The range specified in
> > +.I range
> > +is not valid.
> 
> I'm not sure how this is different from the wording above in EINVAL.  An
> "otherwise invalid range" was already giving EINVAL?

This can be returned when vma is not found (mwriteprotect_range()):

	err = -ENOENT;
	dst_vma = find_dst_vma(dst_mm, start, len);

	if (!dst_vma)
		goto out_unlock;

I think maybe I could simply remove this entry, because from an user app
developer pov I'd only be interested in specific error that I'd be able to
detect and (even better) recover from.  For such error I'd say there's not much
to do besides failing the app.

> 
> > +For example, the virtual address does not exist,
> > +or not registered with userfaultfd write-protect mode.
> > +.TP
> > +.B EFAULT
> > +Encountered a generic fault during processing.
> 
> What is a "generic fault"?

For example when the user copy failed due to some reason.  See
userfaultfd_writeprotect():

	if (copy_from_user(&uffdio_wp, user_uffdio_wp,
			   sizeof(struct uffdio_writeprotect)))
		return -EFAULT;

But I didn't check other places, generally I'd return -EFAULT if I can't find a
proper other replacement which has a clearer meaning.

I don't think this is really helpful to user app too because no user app would
start to read this -EFAULT to do anything useful.. how about I drop it too if
you think the description is confusing?

Thanks,

-- 
Peter Xu

