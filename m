Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 227D332D732
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 16:56:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235883AbhCDPzd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 10:55:33 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:25077 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236061AbhCDPzM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 10:55:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614873227;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=AInNnjMguHDerAYue5jzJjfxuItC8i8L4zsZ48EhHbA=;
        b=GRj2fCxZjdciHxuyBm45ew2x1atz8ZuakIXJP0g6stuI42pxkD/zMvTcbvQ1Ftv+75LwrX
        hOs5VWb0RzeCXwbVE2lW8YdbAxhEKxorQUuKnxiUqnvLlg+aYII/n5cHL10EupAJRfG/BX
        P1RE5CkTUfF38KrOaOhON0J/Gnud/38=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-570-weVAAuEENB2LE0OSaAPoMg-1; Thu, 04 Mar 2021 10:53:45 -0500
X-MC-Unique: weVAAuEENB2LE0OSaAPoMg-1
Received: by mail-qt1-f200.google.com with SMTP id p32so13093229qtd.14
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 07:53:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AInNnjMguHDerAYue5jzJjfxuItC8i8L4zsZ48EhHbA=;
        b=AVPfaVEKlfltoVenan1NjVSsmu6gG0NLvU50gQXpjgCtpCfyHuYCihcFJakl1Na/ha
         yfmCXVX+UsuRXU+BipWx2DfYaASlpB36QlqY5mwW6Ed/lglN5eC+5rURUpIppNewmb0j
         3eZcA21t2SQQXRVbcjjQNFu+hEwi1q1D5B+2Hutr73eSELEerFdsttORVFRzILi52gdr
         FyuO7TmnBM/2aEfHlQlm4xCRLcZ64GuTOonuCBcKgg0Cv30V+re+tz4M0eEnQhFzLnU7
         a+e+6Go6n2+SCAbeVLUbi9/x/BfF1qxT/KEqOjhu6PJu6gZLb6ScpTlTbcOEKZalBTGN
         NL5Q==
X-Gm-Message-State: AOAM5303Q2x6zI9vmet+pIMkCbvmfPjgFXc+kYJAEBi96A3YVMrqhPZK
        dHJxK/n7u+yaSPO5sxIq7OnI9NiLA8Fw7ZQ0ozIAEygU2oHdaj73yk7nCeHGAvawCDU+NA892Kq
        kurBjStIbTiMz6RWVWLTH
X-Received: by 2002:a0c:b7a1:: with SMTP id l33mr4442588qve.17.1614873225466;
        Thu, 04 Mar 2021 07:53:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxj3betVE9M6Fb3f0nr2xiIAAJvEDxTdPk1N7+r3GfIZ84WE+jiOi4ZUO6tlsHyuUmJqEgpkQ==
X-Received: by 2002:a0c:b7a1:: with SMTP id l33mr4442575qve.17.1614873225263;
        Thu, 04 Mar 2021 07:53:45 -0800 (PST)
Received: from xz-x1 (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id v4sm17665062qtp.72.2021.03.04.07.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 07:53:44 -0800 (PST)
Date:   Thu, 4 Mar 2021 10:53:42 -0500
From:   Peter Xu <peterx@redhat.com>
To:     Mike Rapoport <rppt@linux.ibm.com>
Cc:     linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Message-ID: <20210304155342.GY397383@xz-x1>
References: <20210304015947.517713-1-peterx@redhat.com>
 <20210304015947.517713-2-peterx@redhat.com>
 <YECAUdnf1Xw5qKb8@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YECAUdnf1Xw5qKb8@linux.ibm.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 04, 2021 at 08:38:09AM +0200, Mike Rapoport wrote:
> On Wed, Mar 03, 2021 at 08:59:44PM -0500, Peter Xu wrote:
> > UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.
> > 
> > Signed-off-by: Peter Xu <peterx@redhat.com>
> > ---
> >  man2/userfaultfd.2 | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> > index e7dc9f813..2d14effc6 100644
> > --- a/man2/userfaultfd.2
> > +++ b/man2/userfaultfd.2
> > @@ -77,6 +77,12 @@ When the last file descriptor referring to a userfaultfd object is closed,
> >  all memory ranges that were registered with the object are unregistered
> >  and unread events are flushed.
> >  .\"
> > +.PP
> > +Since Linux 4.14, userfaultfd page fault message can selectively embed fault
> 
>                                                           Maybe faulting? ^

Ok.

> 
> > +thread ID information into the fault message.  One needs to enable this feature
> > +explicitly using the
> > +.BR UFFD_FEATURE_THREAD_ID
> > +feature bit when initializing the userfaultfd context, otherwise disabled.
> 
>              "... otherwise thread ID reporting is disabled" ^

I changed to "... By default, thread ID reporting is diabled."

Thanks!

-- 
Peter Xu

