Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 054F13E1091
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 10:50:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238691AbhHEIus (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 04:50:48 -0400
Received: from mail.kernel.org ([198.145.29.99]:52034 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233100AbhHEIus (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 5 Aug 2021 04:50:48 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C1CF61078;
        Thu,  5 Aug 2021 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1628153434;
        bh=Zy2r2HJySuL2RNqperZvnT2wBpaFfnmxnlwBglbS1qQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZlhgNwslERImn/iTQXn7/8H8X+ry29iTYb8lpZsx6ITCOvA0E+b3rNacAOU1FSA2+
         Os82WAqpKxocz/lgDeaKgMsvu+0diNMQ2eega/9+gNc6kioO97GavQjAnab7wZb/zW
         Rf2xZjUZDYRWZuFMmVPrlnCfgRLRQecomNuxMIQY=
Date:   Thu, 5 Aug 2021 10:50:31 +0200
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
Message-ID: <YQumV3qljhFSau0y@kroah.com>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
 <20210804220808.cetleob6dldpfnjk@pali>
 <YQt8g+ECel20fA/g@kroah.com>
 <20210805082243.qciylqnt5g74if7i@pali>
 <YQuhl18CgJ2+LUPW@kroah.com>
 <20210805084410.sb5lybdri6r7t2da@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210805084410.sb5lybdri6r7t2da@pali>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Aug 05, 2021 at 10:44:10AM +0200, Pali Rohár wrote:
> On Thursday 05 August 2021 10:30:15 Greg Kroah-Hartman wrote:
> > On Thu, Aug 05, 2021 at 10:22:43AM +0200, Pali Rohár wrote:
> > > On Thursday 05 August 2021 07:52:03 Greg Kroah-Hartman wrote:
> > > > On Thu, Aug 05, 2021 at 12:08:08AM +0200, Pali Rohár wrote:
> > > > > + linux-serial
> > > > > + Greg
> > > > > 
> > > > > Greg, could I ask you for reviewing this documentation manpage patch?
> > > > 
> > > > If it is submitted in a format I can review, sure (i.e. not top-post...)
> > > > 
> > > > But I will dig down below to say one thing...
> > > > 
> > > > > 
> > > > > On Sunday 01 August 2021 15:51:45 Pali Rohár wrote:
> > > > > > Signed-off-by: Pali Rohár <pali@kernel.org>
> > > > > > 
> > > > > > ---
> > > > > > Changes in v3:
> > > > > > * Check support for custom baudrate only based on BOTHER macro
> > > > > > * Use TCGETS/TCSETS/termios when TCGETS2/TCSETS2/termios2 is not available
> > > > > > 
> > > > > > Changes in v2:
> > > > > > * Use \e for backslash
> > > > > > * Use exit(EXIT_*) instead of return num
> > > > > > * Sort includes
> > > > > > * Add comment about possible fallback
> > > > > > ---
> > > > > > 
> > > > > > Hello Alejandro!
> > > > > > 
> > > > > > I found out that this stuff is more complicated as I originally thought.
> > > > > > And seems that additional documentation on this topic is needed...
> > > > > > 
> > > > > > For setting custom baudrate it is needed to set BOTHER flag in c_cflag
> > > > > > field and baudrate value itself in c_ospeed and c_ispeed fields.
> > > > > > 
> > > > > > So when BOTHER flag is not provided by <asm/termbits.h> then setting custom
> > > > > > baudrate is not possible, fields c_ospeed and c_ispeed do not exist (and
> > > > > > only some predefined Bnnn baudrate values are supported). This applies when
> > > > > > compiling application with older version of header files (prior support for
> > > > > > custom baudrate was introduced into header files).
> > > > > > 
> > > > > > First caveat: BOTHER constant is different for different architectures.
> > > > > > So it is not possible to provide fallback #ifndef..#define BOTHER.
> > > > > > 
> > > > > > And now the biggest issue: Some architectures have these c_ospeed and
> > > > > > c_ispeed fields in struct termios and some in struct termios2.
> > > > > > 
> > > > > > TCGETS/TCSETS ioctls use struct termios and TCGETS/TCSETS2 use
> > > > > > struct termios2.
> > > > > > 
> > > > > > Some architectures (e.g. amd64) provide both struct termios and struct
> > > > > > termios2, but c_ospeed and c_ispeed are only in struct termios2.
> > > > > > 
> > > > > > Some other architectures (e.g. alpha) provide both struct termios and struct
> > > > > > termios2 and both have c_ospeed and c_ispeed fields.
> > > > > > 
> > > > > > And some other architectures (e.g. powerpc) provide only struct termios
> > > > > > (no struct termios2) and it has c_ospeed and c_ispeed fields.
> > > > > > 
> > > > > > So basically to support all architectures it is needed to use
> > > > > > struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
> > > > > > to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).
> > > > > > 
> > > > > > I updated v3 patch to handle this logic.
> > > > > > ---
> > > > > >  man2/ioctl_tty.2 | 73 ++++++++++++++++++++++++++++++++++++++++++++++++
> > > > > >  1 file changed, 73 insertions(+)
> > > > > > 
> > > > > > diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> > > > > > index 3020f9984872..d83cbd17225b 100644
> > > > > > --- a/man2/ioctl_tty.2
> > > > > > +++ b/man2/ioctl_tty.2
> > > > > > @@ -764,6 +764,79 @@ main(void)
> > > > > >      close(fd);
> > > > > >  }
> > > > > >  .EE
> > > > > > +.PP
> > > > > > +Get or set arbitrary baudrate on the serial port.
> > > > > > +.PP
> > > > > > +.EX
> > > > > > +#include <asm/termbits.h>
> > > > > > +#include <fcntl.h>
> > > > > > +#include <stdio.h>
> > > > > > +#include <stdlib.h>
> > > > > > +#include <sys/ioctl.h>
> > > > > > +#include <sys/types.h>
> > > > > > +#include <unistd.h>
> > > > > > +
> > > > > > +int
> > > > > > +main(int argc, char *argv[])
> > > > > > +{
> > > > > > +#ifndef BOTHER
> > > > > > +    fprintf(stderr, "BOTHER is unsupported\en");
> > > > > > +    /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
> > > > > > +    exit(EXIT_FAILURE);
> > > > 
> > > > So this is a BOTHER test only?
> > > 
> > > Yes.
> > > 
> > > > What is the goal of this program?  Don't throw a bunch of #ifdef in here
> > > > for no good reason.  These options should all be present on all normal
> > > > kernels, why wouldn't they be?
> > > 
> > > I wanted to provide complete example which compiles fine on all Linux
> > > systems, even with older include header files. I do not know right now
> > > in which kernel version was introduced BOTHER support for all
> > > architectures.
> > 
> > We have all of the kernel source in a tool that would allow you to to
> > determine this quite easily :)
> > 
> > > If BOHTER is not supported then it is possible to still use Bnnn
> > > constants to get / set baudrate. Just it is needed to write long code
> > > for converting number to suitable Bnnn constant.
> > > 
> > > Do you think that this BOTHER check is not useful in this case?
> > 
> > I think you should provide an example of how to use BOTHER, yes, as it
> > is hard to find good examples out there as they keep floating around.
> 
> Exactly, and this is one of the reason why I sent this my patch for
> ioctl_tty.2.
> 
> > Here's one that I point people to a lot:
> > 	https://github.com/GrantEdwards/Linux-arbitrary-baud
> 
> I'm looking at this example at it has lot of problems:
> 
> * Does not compile on powerpc (see explanation above).
> * Does not include <sys/ioctl.h> and instead provide open-coded
>   declaration of ioctl: int ioctl(int d, int request, ...);
> * Does not handle case when TCGETS/TCSETS contains t.c_ospeed

Great, then fix all of that :)

> In my opinion include header files should be used instead of writing own
> declaration of functions.

I agree.

> > Make the example code easy to follow.
> > 
> > Also, you forgot a license for this code, that is required if you want
> > people to use it...
> 
> Hm... I do not see any license in other manpage examples. Does not apply
> for it global license defined in ioctl_tty.2 file?

That does not mean you do not need it.

thanks,

greg k-h
