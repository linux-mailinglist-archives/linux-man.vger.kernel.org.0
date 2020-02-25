Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D17216ED00
	for <lists+linux-man@lfdr.de>; Tue, 25 Feb 2020 18:48:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730953AbgBYRsq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Feb 2020 12:48:46 -0500
Received: from mail-ed1-f67.google.com ([209.85.208.67]:38321 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730236AbgBYRsq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Feb 2020 12:48:46 -0500
Received: by mail-ed1-f67.google.com with SMTP id p23so383990edr.5
        for <linux-man@vger.kernel.org>; Tue, 25 Feb 2020 09:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kvtigPXGzRvNJs/q8hvKnfgrObs8p/1xNnA1u/u1AWw=;
        b=g3lDsjzUlLRHtr6kX3I1c8/QQ+96C/dhxsGBD3pD/oyEQPfnHcnTEQHK2ZAiDLGvxQ
         XfbzXPYIrD9ycrQssohA0EunqZQZ4DqVbIhbaZi+1UuHwukrLKRapTrEcZiDydSXZ0Tu
         aGMIRtz4I+rDHgBeWDB7rwq7CU6wK90mKr8BtK0LGKwuMirHsS2Z2T7/EGFO5HqASpXx
         375KiUBJO04jNROG7s80x7LlJBsgEdE635+eSfZMhe3pUKgTglfxibQX7WWeBEDC4kV6
         CHeV+IRdcksSJG2FIKfJOEyofZhfJqOONpn/GX7RMiXdjHjgvLgKjcVUXQjss3sVNl1p
         lfdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kvtigPXGzRvNJs/q8hvKnfgrObs8p/1xNnA1u/u1AWw=;
        b=coQbv6D272G38bxbQIMLZHfsDsj1Itt4LxXJMLs1+bCL3i/cHjCI+qcpilxv89j5AN
         ZBu+U2xdtmdBLCHJx+/CWedQRg3tULE/MV+4n6/JX4JpdtQFljq2p6/VRxKApRks2QLq
         qwcOJB9RHcgqLkw7BFv1MEj0iRhEhjfpqpxVySFL9WnqnF3ctizYyl6KXJ9pJgiy8c2b
         QnXO8jogeu1d9CjojhWuzcsCAjoxfGQQxfOFEuiopyUQLtv2+girjH530ygor+u+ybhG
         Ry4OsdSNuUG4OzgvESyrlG2KsRgq0p/HtkuHSbcV/mau5hZgoHcEjUg9KMit9fEd1ZpA
         VmLg==
X-Gm-Message-State: APjAAAUhow/z5Jg7udg9IgldkoW+dbnEETBYFbzeH09k151yyQotHi2B
        UmX1VHTTD6B3JrJKC3oChTvE4ukeuay702NphVqgUA==
X-Google-Smtp-Source: APXvYqwL/CiO8f6NAwcGkhm1MCHZePRc5Gf3TcwghTHAVbuGSMFi6jwXEIdH0hP7sL1Z1R4q4Q50D7bpRSDfgunmgdo=
X-Received: by 2002:a17:906:339a:: with SMTP id v26mr366874eja.2.1582652923183;
 Tue, 25 Feb 2020 09:48:43 -0800 (PST)
MIME-Version: 1.0
References: <20200221174248.244748-1-bgeffon@google.com> <20200221174248.244748-3-bgeffon@google.com>
 <f0340108-a1ce-85cd-23dd-790848603b37@suse.cz>
In-Reply-To: <f0340108-a1ce-85cd-23dd-790848603b37@suse.cz>
From:   Brian Geffon <bgeffon@google.com>
Date:   Tue, 25 Feb 2020 09:48:17 -0800
Message-ID: <CADyq12wfEH4Aou=zGhdktVprw0h3YpkJLyjpb3Az8bRR3yJB5Q@mail.gmail.com>
Subject: Re: [PATCH v7] mremap.2: Add information for MREMAP_DONTUNMAP.
To:     Vlastimil Babka <vbabka@suse.cz>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        "Michael S . Tsirkin" <mst@redhat.com>,
        Arnd Bergmann <arnd@arndb.de>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-mm <linux-mm@kvack.org>,
        Linux API <linux-api@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Will Deacon <will@kernel.org>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Sonny Rao <sonnyrao@google.com>,
        Minchan Kim <minchan@kernel.org>,
        Joel Fernandes <joel@joelfernandes.org>,
        Yu Zhao <yuzhao@google.com>,
        Jesse Barnes <jsbarnes@google.com>,
        Florian Weimer <fweimer@redhat.com>,
        "Kirill A . Shutemov" <kirill@shutemov.name>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Yes, you're correct that is poorly worded. I'll send an updated
manpage closer to the release of this in case anything else changes.
Thanks for taking a look.

Brian

On Tue, Feb 25, 2020 at 5:51 AM Vlastimil Babka <vbabka@suse.cz> wrote:
>
> On 2/21/20 6:42 PM, Brian Geffon wrote:
> > @@ -209,10 +227,20 @@ flag was not specified.
> >  .RE
> >  .TP
> >  .B ENOMEM
> > +Not enough memory was available to complete the operation.
> > +Possible causes are:
> > +.RS
> > +.IP * 3
> >  The memory area cannot be expanded at the current virtual address, and the
> >  .B MREMAP_MAYMOVE
> >  flag is not set in \fIflags\fP.
> >  Or, there is not enough (virtual) memory available.
> > +.IP *
> > +.B MREMAP_DONTUNMAP
> > +was used without
> > +.B MREMAP_FIXED
> > +causing a new mapping to be created that would exceed the virtual memory available or it would exceed the maximum number of allowed mappings.
>
> So this can also result with MREMAP_FIXED, no?
>
> > +.RE
> >  .SH CONFORMING TO
> >  This call is Linux-specific, and should not be used in programs
> >  intended to be portable.
> >
>
