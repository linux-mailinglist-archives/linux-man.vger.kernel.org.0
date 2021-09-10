Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4B0940709E
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 19:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230489AbhIJRlD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 13:41:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:32908 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229664AbhIJRlC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 10 Sep 2021 13:41:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A299611CB;
        Fri, 10 Sep 2021 17:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1631295591;
        bh=6wADZDRSdFrn9JbplpiL5iPDSltdFPx2MSjjoEqeRx8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fCXenGHm4AcptZiMdjziCuE6rE2mNpz1FND/oSg2IMQ65FTwalMoKUXhoB/P2bLQD
         J6Wz6v9Q9F7xbdmK5E4yzXDx4FctNymkKz+Cy9KPcH3dQU+ecAlmmMznnqtvHrcDnZ
         nL7IJXHW6U8CedWKhnAoaRAsTSxVnaUKZVefHjnFIvvAl8p4uhuOzME+JEXMiwtOe8
         2076zBVQjI1DOB5lnnag0CLLdf7y/r343YwSc+wGMrSyKanvWpi/67ILKsJySIQxh8
         xV3s4b5zqKiEvjnvlicDm83AIgb9szgDHvuHTJhlSaUfoz7kHjg324xxYfHavZ03HR
         gfH/4da911TWg==
Received: by pali.im (Postfix)
        id 2530D2828; Fri, 10 Sep 2021 19:39:49 +0200 (CEST)
Date:   Fri, 10 Sep 2021 19:39:49 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3] ioctl_tty.2: Fix information about header include file
Message-ID: <20210910173949.bkyunodbtau2gg6j@pali>
References: <3d927d3c-67a1-bb48-b597-44c87b8f715a@gmail.com>
 <20210831202809.29819-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210831202809.29819-1-pali@kernel.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tuesday 31 August 2021 22:28:09 Pali Rohár wrote:
> Header file termios.h contains incompatible definitions for linux ioctl
> calls. Correct definitions are exported by header file linux/termios.h but
> this file conflicts with sys/ioctl.h header file (required for ioctl()
> call). Therefore include direct asm header file asm/termbits.h which
> contains compatible definitions and structures for ioctl calls.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Hello Alejandro! Could you check also this patch?

> ---
> Changes in v3:
> * Use .I <file> instead of .B #include <file>
> * Use Bnnn instead of Bnn
> 
> Changes in v2:
> * Reformat SYNOPSIS for 80 chars per line
> ---
>  man2/ioctl_tty.2 | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 186011ee7c33..7d866867c6bd 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -11,8 +11,10 @@ ioctl_tty \- ioctls for terminals and serial lines
>  .SH SYNOPSIS
>  .nf
>  .B #include <sys/ioctl.h>
> -.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
> -.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
> +.BR "#include <asm/termbits.h>" "   /* Definition of " "struct termios" ,
> +.BR    "                               struct termios2" ", and"
> +.BR    "                               Bnnn" ", " BOTHER ", " CBAUD ", " CLOCAL ,
> +.BR    "                               TC*" { FLUSH , ON , OFF "} and other constants */"
>  .PP
>  .BI "int ioctl(int " fd ", int " cmd ", ...);"
>  .fi
> @@ -31,6 +33,19 @@ makes for nonportable programs.
>  Use the POSIX interface described in
>  .BR termios (3)
>  whenever possible.
> +.PP
> +Please note that
> +.B struct termios
> +from
> +.I <asm/termbits.h>
> +is different and incompatible with
> +.B struct termios
> +from
> +.IR <termios.h> .
> +These ioctl calls require
> +.B struct termios
> +from
> +.IR <asm/termbits.h> .
>  .SS Get and set terminal attributes
>  .TP
>  .B TCGETS
> -- 
> 2.20.1
> 
