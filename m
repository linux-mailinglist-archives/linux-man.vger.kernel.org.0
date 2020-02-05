Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79D01152427
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2020 01:40:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727706AbgBEAkP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Feb 2020 19:40:15 -0500
Received: from 216-12-86-13.cv.mvl.ntelos.net ([216.12.86.13]:50314 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727522AbgBEAkP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Feb 2020 19:40:15 -0500
Received: from dalias by brightrain.aerifal.cx with local (Exim 3.15 #2)
        id 1iz8jj-0002U3-00; Wed, 05 Feb 2020 00:40:11 +0000
Date:   Tue, 4 Feb 2020 19:40:11 -0500
From:   Rich Felker <dalias@libc.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Access to CMSG_DATA
Message-ID: <20200205004011.GW1663@brightrain.aerifal.cx>
References: <20191217143609.GA23014@brightrain.aerifal.cx>
 <CAK8P3a2Rv4uEW4acMm_byZQdsH8yNgfuy9qcmT6tmuPrQxvcHA@mail.gmail.com>
 <20191217204751.GI1666@brightrain.aerifal.cx>
 <CAKgNAkhJ3j=v255UPJBeYs4erDOWpinxo0T1dqx_Fdh1MC=7-A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkhJ3j=v255UPJBeYs4erDOWpinxo0T1dqx_Fdh1MC=7-A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 05, 2020 at 01:30:12AM +0100, Michael Kerrisk (man-pages) wrote:
> Hello Rich,
> 
> My apologies for the delayed reply.
> 
> On Tue, 17 Dec 2019 at 21:47, Rich Felker <dalias@libc.org> wrote:
> >
> > On Tue, Dec 17, 2019 at 09:00:08PM +0100, Arnd Bergmann wrote:
> > > On Tue, Dec 17, 2019 at 3:36 PM Rich Felker <dalias@libc.org> wrote:
> > > >
> > > > It came to my attention while reviewing possible breakage with move to
> > > > 64-bit time_t that some applications are dereferencing data in socket
> > > > control messages (particularly SCM_TIMESTAMP*) in-place as the message
> > > > type, rather than memcpy'ing it to appropriate storage. This
> > > > necessarily does not work and is not supportable if the message
> > > > contains data with greater alignment requirement than the header. In
> > > > particular, on 32-bit archs, cmsghdr has size 12 and alignment 4, but
> > > > struct timeval and timespec may have alignment requirement 8.
> > > >
> > > > I found at least ptpd, socat, and ssmping doing this via Debian Code
> > > > Search:
> > > >
> > > > https://sources.debian.org/src/ptpd/2.3.1-debian1-4/src/dep/net.c/?hl=1578#L1578
> > > > https://sources.debian.org/src/socat/1.7.3.3-2/xio-socket.c/?hl=1839#L1839
> > > > https://sources.debian.org/src/ssmping/0.9.1-3/ssmpngcl.c/?hl=307#L307
> > > >
> > > > and I suspect there are a good deal more out there. On most archs they
> > > > won't break, or will visibly break with SIGBUS, but in theory it's
> > > > possible that they silently read wrong data and this might happen on
> > > > some older and more tiny-embedded-oriented archs.
> > >
> > > Good find. I suppose this is going to be particularly annoying for
> > > architectures that are affected because all systems that are in
> > > widespread use are not affected:
> > >
> > > - x86, riscv, ppc and s390 always allow unaligned loads
> > > - ARMv6+ mostly allows unaligned loads. Some instructions such as ldrd
> > >   require alignment of four bytes, which is ok, and ARMv5 requires natural
> > >   alignment up to 32 bits, so this is also ok
> >
> > Seems correct.
> > x
> > > - On MIPS I think that o32 is fine since there are no 64-bit loads, but
> > >   n64  would likely be affected, if there are still users remaining (musl
> > >   supports it, so I assume there are some users).
> >
> > I think you mean n32. n64 is the full LP64 ABI. Indeed it seems like
> > n32 is likely affected unless the kernel traps and fixes up misaligned
> > accesses.
> >
> > > - m68k only requires 16-bit alignment
> > > - For the other 32-bit architectures that musl supports (microblaze, sh,
> >                                        ^^^^^^^^^^^^^^^^^^
> >
> > FWIW this isn't specific to musl; glibc is also affected, and uclibc
> > would be too if they ever implement time64.
> >
> > >   openrisc), none advertise unaligned-access capability  to the kernel,
> > >   but I also don't think any of them have a native 64-bit load instruction.
> > >   armv5, microblaze, sh and nds32 fix up unaligned accesses in an
> > >   exception handler; openrisc and csky require aligned accesses in user
> > >   space.
> >
> > This sounds correct. Presently J2 (open source SH2 ISA implementation)
> > has no unaligned trap; it just loads/stores the wrong value. But there
> > are no 64-bit load/store insns anyway and 32-bit alignment is met.
> >
> > > > I think it's clear to someone who understands alignment and who's
> > > > thought about it that applications just can't do this, but it doesn't
> > > > seem to be documented, and an example in cmsg(3) even shows access to
> > > > int payload via *(int *)CMSG_DATA(cmsg) (of course int is safe because
> > > > its alignment is <= header alignment, but this is not mentioned).
> > > >
> > > > Could we add text, and perhaps change the example, to indicate that in
> > > > general memcpy needs to be used to copy the payload to/from a suitable
> > > > object?
> > >
> > > Yes, I think that would be a good idea.
> >
> > How about adding to:
> >
> >        *  CMSG_DATA() returns a pointer to the data portion of a cmsghdr.
> >
> > "The pointer returned cannot be assumed to be suitably aligned for
> > accessing arbitrary payload data types. Applications should not cast
> > it to a pointer type matching the payload, but should use memcpy to
> > copy data to or from a suitably declared object."
> >
> > and doing this in the examples? Are there other places it should be
> > mentioned to to make sure readers see it?
> 
> Thanks for this report! And the nicely worded text that you propose to
> add to the page.
> 
> I've applied the patch below, which is almost exactly your text, plus
> a suitable change in the code example. Seem okay?
> 
> I can't spot any other place in the manual page where this point
> should be mentioned.
> 
> Thanks,
> 
> Michael
> 
> diff --git a/man3/cmsg.3 b/man3/cmsg.3
> index 83bb633cc..9dd4c9c10 100644
> --- a/man3/cmsg.3
> +++ b/man3/cmsg.3
> @@ -106,6 +106,12 @@ This is a constant expression.
>  .BR CMSG_DATA ()
>  returns a pointer to the data portion of a
>  .IR cmsghdr .
> +The pointer returned cannot be assumed to be suitably aligned for
> +accessing arbitrary payload data types.
> +Applications should not cast it to a pointer type matching the payload,
> +but should instead use
> +.BR memcpy (3)
> +to copy data to or from a suitably declared object.
>  .IP *
>  .BR CMSG_LEN ()
>  returns the value to store in the
> @@ -178,7 +184,6 @@ option in a received ancillary buffer:
>  .EX
>  struct msghdr msgh;
>  struct cmsghdr *cmsg;
> -int *ttlptr;
>  int received_ttl;
> 
>  /* Receive auxiliary data in msgh */
> @@ -187,8 +192,7 @@ for (cmsg = CMSG_FIRSTHDR(&msgh); cmsg != NULL;
>          cmsg = CMSG_NXTHDR(&msgh, cmsg)) {
>      if (cmsg\->cmsg_level == IPPROTO_IP
>              && cmsg\->cmsg_type == IP_TTL) {
> -        ttlptr = (int *) CMSG_DATA(cmsg);
> -        received_ttl = *ttlptr;
> +       memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
>          break;
>      }
>  }

LGTM. Thanks!

Rich
