Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A380134D9B9
	for <lists+linux-man@lfdr.de>; Mon, 29 Mar 2021 23:52:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbhC2VwH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Mar 2021 17:52:07 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:20927 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230323AbhC2Vvv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Mar 2021 17:51:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617054710;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=fXA20eIAi5LvcsVse5nWTOxsx9pyCiUtKEPvP36UGXE=;
        b=BpVyN35ybJv5IAA+hDLYWHtdvxN8BsvHGDuRNtv0UzDnxF9sUHUf6SCWCHs+WNRKZMxZuA
        cPUX6EEG/LDgE5z1TZeTgFTdcLJgcc26tYMjVTjb0ewLY0S+H8A6Cp/0NNQP8ylcV3m6Xv
        wmIEg/poa94dMdUSqV3VhqeNMoO/1Vs=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-YYp-TTLgMxm0D5GEtDhFlQ-1; Mon, 29 Mar 2021 17:51:48 -0400
X-MC-Unique: YYp-TTLgMxm0D5GEtDhFlQ-1
Received: by mail-qk1-f197.google.com with SMTP id c1so13192639qke.8
        for <linux-man@vger.kernel.org>; Mon, 29 Mar 2021 14:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fXA20eIAi5LvcsVse5nWTOxsx9pyCiUtKEPvP36UGXE=;
        b=eeG2h8UCnsupUkST8zQABaPhKwpHLvVEl2PkHmZDM6QM6lQInnMnEu/REpkhj+sRDx
         28VVgwKYaP9cdxdmicCBeMtgKfq8cZrH3krySJFwAhV57Qwv4cIM3ht3fi58ChEjDtbz
         k2V5B6UWZ90otJvxVQULVxl9C1BxleCzVEOjIm+OHMOTtNhmfDYgCNjsTvpnQbjrZwTI
         RuK4ycQFsK70aixS+Z6L5aKMA6QQzfQt9+wOKuhIDwiFc6q+eJdtv4rk/PqV8kI1Zb14
         laVF9Ccwg+H10XmTRn53RjOsAOoD6O6+xsV0RcUhneo3rUjYhgUdNCdyxOpbN2diolx7
         24bA==
X-Gm-Message-State: AOAM530eXVGCKBk1l1i8G/JwwHjpYXLeDIREGmWIeWBu1xmQry+M1x6U
        1yo74TdeH6l9pHoTNEOUFaRO1JomWpd1dMPTQPwtDMoVtV0D4Hk6l+5oXstfCOEu9DAB//rvYLg
        kHIJGh4NpKdjx8AQWXIBv
X-Received: by 2002:ac8:72c5:: with SMTP id o5mr11257652qtp.279.1617054707746;
        Mon, 29 Mar 2021 14:51:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyYqUX7O065WJ20RVczGrXZkxbkD6gVD9ttPGilIKHPwaK9Q7WWKLF50gkedOIcUAW02b2IoA==
X-Received: by 2002:ac8:72c5:: with SMTP id o5mr11257633qtp.279.1617054707409;
        Mon, 29 Mar 2021 14:51:47 -0700 (PDT)
Received: from xz-x1 (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id d24sm13846143qkl.49.2021.03.29.14.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 14:51:46 -0700 (PDT)
Date:   Mon, 29 Mar 2021 17:51:45 -0400
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
Message-ID: <20210329215145.GE429942@xz-x1>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-5-peterx@redhat.com>
 <c65b5f04-4620-4c7e-e71f-91fc8394d164@gmail.com>
 <20210323191618.GJ6486@xz-x1>
 <dbc37834-9fb1-ca44-7ed5-9f8f6cc53741@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <dbc37834-9fb1-ca44-7ed5-9f8f6cc53741@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 25, 2021 at 10:32:20PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Peter,
> 
> On 3/23/21 8:16 PM, Peter Xu wrote:
> > On Tue, Mar 23, 2021 at 07:11:04PM +0100, Alejandro Colomar (man-pages) wrote:
> > > > +.TP
> > > > +.B UFFDIO_COPY_MODE_WP
> > > > +Copy the page with read-only permission.
> > > > +This allows the user to trap the next write to the page,
> > > > +which will block and generate another write-protect userfault message.
> > > 
> > > s/write-protect/write-protected/
> > > ?
> > 
> > I think here "write-protect" is the wording I wanted to use, it is the name of
> > the type of the message in plain text.
> 
> Okay.
> 
> > 
> > [...]
> > 
> > > > +.B EAGAIN
> > > > +The process was interrupted and need to retry.
> > > 
> > > Maybe: "The process was interrupted; retry this call."?
> > > I don't know what other pager say about this kind of error.
> > 
> > Frankly I see no difference between the two..  If you prefer the latter, I can
> > switch.
> 
> I understand yours, but technically it's a bit incorrect:  The subject of
> the sentence changes: in "The process was interrupted" it's the process, and
> in "need to retry" it's [you].  By separating the sentence into two, it's
> more natural. :)

