Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 144CB334A07
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 22:47:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232056AbhCJVrG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 16:47:06 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:36760 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231368AbhCJVqn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 16:46:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615412802;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=/4BAvAYb0p56VURUt0aneYd5tRaSp4726siIe8mGwLs=;
        b=hrbdYuYlAfjS1NRSbqxSDM9De1BOFaVEiyq0w6OvfgTuz7h0qjKh/RSw9s1+YK7s0vV+w7
        9cvDWVvPwm7gbFpZSU002ORLf2hBOoRxJ7sCuh9OM/Y5vnLN0g2SIkr80e8qlwlaSCmVwo
        oFLQtDgNiXq8JINUqPyLnXpuTPRQe7U=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-f93XFuCTO5ae0iSjYtQ4qA-1; Wed, 10 Mar 2021 16:46:40 -0500
X-MC-Unique: f93XFuCTO5ae0iSjYtQ4qA-1
Received: by mail-qt1-f200.google.com with SMTP id k4so13992958qtd.20
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 13:46:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/4BAvAYb0p56VURUt0aneYd5tRaSp4726siIe8mGwLs=;
        b=RsY3MC0SnWMEmYksd2Afxsunnn+mTgZPllwGRYGpQSreMfpGb0gl3Z/0yBmayOVAhP
         zQJJekxMF/unvvyVwFEyv2Wth+JXexk4MFTcFazGOxf4twxQLSdxnG2P80DU20AAoEr9
         lDSNtsYJTlBBmFuIHSIEOH7NNh9v4aKCbp3sw6J72DRoc7g433/h/P3pddU7U9ugOtg3
         0oiJ0P6b9cWzA5tvZBPfG9YUIx2W0wh+fk7T2z8LJRhBRFD4mXD5scjJCHWZB/tBhbtp
         AA6q2qygIOJHMYp8C/9gkOilsLr4AWS5Etwc5kUAFfiJh7TStacwT87PCFRuVqYTmDGL
         Uj1Q==
X-Gm-Message-State: AOAM532+xjEDTlwT3U3aiQD4AOc5oiZ06vfDWZTnFl5H+tLXzEJI/zxV
        vafq7wgI8zNZt32/LEF/EVQFCMVMFqHNzemWBB6Bk7CfdMIKujVR5IDphrveGP8y5SM/6e0EkUv
        gGhYChip/VSlp0QhTyf77
X-Received: by 2002:a05:6214:194f:: with SMTP id q15mr5148367qvk.46.1615412800342;
        Wed, 10 Mar 2021 13:46:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzNyEKmeMSTe/8AHX91In05+hEnDecNNNxFfngMdnwhuXY0MXGy87XhxBOkq6T5f0r9VUyHQA==
X-Received: by 2002:a05:6214:194f:: with SMTP id q15mr5148336qvk.46.1615412799955;
        Wed, 10 Mar 2021 13:46:39 -0800 (PST)
Received: from xz-x1 ([142.126.89.138])
        by smtp.gmail.com with ESMTPSA id a14sm384686qtw.80.2021.03.10.13.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 13:46:39 -0800 (PST)
Date:   Wed, 10 Mar 2021 16:46:38 -0500
From:   Peter Xu <peterx@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Nadav Amit <nadav.amit@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        linux-kernel@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux MM Mailing List <linux-mm@kvack.org>
Subject: Re: [PATCH v2 2/4] userfaultfd.2: Add write-protect mode
Message-ID: <20210310214638.GA194839@xz-x1>
References: <20210304163140.543171-1-peterx@redhat.com>
 <20210304163140.543171-3-peterx@redhat.com>
 <b81fc581-9db6-2fcb-21c2-8eab9e76a5d4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b81fc581-9db6-2fcb-21c2-8eab9e76a5d4@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 10, 2021 at 08:16:24PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Peter,
> 
> Please see a few comments below.
> 
> Thanks,
> 
> Alex
> 
> On 3/4/21 5:31 PM, Peter Xu wrote:
> > Write-protect mode is supported starting from Linux 5.7.
> > 
> > Signed-off-by: Peter Xu <peterx@redhat.com>
> > ---
> >   man2/userfaultfd.2 | 98 +++++++++++++++++++++++++++++++++++++++++++++-
> >   1 file changed, 96 insertions(+), 2 deletions(-)
> > 
> > diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> > index 0cd426a8a..426307bcf 100644
> > --- a/man2/userfaultfd.2
> > +++ b/man2/userfaultfd.2
> > @@ -78,6 +78,30 @@ all memory ranges that were registered with the object are unregistered
> >   and unread events are flushed.
> >   .\"
> >   .PP
> > +Currently, userfaultfd supports two modes of registration:
> 
> "Currently"
> 
> Than word is quite unstable and unprecise.
> I think it would be better to use an absolute reference, such as "Since
> Linux x.y, ...".

I decided to remove the "Currently" and put the "(since x.y)" into each mode:

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 426307bcf..1132f52a3 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -78,9 +78,9 @@ all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
 .PP
-Currently, userfaultfd supports two modes of registration:
+Userfaultfd supports two modes of registration:
 .TP
-.B UFFDIO_REGISTER_MODE_MISSING
+.BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
 When registered with
 .B UFFDIO_REGISTER_MODE_MISSING
 mode, the userspace will receive a page fault message when a missing page is
@@ -91,7 +91,7 @@ or an
 .B UFFDIO_ZEROPAGE
 ioctl.
 .TP
