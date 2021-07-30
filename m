Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D71E43DB832
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 14:05:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238724AbhG3MFu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 08:05:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:45700 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238739AbhG3MFt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 08:05:49 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id ED93961050;
        Fri, 30 Jul 2021 12:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627646745;
        bh=FA6lSPbnGDimmQMzE/Y2T9i2rms/djXcaMENyHgE0LY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=u0+yBSKNkjLiSMl8QhIK7rvF6rsFubkoqQ86aBiOkFxGcxH5ZA2QyK1xOsYJx2/lC
         SzDBs6fHyvbrDspAa83EnWB7zlMCmBKHZLoUMJKvULcD7GGtx/U/9JhMtbBL2ZlGh4
         N7umbwDFMGV45uiYU12ZG+KFzpjEYysuwe5fR2cKNfTE5DbNEDK1P417jFuadrnlbs
         AhRZv3bSF819GgSgMIFvRDt1XKy+f2+1CT+BVyKyjLV52AsxProwvUaCE9nv8lLn8V
         L2zKKgwsk4E3rBD2zt5D4GwkjjtK4HpIQp7P6ULvf90YA3Pu+2XcNaqToXbwCEgRYx
         LT0DZdMDEYMGw==
Received: by pali.im (Postfix)
        id 6A9BA772; Fri, 30 Jul 2021 14:05:42 +0200 (CEST)
Date:   Fri, 30 Jul 2021 14:05:42 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_tty.2: Add example how to get or set baudrate on
 the serial port
Message-ID: <20210730120542.dv62jtm6lpfmfjyx@pali>
References: <20210730095333.6118-1-pali@kernel.org>
 <b8ef8f70-ae61-b0f1-58dc-37380ae242ee@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b8ef8f70-ae61-b0f1-58dc-37380ae242ee@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

On Friday 30 July 2021 13:47:06 Alejandro Colomar (man-pages) wrote:
> Hi Pali,
> 
> On 7/30/21 11:53 AM, Pali Rohár wrote:
> > Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> Thanks for the patch!
> 
> Please see some comments below.
> 
> Cheers,
> 
> Alex
> 
> 
> > ---
> >   man2/ioctl_tty.2 | 60 ++++++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 60 insertions(+)
> > 
> > diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> > index 0b0083c671a7..9d394572ae93 100644
> > --- a/man2/ioctl_tty.2
> > +++ b/man2/ioctl_tty.2
> > @@ -750,6 +750,66 @@ main(void)
> >       close(fd);
> >   }
> >   .EE
> > +.PP
> > +Get or set arbitrary baudrate on the serial port.
> > +.PP
> > +.EX
> > +#include <stdio.h>
> > +#include <stdlib.h>
> > +#include <sys/types.h>
> > +#include <fcntl.h>
> > +#include <unistd.h>
> > +#include <sys/ioctl.h>
> > +#include <asm/termbits.h>
> 
> Unless there's a reason to use a specific include order (and if so, add a
> comment), please use alphabetical order.

Ok. Seems that alphabetical order compiles fine too.

> > +
> > +int
> > +main(int argc, char *argv[])
> > +{
> > +#if !defined(TCGETS2) || !defined(TCSETS2) || !defined(BOTHER)
> > +    fprintf(stderr, "TCGETS2, TCSETS2 or BOTHER is unsupported\\n");
> > +    return 1;
> > +#else
> 
> Do we want the program to compile if those are unsupported?

My intention was to provide example which compiles fine on any Linux
architecture and in case of error it reports it at runtime.

On architectures where are TCGETS2/TCSETS2 ioctls unsupported, there are
still supported TCGETS/TCSETS ioctls. So proper Linux portable program
should fallback to TCGETS/TCSETS ioctls with Bnnn constants.

So for example setting baudrate to 115200 would be possible via
predefined constant B115200 in c_cflag member even when struct termios2
with c_ospeed is unsupported.

I just did not put this fallback into this example as it would be quite
loooong (as it is needed to add big switch for every Bnnn constant and
convert numeric value into Bnnn) and example show how to use
TCGETS2/TCSETS2 (not TCGETS/TCSETS).

> Maybe you can #error there and simplify the reader having to parse the
> preprocessor directive mentally:
> 
> #if !defined...
> # error ...
> #endif
> 
> I know it's non-standard, but I think it's common enough so that we can use
> it here.

#error is standard. It is already defined in C99 (section 6.10.5 Error
directive).

> > +    struct termios2 tio2;
> > +    int fd, rc;
> > +
> > +    if (argc != 2 && argc != 3) {
> > +        fprintf(stderr, "Usage: %s device [new_baudrate]\\n", argv[0]);
> 
> We use \e for printing the escape character.  Not \\

Ok!

> CC: Branden
> 
> See groff_man(7):
>    Portability
>        [...]
> 
>        Similar  caveats  apply  to escapes.  Some escape sequences
>        are however required for correct typesetting  even  in  man
>        pages and usually do not cause portability problems:
> 
>        [...]
> 
>        \e     Widely used in man pages to  represent  a  backslash
>               output  glyph.  It works reliably as long as the .ec
>               request is not used, which should  never  happen  in
>               man pages, and it is slightly more portable than the
>               more exact ‘\(rs’  (“reverse  solidus”)  escape  se‐
>               quence.
> 
> 
> > +        return 1;
> > +    }
> > +
> > +    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
> > +    if (fd < 0) {
> > +        perror("open");
> > +        return 1;
> 
> exit(EXIT_FAILURE);
> 
> > +    }
> > +
> > +    rc = ioctl(fd, TCGETS2, &tio2);
> > +    if (rc) {
> > +        perror("TCGETS2");
> > +        close(fd);
> > +        return 1;
> 
> exit(3)
> 
> > +    }
> > +
> > +    printf("%u\\n", tio2.c_ospeed);
> 
> \e
> 
> > +
> > +    if (argc == 3) {
> > +        tio2.c_cflag &= ~CBAUD;
> > +        tio2.c_cflag |= BOTHER;
> > +        tio2.c_ospeed = tio2.c_ispeed = atoi(argv[2]);
> > +
> > +        rc = ioctl(fd, TCSETS2, &tio2);
> > +        if (rc) {
> > +            perror("TCSETS2");
> > +            close(fd);
> > +            return 1;
> 
> exit(3)
> 
> > +        }
> > +    }
> > +
> > +    close(fd);
> > +    return 0;
> 
> exit(3)

Interesting... Do you prefer to use exit(EXIT_SUCCESS) instead of return 0?

> > +#endif
> > +}
> > +.EE
> >   .SH SEE ALSO
> >   .BR ldattach (1),
> >   .BR ioctl (2),
> > 
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
