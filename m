Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35FCF3DAF2C
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 00:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234655AbhG2WgI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 18:36:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234595AbhG2Wf5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 18:35:57 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C100CC061386
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 15:35:41 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id nh14so596432pjb.2
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 15:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7aB/LGpCWYIDCNnaAAwRD6mu4VtbtHX1iPE7ASGmgu4=;
        b=kz64ols6PDGq5PmFcMBmtMUVwOXWGmDFLOBsyZvtCV1tLopV60Z0mnB4pCxN6Yhrxo
         W2d4kEUGLIIVBq4zMAjicrY/uYdaGn22HxT2mYjrl7quq2KneJeyLWPqJurBubykh8np
         HOYFTxyAl0Jx4LmQ4y8+Io3nihqMZcotWCG5NkQy2WJz8F+XbQtbgEtMrsclHgks7uU1
         iHSF2J+7lVfcxAxLHZ+qrbcW7CefBn38KDlIWUSp7l2Gv/Za02zsfgjbU4wWRPinnqba
         lD1gndpcDB2izBS4I9SqCnFgwnDdSm3iuRH+/c8qXYROY0C+6c2N/WZIAzGSPubOJGz3
         oO8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7aB/LGpCWYIDCNnaAAwRD6mu4VtbtHX1iPE7ASGmgu4=;
        b=kdeRgderNviPV9WkOH9dMceNFz0q7UNxOzD6YKaLjfNPaQCCisTi0FNXL1sSbkI4ed
         tFl79xb7mMrJ33/sca5HIrxSaZXg6j5xzkwFrpeXdELBnAy70mYfG6fk7qk4allgmBTB
         wIlUR4/omVocCg9VXo/283Vo0HwL/0wKGOhb9ye7qrRoLkcGIJ/iIlAczRkIDQw5mkYh
         jkdVj52UEygEHKkXslJ1fbKKpO9Hzsq3kexRpvMZAras4NAW1oIIHu3kbnLXgU7ITKug
         5r7pjDUZjAw1ddgCR3cADoTgR55m+SZtghQD0qcYd30q9crBcdhdG1JwC6bNtpZ3tezp
         SLxQ==
X-Gm-Message-State: AOAM533vRaLs7ElhunLdzjkf9VwQS/26UHr3EFtcZnWqiIG/EqIOF2vQ
        UTqrVQB5lo0gNcNY9Psg1r8=
X-Google-Smtp-Source: ABdhPJzswF7tM+ybtsoj2tKQLzoXhWr78JPNV7Jjjm9d5QKXL8ylDBtUm12BgJrayxI6572KNMt4XA==
X-Received: by 2002:a17:902:bb92:b029:12c:31cd:2400 with SMTP id m18-20020a170902bb92b029012c31cd2400mr6674309pls.16.1627598141166;
        Thu, 29 Jul 2021 15:35:41 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id 6sm732574pjk.1.2021.07.29.15.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:35:40 -0700 (PDT)
Date:   Fri, 30 Jul 2021 08:35:37 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH v3] getrlimit.2: old_getrlimit/ugetrlimit and
 RLIM_INFINITY discrepancies
Message-ID: <20210729223535.qvyomfqvvahzmu5w@localhost.localdomain>
References: <20210729154401.GA22699@asgard.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="brjc5l62r2fanofc"
Content-Disposition: inline
In-Reply-To: <20210729154401.GA22699@asgard.redhat.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--brjc5l62r2fanofc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, Eugene!

I thought I'd offer some style suggestions since Alex hasn't yet.

At 2021-07-29T17:44:01+0200, Eugene Syromyatnikov wrote:
> +The corresponding infinity value constant is provided in
> +.I <linux/resource.h>
> +as
> +.BR RLIM64_INFINITY.
> +.PP
> +Original Linux implementation used signed types for limits; that was changed

Grammatically, you need an article at the beginning of this sentence.
More broadly, however, what constitutes "*the* original Linux
implementation" may not be well-defined and is not as relevant to the
discussion as Linux kernels that were widely deployed.  The earliest
conveivable Linux attested, what Torvalds produced on his 80386 in 1991
("Freax") is less important than Linux 2.4.

So I would recast and use semantic newlines [see man-pages(7)]:

	Linux 2.4 and earlier used signed types for limits;
	that was changed

Alex will surely direct you to the semantic newline advice in
man-pages(7).

   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on new lines, and long sentences should  split  into  lines  at
       clause  breaks  (commas,  semicolons, colons, and so on).  This
       convention, sometimes known as "semantic  newlines",  makes  it
       easier to see the effect of patches, which often operate at the
       level of individual sentences or sentence clauses.

I won't point out every instance where a semantic newline is preferred.

> +(along with the value of the
> +.B RLIM_INFINITY
> +constant)

