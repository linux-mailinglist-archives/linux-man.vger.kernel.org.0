Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F35932D722
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 16:53:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235111AbhCDPwU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 10:52:20 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:57526 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235676AbhCDPvu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 10:51:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614873024;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=kQt2Y0bDQy5kebuxLoR8afLNrZ5ZNUK/gHrzh5pdHhA=;
        b=MLDxIBFJCtqpn6uneNZFenPeDDQS5zDgH9GW+9nb1s99KpEcNYj8PmwT6uWuoskwozGu58
        hKmbG1rHghKl+fJf38/P16mTcBJuRM2hmmOYFH+EZ94C2iF/jnaTsEa6LaH/5im71oeVBM
        VpYMGsmLcsnCYGNxesBnCN8G7SU+1Yc=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-RaE5q3EvMp-ivjnyyLeaQA-1; Thu, 04 Mar 2021 10:50:22 -0500
X-MC-Unique: RaE5q3EvMp-ivjnyyLeaQA-1
Received: by mail-qt1-f198.google.com with SMTP id o7so19182031qtw.7
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 07:50:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kQt2Y0bDQy5kebuxLoR8afLNrZ5ZNUK/gHrzh5pdHhA=;
        b=RqG0/TE+oYqzwsThyRQSf0oU0AB4MdwkS2w8rmu71GSJjTZNbjtjUXk3NT3YwWxJoD
         IkEaQ6LgWoDEy5lhFCXNa78oNVYNaCZ/kHoMU4E/c7Nau8xhuNYMtNdz2jUZTzExMNH/
         AyK02YfcBnU3hITx3WcifVjX5BkIDYOsoMyHDQav8vquxEGaWyyt5yGrwisFDzuS7y0e
         Na2rgCAqwSFGogj/qxP/RiDzH7E2vTVfopPNErbxqYjY6X7UJPxQy2jjiMIUf2ilde4u
         JJHJHxvfWWyjdo2EhqLxQ5q008Gjg2GGDhUls8i68uHcStveAAXjb1HMtufGompeerP8
         5tuw==
X-Gm-Message-State: AOAM530b4Ax270W1hyOcu6zDi54lhWIaga/6bsT0TCA/eCMJNRBPVgnZ
        c0/h/X8OLh46/ixEdxf0V3AO4mho24Z6RHVyT7la/LQ06vkultYJtSTm6FVXgDEzl2MWFsLerlo
        O+kKpLSs8SVvAX/eeHnkj
X-Received: by 2002:a05:6214:18d2:: with SMTP id cy18mr4719974qvb.50.1614873022173;
        Thu, 04 Mar 2021 07:50:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx3l8J0s9E9vj9Tchr6GSaSM3eRe+MoXYdmMgBMHvxK4rTrHy2WwPSYwx+R0iUueuirWX2d4A==
X-Received: by 2002:a05:6214:18d2:: with SMTP id cy18mr4719956qvb.50.1614873021927;
        Thu, 04 Mar 2021 07:50:21 -0800 (PST)
Received: from xz-x1 (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id c27sm3389693qko.71.2021.03.04.07.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 07:50:21 -0800 (PST)
Date:   Thu, 4 Mar 2021 10:50:19 -0500
From:   Peter Xu <peterx@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Message-ID: <20210304155019.GX397383@xz-x1>
References: <20210304015947.517713-1-peterx@redhat.com>
 <20210304015947.517713-2-peterx@redhat.com>
 <b0583d47-43ba-6077-9d93-074cd34993f3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b0583d47-43ba-6077-9d93-074cd34993f3@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 04, 2021 at 10:22:18AM +0100, Alejandro Colomar (man-pages) wrote:
> Hello Peter,

Hi, Alex,

> 
> On 3/4/21 2:59 AM, Peter Xu wrote:
> > UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.
> > 
> > Signed-off-by: Peter Xu <peterx@redhat.com>
> > ---
> >   man2/userfaultfd.2 | 12 ++++++++++++
> >   1 file changed, 12 insertions(+)
> > 
> > diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> > index e7dc9f813..2d14effc6 100644
> > --- a/man2/userfaultfd.2
> > +++ b/man2/userfaultfd.2
> > @@ -77,6 +77,12 @@ When the last file descriptor referring to a userfaultfd object is closed,
> >   all memory ranges that were registered with the object are unregistered
> >   and unread events are flushed.
> >   .\"
> > +.PP
> > +Since Linux 4.14, userfaultfd page fault message can selectively embed fault
> > +thread ID information into the fault message.  One needs to enable this feature
> > +explicitly using the
> > +.BR UFFD_FEATURE_THREAD_ID
> 
> This should use [.B] and not [.BR].
> .BR is for alternate Bold and Roman.
> .B is for bold.
> 
> (There are more appearances of this in the other patches.)

Yeah I got a bit confused when differenciating those two, since I also see
similar usage, e.g.:

.BR O_CLOEXEC

I'll fix all of them appeared in current patchset.  Let me know if you also
want me to fix all the existing uses of ".BR" too where ".B" would suffice.
Otherwise I won't touch them since I can't say they're wrong either (I think
most of them should generate the same output with either ".BR" or ".B" if
there's only one word?).

Thanks,

-- 
Peter Xu

