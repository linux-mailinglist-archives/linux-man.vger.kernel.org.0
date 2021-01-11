Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 237932F0FCF
	for <lists+linux-man@lfdr.de>; Mon, 11 Jan 2021 11:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728771AbhAKKN5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Jan 2021 05:13:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728683AbhAKKN4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Jan 2021 05:13:56 -0500
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 263D2C061786
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 02:13:16 -0800 (PST)
Received: by mail-il1-x12f.google.com with SMTP id q1so17771905ilt.6
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 02:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=josttech-ch.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=FDdlkIY2G1OExobX1qgXIDcF6z94Xb7wteF/VcHZU2M=;
        b=BJUNiWo/jGRE7hbWMvuycK8okbwRYkFEfarFMwyL3dPG8JQO3b+1HhBu98Gp4R+Gfk
         +gi7/5w5yo1GZLauzvBaxEX1nqkBxfrXMbXpJQm+mRG1pBZiL0K6COdLnm0PUd46H018
         TjkVDMynt5WXsiYd//H3z3vBKIFTwlqPXI7cv4GeQLvTSJdtSD3Ed+GrIQyX+hAJGvFl
         0LgjSOssj5GGzt2WvrAZ4VHTEsTGj1B7oo5/Q7wtakv8Gx3bUSqyW36AJgVdvFVAcf4S
         xFenm9J1Q2wrffGq2zxDycu01MtkfKJ/ThVyj9W5PdtwwkMIsQNkokwXnKSohZD+BYM7
         Yk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=FDdlkIY2G1OExobX1qgXIDcF6z94Xb7wteF/VcHZU2M=;
        b=J/uqhdTxEoRJWuv3K0T4GGz1643QHZfq6TBS8cY8taQ4FYJ/v4f6wbXzMMw8F8Syp9
         WhpoVhAF7WZW6GGLWfLma/yhoweiLwP9eZLrnHLSe28yJh4n3UR87ZQF8cE09TWJ9OXL
         Sf/LN/TFpvPPUiX/qUHWNRwA4RqxR1RrBOxuPrwwZNLHLpLgdGFdGtTq/TIGCiMl6ULL
         CiDpUy9j5wbt7pGmJQJsNhnY5GLW+wqtx1fq92VkMBybQUbbr4j7HpraWsw5fVF7mRp5
         D6FHb4D2peJW8yzvnoblVZftI33y3UCoHzTQWBnYyG5t2mcvSEkPzhT0e5U7dB3aC419
         VwUQ==
X-Gm-Message-State: AOAM532yItM/9uca2qC5/2mwmAJo2QJ4E3S1nVpTliH3YpNjgyL1Z++C
        Cn5mnx2Zgs3eg41AZYcYlM/1JgFIacgArt+PFOKwlw==
X-Google-Smtp-Source: ABdhPJwgYwNPlHXTAqJgNeHYPLdrkKSnqv9J8Sn7BrJH8Ejcwo9BgNC512vvvwP7WFRLiVCAhPe7Qr745nD638YYLV4=
X-Received: by 2002:a05:6e02:c6a:: with SMTP id f10mr15126684ilj.264.1610359995540;
 Mon, 11 Jan 2021 02:13:15 -0800 (PST)
MIME-Version: 1.0
References: <20210109211505.76000-1-alx.manpages@gmail.com>
In-Reply-To: <20210109211505.76000-1-alx.manpages@gmail.com>
From:   Johannes Pfister <johannes.pfister@josttech.ch>
Date:   Mon, 11 Jan 2021 10:13:03 +0000
Message-ID: <CAC0j1hUagqx4VOsvDS8-24jF6OU+Aaks2GXdKxo89en_oNz+=A@mail.gmail.com>
Subject: Re: [PATCH, BUG 211039] malloc.3: Document that realloc(p, 0) is
 specific to glibc and nonportable
To:     alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, bugzilla-daemon@bugzilla.kernel.org,
        libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> A more detailed notice is on realloc(3p).

