Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0EC83E8425
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 22:11:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232860AbhHJUL4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 16:11:56 -0400
Received: from mail.kernel.org ([198.145.29.99]:35468 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232836AbhHJUL4 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 10 Aug 2021 16:11:56 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 495F760F13;
        Tue, 10 Aug 2021 20:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628626293;
        bh=dzSic2DGKK5FRzvpL2qjXum5B3LIM+ISWDETLXPoyb8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sp4r2bDfG1j0fj1GNO5coGEFzV981lBlwl51f1H1p+7BFhRsXEFs9UfyTD0zYa2Rw
         6wgE28CiejqWlmWva/yyBK+GPy0e0OuiIfdCpx8J/3lCJpQ/MnuNUHFf3Kxdz5wyGe
         qUKpSYWFBaaK2ONvvCeohtbc2ReJYkNhyrYxQi0Cr9OJIiYQFef6cr6ss9qjT8EiTS
         ykgaRbMLrZLF8mLZV9GCZl9E0402aXqFOJ+L1H2DxYyyr5nGgOUXz0yI5VuAhrLAPd
         tQMIJMq2HFEwx1H0pzh3NxnATIsFUiU4y4g92JTC7NfwiaYTqbxZEIj9fA6TF1kr6y
         lp1lW303+0Kog==
Received: by pali.im (Postfix)
        id 0A10B82D; Tue, 10 Aug 2021 22:11:30 +0200 (CEST)
Date:   Tue, 10 Aug 2021 22:11:30 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH v4] ioctl_tty.2: Add example how to get or set baudrate
 on the serial port
