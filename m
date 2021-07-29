Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 455413DAA33
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 19:31:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbhG2Rb0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 13:31:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:45272 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229863AbhG2RbY (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Jul 2021 13:31:24 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id C5989601FA;
        Thu, 29 Jul 2021 17:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627579880;
        bh=UHyjdfOhgJkSLa8qt5R/yoAzebwcBmhV4YXkPlObMFo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MGOMccsFOL5LfMPEl2kvRRjmp0R4gxWsLFzDD4DftpRhKVT35r37zwraIkWH76Ew0
         YbKsJSFUPa4JDGhCc3bpGYwjqZ0eEOLHvdRogGTDYTQV6/fz1syBPKjYeP404z3z8c
         hEK5jJIkYgYmxeaxD01Qd3wYbQJw7HSWoqfN20E8h6AnV5mhqp+cy78jOqsbYfLf+/
         qFFpCG/BDbmtY4C1gFjtGRmBgJZnU++MszOIDgaPOhzNe119dMP5eRqguBnJRL4rWe
         QvexWMCHZqgAMBYpMKiCPDZD+hwiX2soiWRR2opi0Ie0fGaQ/3oiFXp2+fGBQ/G4L+
         HMVbX5mGnQaaA==
Received: by pali.im (Postfix)
        id 5FAF5888; Thu, 29 Jul 2021 19:31:18 +0200 (CEST)
Date:   Thu, 29 Jul 2021 19:31:18 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
Message-ID: <20210729173118.pud4xucnt4kncvol@pali>
References: <20210725225506.7404-1-pali@kernel.org>
 <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

On Thursday 29 July 2021 13:30:11 Alejandro Colomar (man-pages) wrote:
> Hi Pali,
> 
> 
> On 7/26/21 12:55 AM, Pali Rohár wrote:
> > Signed-off-by: Pali Rohár <pali@kernel.org>
> > ---
> 
> Please see some comments below.
> 
> Thanks,
> 
> Alex
> 
> >   man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
> >   1 file changed, 29 insertions(+)
> > 
> > diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> > index c8269070180f..0c3a8ec24c76 100644
> > --- a/man2/ioctl_tty.2
> > +++ b/man2/ioctl_tty.2
> > @@ -77,6 +77,35 @@ The following four ioctls are just like
> >   .BR TCSETSW ,
> >   .BR TCSETSF ,
> >   except that they take a
> > +.I "struct termios2\ *"
> > +instead of a
> > +.IR "struct termios\ *" .
> > +.I "struct termios2\ *"
> > +is defined in header file
> 
> Maybe s/in/in the/ ?

Ok, I will change it.

> > +.IR "<asm/termbits.h>" .
> 
> Quotes are unnecessary here.

Ok.

> > +If struct member
> > +.B c_cflag
> > +contains
> > +.B BOTHER
> > +then baudrate is stored in struct members
> > +.BR c_ispeed " and " c_ospeed
> 
> We always break this into:
> 
> .B c_ispeed
> and
> .B c_ospeed

Ok.

> > +as integer values.
> > +These ioctls are not supported on all architectures.
> > +.IP
> > +.BI "TCGETS2	struct termios2 *" argp
> 
> Please follow the same style as in the rest of the page:
> 
> .TP
> .B TCGETS2
> Argument:
> .BI "struct termios2 *" argp
> 
> Unless there's a good reason not to.

Few lines below in this file is:

.IR "struct termios\ *" .
.IP
.BI "TCGETA	struct termio *" argp
.IP
.BI "TCSETA	const struct termio *" argp
.IP
.BI "TCSETAW	const struct termio *" argp
.IP
.BI "TCSETAF	const struct termio *" argp

Therefore I used same style for TCGETS2...

So, how should I format this part to be consistent?

> > +.IP
> > +.BI "TCSETS2	const struct termios2 *" argp
> > +.IP
> > +.BI "TCSETSW2	const struct termios2 *" argp
> > +.IP
> > +.BI "TCSETSF2	const struct termios2 *" argp
> > +.PP
> > +The following four ioctls are just like
> > +.BR TCGETS ,
> > +.BR TCSETS ,
> > +.BR TCSETSW ,
> > +.BR TCSETSF ,
> > +except that they take a
> >   .I "struct termio\ *"
> >   instead of a
> >   .IR "struct termios\ *" .
> > 
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
