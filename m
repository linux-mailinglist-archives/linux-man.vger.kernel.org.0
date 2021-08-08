Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F9E53E3CE0
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 23:15:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbhHHVPX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 17:15:23 -0400
Received: from mail.kernel.org ([198.145.29.99]:60682 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229984AbhHHVPX (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 8 Aug 2021 17:15:23 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0002260EBD;
        Sun,  8 Aug 2021 21:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628457304;
        bh=X0WbArxiEShpBglr2Hw+YiDpBlN79ny0AGfB4Zjnn18=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DOXzFkSjFVGCih0f/A1nXQUTcFQcmX7JJq/trOUZfnpVeONQE/OQJZicsHPZ2oeqw
         9phX/zxnwo/xgqdX2ZvfZve3mJpgb5SyBqzw1EMKetej0DyYNtKo1cvIB4XV2iSoNz
         3/lnu1CzqrOCWVIe5PDBOazgk3mvZ4/deO8KBQ0eqVVpe3drEsR30dM4o18Xlonp1z
         0o5SnXt04S1MGNF8av9wK2zdOYavg725/rH+OqphqtbwaxUyoj62b+A/QCqjpMM8zS
         rbKAmUxrFMJVRwF+Lzs+KV1mOQJSMO+lPAjJlhu1D6jdiNpcq4HKp1xfp/hWsCPht1
         5DYtN1/iblDIA==
Received: by pali.im (Postfix)
        id 8C68F13DC; Sun,  8 Aug 2021 23:15:01 +0200 (CEST)
Date:   Sun, 8 Aug 2021 23:15:01 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 13/23] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
Message-ID: <20210808211501.iokfmydpsrrshabg@pali>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-14-alx.manpages@gmail.com>
 <7a378d4c-36a5-be42-79fb-aeb1c160984c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7a378d4c-36a5-be42-79fb-aeb1c160984c@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sunday 08 August 2021 22:56:55 Michael Kerrisk (man-pages) wrote:
> Hello Pali and Alex,
> 
> On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> > From: Pali Rohár <pali@kernel.org>
> > 
> > Signed-off-by: Pali Rohár <pali@kernel.org>
> > Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> > ---
> >  man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> > 
> > diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> > index 46294e63f..967b5c4c7 100644
> > --- a/man2/ioctl_tty.2
> > +++ b/man2/ioctl_tty.2
> > @@ -77,6 +77,35 @@ The following four ioctls are just like
> >  .BR TCSETSW ,
> >  .BR TCSETSF ,
> >  except that they take a
> > +.I "struct termios2\ *"
> > +instead of a
> > +.IR "struct termios\ *" .
> > +If struct member
> > +.B c_cflag
> > +contains
> > +.B BOTHER
> > +then baudrate is stored in struct members
> > +.B c_ispeed
> > +and
> > +.B c_ospeed
> > +as integer values.
> > +These ioctls are not supported on all architectures.
> > +.RS
> > +.TS
> > +lb l.
> > +TCGETS2	\fBstruct termios2 *\fPargp
> > +TCSETS2	\fBconst struct termios2 *\fPargp
> > +TCSETSW2	\fBconst struct termios2 *\fPargp
> > +TCSETSF2	\fBconst struct termios2 *\fPargp
> > +.TE
> > +.RE
> > +.PP
> > +The following four ioctls are just like
> > +.BR TCGETS ,
> > +.BR TCSETS ,
> > +.BR TCSETSW ,
> > +.BR TCSETSF ,
> > +except that they take a
> >  .I "struct termio\ *"
> >  instead of a
> >  .IR "struct termios\ *" .
> 
> The Linux man-pages generally try to maintain historical and 
> version info (at least back as far as 2.6.0), so I applied
> the patch below.

Hello Michael! That is a good idea. Anyway, these ioctls were not added
for all architectures as for some they are not needed (when version 1
already contains everything what was introduced in version 2).

I collected all details which I found and I know in this email
https://lore.kernel.org/linux-man/20210808210530.ykqrihpfmdabbdl2@pali/
and it is something which should be properly documented. But I do not
how to put these details into structured manpage...

> Thanks,
> 
> Michael
> 
> commit 48a486dddefa20cddbc83610cf582acecf23e2b3 (HEAD -> master)
> Author: Michael Kerrisk <mtk.manpages@gmail.com>
> Date:   Sun Aug 8 22:54:29 2021 +0200
> 
>     ioctl_tty.2: Note kernel version that added TCGETS2, TCSETS2, TCSETSW2, and TCSETSF2
>     
>     Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 9854cfd3f..1d9a6dee1 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -71,7 +71,10 @@ Equivalent to
>  Allow the output buffer to drain, discard pending input, and
>  set the current serial port settings.
>  .PP
> -The following four ioctls are just like
> +The following four ioctls, added in Linux 2.6.20,
> +.\" commit 64bb6c5e1ddcd47c951740485026ef08975ee2e6
> +.\" commit 592ee3a5e5e2a981ef2829a0380093006d045661
> +are just like
>  .BR TCGETS ,
>  .BR TCSETS ,
>  .BR TCSETSW ,
> 
> 
> -- 
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
