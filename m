Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E21F3462A4
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 16:17:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232621AbhCWPR1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 11:17:27 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:45569 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232820AbhCWPRP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 11:17:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616512634;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=pnZOMjj4jYXmW5mErf7S4lMDnI8Zmr8NBFQlDNTpGYY=;
        b=gx+0kJoY6uoz27rVeWUAowvvcIg0C1O/fgwUjyI3a9UfBujrzugOjDHdPZZCm1mEzubX+Z
        ZyA9NoXZjvbLGw8J22lh7TvlkiPvu6dOQJ4eNbhZUobF8erJTs8J8tOKumr880rm7FpNpN
        3ImkxI5q8iStWcEMYNKZ63TmobY3Mow=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-481-7hikFYrtPZmCgukmwo0KJw-1; Tue, 23 Mar 2021 11:17:12 -0400
X-MC-Unique: 7hikFYrtPZmCgukmwo0KJw-1
Received: by mail-qv1-f71.google.com with SMTP id h12so1811496qvm.9
        for <linux-man@vger.kernel.org>; Tue, 23 Mar 2021 08:17:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pnZOMjj4jYXmW5mErf7S4lMDnI8Zmr8NBFQlDNTpGYY=;
        b=NhFny6/R5myriX5zqI7irEr56DHkBpborg99uL74F3NUiq8hZRw+5Bl9Ms2k1N3RKw
         0A/OEu8gldrqpBlEo8YLwqdmMjcR8FrFs8hYTuENpSF9lwicw5qp/M23JKBNOp6s3FD1
         qG/+/1Ay5M+VfcwuiaTX8/NhkhRDB3lGjvPxzTAIMtF1Q3thdwD1WWuH40zFAIsZ0/nj
         xlHPoPZrwjOzoqOAtCuh0fG5KUa5uEcFOash7yqjlXFcBG3bZBF3tFeN+2P8L1ngj/Em
         8IpxIRRuLPbq5n/AP0EJYJ+uiA3xwlP1aVUMAjmRz1SlXSjfRLIEVMKV6ZCT8Iw3DprL
         0dVQ==
X-Gm-Message-State: AOAM533/4nc/E1Ko/YhoPAZHttXkZNpoOiBpI/OCP4AQPZO11b1J8wPq
        fXVs+/tosBOKlK9aOKMWkxNPwEKrh4p4v04lnIYbh/spie7bZU4VTk+t3jpMnvj5MECV654Zh96
        yXavRz1cRkfcBdRrfeUqe
X-Received: by 2002:a05:620a:555:: with SMTP id o21mr5999103qko.207.1616512631765;
        Tue, 23 Mar 2021 08:17:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyr1aCEk6u3B1QMtbPNWK8hYbsghPWJlD6O+VdVlrvxeumMYAam79KADz00ym29Q1YVgghgqA==
X-Received: by 2002:a05:620a:555:: with SMTP id o21mr5999078qko.207.1616512631540;
        Tue, 23 Mar 2021 08:17:11 -0700 (PDT)
Received: from xz-x1 (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id i93sm11373613qtd.48.2021.03.23.08.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 08:17:10 -0700 (PDT)
Date:   Tue, 23 Mar 2021 11:17:09 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Mike Rapoport <rppt@linux.ibm.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org, Andrea Arcangeli <aarcange@redhat.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v4 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Message-ID: <20210323151709.GE6486@xz-x1>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-2-peterx@redhat.com>
 <YFmmdklW9wvs4ep3@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YFmmdklW9wvs4ep3@linux.ibm.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Mar 23, 2021 at 10:27:34AM +0200, Mike Rapoport wrote:
> On Mon, Mar 22, 2021 at 06:08:45PM -0400, Peter Xu wrote:
> > UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.
> > 
> > Signed-off-by: Peter Xu <peterx@redhat.com>
> > ---
> >  man2/userfaultfd.2 | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> > index e7dc9f813..555e37409 100644
> > --- a/man2/userfaultfd.2
> > +++ b/man2/userfaultfd.2
> > @@ -77,6 +77,13 @@ When the last file descriptor referring to a userfaultfd object is closed,
> >  all memory ranges that were registered with the object are unregistered
> >  and unread events are flushed.
> >  .\"
> > +.PP
> > +Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
> > +thread ID information into the fault message.
> > +One needs to enable this feature explicitly using the
> > +.BR UFFD_FEATURE_THREAD_ID
> > +feature bit when initializing the userfaultfd context.
> > +By default, thread ID reporting is diabled.
> 
> 				     ^ disabled :)

Right! :)

I'll wait for another round of Alex's review before reposting.

Thanks,

-- 
Peter Xu