Yes. But i think it will lead to bugs when there is a documentation
that describes the behavior of realloc(), says realloc(ptr,0) will do
free(ptr), says realloc() is conforming to POSIX.1-2001, POSIX.1-2008,
C89, C99.
But does not mention that the realloc(ptr,0) is not specified in this
standards (except C89).

And there are some distributions that do not include the realloc(3p)
man page. On my Debian Buster (10) there is no realloc(3p) man page
and man realloc goes to the malloc man page of the Linux Programmer's
Manual.
But maybe this is a problem of the distributions/Debian?

> Thanks for the report, Johannes!
> Please review that your name is correct (I guessed it from the email).
Yes it is. Should i configure my name somewhere?


Kind Regards
Johannes


Am Sa., 9. Jan. 2021 um 21:20 Uhr schrieb Alejandro Colomar
<alx.manpages@gmail.com>:
>
> A more detailed notice is on realloc(3p).
>
> ......
>
> $ man 3p realloc \
>   |sed -n \
>      -e '/APPLICATION USAGE/,/^$/p' \
>      -e '/FUTURE DIRECTIONS/,/^$/p';
> APPLICATION USAGE
>        The description of realloc() has been modified from  pre=E2=80=90
>        vious  versions  of  this  standard  to  align  with  the
>        ISO/IEC 9899:1999 standard. Previous versions  explicitly
>        permitted  a  call  to  realloc(p,  0)  to free the space
>        pointed to by p and return a null pointer. While this be=E2=80=90
>        havior  could be interpreted as permitted by this version
>        of the standard, the C language committee have  indicated
>        that   this  interpretation  is  incorrect.  Applications
>        should assume that if realloc() returns a  null  pointer,
>        the  space pointed to by p has not been freed. Since this
>        could lead to double-frees, implementations  should  also
>        set errno if a null pointer actually indicates a failure,
>        and applications should only free the space if errno  was
>        changed.
>
> FUTURE DIRECTIONS
>        This  standard  defers  to the ISO C standard. While that
>        standard currently has language that might  permit  real=E2=80=90
>        loc(p, 0), where p is not a null pointer, to free p while
>        still returning a null pointer, the committee responsible
>        for  that standard is considering clarifying the language
>        to explicitly prohibit that alternative.
>
> Bug: 211039 <https://bugzilla.kernel.org/show_bug.cgi?id=3D211039>
> Reported-by: Johannes Pfister <johannes.pfister@josttech.ch>
> Cc: libc-alpha@sourceware.org
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>
> Hi Johannes, Michael,
>
> Thanks for the report, Johannes!
> Please review that your name is correct (I guessed it from the email).
>
> Michael, please review the wording.
>
> Thanks,
>
> Alex
>
>  man3/malloc.3 | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/man3/malloc.3 b/man3/malloc.3
> index d8b4da62f..467e2438a 100644
> --- a/man3/malloc.3
> +++ b/man3/malloc.3
> @@ -149,7 +149,8 @@ is equal to zero,
>  and
>  .I ptr
>  is not NULL, then the call is equivalent to
> -.IR free(ptr) .
> +.I free(ptr)
> +(this behavior is nonportable; see NOTES).
>  Unless
>  .I ptr
>  is NULL, it must have been returned by an earlier call to
> @@ -375,6 +376,21 @@ The
>  implementation is tunable via environment variables; see
>  .BR mallopt (3)
>  for details.
> +.SS Nonportable behavior
> +The behavior of
> +.BR realloc ()
> +when
> +.I size
> +is equal to zero,
> +and
> +.I ptr
> +is not NULL,
> +is glibc specific;
> +other implementations may return NULL, and set
> +.IR errno .
> +Portable POSIX programs should avoid it.
> +See
> +.BR realloc (3p).
>  .SH SEE ALSO
>  .\" http://g.oswego.edu/dl/html/malloc.html
>  .\" A Memory Allocator - by Doug Lea
> --
> 2.30.0
>
