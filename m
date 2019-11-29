Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3A610D674
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2019 14:56:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726778AbfK2N4V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Nov 2019 08:56:21 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:35407 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726770AbfK2N4V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Nov 2019 08:56:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1575035779;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=KXpfI795AWqBJ6c+8Aps9kjGE0yztZdg/b0diGPhWaY=;
        b=atFS2c7tRmmAxCoSpMwIk2bs4JJypXAOc2LZu5QfxhePvtRltaMIXS2jaqrcDsJ+R3gGkn
        pWV0n1Wsrp/CmNs0OcgW6U9lZ/VV95FADws0yIqF/M4m9nC9V4eW/L2vfMaVTEyzgYOuwG
        XUCHMYYhRnzxNcZH3DIP+PxGTKLGx9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-jEFPci08MrGl_S6VYq-Ytg-1; Fri, 29 Nov 2019 08:56:17 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C419210054E3;
        Fri, 29 Nov 2019 13:56:18 +0000 (UTC)
Received: from dcbz.redhat.com (ovpn-116-142.ams2.redhat.com [10.36.116.142])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 9812360903;
        Fri, 29 Nov 2019 13:56:15 +0000 (UTC)
Date:   Fri, 29 Nov 2019 14:56:13 +0100
From:   Adrian Reber <areber@redhat.com>
To:     Christian Brauner <christian.brauner@ubuntu.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] clone.2: added clone3() set_tid information
Message-ID: <20191129135613.GS115039@dcbz.redhat.com>
References: <20191128124650.364810-1-areber@redhat.com>
 <20191128124650.364810-2-areber@redhat.com>
 <20191128172404.xan6vzaoofjeysq2@wittgenstein>
MIME-Version: 1.0
In-Reply-To: <20191128172404.xan6vzaoofjeysq2@wittgenstein>
X-Operating-System: Linux (5.3.11-300.fc31.x86_64)
X-Load-Average: 0.67 0.61 0.97
X-Unexpected: The Spanish Inquisition
X-GnuPG-Key: gpg --recv-keys D3C4906A
X-Url:  <http://lisas.de/~adrian/>
Organization: Red Hat
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: jEFPci08MrGl_S6VYq-Ytg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Nov 28, 2019 at 06:24:05PM +0100, Christian Brauner wrote:
> On Thu, Nov 28, 2019 at 01:46:50PM +0100, Adrian Reber wrote:
> > Signed-off-by: Adrian Reber <areber@redhat.com>
> > ---
> >  man2/clone.2 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 90 insertions(+)
> >=20
> > diff --git a/man2/clone.2 b/man2/clone.2
> > index 076b9258e..59c13ec35 100644
> > --- a/man2/clone.2
> > +++ b/man2/clone.2
> > @@ -195,6 +195,8 @@ struct clone_args {
> >      u64 stack;        /* Pointer to lowest byte of stack */
> >      u64 stack_size;   /* Size of stack */
> >      u64 tls;          /* Location of new TLS */
> > +    u64 set_tid;      /* Pointer to a \fIpid_t\fP array */
> > +    u64 set_tid_size; /* Number of elements in \fIset_tid\fP */
> >  };
> >  .EE
> >  .in
> > @@ -262,6 +264,8 @@ flags & 0xff=09exit_signal
> >  stack=09stack
> >  \fP---\fP=09stack_size
> >  tls=09tls=09See CLONE_SETTLS
> > +\fP---\fP=09set_tid=09See below for details
> > +\fP---\fP=09set_tid_size
> >  .TE
> >  .RE
> >  .\"
> > @@ -285,6 +289,74 @@ options when waiting for the child with
> >  If no signal (i.e., zero) is specified, then the parent process is not=
 signaled
> >  when the child terminates.
> >  .\"
> > +.SS The set_tid array
> > +.PP
> > +The
> > +.I set_tid
> > +array is used to select a certain PID for the process to be created by
> > +.BR clone3 ().
> > +If the PID of the newly created process should only be set for the cur=
rent
> > +PID namespace or in the newly created PID namespace (if
> > +.I flags
> > +contains
> > +.BR CLONE_NEWPID )
> > +then the first element in the
> > +.I set_tid
> > +array has to be the desired PID and
> > +.I set_tid_size
> > +needs to be 1.
> > +.PP
> > +If the PID of the newly created process should have a certain value in
> > +multiple PID namespaces the
> > +.I set_tid
> > +array can have multiple entries. The first entry defines the PID in th=
e most
> > +nested PID namespace and all following entries contain the PID of the
> > +corresponding parent PID namespace. The number of PID namespaces in wh=
ich a PID
> > +should be set is defined by
> > +.I set_tid_size
> > +which cannot be larger than the number of currently nested PID namespa=
ces.
>=20
> "It's upper cap is the kernel-enforced general nesting limit."
> or sm like that

Is that an addition to my sentence or a replacement. I think at this
point it is more important to point out that it cannot be larger than
the number of currently nested PID namespaces. Later (at EPERM) I am
also mentioning that it cannot be larger than the maximum number of
nested PID namespaces. The code does indeed check if set_tid_size is
larger than the maximum number of possible nested PID namespaces for
the user, I think, when calling clone3(), it is more relevant that
set_tid_size is not larger than the number of currently nested PID
namespaces. The maximum number of possible nested PID namespaces is more
likely enforced during unshare() or CLONE_NEWPID (which could be
happening at the same point in time as set_tid_size larger than maximum
number of nested PID namespace).

This definitely feels like too much discussion for a single sentence ;)

I can add a sentence about the maximum number of nested PID namespaces
here in addition to the one at EPERM.
I do not think it is relevant for the user at this point in time.

=09=09Adrian

