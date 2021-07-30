Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCA6E3DB777
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 12:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238409AbhG3K4S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 06:56:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:57452 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238383AbhG3K4S (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 06:56:18 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 896A46069E;
        Fri, 30 Jul 2021 10:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627642573;
        bh=YvDsN9QJItQrbJxN3jw8gagedUWQdoyHzhvFRDyG84c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TGP+merwyzkV7YFzwLScbiLBwXKsVZcbWywT+EK/5h1/4ipiRnIPULY5SCUK0mVcg
         99D5+nP0ROjuPRlI6tUVel1ozqn669L+vMkjAG/z9Tjuk5kW42sfCdCu9jMi+0+bCj
         rVXjM5ZACOhoaWxMwFgKx4FdKoV4DVwFrO7FJBlPz7181P3oTujZI2Jna1bD1XZvrO
         bo3LBuY4YZhZm2PpXNlkcb2hjm18ip5RaRHWYiWZXz9v4fnssX9MV9qkONWxJm6rAA
         wOE6F3aI+kcUSczPmq+I+OM17prJymhLo3GOZ5YzHgGa8DfkpbzgwezwKTXnjLrVn0
         DMNcncOjzfJUg==
Received: by pali.im (Postfix)
        id 7CA86772; Fri, 30 Jul 2021 12:56:11 +0200 (CEST)
Date:   Fri, 30 Jul 2021 12:56:11 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Glibc <libc-alpha@sourceware.org>
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
Message-ID: <20210730105611.rtmd5642ed2ountm@pali>
References: <20210725225506.7404-1-pali@kernel.org>
 <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
 <20210729173118.pud4xucnt4kncvol@pali>
 <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
 <20210730000915.d6ieqiuqah4tjjxf@pali>
 <35947a18-65b8-6c31-2715-42f9a5c2c6f7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <35947a18-65b8-6c31-2715-42f9a5c2c6f7@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Friday 30 July 2021 09:04:46 Alejandro Colomar (man-pages) wrote:
> CC += glibc
> 
> On 7/30/21 2:09 AM, Pali Rohár wrote:
> > Hello!
> > 
> > On Friday 30 July 2021 01:39:11 Alejandro Colomar (man-pages) wrote:
> > > Hi Pali,
> > > 
> > > On 7/29/21 7:31 PM, Pali Rohár wrote:
> > > > 
> > > > > > +.IR "<asm/termbits.h>" .
> > > 
> > > Is that the header that the user should include?
> > 
> > Yes.
> > 
> > > I don't know.  I typically avoid 'asm/' includes, but maybe in this case
> > > it's the correct one.  Shouldn't the user maybe include <linux/termios.h>?
> > 
> > Problem is that you cannot include <linux/termios.h> together with
> > <sys/ioctl.h>. It cause redefinition of symbols and compile errors.
> > 
> > And without <sys/ioctl.h> you cannot call ioctl() function which
> > basically means that you cannot use TCGETS2 (as it is ioctl).
> 
> Seems fair.
> 
> > 
> > Probably this is a bug in glibc header files...
> 
> I CCed glibc just in case they want to comment.
> 
> > 
> > So currently it is needed to include <asm/termbits.h> file to use
> > TCGETS2 ioctl. I'm not sure if it is "correct", but it is the only
> > possible option for now about which I know (unless you want to
> > copy+paste structures and macros from that file into your program, to
> > avoid inclusion of asm/* files).
> 
> Re copy&paste: no thanks :)
> 
> > 
> > If you want, I can send a patch for ioctl_tty.2 example section with
> > simple C program to show how to use TCGETS2/TCSETS2 ioctl.
> 
> Great!  Please CC glibc in the patch.
> 
> > 
> > > user@sqli:/usr/include$ grep -rn 'struct termios {'
> > > asm-generic/termbits.h:12:struct termios {
> > > user@sqli:/usr/include$ grep -rn '<asm-generic/termbits.h>'
> > > x86_64-linux-gnu/asm/termbits.h:1:#include <asm-generic/termbits.h>
> > > user@sqli:/usr/include$ grep -rn '<asm/termbits.h>'
> > > asm-generic/termios.h:12:#include <asm/termbits.h>
> > > user@sqli:/usr/include$ grep -rn '<asm-generic/termios.h>'
> > > x86_64-linux-gnu/asm/termios.h:1:#include <asm-generic/termios.h>
> > > user@sqli:/usr/include$ grep -rn '<asm/termios.h>'
> > > linux/termios.h:6:#include <asm/termios.h>
> > > user@sqli:/usr/include$ grep -rn '<linux/termios.h>'
> > > user@sqli:/usr/include$
> > > 
> > > 
> > > > > > +These ioctls are not supported on all architectures.
> > > > > > +.IP
> > > > > > +.BI "TCGETS2	struct termios2 *" argp
> > > > > 
> > > > > Please follow the same style as in the rest of the page:
> > > > > 
> > > > > .TP
> > > > > .B TCGETS2
> > > > > Argument:
> > > > > .BI "struct termios2 *" argp
> > > > > 
> > > > > Unless there's a good reason not to.
> > > > 
> > > > Few lines below in this file is:
> > > > 
> > > > .IR "struct termios\ *" .
> > > > .IP
> > > > .BI "TCGETA	struct termio *" argp
> > > > .IP
> > > > .BI "TCSETA	const struct termio *" argp
> > > > .IP
> > > > .BI "TCSETAW	const struct termio *" argp
> > > > .IP
> > > > .BI "TCSETAF	const struct termio *" argp
> > > > 
> > > > Therefore I used same style for TCGETS2...
> > > > 
> > > > So, how should I format this part to be consistent?
> > > 
> > > 
> > > Hmm, sorry, I didn't see those.
> > 
> > Ah, now I see that Michael one hour later (after I sent this patch)
> > fixed above style to another. See commit aceee9e827e6.
> > 
> > But changed it to another new style:
> > 
> > .RS
> > .TS
> > lb l.
> > TCGETA	\fBstruct termio *\fPargp
> > TCSETA	\fBconst struct termio *\fPargp
> > TCSETAW	\fBconst struct termio *\fPargp
> > TCSETAF	\fBconst struct termio *\fPargp
> > .TE
> > .RE
> > 
> > > So there's a mix in the file.
> > > The more correct form is the one I used, so please use that one (the one
> > > with .TP)
> > 
> > So, could you check with Michael which style to use? Because now there
> > are 3 different (yours, Michael's and the one which was there before)
> > and I'm really not sure what is correct...
> 
> Sorry, I was also confused, as I had Michael's version, and didn't see the
> table he reformatted, which I now understand was what you were doing (in the
> old format).  So if what you wrote corresponds to what Michael reformatted,
> please use Michael's new format (the table).
> 
> Thanks,
> 
> Alex

Hello! Now I sent a new version and reformatted this part according to
Michael style.

> > 
> > > 
> > > Thanks,
> > > 
> > > Alex
> > > 
> > > 
> > > > 
> > > > > > +.IP
> > > > > > +.BI "TCSETS2	const struct termios2 *" argp
> > > > > > +.IP
> > > > > > +.BI "TCSETSW2	const struct termios2 *" argp
> > > > > > +.IP
> > > > > > +.BI "TCSETSF2	const struct termios2 *" argp
> > > > > > +.PP
> > > > > > +The following four ioctls are just like
> > > > > > +.BR TCGETS ,
> > > > > > +.BR TCSETS ,
> > > > > > +.BR TCSETSW ,
> > > > > > +.BR TCSETSF ,
> > > > > > +except that they take a
> > > > > >     .I "struct termio\ *"
> > > > > >     instead of a
> > > > > >     .IR "struct termios\ *" .
> > > > > > 
> > > > > 
> > > > > 
> > > > > -- 
> > > > > Alejandro Colomar
> > > > > Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> > > > > http://www.alejandro-colomar.es/
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
