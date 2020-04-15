Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3B11AABD1
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2020 17:26:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506431AbgDOPYy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Apr 2020 11:24:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2503476AbgDOPYv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Apr 2020 11:24:51 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB929C061A0E
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2020 08:24:49 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id w2so5388397edx.4
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2020 08:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pzKk8PABoQG7wxQ0I283s43OGXBvRZpR46etYCk2nJU=;
        b=CoVjpaL7NhBMMoCKRoBevTXuzAspL3V4ErYXBJm9TiToXUe8cQJHrpnoCHIa4AVPOP
         22SNO4CZcW7Pej3gTKD3qsfUjk9kWDt3X49fR0xlMwwnJmBns4++0UAecEIJX42G1nS0
         7BHgK0y763Koy91FUVMXMtqg74WH0WnS5Bol/OClpF48WAeRCNEE7Qp6ypih0XyJBKMf
         qEraQNWyF79oLwiN5gCjYDK3pr15xcptOnm5A4J0UU1I2ZcWxU/sws/b3QN3LhjA3Oia
         Yt1PuKW0pIfusr21cgFZwR7Nd3vWemhKph1sn+GkuoFUeUVDSY4UZUzY/iP3q+NBJcY6
         P+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pzKk8PABoQG7wxQ0I283s43OGXBvRZpR46etYCk2nJU=;
        b=QB3QAIv49z+Xe6zUrzrUdZJAvEPqsra2bTHRkx/bczBtRsjyQE9ZWPJjB3NZBYdhML
         VQ87ntb4l/v7k+hyM4FMf+AlmudEequKcLa3gQR3IiCHReYYJzf9F1KTLnPiBEXQWkTs
         VqQz3ATgmuVufr6gU1BEzWR7OQ8N0kvckVno4RSeI4zCKQrp6Ypk2f79Oi8hL553DDbp
         eah4nos7vz2jYiHuVUmoyj+t5EN0NoTrZoAu8kHc8N5VrdCDBvKZUAjgRRdMJkjT39G+
         jxWUbqIowNmTCen9jyzWiTvlWeKq9iHR5jqD1S/EtdqiZxBm6BRVHBlXuikl0cOXDkZG
         6txQ==
X-Gm-Message-State: AGi0PuZlIw/jULNUxjgqyxclAIvyV3ZK/wUj0lRpCoAnW5Wvb80qvFR9
        KzYiX16lpW7Xko17vT317FTKGRsFwRDdVl1lJQ7ROw==
X-Google-Smtp-Source: APiQypLYa6qsYZA8UJ9jL6B2Nmt1xK63nCmfDBXxC1o9zNfeIVmU0Lb1H12gXdVVE3znzyupzUc3CQwEYF2Iaq2PLqg=
X-Received: by 2002:a17:906:32d8:: with SMTP id k24mr5732495ejk.2.1586964288072;
 Wed, 15 Apr 2020 08:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200221174248.244748-1-bgeffon@google.com> <20200221174248.244748-3-bgeffon@google.com>
 <b5a4c54d-c358-7b54-c038-c79185330742@gmail.com>
In-Reply-To: <b5a4c54d-c358-7b54-c038-c79185330742@gmail.com>
From:   Brian Geffon <bgeffon@google.com>
Date:   Wed, 15 Apr 2020 08:24:11 -0700
Message-ID: <CADyq12zchEvZ=veJfQXJ3Bvek810OH4qVc0nETURrOzWxWZ=yw@mail.gmail.com>
Subject: Re: [PATCH v7] mremap.2: Add information for MREMAP_DONTUNMAP.
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
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
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,
I'll make those changes and start a new thread.

Thanks for the feedback,
Brian