I see there is some precedent in the Linux man-pages to call a
preprocessor symbol that is replaced with a C language literal a
"constant".  I would not employ this usage myself, since C has the
"const" type qualifier that suggests, and is is widely interpreted, as
"constant".  I think it would be helpful if we referred to as "constant"
only C objects bearing such a declaration.  Does anyone think this would
be a worthwhile shift in usage?  (The most important virtue that
constants in the sense I'm using them have over preprocessor symbols is
that the former survive the translation process into executable format,
and (if not optimized out) will appear in a symbol table, which means a
debugger can know about them.)

> +.\" http://repo.or.cz/davej-history.git/blobdiff/129f8758d8c41e0378ace0b6e2f56bbb8a1ec694..15305d2e69c3a838bacd78962c07077d2821f255:/include/linux/resource.h
> +during 2.4 development cycle, as it wasn't compatible

s/during/& the/

> +with Single UNIX Specification.

s/with/& the/

> +However, in order to preserve backward compatibility, the routine

s/routine/function/ ?

> +.IR sys_old_getrlimit
> +has been implemented under

s/has been/was/
s/under/using the/

> +.B __NR_getrlimit
> +syscall slot, with infinity checks being performed against hard-coded 0x7fffffff

s/hard-coded/a literal/

> +value, and the routine

s/the routine//
(it will be clear from context that this is another function)

> +.I sys_getrlimit
> +has been exposed under a new name,

s/has been/was/
s/exposed/made available/

> +.BR ugetrlimit ().
> +Note that most newer architectures don't have the latter, with

s/Note that most/Most/

I call this a "Kemper notectomy", after my colleague in groff
development, Dave Kemper, who has pointed out that we tend to massively
overuse the phrase "note that" in software documentation.  We write for
impatient readers.  Everything we say in a manual should be worthy of
note; if it is not, it should be deleted or moved to a place in the text
reserved for supplemental commentary (a footnote; a (sub)section entitled
"Background", "History", or "Notes"; or similar).

> +.BR getrlimit ()
> +providing proper implementation.

What's "proper" about it?  That it's unsigned, or that it's conforming?
Say so.  Again, an article is needed.

s/proper/a conforming/

> +Also worth noting that several architectures decided not to change

I'd condense this.

s/Also worth noting that/However,
/

> +.B RLIM_INFINITY
> +value: 32-bit mips and sparc (but not 64-bit variants, that switched

s/mips/MIPS/

The Linux man-pages are mostly consistent about this casing[1], and it
is normative[2].

s/sparc/SPARC/

The Linux man-pages are mostly consistent about this casing[3], and it
is normative[4].

> +to the new value of (~0UL)) retained the old 0x7fffffff value,
> +and alpha retained 0x7ffffffffffffffful.

s/alpha/Alpha/

You can probably guess what I'm going to say.  ;-)

> +.\" ...along with a request to call when one runs into it:
> +.\" https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/alpha/include/uapi/asm/resource.h#n15
>  .SH BUGS
>  In older Linux kernels, the
>  .B SIGXCPU

Thank you for your patience with my comments.  I hope they've been
helpful.

Regards,
Branden

[1] vdso(7) may be an exception.
[2] https://booksite.elsevier.com/9780124077263/downloads/historial%20perspectives/section_4.16.pdf
[3] clone(2), syscall(2), and exec(3) may be exceptions.
[4] https://sparc.org/timeline/

--brjc5l62r2fanofc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEDLSgACgkQ0Z6cfXEm
bc4awA//ZAZGdt+ES6CMvvAgf4cHWH1GuY3Mrh3jBlnMdaUmFllIYJrpLNfjrzh4
Fxylxm7ptoh05LiDv52WWmoyVZYdekDbQU4nsUH5KPDHUGWbqnVUZC6NRqsbq3HA
upWVuA933CXS+wwvB/xHYF8oQw2YUHU6wWAzN7f++WeAq5+VnTYVOtvjkbIflmuo
H/WXdHU4KDxO8z8m8Jai0saK0OHeZffVMZygzLd0+QgN5Zuu5sqPMeUUB7/SLVog
mKo9urJkrBMlfQIhE0ZaSX+s2OiOnZfr50r3NQHftQs7jE4hgVIvk/0qLaHav+bN
y07iXido6s7VnK6ggkGJotgYEYlcrCGbzipDH6YM7IksHcoC2OOaieXIT1Y50kqm
OzwRSrzjqa8BIQhryvE5reHReruF8vERyD3gU+jsIePUlx+uwj9jSrpy7NRuTZYl
pFSfAcM/Wrtl1GMj+dKJyNAjQXX1Dm6VVkXegNgTlMjDAygIGvTy3pbXpXYH6ipQ
GJ560zhIIGDeIFkeKA7FgX6jytkPtqqCUYGU5+pP3yy2QumtvzOejkZEG8iba59A
buXG+0QccbkbcPX9HbOaNTx98hW5Egkn2RyqE5tEuIqjFQJ4oCfftoP+SF5u3uEg
RQXkBLQH139pKhuOu9DJkp7tEE2fHbJAu8buPYnXl2BUlKrH4w0=
=5+Bv
-----END PGP SIGNATURE-----

--brjc5l62r2fanofc--