Sure, I'll change.

> 
> > 
> > > 
> > > > +.TP
> > > > +.B ENOENT
> > > > +The range specified in
> > > > +.I range
> > > > +is not valid.
> > > 
> > > I'm not sure how this is different from the wording above in EINVAL.  An
> > > "otherwise invalid range" was already giving EINVAL?
> > 
> > This can be returned when vma is not found (mwriteprotect_range()):
> > 
> > 	err = -ENOENT;
> > 	dst_vma = find_dst_vma(dst_mm, start, len);
> > 
> > 	if (!dst_vma)
> > 		goto out_unlock;
> > 
> > I think maybe I could simply remove this entry, because from an user app
> > developer pov I'd only be interested in specific error that I'd be able to
> > detect and (even better) recover from.  For such error I'd say there's not much
> > to do besides failing the app.
> 
> If there's any possibility that the error can happen, it should be
> documented, even if it's to say "Fatal error; abort!".  Just try to explain
> the causes and how to avoid causing them and/or possibly what to do when
> they happen (abort?).

Okay.  Would you mind me keeping my original wording?  Because IMHO that
exactly does what you said as "trying to explain the causes" and so on:

        .B ENOENT
        The range specified in
        .I range
        is not valid.
        For example, the virtual address does not exist,
        or not registered with userfaultfd write-protect mode.

It's indeed slightly duplicated with EINVAL, but if you don't agree with the
wording meanwhile if you don't agree on overlapping of the errors, then what I
need is not reworking this patchset, but proposing a kernel patch to change the
error retval to make them match. I am not against proposing a kernel patch, but
I just don't see it extremely necessary.

For my own experience on working with the kernel, the return value sometimes is
not that strict - say, it's hard to control every single bit of the possible
return code of a syscall/ioctl to reflect everything matching the document.  We
should always try to do it accurate but it seems not easy to me.  It's also
hard to write up the document that 100% matching the kernel code, because at
least that'll require a full-path workthrough of every single piece of kernel
code that the syscall/ioctl has called, so as to collect all the errors, then
summarize their meanings.  That could be a lot of work.

> 
> > 
> > > 
> > > > +For example, the virtual address does not exist,
> > > > +or not registered with userfaultfd write-protect mode.
> > > > +.TP
> > > > +.B EFAULT
> > > > +Encountered a generic fault during processing.
> > > 
> > > What is a "generic fault"?
> > 
> > For example when the user copy failed due to some reason.  See
> > userfaultfd_writeprotect():
> > 
> > 	if (copy_from_user(&uffdio_wp, user_uffdio_wp,
> > 			   sizeof(struct uffdio_writeprotect)))
> > 		return -EFAULT;
> > 
> > But I didn't check other places, generally I'd return -EFAULT if I can't find a
> > proper other replacement which has a clearer meaning.
> > 
> > I don't think this is really helpful to user app too because no user app would
> > start to read this -EFAULT to do anything useful.. how about I drop it too if
> > you think the description is confusing?
> 
> Same as above.

Above copy_from_user() is the only place that could trigger -EFAULT so far I
can find.  So either I can change above into:

        .TP
        .B EFAULT
        Failure on copying ioctl parameters into the kernel.

Would you think it okay (before I repost)?  I'd still prefer my original
wording because I bet 90% user developer may not even know what does it mean
when the kernel cannot copy the user parameter, and what he/she can do with
it..  However if you think it's proper I'll use it.

Thanks,

-- 
Peter Xu