On Tue, Apr 14, 2020 at 11:41 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello Brian,
>
> I see that MREMAP_DONTUNMAP has been merged. Thanks for the
> patch below.
>
> In addition to Vlastimil's comments, could you please take a look
> at my comments below.
>
> On 2/21/20 6:42 PM, Brian Geffon wrote:
> > Signed-off-by: Brian Geffon <bgeffon@google.com>
> > ---
> >  man2/mremap.2 | 30 +++++++++++++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >
> > diff --git a/man2/mremap.2 b/man2/mremap.2
> > index d73fb64fa..54ec67b20 100644
> > --- a/man2/mremap.2
> > +++ b/man2/mremap.2
> > @@ -26,7 +26,8 @@
> >  .\" 1996-04-12 Tom Bjorkholm <tomb@mydata.se>
> >  .\"            Update for Linux 1.3.87 and later
> >  .\" 2005-10-11 mtk: Added NOTES for MREMAP_FIXED; revised EINVAL text.
> > -.\"
> > +.\" 2020-02-05 Brian Geffon <bgeffon@google.com>
> > +.\"            Update for MREMAP_DONTUNMAP.
>
> No need to add this piece. This info is maintained
> via the Git log these days.
>
> >  .TH MREMAP 2 2019-03-06 "Linux" "Linux Programmer's Manual"
> >  .SH NAME
> >  mremap \- remap a virtual memory address
> > @@ -129,6 +130,13 @@ If
> >  is specified, then
> >  .B MREMAP_MAYMOVE
> >  must also be specified.
> > +.TP
> > +.BR MREMAP_DONTUNMAP " (since Linux 5.7)"
> > +This flag which must be used in conjuction with
>
> s/conjuction/conjunction/
>
> > +.B MREMAP_MAYMOVE
> > +remaps a mapping to a new address and it does not unmap the mapping at=
 \fIold_address\fP. This flag can only be used with private anonymous mappi=
ngs. Any access to the range specified at \fIold_address\fP after completio=
n will result in a page fault. If a
>
> Please wrap source lines to no more than about 75 columns.
> Also, always start new sentences on new lines ("Semantic newlines").
>
> As a general rule, I prefer formatting to be done like this:
>
> .BR old_address .
>
> rather than:
>
> \fIold_address\fP.
>
> (Yes, I know there's plenty of existing text that goes the other
> way, but I try to avoid the \fX...\fP style for new text.
>
> Re the "Any access to the range ... will result in a page fault", I think
> it would be helpful to be more explicit. I presume that if we
> access the range at old_address the mapping is repopulated with
> zero-filled pages, right? It would be good to note that explicitly,
>
> > +.BR userfaultfd (2)
> > +was registered on the mapping specified by \fIold_address\fP it will c=
ontinue to watch that mapping for faults.
>
> (See comments above re wrapping and formatting.)
>
> Perhaps it would be nice to have a short paragraph on use cases?
>
> >  .PP
> >  If the memory segment specified by
> >  .I old_address
> > @@ -176,6 +184,8 @@ a value other than
> >  .B MREMAP_MAYMOVE
> >  or
> >  .B MREMAP_FIXED
> > +or
> > +.B MREMAP_DONTUNMAP
> >  was specified in
> >  .IR flags ;
> >  .IP *
> > @@ -197,9 +207,17 @@ and
> >  .IR old_size ;
> >  .IP *
> >  .B MREMAP_FIXED
> > +or
> > +.B MREMAP_DONTUNMAP
> >  was specified without also specifying
> >  .BR MREMAP_MAYMOVE ;
> >  .IP *
> > +.B MREMAP_DONTUNMAP
> > +was specified with an \fIold_address\fP that was not private anonymous=
;
> > +.IP *
> > +.B MREMAP_DONTUNMAP
> > +was specified and \fIold_size\fP was not equal to \fInew_size\fP;
> > +.IP *
> >  \fIold_size\fP was zero and \fIold_address\fP does not refer to a
> >  shareable mapping (but see BUGS);
> >  .IP *
> > @@ -209,10 +227,20 @@ flag was not specified.
> >  .RE
> >  .TP
> >  .B ENOMEM
> > +Not enough memory was available to complete the operation.
> > +Possible causes are:
> > +.RS
> > +.IP * 3
> >  The memory area cannot be expanded at the current virtual address, and=
 the
> >  .B MREMAP_MAYMOVE
> >  flag is not set in \fIflags\fP.
> >  Or, there is not enough (virtual) memory available.
> > +.IP *
> > +.B MREMAP_DONTUNMAP
> > +was used without
> > +.B MREMAP_FIXED
> > +causing a new mapping to be created that would exceed the virtual memo=
ry available or it would exceed the maximum number of allowed mappings.
>
> (See comments above re wrapping.)
>
> > +.RE
> >  .SH CONFORMING TO
> >  This call is Linux-specific, and should not be used in programs
> >  intended to be portable.
>
>
> Thanks,
>
> Michael
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
