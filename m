Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0D623E0A3D
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 00:09:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234938AbhHDWJ6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 18:09:58 -0400
Received: from mail.kernel.org ([198.145.29.99]:52920 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231249AbhHDWIl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 4 Aug 2021 18:08:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 21D786109F;
        Wed,  4 Aug 2021 22:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628114891;
        bh=9Mh3zQj7N4giEdHC93zuncEJfUDERAwyM4EdZo6zheU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PcTblenphuGMAXoRzELxwkApfJRmtU3JPzKkZzTXlj+td/Rsz5B13ofj2XIHhf7oT
         +6r2lHz8xg8Fyib+ISNw8kPWvPrZ2pbYGLJHJOtOUXhRrFpB7qflUsec3aw2iBQ60t
         7AaB8nx5mIr6TM0IkXh7tig4ac6DlVS/XtgHAbJ6CtoKv4OlNjtqG1YoO84I7Xy6x9
         iEqKzpHz4aJ0Xls2a4IFgJoppKnIaw1295+895SphqIhe5Up+1lA4yRlF+3r7dialv
         GY2ZZ5XNP7Nhg88JLLJ2rGtDtjuZ09gvJiz0i1XSXdEsV3gCZ4/GRfkCFRus3spAK9
         C5R95mZR2399A==
Received: by pali.im (Postfix)
        id B807E77F; Thu,  5 Aug 2021 00:08:08 +0200 (CEST)
Date:   Thu, 5 Aug 2021 00:08:08 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3] ioctl_tty.2: Add example how to get or set baudrate
 on the serial port
Message-ID: <20210804220808.cetleob6dldpfnjk@pali>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210801135146.14849-1-pali@kernel.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

+ linux-serial
+ Greg

Greg, could I ask you for reviewing this documentation manpage patch?

On Sunday 01 August 2021 15:51:45 Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> ---
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
> 
> Hello Alejandro!
> 
> I found out that this stuff is more complicated as I originally thought.
> And seems that additional documentation on this topic is needed...
> 
> For setting custom baudrate it is needed to set BOTHER flag in c_cflag
> field and baudrate value itself in c_ospeed and c_ispeed fields.
> 
> So when BOTHER flag is not provided by <asm/termbits.h> then setting custom
> baudrate is not possible, fields c_ospeed and c_ispeed do not exist (and
> only some predefined Bnnn baudrate values are supported). This applies when
> compiling application with older version of header files (prior support for
> custom baudrate was introduced into header files).
> 
> First caveat: BOTHER constant is different for different architectures.
> So it is not possible to provide fallback #ifndef..#define BOTHER.
> 
> And now the biggest issue: Some architectures have these c_ospeed and
> c_ispeed fields in struct termios and some in struct termios2.
> 
> TCGETS/TCSETS ioctls use struct termios and TCGETS/TCSETS2 use
> struct termios2.
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
> I updated v3 patch to handle this logic.
> ---
>  man2/ioctl_tty.2 | 73 ++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 3020f9984872..d83cbd17225b 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -764,6 +764,79 @@ main(void)
>      close(fd);
>  }
>  .EE
> +.PP
> +Get or set arbitrary baudrate on the serial port.
> +.PP
> +.EX
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
> +#ifdef TCGETS2
> +    struct termios2 tio;
> +#else
> +    struct termios tio;
> +#endif
> +    int fd, rc;
> +
> +    if (argc != 2 && argc != 3) {
> +        fprintf(stderr, "Usage: %s device [new_baudrate]\en", argv[0]);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
> +    if (fd < 0) {
> +        perror("open");
> +        exit(EXIT_FAILURE);
> +    }
> +
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
> +    printf("%u\en", tio.c_ospeed);
> +
> +    if (argc == 3) {
> +        tio.c_cflag &= ~CBAUD;
> +        tio.c_cflag |= BOTHER;
> +        tio.c_ospeed = tio.c_ispeed = atoi(argv[2]);
> +
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
> +    }
> +
> +    close(fd);
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
