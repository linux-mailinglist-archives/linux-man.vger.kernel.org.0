Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECCA93E0DE5
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 07:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234675AbhHEFwX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 01:52:23 -0400
Received: from mail.kernel.org ([198.145.29.99]:41108 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229892AbhHEFwU (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 5 Aug 2021 01:52:20 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5970760EBB;
        Thu,  5 Aug 2021 05:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1628142726;
        bh=ZKU+PLv7kgX0N+MxB8BCiFigoXZVFNf9axw628nM5to=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=paTwXLBvTHtUmdQ4JprqZteMH/wu2+6VdbxtSgIOozVFGbFvzqjsvbsJT5SSHWCAN
         Gz5r8daBRPxitkfZxcJmPPVc9k4gCT5Y+y/G7HknBgTpJH0pe1nX6pec/LB2rjvXZu
         W/ENmS3ueNRHdSdvUg49Fq9fv+l+dTv7kBvc2Ims=
Date:   Thu, 5 Aug 2021 07:52:03 +0200
From:   Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To:     Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3] ioctl_tty.2: Add example how to get or set baudrate
 on the serial port
Message-ID: <YQt8g+ECel20fA/g@kroah.com>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
 <20210804220808.cetleob6dldpfnjk@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210804220808.cetleob6dldpfnjk@pali>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Aug 05, 2021 at 12:08:08AM +0200, Pali Rohár wrote:
> + linux-serial
> + Greg
> 
> Greg, could I ask you for reviewing this documentation manpage patch?

If it is submitted in a format I can review, sure (i.e. not top-post...)

But I will dig down below to say one thing...

> 
> On Sunday 01 August 2021 15:51:45 Pali Rohár wrote:
> > Signed-off-by: Pali Rohár <pali@kernel.org>
> > 
> > ---
> > Changes in v3:
> > * Check support for custom baudrate only based on BOTHER macro
> > * Use TCGETS/TCSETS/termios when TCGETS2/TCSETS2/termios2 is not available
> > 
> > Changes in v2:
> > * Use \e for backslash
> > * Use exit(EXIT_*) instead of return num
> > * Sort includes
> > * Add comment about possible fallback
> > ---
> > 
> > Hello Alejandro!
> > 
> > I found out that this stuff is more complicated as I originally thought.
> > And seems that additional documentation on this topic is needed...
> > 
> > For setting custom baudrate it is needed to set BOTHER flag in c_cflag
> > field and baudrate value itself in c_ospeed and c_ispeed fields.
> > 
> > So when BOTHER flag is not provided by <asm/termbits.h> then setting custom
> > baudrate is not possible, fields c_ospeed and c_ispeed do not exist (and
> > only some predefined Bnnn baudrate values are supported). This applies when
> > compiling application with older version of header files (prior support for
> > custom baudrate was introduced into header files).
> > 
> > First caveat: BOTHER constant is different for different architectures.
> > So it is not possible to provide fallback #ifndef..#define BOTHER.
> > 
> > And now the biggest issue: Some architectures have these c_ospeed and
> > c_ispeed fields in struct termios and some in struct termios2.
> > 
> > TCGETS/TCSETS ioctls use struct termios and TCGETS/TCSETS2 use
> > struct termios2.
> > 
> > Some architectures (e.g. amd64) provide both struct termios and struct
> > termios2, but c_ospeed and c_ispeed are only in struct termios2.
> > 
> > Some other architectures (e.g. alpha) provide both struct termios and struct
> > termios2 and both have c_ospeed and c_ispeed fields.
> > 
> > And some other architectures (e.g. powerpc) provide only struct termios
> > (no struct termios2) and it has c_ospeed and c_ispeed fields.
> > 
> > So basically to support all architectures it is needed to use
> > struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
> > to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).
> > 
> > I updated v3 patch to handle this logic.
> > ---
> >  man2/ioctl_tty.2 | 73 ++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 73 insertions(+)
> > 
> > diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> > index 3020f9984872..d83cbd17225b 100644
> > --- a/man2/ioctl_tty.2
> > +++ b/man2/ioctl_tty.2
> > @@ -764,6 +764,79 @@ main(void)
> >      close(fd);
> >  }
> >  .EE
> > +.PP
> > +Get or set arbitrary baudrate on the serial port.
> > +.PP
> > +.EX
> > +#include <asm/termbits.h>
> > +#include <fcntl.h>
> > +#include <stdio.h>
> > +#include <stdlib.h>
> > +#include <sys/ioctl.h>
> > +#include <sys/types.h>
> > +#include <unistd.h>
> > +
> > +int
> > +main(int argc, char *argv[])
> > +{
> > +#ifndef BOTHER
> > +    fprintf(stderr, "BOTHER is unsupported\en");
> > +    /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
> > +    exit(EXIT_FAILURE);

So this is a BOTHER test only?

What is the goal of this program?  Don't throw a bunch of #ifdef in here
for no good reason.  These options should all be present on all normal
kernels, why wouldn't they be?

thanks,

greg k-h
