Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0248835594C
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 18:36:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243911AbhDFQgW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 12:36:22 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:34332 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232063AbhDFQgV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 12:36:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617726973;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=FyE+dJT18bAcsTbW0EFehw0R17xNa24l8uyejjq61hI=;
        b=Fu3psMq3rnik5fAP9aUzoYy7NIt648rAZsxiCpm9ZZLNkKRvmaXpJMV1C+aXx7jOcukNUF
        7RRRXgx2UUiUViLnCa4qxP1G/KgLn7w8gPzKujsaASPUV0sNjRGkWOcNE41fCe015rE8Z4
        r1P2sLo0d+iJt+LB5cLMWvWH1geRm4E=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-544-86tQekAZMIK1dUzmNhInkw-1; Tue, 06 Apr 2021 12:36:11 -0400
X-MC-Unique: 86tQekAZMIK1dUzmNhInkw-1
Received: by mail-qt1-f197.google.com with SMTP id v18so10509429qtx.0
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 09:36:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FyE+dJT18bAcsTbW0EFehw0R17xNa24l8uyejjq61hI=;
        b=HFgM+0t74YkZWAhyNEC4z0F7UPHu/oJpLvHzvYSFObr6kXuITMcjO3XjHB0Wkdk2ga
         6kn20kuz153sg2QCUua6DhP0AOmwy1VvVse6uheuWUDVcfLYAjlbHKdB5i+2VK4PKGIp
         wwT17YCH7mTfFolSWzbJ5EzPXTKxRg41EUs2xJe33YG7fpZEoWpFWv7Wh0if8E8mJ4IG
         cpHFd6JWnzppHZ3BeGwF+oYOAyjplyxrWeOlNwa7VN23oQEgKrk7L9DhkT21AVQKZfrD
         xMLML87d1fqThSbPRSpXqj9rocW6xCRkcfsQMaSX2hYm11o6R0H6xxyLZRssDi0f9J/S
         BtZw==
X-Gm-Message-State: AOAM530Xluy6yo0KzJUhTdYo0FEztWw+ftVGubPx6WcAN64XW8uOiyfQ
        P5A4WgccbDgjF/3vgmHBgPwMfSlumMhR2DTMnqJeQDgmLohJzT0x7jw+zaL7ituD9f9ps8whaqg
        z8wiJAW2iGAxC3zlpVQ0a
X-Received: by 2002:a05:620a:205e:: with SMTP id d30mr29264262qka.380.1617726970766;
        Tue, 06 Apr 2021 09:36:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz73rRe5W73n/MGuwPEvTxjL2ZqvABhaJh3aEztgIikqOunQ8lyrPxaEATFEWl2G5//+PEDEw==
X-Received: by 2002:a05:620a:205e:: with SMTP id d30mr29264240qka.380.1617726970506;
        Tue, 06 Apr 2021 09:36:10 -0700 (PDT)
Received: from xz-x1 (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id g74sm16500236qke.3.2021.04.06.09.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 09:36:09 -0700 (PDT)
Date:   Tue, 6 Apr 2021 12:36:08 -0400
From:   Peter Xu <peterx@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: Re: [PATCH 3/5] userfaultfd.2: Add write-protect mode
Message-ID: <20210406163608.GH628002@xz-x1>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
 <20210405131307.2892-4-alx.manpages@gmail.com>
 <f7496c55-600d-9ac0-fe6c-7fcc75dc6955@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f7496c55-600d-9ac0-fe6c-7fcc75dc6955@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Apr 05, 2021 at 11:13:14PM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Alex, Peter,

Hi, Michael,

[...]

> > @@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
> >  .\" and limitations remaining in 4.11
> >  .\" Maybe it's worth adding a dedicated sub-section...
> >  .\"
> > +.PP
> > +Since Linux 5.7, userfaultfd is able to do
> > +synchronous page dirty tracking using the new write-protect register mode.
> > +One should check against the feature bit
> > +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> > +before using this feature.
> > +Similar to the original userfaultfd missing mode, the write-protect mode will
> > +generate an userfaultfd message when the protected page is written.
> > +The user needs to resolve the page fault by unprotecting the faulted page and
> 
> You use "user-space" elsewhere, but "the user" here. What is the difference?

I wanted to mean the same idea of user-space indeed.

> 
> More generally, What is "the user" in this context? I think you 
> really mean  something like "the trap-handling thread"" or something
> like that? The same statement applies for various pieces below.

Yes, it's just a more general wording since the trap-handling thread in the
userfaultfd world belongs to the user, or the user-space.

> 
> > +kick the faulted thread to continue.
> 
> What does "kick" mean here. This should be explained.

Sorry about that, "kick" is a very frequently used wording for developers but
probably confusing for manpage readers, it means "wake up".

> 
> > +For more information, please refer to "Userfaultfd write-protect mode" section.
> >  .SS Userfaultfd operation
> >  After the userfaultfd object is created with
> >  .BR userfaultfd (),
> > @@ -179,7 +216,7 @@ or
> >  .BR ioctl (2)
> >  operations to resolve the page fault.
> >  .PP
> > -Starting from Linux 4.14, if the application sets the
> > +Since Linux 4.14, if the application sets the
> >  .B UFFD_FEATURE_SIGBUS
> >  feature bit using the
> >  .B UFFDIO_API
> > @@ -219,6 +256,65 @@ userfaultfd can be used only with anonymous private memory mappings.
> >  Since Linux 4.11,
> >  userfaultfd can be also used with hugetlbfs and shared memory mappings.
> >  .\"
> > +.SS Userfaultfd write-protect mode (since 5.7)
> > +Since Linux 5.7, userfaultfd supports write-protect mode.
> > +The user needs to first check availability of this feature using
> > +.B UFFDIO_API
> > +ioctl against the feature bit
> > +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> > +before using this feature.
> > +.PP
> > +To register with userfaultfd write-protect mode, the user needs to initiate the
> 
> You use "user-space" elsewhere, but "the user" here. What is the difference?

(I'm skipping same questions)

[...]

> > +.B UFFDIO_REGISTER
> > +with the mode set to
> > +.BR "UFFDIO_REGISTER_MODE_MISSING | UFFDIO_REGISTER_MODE_WP" .
> > +When there is only
> > +.B UFFDIO_REGISTER_MODE_WP
> > +registered, the userspace will
> > +.I not
> > +receive any message when a missing page is written.
> > +Instead, the userspace will only receive a write-protect page fault message
> > +when an existing but write-protected page got written.
> 
> The wording here is a bit off. What does it mean: "an existing but 
> write-protected page"?

I wanted to emphasize the fact that this write-protect message won't be
generated if the page does not exist at all.  That belongs to the missing page
fault even if a memory write triggerred the page fault.

Thanks,

-- 
Peter Xu