-.B UFFDIO_REGISTER_MODE_WP
+.BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
 When registered with
 .B UFFDIO_REGISTER_MODE_WP
 mode, the userspace will receive a page fault message when a write-protected

> 
> > +.TP
> > +.B UFFDIO_REGISTER_MODE_MISSING
> > +When registered with
> > +.B UFFDIO_REGISTER_MODE_MISSING
> > +mode, the userspace will receive a page fault message when a missing page is
> > +accessed.  The faulted thread will be stopped from execution until the page
> > +fault is resolved from the userspace by either an
> > +.B UFFDIO_COPY
> > +or an
> > +.B UFFDIO_ZEROPAGE
> > +ioctl.
> > +.TP
> > +.B UFFDIO_REGISTER_MODE_WP
> > +When registered with
> > +.B UFFDIO_REGISTER_MODE_WP
> > +mode, the userspace will receive a page fault message when a write-protected
> > +page is written.  The faulted thread will be stopped from execution until the
> 
> Please, use "semantic newlines".
> 
> $ man 7 man-pages |sed -n '/semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page,  new  sentences  should  be
>        started  on new lines, and long sentences should split into
>        lines at clause breaks (commas, semicolons, colons, and  so
>        on).   This  convention,  sometimes known as "semantic new-
>        lines", makes it easier to see the effect of patches, which
>        often  operate at the level of individual sentences or sen-
>        tence clauses.

Will do.

> 
> 
> 
> > +userspace un-write-protect the page using an
> > +.B UFFDIO_WRITEPROTECT
> > +ioctl.
> > +.PP
> > +Multiple modes can be enabled at the same time for the same memory range.
> > +.PP
> >   Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
> >   thread ID information into the fault message.  One needs to enable this feature
> >   explicitly using the
> > @@ -144,6 +168,16 @@ single threaded non-cooperative userfaultfd manager implementations.
> >   .\" and limitations remaining in 4.11
> >   .\" Maybe it's worth adding a dedicated sub-section...
> >   .\"
> > +.PP
> > +Starting from Linux 5.7, userfaultfd is able to do synchronous page dirty
> > +tracking using the new write-protection register mode.  One should check
> > +against the feature bit
> > +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> > +before using this feature.  Similar to the original userfaultfd missing mode,
> > +the write-protect mode will generate an userfaultfd message when the protected
> > +page is written.  The user needs to resolve the page fault by unprotecting the
> > +faulted page and kick the faulted thread to continue.  For more information,
> > +please read the "Userfaultfd write-protect mode" section below.
> >   .SS Userfaultfd operation
> >   After the userfaultfd object is created with
> >   .BR userfaultfd (),
> > @@ -219,6 +253,62 @@ userfaultfd can be used only with anonymous private memory mappings.
> >   Since Linux 4.11,
> >   userfaultfd can be also used with hugetlbfs and shared memory mappings.
> >   .\"
> > +.SS Userfaultfd write-protect mode
> > +Since Linux 5.7, userfaultfd supports write-protect mode.  The user needs to
> > +first check availability of this feature using
> > +.B UFFDIO_API
> > +ioctl against the feature bit
> > +.BR UFFD_FEATURE_PAGEFAULT_FLAG_WP .
> > +.PP
> > +To register with userfaultfd write-protect mode, the user needs to initiate the
> > +.B UFFDIO_REGISTER
> > +ioctl with mode
> > +.B UFFDIO_REGISTER_MODE_WP
> > +set.  Note that it's legal to monitor the same memory range with multiple
> > +modes.  For example, the user can do
> > +.B UFFDIO_REGISTER
> > +with the mode set to
> > +.BR UFFDIO_REGISTER_MODE_MISSING\ |\ UFFDIO_REGISTER_MODE_WP .
> 
> Please use quotes when possible:
> 
> .BR "asdasd asdsadf dfgsdfg dsf" .

Fixed.

> 
> > +When there is only
> > +.B UFFDIO_REGISTER_MODE_WP
> > +registered, the userspace will
> > +.I not
> > +receive any message when a missing page is written.  Instead, the userspace
> > +will only receive a write-protect page fault message when an existing but
> > +write-protected page got written.
> > +.PP
> > +After the
> > +.B UFFDIO_REGISTER
> > +ioctl completed with
> > +.B UFFDIO_REGISTER_MODE_WP
> > +mode set, the user can write-protect any existing memory within the range using
> > +the ioctl
> > +.B UFFDIO_WRITEPROTECT
> > +where
> > +.I uffdio_writeprotect.mode
> > +should be set to
> > +.BR UFFDIO_WRITEPROTECT_MODE_WP .
> > +.PP
> > +When a write-protect event happens, the userspace will receive a page fault
> > +message whose
> > +.I uffd_msg.pagefault.flags
> > +will be with
> > +.B UFFD_PAGEFAULT_FLAG_WP
> > +flag set.  Note: since only writes can trigger such kind of fault,
> > +write-protect messages will always be with
> > +.B UFFD_PAGEFAULT_FLAG_WRITE
> > +bit set too along with
> > +.BR UFFD_PAGEFAULT_FLAG_WP .
> > +.PP
> > +To resolve a write-protection page fault, the user should initiate another
> > +.B UFFDIO_WRITEPROTECT
> > +ioctl whose
> > +.I uffd_msg.pagefault.flags
> > +should have the flag
> > +.BR UFFDIO_WRITEPROTECT_MODE_WP
> 
> .B

Fixed.

Thanks,

-- 
Peter Xu

