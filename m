Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 021AD152415
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2020 01:30:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727673AbgBEAa1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Feb 2020 19:30:27 -0500
Received: from mail-ed1-f66.google.com ([209.85.208.66]:34350 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727522AbgBEAa1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Feb 2020 19:30:27 -0500
Received: by mail-ed1-f66.google.com with SMTP id r18so501916edl.1
        for <linux-man@vger.kernel.org>; Tue, 04 Feb 2020 16:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=hncYWbinEyBkyLyiHO4RsaIkU8wdz68nr9IHdlNC2t8=;
        b=Rd7ZdSTAgNWn3AiDIMe5/MaFFGEkeVqRrTf2/JhSsI2mbmOM8acYyA6TS5B+yIatHo
         SOoG8YB9+epipbOZpJvvaZUrNUNvnNOQm2NztKpN5CZCGdy+Sdxxo4M0fWr6od8I3X3L
         iBNlvtILg6bzGcN6H0CMSUmExMdUNJp0D0+/78RDSOXOjz8deSRwrShQk2bTA7NpxCM2
         hIji0f9c+CuweFFjvMJiO9VS1eCHTV8b3fNovNZm4yMR9qED29VJ+neCHFa4MGC1MW5v
         2skJFOej2xTX4JSBhqQPDQMsIVx8kS/0CbQul+rwssppdAORutAD7b81i2VOn5cV3d0f
         wmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=hncYWbinEyBkyLyiHO4RsaIkU8wdz68nr9IHdlNC2t8=;
        b=K5vFdMt9IqSVUzGN+OkViPmVmapk8C4buxFiqatXr0rCVndO7l2/sm97Bu6OKKYXCd
         CPdsFsN6Zxl8/1cMt4NexzrtWX8zeiQmdu5YpnqflaOYfe+1uKX+9GqCTHufLzQOBLsq
         VzTFp1FxLRn90YjRypvL/NSnmaRWMdrzRie9Zy7GOnzY7DeOA/GBplz5VInLXP/y35g4
         0uZhVSh7wU5KDYL92YkkQTKwr89NYyeNkJadzeuHwkB30QboP7gKceQFcYbRzP55Ppxf
         dDANRYdQpcSULo7kYMJO9G5Dw2Aqm6Qg20o64maPM2B8B1GSfG3R4TghGNSIINYOlGKU
         lTYQ==
X-Gm-Message-State: APjAAAVkvuzYipWvY0jMI51nuDOTC16Au7LTYKo3WhnIDU/hQYcT4U07
        gg0ZUdZ60xcegNbL0+hSlni4428dkY2tTzsLAmxb2qRz
X-Google-Smtp-Source: APXvYqxWh2wnL6hKC3xidHxTceZFY1NRJFFRUVsGRQe+zlj7AfT2rJebglYp4C1aRz/lFDWTupqozvFADaotfiIAIoY=
X-Received: by 2002:a17:906:9501:: with SMTP id u1mr26675164ejx.113.1580862624233;
 Tue, 04 Feb 2020 16:30:24 -0800 (PST)
MIME-Version: 1.0
References: <20191217143609.GA23014@brightrain.aerifal.cx> <CAK8P3a2Rv4uEW4acMm_byZQdsH8yNgfuy9qcmT6tmuPrQxvcHA@mail.gmail.com>
 <20191217204751.GI1666@brightrain.aerifal.cx>
In-Reply-To: <20191217204751.GI1666@brightrain.aerifal.cx>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 5 Feb 2020 01:30:12 +0100
Message-ID: <CAKgNAkhJ3j=v255UPJBeYs4erDOWpinxo0T1dqx_Fdh1MC=7-A@mail.gmail.com>
Subject: Re: Access to CMSG_DATA
To:     Rich Felker <dalias@libc.org>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Rich,

My apologies for the delayed reply.

On Tue, 17 Dec 2019 at 21:47, Rich Felker <dalias@libc.org> wrote:
>
> On Tue, Dec 17, 2019 at 09:00:08PM +0100, Arnd Bergmann wrote:
> > On Tue, Dec 17, 2019 at 3:36 PM Rich Felker <dalias@libc.org> wrote:
> > >
> > > It came to my attention while reviewing possible breakage with move to
> > > 64-bit time_t that some applications are dereferencing data in socket
> > > control messages (particularly SCM_TIMESTAMP*) in-place as the message
> > > type, rather than memcpy'ing it to appropriate storage. This
> > > necessarily does not work and is not supportable if the message
> > > contains data with greater alignment requirement than the header. In
> > > particular, on 32-bit archs, cmsghdr has size 12 and alignment 4, but
> > > struct timeval and timespec may have alignment requirement 8.
> > >
> > > I found at least ptpd, socat, and ssmping doing this via Debian Code
> > > Search:
> > >
> > > https://sources.debian.org/src/ptpd/2.3.1-debian1-4/src/dep/net.c/?hl=1578#L1578
> > > https://sources.debian.org/src/socat/1.7.3.3-2/xio-socket.c/?hl=1839#L1839
> > > https://sources.debian.org/src/ssmping/0.9.1-3/ssmpngcl.c/?hl=307#L307
> > >
> > > and I suspect there are a good deal more out there. On most archs they
> > > won't break, or will visibly break with SIGBUS, but in theory it's
> > > possible that they silently read wrong data and this might happen on
> > > some older and more tiny-embedded-oriented archs.
> >
> > Good find. I suppose this is going to be particularly annoying for
> > architectures that are affected because all systems that are in
> > widespread use are not affected:
> >
> > - x86, riscv, ppc and s390 always allow unaligned loads
> > - ARMv6+ mostly allows unaligned loads. Some instructions such as ldrd
> >   require alignment of four bytes, which is ok, and ARMv5 requires natural
> >   alignment up to 32 bits, so this is also ok
>
> Seems correct.
> x
> > - On MIPS I think that o32 is fine since there are no 64-bit loads, but
> >   n64  would likely be affected, if there are still users remaining (musl
> >   supports it, so I assume there are some users).
>
> I think you mean n32. n64 is the full LP64 ABI. Indeed it seems like
> n32 is likely affected unless the kernel traps and fixes up misaligned
> accesses.
>
> > - m68k only requires 16-bit alignment
> > - For the other 32-bit architectures that musl supports (microblaze, sh,
>                                        ^^^^^^^^^^^^^^^^^^
>
> FWIW this isn't specific to musl; glibc is also affected, and uclibc
> would be too if they ever implement time64.
>
> >   openrisc), none advertise unaligned-access capability  to the kernel,
> >   but I also don't think any of them have a native 64-bit load instruction.
> >   armv5, microblaze, sh and nds32 fix up unaligned accesses in an
> >   exception handler; openrisc and csky require aligned accesses in user
> >   space.
>
> This sounds correct. Presently J2 (open source SH2 ISA implementation)
> has no unaligned trap; it just loads/stores the wrong value. But there
> are no 64-bit load/store insns anyway and 32-bit alignment is met.
>
> > > I think it's clear to someone who understands alignment and who's
> > > thought about it that applications just can't do this, but it doesn't
> > > seem to be documented, and an example in cmsg(3) even shows access to
> > > int payload via *(int *)CMSG_DATA(cmsg) (of course int is safe because
> > > its alignment is <= header alignment, but this is not mentioned).
> > >
> > > Could we add text, and perhaps change the example, to indicate that in
> > > general memcpy needs to be used to copy the payload to/from a suitable
> > > object?
> >
> > Yes, I think that would be a good idea.
>
> How about adding to:
>
>        *  CMSG_DATA() returns a pointer to the data portion of a cmsghdr.
>
> "The pointer returned cannot be assumed to be suitably aligned for
> accessing arbitrary payload data types. Applications should not cast
> it to a pointer type matching the payload, but should use memcpy to
> copy data to or from a suitably declared object."
>
> and doing this in the examples? Are there other places it should be
> mentioned to to make sure readers see it?

Thanks for this report! And the nicely worded text that you propose to
add to the page.

I've applied the patch below, which is almost exactly your text, plus
a suitable change in the code example. Seem okay?

I can't spot any other place in the manual page where this point
should be mentioned.

Thanks,

Michael

diff --git a/man3/cmsg.3 b/man3/cmsg.3
index 83bb633cc..9dd4c9c10 100644
--- a/man3/cmsg.3
+++ b/man3/cmsg.3
@@ -106,6 +106,12 @@ This is a constant expression.
 .BR CMSG_DATA ()
 returns a pointer to the data portion of a
 .IR cmsghdr .
+The pointer returned cannot be assumed to be suitably aligned for
+accessing arbitrary payload data types.
+Applications should not cast it to a pointer type matching the payload,
+but should instead use
+.BR memcpy (3)
+to copy data to or from a suitably declared object.
 .IP *
 .BR CMSG_LEN ()
 returns the value to store in the
@@ -178,7 +184,6 @@ option in a received ancillary buffer:
 .EX
 struct msghdr msgh;
 struct cmsghdr *cmsg;
-int *ttlptr;
 int received_ttl;

 /* Receive auxiliary data in msgh */
@@ -187,8 +192,7 @@ for (cmsg = CMSG_FIRSTHDR(&msgh); cmsg != NULL;
         cmsg = CMSG_NXTHDR(&msgh, cmsg)) {
     if (cmsg\->cmsg_level == IPPROTO_IP
             && cmsg\->cmsg_type == IP_TTL) {
-        ttlptr = (int *) CMSG_DATA(cmsg);
-        received_ttl = *ttlptr;
+       memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
         break;
     }
 }