Message-ID: <20210810201130.wp5mdgmkvzwcbo2x@pali>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210810194928.16408-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="t77n566zkivj357f"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210810194928.16408-1-pali@kernel.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t77n566zkivj357f
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tuesday 10 August 2021 21:49:28 Pali Rohár wrote:
> Setting custom baudrate for which is not defined Bnnn constant is possible
> via BOTHER flag and then filling speed in c_ospeed and c_ispeed fields.
> 
> These two fields are either in struct termios or struct termios2. Former
> belongs to TCGETS/TCSETS ioctls, latter to TCGETS2/TCSETS2 ioctls.
> 
> BOTHER flag with these two fields and new struct termios2 is not supported
> by older versions of include header files.
> 
> Some architectures (e.g. amd64) provide both struct termios and struct
> termios2, but c_ospeed and c_ispeed are only in struct termios2.
> 
> Some other architectures (e.g. alpha) provide both struct termios and struct
> termios2 and both have c_ospeed and c_ispeed fields.
> 
> And some other architectures (e.g. powerpc) provide only struct termios
> (no struct termios2) and it has c_ospeed and c_ispeed fields.
> 
> So basically to support all architectures it is needed to use
> struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
> to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).
> 
> Setting input baudrate is done via IBSHIFT macro.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> ---
> Changes in v4:
> * Add SPDX-License-Identifier
> * Correctly process split baudrates (separate output and input) via IBSHIFT
> * Update commit message
> 
> Changes in v3:
> * Check support for custom baudrate only based on BOTHER macro
> * Use TCGETS/TCSETS/termios when TCGETS2/TCSETS2/termios2 is not available
> 
> Changes in v2:
> * Use \e for backslash
> * Use exit(EXIT_*) instead of return num
> * Sort includes
> * Add comment about possible fallback
> ---
>  man2/ioctl_tty.2 | 100 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 100 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index abfdc1e21fe9..7b2b03ff6757 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -796,6 +796,106 @@ main(void)
>      close(fd);
>  }
>  .EE
> +.PP
> +Get or set arbitrary baudrate on the serial port.
> +.PP
> +.EX
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#include <asm/termbits.h>
> +#include <fcntl.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/ioctl.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +
> +int
> +main(int argc, char *argv[])
> +{
> +#ifndef BOTHER
> +    fprintf(stderr, "BOTHER is unsupported\en");
> +    /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
> +    exit(EXIT_FAILURE);
> +#else
> +    /* Declare tio structure, its type depends on supported ioctl */
> +#ifdef TCGETS2
> +    struct termios2 tio;
> +#else
> +    struct termios tio;
> +#endif
> +    int fd, rc;
> +
> +    if (argc != 2 && argc != 3 && argc != 4) {
> +        fprintf(stderr, "Usage: %s device [output [input] ]\en", argv[0]);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
> +    if (fd < 0) {
> +        perror("open");
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    /* Get the current serial port settings via supported ioctl */
> +#ifdef TCGETS2
> +    rc = ioctl(fd, TCGETS2, &tio);
> +#else
> +    rc = ioctl(fd, TCGETS, &tio);
> +#endif
> +    if (rc) {
> +        perror("TCGETS");
> +        close(fd);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    /* Change baud rate when more arguments were provided */
> +    if (argc == 3 || argc == 4) {
> +        /* Clear the current output baud rate and fill a new value */
> +        tio.c_cflag &= ~CBAUD;
> +        tio.c_cflag |= BOTHER;
> +        tio.c_ospeed = atoi(argv[2]);
> +
> +        /* Clear the current input baud rate and fill a new value */
> +        tio.c_cflag &= ~(CBAUD << IBSHIFT);
> +        tio.c_cflag |= BOTHER << IBSHIFT;
> +        /* When 4th argument is not provided reuse output baud rate */
> +        tio.c_ispeed = (argc == 4) ? atoi(argv[3]) : atoi(argv[2]);
> +
> +        /* Set new serial port settings via supported ioctl */
> +#ifdef TCSETS2
> +        rc = ioctl(fd, TCSETS2, &tio);
> +#else
> +        rc = ioctl(fd, TCSETS, &tio);
> +#endif
> +        if (rc) {
> +            perror("TCSETS");
> +            close(fd);
> +            exit(EXIT_FAILURE);
> +        }
> +
> +        /* And get new values which were really configured */
> +#ifdef TCGETS2
> +        rc = ioctl(fd, TCGETS2, &tio);
> +#else
> +        rc = ioctl(fd, TCGETS, &tio);
> +#endif
> +        if (rc) {
> +            perror("TCGETS");
> +            close(fd);
> +            exit(EXIT_FAILURE);
> +        }
> +    }
> +
> +    close(fd);
> +
> +    printf("output baud rate: %u\en", tio.c_ospeed);
> +    printf("input baud rate: %u\en", tio.c_ispeed);
> +
> +    exit(EXIT_SUCCESS);
> +#endif
> +}
> +.EE
>  .SH SEE ALSO
>  .BR ldattach (1),
>  .BR ioctl (2),
> -- 
> 2.20.1
> 

Alejandro, in case you are interested I wrote also longer version which
can be compiled also with header files without BOTHER support.

I found out that because glibc does not support setting BOTHER speeds,
it also is not able to read current speed (via cfgetospeed()) if serial
port is configured to BOTHER state. And because lot of applications,
including GNU stty, use glibc's cfgetospeed() they are not able to parse
tty serial ports when BOTHER is set.

So due current glibc version, it is preferred to use Bnnn constants and
use BOTHER with c_ospeed only in case when there is no corresponding
Bnnn constant.

In this longer version, this preference is implemented.

But because this longer version is _longer_ I do not know if it is a
good idea to have it in manpage, even it is more preferred for
interoperability with existing applications.

Greg, if you have time, I would like to ask for reviewing new version
of manpage patch (or longer version). Or if you have an idea what is
better example in manpage (short or that longer version).

Longer version is below as MIME inline part of email.

--t77n566zkivj357f
Content-Type: text/x-csrc; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

/* SPDX-FileCopyrightText: 2021 Pali Rohár <pali@kernel.org> */
/* SPDX-License-Identifier: GPL-2.0-or-later */

#include <asm/termbits.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <unistd.h>

#define B(n) { B##n, n }
static
struct { tcflag_t bn; unsigned int n; }
map[] =
{
    B(0), B(50), B(75), B(110), B(134), B(150), B(200), B(300), B(600),
    B(1200), B(1800), B(2400), B(4800), B(9600), B(19200), B(38400),
    B(57600), B(115200), B(230400), B(460800), B(500000), B(576000),
    B(921600), B(1000000), B(1152000), B(1500000), B(2000000),
#ifdef B2500000
    /* non-SPARC architectures support these Bnnn constants */
    B(2500000), B(3000000), B(3500000), B(4000000)
#else
    /* SPARC architecture supports these Bnnn constants */
    B(76800), B(153600), B(307200), B(614400)
#endif
};
#undef B

static
tcflag_t
map_n_to_bn(unsigned int n)
{
    size_t i;

    for (i = 0; i < sizeof(map)/sizeof(map[0]); i++) {
        if (map[i].n == n)
            return map[i].bn;
    }

    return B0;
}

static
unsigned int
map_bn_to_n(tcflag_t bn)
{
    size_t i;

    for (i = 0; i < sizeof(map)/sizeof(map[0]); i++) {
        if (map[i].bn == bn)
            return map[i].n;
    }

    return 0;
}


int
main(int argc, char *argv[])
{
    /* Declare tio structure, its type depends on supported ioctl */
#ifdef TCGETS2
    struct termios2 tio;
#else
    struct termios tio;
#endif
    unsigned int n;
    tcflag_t bn;
    int fd, rc;

    if (argc != 2 && argc != 3 && argc != 4) {
        fprintf(stderr, "Usage: %s device [output [input] ]\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
    if (fd < 0) {
        perror("open");
        exit(EXIT_FAILURE);
    }

    /* Get the current serial port settings via supported ioctl */
#ifdef TCGETS2
    rc = ioctl(fd, TCGETS2, &tio);
#else
    rc = ioctl(fd, TCGETS, &tio);
#endif
    if (rc) {
        perror("TCGETS");
        close(fd);
        exit(EXIT_FAILURE);
    }

    /* Change baud rate when more arguments were provided */
    if (argc == 3 || argc == 4) {
        /* Clear the current output baud rate and fill a new value */
        n = atoi(argv[2]);
        /* When possible prefer usage of Bnnn constant as glibc-based
           applications are not able to parse BOTHER c_ospeed baud rate */
        bn = map_n_to_bn(n);
        if (n != 0 && bn == B0) {
#ifdef BOTHER
            bn = BOTHER;
#else
            fprintf(stderr, "baud rate %u is unsupported\n", n);
            close(fd);
            exit(EXIT_FAILURE);
#endif
        }
        tio.c_cflag &= ~CBAUD;
        tio.c_cflag |= bn;
#ifdef BOTHER
        tio.c_ospeed = n;
#endif

        /* When 4th argument is not provided reuse output baud rate */
        if (argc == 4) {
            n = atoi(argv[3]);
            bn = map_n_to_bn(n);
            /* Clear the current input baud rate and fill a new value */
            if (n != 0 && bn == B0) {
#ifdef BOTHER
                bn = BOTHER;
#else
                fprintf(stderr, "baud rate %u is unsupported\n", n);
                close(fd);
                exit(EXIT_FAILURE);
#endif
            }
        }

        if ((tio.c_cflag & CBAUD) != bn) {
#ifdef IBSHIFT
            tio.c_cflag &= ~(CBAUD << IBSHIFT);
            tio.c_cflag |= bn << IBSHIFT;
#ifdef BOTHER
            tio.c_ispeed = n;
#endif
#else
            fprintf(stderr, "split baud rates are unsupported\n", n);
            close(fd);
            exit(EXIT_FAILURE);
#endif
        } else {
#ifdef IBSHIFT
            /* B0 sets the input baud to the output baud rate */
            tio.c_cflag &= ~(CBAUD << IBSHIFT);
            tio.c_cflag |= B0 << IBSHIFT;
#ifdef BOTHER
            tio.c_ispeed = 0;
#endif
#endif
        }

        /* Set new serial port settings via supported ioctl */
#ifdef TCSETS2
        rc = ioctl(fd, TCSETS2, &tio);
#else
        rc = ioctl(fd, TCSETS, &tio);
#endif
        if (rc) {
            perror("TCSETS");
            close(fd);
            exit(EXIT_FAILURE);
        }

        /* And get new values which were really configured */
#ifdef TCGETS2
        rc = ioctl(fd, TCGETS2, &tio);
#else
        rc = ioctl(fd, TCGETS, &tio);
#endif
        if (rc) {
            perror("TCGETS");
            close(fd);
            exit(EXIT_FAILURE);
        }
    }

    bn = tio.c_cflag & CBAUD;
#ifdef BOTHER
    if (bn == BOTHER)
        n = tio.c_ospeed;
    else
#endif
        n = map_bn_to_n(bn);
    printf("output baud rate: %u\n", n);

#ifdef IBSHIFT
    bn = (tio.c_cflag >> IBSHIFT) & CBAUD;
    if (bn == B0)
#endif
        bn = tio.c_cflag & CBAUD;
#ifdef BOTHER
    if (bn == BOTHER)
        n = tio.c_ispeed;
    else
#endif
        n = map_bn_to_n(bn);
    printf("input baud rate: %u\n", n);

    close(fd);
    exit(EXIT_SUCCESS);
}

--t77n566zkivj357f--
