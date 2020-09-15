Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3267226B5F8
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 01:55:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727028AbgIOXy7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 19:54:59 -0400
Received: from mail.hallyn.com ([178.63.66.53]:43054 "EHLO mail.hallyn.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727033AbgIOObc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 15 Sep 2020 10:31:32 -0400
X-Greylist: delayed 621 seconds by postgrey-1.27 at vger.kernel.org; Tue, 15 Sep 2020 10:31:23 EDT
Received: by mail.hallyn.com (Postfix, from userid 1001)
        id EEC1BC38; Tue, 15 Sep 2020 09:19:46 -0500 (CDT)
Date:   Tue, 15 Sep 2020 09:19:46 -0500
From:   "Serge E. Hallyn" <serge@hallyn.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Stephen Smalley <stephen.smalley.work@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        linux-security-module <linux-security-module@vger.kernel.org>,
        selinux@vger.kernel.org, smcv@collabora.com,
        James Morris <jmorris@namei.org>,
        "Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [PATCH v2] socket.7,unix.7: add initial description for
 SO_PEERSEC
Message-ID: <20200915141946.GA19979@mail.hallyn.com>
References: <20200914180700.11003-1-stephen.smalley.work@gmail.com>
 <CAKgNAkgjndEr4zd1zGD_h+2srWsRAQT7=Hyqh7Ktxy7FQn35Dg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkgjndEr4zd1zGD_h+2srWsRAQT7=Hyqh7Ktxy7FQn35Dg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Sep 15, 2020 at 10:56:18AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Stephen,
> 
> On Mon, 14 Sep 2020 at 20:07, Stephen Smalley
> <stephen.smalley.work@gmail.com> wrote:
> >
> > SO_PEERSEC was introduced for AF_UNIX stream sockets connected via
> > connect(2) in Linux 2.6.2 [1] and later augmented to support AF_UNIX stream
> > and datagram sockets created via socketpair(2) in Linux 4.18 [2].  Document
> > SO_PEERSEC in the socket.7 and unix.7 man pages following the example
> > of the existing SO_PEERCRED descriptions.  SO_PEERSEC is also supported
> > on AF_INET sockets when using labeled IPSEC or NetLabel but defer
> > adding a description of that support to a separate patch.
> >
> > The module-independent description of the security context returned
> > by SO_PEERSEC is from Simon McVittie <smcv@collabora.com>.
> 
> Thanks for the patch, The text looks in reasonable shape to me. I'm
> just hanging off applying for a bit in case some Reviewed/Acked-by
> comes in.
> 

fwiw just as someone who's used this,

Reviewed-by: Serge Hallyn <serge@hallyn.com>

Thanks Stephen, thanks Michael.

> Cheers,
> 
> Michael
> 
> 
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=da6e57a2e6bd7939f610d957afacaf6a131e75ed
> >
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0b811db2cb2aabc910e53d34ebb95a15997c33e7
> >
> > Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> > ---
> > v2 adds kernel commit info to the description and man page and uses
> > the suggested text from Simon McVittie for the description of
> > the security context string in a module-neutral way.
> >
> >  man7/socket.7 |  5 +++++
> >  man7/unix.7   | 46 ++++++++++++++++++++++++++++++++++++++++++++++
> >  2 files changed, 51 insertions(+)
> >
> > diff --git a/man7/socket.7 b/man7/socket.7
> > index 21e891791..c3635f95b 100644
> > --- a/man7/socket.7
> > +++ b/man7/socket.7
> > @@ -690,6 +690,11 @@ Return the credentials of the peer process connected to this socket.
> >  For further details, see
> >  .BR unix (7).
> >  .TP
> > +.BR SO_PEERSEC " (since Linux 2.6.2)"
> > +Return the security context of the peer socket connected to this socket.
> > +For further details, see
> > +.BR unix (7).
> > +.TP
> >  .B SO_PRIORITY
> >  Set the protocol-defined priority for all packets to be sent on
> >  this socket.
> > diff --git a/man7/unix.7 b/man7/unix.7
> > index 50828a5bc..298521d4a 100644
> > --- a/man7/unix.7
> > +++ b/man7/unix.7
> > @@ -349,6 +349,52 @@ stream sockets and for
> >  .B AF_UNIX
> >  stream and datagram socket pairs created using
> >  .BR socketpair (2).
> > +.TP
> > +.B SO_PEERSEC
> > +This read-only socket option returns the
> > +security context of the peer socket connected to this socket.
> > +By default, this will be the same as the security context of
> > +the process that created the peer socket unless overridden
> > +by the policy or by a process with the required permissions.
> > +.IP
> > +The argument to
> > +.BR getsockopt (2)
> > +is a pointer to a
> > +buffer of the specified length in bytes
> > +into which the security context string will be copied.
> > +If the buffer length is less than the length of the security
> > +context string, then
> > +.BR getsockopt (2)
> > +will return the required length
> > +via
> > +.I optlen
> > +and return \-1 and sets
> > +.I errno
> > +to
> > +.BR ERANGE .
> > +The caller should allocate at least
> > +.BR NAME_MAX
> > +bytes for the buffer initially although this is not guaranteed
> > +to be sufficient.  Resizing the buffer to the returned length
> > +and retrying may be necessary.
> > +.IP
> > +The security context string may include a terminating null character
> > +in the returned length, but is not guaranteed to do so: a security
> > +context "foo" might be represented as either {'f','o','o'} of length 3
> > +or {'f','o','o','\\0'} of length 4, which are considered to be
> > +interchangeable. It is printable, does not contain non-terminating
> > +null characters, and is in an unspecified encoding (in particular it
> > +is not guaranteed to be ASCII or UTF-8).
> > +.IP
> > +The use of this option for sockets in the
> > +.B AF_UNIX
> > +address family
> > +is supported since Linux 2.6.2 for connected stream sockets and
> > +since Linux 4.18,
> > +.\" commit 0b811db2cb2aabc910e53d34ebb95a15997c33e7
> > +also for stream and datagram socket pairs created
> > +using
> > +.BR socketpair (2).
> >  .\"
> >  .SS Autobind feature
> >  If a
> > --
> > 2.25.1
> >
> 
> 
> -- 
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
