Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 129F034683E
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 19:59:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232331AbhCWS6m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 14:58:42 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:34714 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232615AbhCWS6N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 14:58:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616525890;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=CT3Kmn+gEFR6z7R7WNTDWZaSULNoJGGKHGmVItsiXpw=;
        b=IrFeKU+fZnrsiYhtxzeejTPyR1Gj3OZEchEpBH04dTQLPryMh/PAcxCthCl5wdZdjT/5aR
        9c+fE/tdK7/OC4aPSwnEbk9x2HoFNlPud2GA+kvD6HprR0G9/orMugHXGC7TNHmMRfi88R
        HrfWgNRfS7Dz97Xy8h489AEKohc++N0=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-604-kaN-7OtfN3e2so93yTSjqw-1; Tue, 23 Mar 2021 14:58:09 -0400
X-MC-Unique: kaN-7OtfN3e2so93yTSjqw-1
Received: by mail-qk1-f198.google.com with SMTP id b136so2648439qkc.20
        for <linux-man@vger.kernel.org>; Tue, 23 Mar 2021 11:58:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CT3Kmn+gEFR6z7R7WNTDWZaSULNoJGGKHGmVItsiXpw=;
        b=td1OgffRN7JaJCEr4G4l9RXW3K4pixXQQn+zrYDUQLek8xF3kUYVo6ohPr3mEuCneb
         DY9H5TKqZ7qwQ1SKLAi1912FWHyCYOUE3C1s2H0B1wMLdLZ8nMA6krvKtcdaSKf98cDn
         V+10uTgIVhXlTaEqSotGt0vlATzEk4qjgbea3muHPd3jZkzL6/wx5BN50bk5W0jCC/Om
         G3+btDfBtDxQKUEo3iUxLTMOhqy9Y7GI1PgWpYZB74LzfOkIW3txnjbKsomYA9sHIzXq
         76IeJn6AVOYh82Y84vllXQ52GUxHqiwoSkvtQkMxUWg5hE7alu/nunxKJz3RI9RxK6iS
         Evyg==
X-Gm-Message-State: AOAM530h97G8Z24X8vJetJhq7OjC5eKJ95TDItKVg3FtA32cm2NxQFki
        YUIVU+LUYkovXLHqgi6p3ZcC8H+kLFNwUa77VRdp+lZihecWVCrW4w7HMOQsIDqE+i+bNuL56up
        xHKThVrajCqMfoqaUt2wg
X-Received: by 2002:a37:a74e:: with SMTP id q75mr6856174qke.165.1616525888326;
        Tue, 23 Mar 2021 11:58:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxqGFOI1cIm+p4sU8Im1YESqE3vTsYvSjd4tyeZApy3bMia7WUOBF9Ocw26Ft/MNchUMe0vTA==
X-Received: by 2002:a37:a74e:: with SMTP id q75mr6856154qke.165.1616525887980;
        Tue, 23 Mar 2021 11:58:07 -0700 (PDT)
Received: from xz-x1 (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id y1sm13882066qki.9.2021.03.23.11.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 11:58:07 -0700 (PDT)
Date:   Tue, 23 Mar 2021 14:58:05 -0400
From:   Peter Xu <peterx@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v4 2/4] userfaultfd.2: Add write-protect mode
Message-ID: <20210323185805.GI6486@xz-x1>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-3-peterx@redhat.com>
 <9c5a6fd4-e0f6-026a-e6a2-db34234a56c8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9c5a6fd4-e0f6-026a-e6a2-db34234a56c8@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Mar 23, 2021 at 07:19:12PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Peter,
> 
> Please see a few more comments below.
> 
> Thanks,
> 
> Alex
> 
> On 3/22/21 11:08 PM, Peter Xu wrote:
> > Write-protect mode is supported starting from Linux 5.7.
> > 
> > Signed-off-by: Peter Xu <peterx@redhat.com>
> > ---
> >   man2/userfaultfd.2 | 104 ++++++++++++++++++++++++++++++++++++++++++++-
> >   1 file changed, 102 insertions(+), 2 deletions(-)
> > 
> > diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> > index 555e37409..8ad4a71b5 100644
> > --- a/man2/userfaultfd.2
> > +++ b/man2/userfaultfd.2
> > @@ -78,6 +78,32 @@ all memory ranges that were registered with the object are unregistered
> >   and unread events are flushed.
> >   .\"
> >   .PP
> > +Userfaultfd supports two modes of registration:
> > +.TP
> > +.BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
> > +When registered with
> > +.B UFFDIO_REGISTER_MODE_MISSING
> > +mode, the userspace will receive a page fault message
> > +when a missing page is accessed.
> > +The faulted thread will be stopped from execution until the page fault is
> > +resolved from the userspace by either an
> > +.B UFFDIO_COPY
> > +or an
> > +.B UFFDIO_ZEROPAGE
> > +ioctl.
> > +.TP
> > +.BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
> > +When registered with
> > +.B UFFDIO_REGISTER_MODE_WP
> > +mode, the userspace will receive a page fault message
> > +when a write-protected page is written.
> > +The faulted thread will be stopped from execution
> > +until the userspace un-write-protect the page using an
> 
> Here you use un-write-protect, but in the other patch you use
> write-unprotect.  Please, use a consistent wording if it's the same thing
> (if there are other similar things with different wordings in different
> pages, please fix them too, but I didn't see more of those). If there's
> already a wording for that in any page, please reuse it (I ignore it).

I tried to look for it, and these are the only ones I got that are related:

man4/fd.4:gets the cached drive state (disk changed, write protected et al.)
man4/st.4:The drive is write-protected.
man4/st.4:An attempt was made to write or erase a write-protected tape.
man4/st.4:when the tape in the drive is write-protected.

Unluckily I didn't find the unprotect part.  I think I'll reword it as
"write-unprotect", since "write" should be an adjective-kind prefix.

> 
> > +.B UFFDIO_WRITEPROTECT
> > +ioctl.
> > +.PP
> > +Multiple modes can be enabled at the same time for the same memory range.
> > +.PP
> >   Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
> >   thread ID information into the fault message.
> >   One needs to enable this feature explicitly using the
> > @@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
> >   .\" and limitations remaining in 4.11
> >   .\" Maybe it's worth adding a dedicated sub-section...
> >   .\"
> > +.PP
> > +Starting from Linux 5.7, userfaultfd is able to do
> 
> The previous paragraph uses "Siince Linux 4.14".  For consistency, please
> use that same wording here.

Ok.

Unless Mike speaks out, I'll still keep Mike's a-b as a credit for reviewing,
considering these changes are small.

Thanks,

-- 
Peter Xu

