Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A849F3DB024
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 02:09:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235162AbhG3AJW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 20:09:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:35056 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235124AbhG3AJV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Jul 2021 20:09:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id AFBFE60F6F;
        Fri, 30 Jul 2021 00:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627603758;
        bh=dEeMKA1w0d9eJPJIBm2gAzO+gckm5ZB/kZBqcFJI1sg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Nht4bOXn20vhYNicCK/wrC9xxEU0Oj9QtOLszhwfKHaAc49ZdzkIrCrxVwSTxdrwb
         rNxVDsWo0pAyPP2Uz9q0MLVX9w1ymeBw23dx2i3Jocc47kRSiloY+g/bUuj9biJ4J0
         0dpz7mNUkmBamgfj3biakS2LsmMj1Mn+5ITkqllKFYd0G5fxFdbes+1WWvqkO6N+Iu
         ykPzJyQes1lWqsflPNxlNVLjWCn5vzh0hJoDbxdsd+lRlMPf4nUP1m2blgGIFsEbl2
         JC9Kxq9Coz/FFOX4WcWWch5dha+4jFk7yA0n74gIVPu8H34XxVSyVSt48U6I1K9RHJ
         hMu+jGFqHneRw==
Received: by pali.im (Postfix)
        id 3EDCA888; Fri, 30 Jul 2021 02:09:15 +0200 (CEST)
Date:   Fri, 30 Jul 2021 02:09:15 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
Message-ID: <20210730000915.d6ieqiuqah4tjjxf@pali>
References: <20210725225506.7404-1-pali@kernel.org>
 <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
 <20210729173118.pud4xucnt4kncvol@pali>
 <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

On Friday 30 July 2021 01:39:11 Alejandro Colomar (man-pages) wrote:
> Hi Pali,
> 
> On 7/29/21 7:31 PM, Pali Rohár wrote:
> > 
> > > > +.IR "<asm/termbits.h>" .
> 
> Is that the header that the user should include?

Yes.

> I don't know.  I typically avoid 'asm/' includes, but maybe in this case
> it's the correct one.  Shouldn't the user maybe include <linux/termios.h>?

Problem is that you cannot include <linux/termios.h> together with
<sys/ioctl.h>. It cause redefinition of symbols and compile errors.

And without <sys/ioctl.h> you cannot call ioctl() function which
basically means that you cannot use TCGETS2 (as it is ioctl).

Probably this is a bug in glibc header files...

So currently it is needed to include <asm/termbits.h> file to use
TCGETS2 ioctl. I'm not sure if it is "correct", but it is the only
possible option for now about which I know (unless you want to
copy+paste structures and macros from that file into your program, to
avoid inclusion of asm/* files).

If you want, I can send a patch for ioctl_tty.2 example section with
simple C program to show how to use TCGETS2/TCSETS2 ioctl.

> user@sqli:/usr/include$ grep -rn 'struct termios {'
> asm-generic/termbits.h:12:struct termios {
> user@sqli:/usr/include$ grep -rn '<asm-generic/termbits.h>'
> x86_64-linux-gnu/asm/termbits.h:1:#include <asm-generic/termbits.h>
> user@sqli:/usr/include$ grep -rn '<asm/termbits.h>'
> asm-generic/termios.h:12:#include <asm/termbits.h>
> user@sqli:/usr/include$ grep -rn '<asm-generic/termios.h>'
> x86_64-linux-gnu/asm/termios.h:1:#include <asm-generic/termios.h>
> user@sqli:/usr/include$ grep -rn '<asm/termios.h>'
> linux/termios.h:6:#include <asm/termios.h>
> user@sqli:/usr/include$ grep -rn '<linux/termios.h>'
> user@sqli:/usr/include$
> 
> 
> > > > +These ioctls are not supported on all architectures.
> > > > +.IP
> > > > +.BI "TCGETS2	struct termios2 *" argp
> > > 
> > > Please follow the same style as in the rest of the page:
> > > 
> > > .TP
> > > .B TCGETS2
> > > Argument:
> > > .BI "struct termios2 *" argp
> > > 
> > > Unless there's a good reason not to.
> > 
> > Few lines below in this file is:
> > 
> > .IR "struct termios\ *" .
> > .IP
> > .BI "TCGETA	struct termio *" argp
> > .IP
> > .BI "TCSETA	const struct termio *" argp
> > .IP
> > .BI "TCSETAW	const struct termio *" argp
> > .IP
> > .BI "TCSETAF	const struct termio *" argp
> > 
> > Therefore I used same style for TCGETS2...
> > 
> > So, how should I format this part to be consistent?
> 
> 
> Hmm, sorry, I didn't see those.

Ah, now I see that Michael one hour later (after I sent this patch)
fixed above style to another. See commit aceee9e827e6.

But changed it to another new style:

.RS
.TS
lb l.
TCGETA	\fBstruct termio *\fPargp
TCSETA	\fBconst struct termio *\fPargp
TCSETAW	\fBconst struct termio *\fPargp
TCSETAF	\fBconst struct termio *\fPargp
.TE
.RE

> So there's a mix in the file.
> The more correct form is the one I used, so please use that one (the one
> with .TP)

So, could you check with Michael which style to use? Because now there
are 3 different (yours, Michael's and the one which was there before)
and I'm really not sure what is correct...

> 
> Thanks,
> 
> Alex
> 
> 
> > 
> > > > +.IP
> > > > +.BI "TCSETS2	const struct termios2 *" argp
> > > > +.IP
> > > > +.BI "TCSETSW2	const struct termios2 *" argp
> > > > +.IP
> > > > +.BI "TCSETSF2	const struct termios2 *" argp
> > > > +.PP
> > > > +The following four ioctls are just like
> > > > +.BR TCGETS ,
> > > > +.BR TCSETS ,
> > > > +.BR TCSETSW ,
> > > > +.BR TCSETSF ,
> > > > +except that they take a
> > > >    .I "struct termio\ *"
> > > >    instead of a
> > > >    .IR "struct termios\ *" .
> > > > 
> > > 
> > > 
> > > -- 
> > > Alejandro Colomar
> > > Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> > > http://www.alejandro-colomar.es/
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
