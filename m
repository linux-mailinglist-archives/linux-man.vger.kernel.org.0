Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50CF73DCB58
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 13:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231791AbhHALWt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 07:22:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHALWs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 07:22:48 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5225EC06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 04:22:41 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id nh14so9794362pjb.2
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 04:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pW2ydM6Gow27i6DHgIf7i+N87xhhUrXuYiqiWueiXYk=;
        b=WLh1ufzSxnFX3632RLUJWAlA8f4+P44CWjdMOFOC+r41UAFjvSkfCyReYog8oxVM/m
         Q2ns9bORJDmJ6uOmhQwVmlgT6J4lOTWdHYGCcqAU3DdRj+WIR3x7X5sX53KsiXsBePCV
         7e//jBFNxzE90UaYOFS/ooHkhNkKtZ4hedg+Lu3S63MBVZh+Vtc6YSvzuguHkGUFWEiE
         h87E3E37ugUkPBmtZcVW+Q8ohQDUZX9YP7NniCA8VbBOieN6e1h6vDsBj6aAbcmNnS7A
         wtqO84BaawexhIjPqtygZFbEi4iyZuNhkcxEAQjODc93ioKq0Iyx9v4bFF6VHPEUpm/2
         t6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pW2ydM6Gow27i6DHgIf7i+N87xhhUrXuYiqiWueiXYk=;
        b=PFyte298zr1vsUtSEfMdlz4hvwX4MVHCtMpFWFERzRE5tOZIH3izqc0dRjL7TAkVG1
         A/PP/66Q+o374b+aC/w34hy5sJDwC2o9PWS/YCK5hZP1j64vgi3KVVWozFmKIfNotmbT
         ZtcNYFIKvRwsBXg9LAvImyEFPT6WQyLVco08OWup3Yv6rv/II0brHj70nUOPukLKRJJY
         fryx0l8iyn0A4q2YdJd/KjuLE+VKf7FOKu4Q85fbcqAr3QfmnYed+xHLN5PDfkJ+uv8O
         OrCKO4kcob0eAiYX5H7WxzsQgTRuV7W7TX4HxEuf0rEYufYq4ztUZUT4J285MgjqLIRL
         06AA==
X-Gm-Message-State: AOAM531SgsaAxsEFqm8o9qBQ8vwWKZR/te2UrGgaBjpdFxigPfoxrRVX
        pQbekL6S4PNtAul7y0gqyLc=
X-Google-Smtp-Source: ABdhPJzYcauUWY+TwRz7Pay55V8sYLHPs8u/owHYg1PCH35RcV6P0Z8wVFKfP1KSq9fRM4/tAGcANw==
X-Received: by 2002:a65:410a:: with SMTP id w10mr722430pgp.343.1627816960942;
        Sun, 01 Aug 2021 04:22:40 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id s36sm9424464pgk.64.2021.08.01.04.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 04:22:40 -0700 (PDT)
Date:   Sun, 1 Aug 2021 21:22:30 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] termios.3: SPARC architecture has 4 different Bnnn
 constants
Message-ID: <20210801112229.w75qb3sggampa757@localhost.localdomain>
References: <20210731145501.9944-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ejsrfuhv5ubzxiz3"
Content-Disposition: inline
In-Reply-To: <20210731145501.9944-1-pali@kernel.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ejsrfuhv5ubzxiz3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Pali!

At 2021-07-31T16:55:01+0200, Pali Roh=E1r wrote:
> SPARC is special, it does not have Bnnn constants for baud rates above
> 2000000. Instead it defines 4 Bnnn constants with smaller baud rates.
>=20
> This difference between SPARC and non-SPARC architectures is present
> in both glibc API (termios.h) and also kernel ioctl API
> (asm/termbits.h).
[...]
>  	B1500000
>  	B2000000
> +.ft P

I see you're following existing termios(3) page practice here, so this
feedback may be more for Alex and Michael than you; it's not a
criticism.

I would discourage the use of the *roff 'ft' request in man pages.
Here, it is redunant because the following PP macro will set the font
style back to roman anyway.

I also discourage the use of tab characters in man page sources (outside
of tbl(1) tables).

I'll show my recommendation in a few lines.

> +.fi
> +.PP
> +On SPARC architecture are additionally supported these constants:
> +.PP
> +.nf
> +.ft B
> +	B76800
> +	B153600
> +	B307200
> +	B614400
> +.ft P
> +.fi

Here's how I'd do that:

=2EP
On the SPARC architecture,
the following additional constants are supported.
=2ERS
=2ETP
=2EB B76800
=2ETQ
=2EB B153600
=2ETQ
=2EB B307200
=2ETQ
=2EB  B614400
=2ERE

Why would I do it this way?  I'm trying to keep the size of the language
we ask man page writers to learn as small as possible, and I especially
try to keep the number of *roff requests they have to know as close to
zero as possible.  There are already two ways to change fonts: through
macros and escape sequences.  Personally, I'd like to protect casual man
page writers from having to learn the third.  (And, again, outside of
tbl(1) tables, I'd prefer they not have to know the second [escapes].)

Regards,
Branden

--ejsrfuhv5ubzxiz3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGg+0ACgkQ0Z6cfXEm
bc6C0g//Vt4zs1cXx4z8Vn4QCnOIPE3pBwmnM38H5+4tx+raJWx2W+gAS1fT+esN
MySYdWxGw9SHUHfcG13jIFOY4NWPLhFMSFUXT+ScsejNFTd4yyWrPn9E1piBK6Qo
wBIdsnIsb2Q15+4I+D1D2IpcgyCpfxK4LAjJ1u1Cl22fUVkz/ixxOBTUbFHUroM9
VNnVfZImKYiY8CLVMMVQSM4810k984jCLtocxOcRgQuUWRwRmL0Os0cdgTgvRxw2
7XG8w7r+r3fuyfLk4/muvcY+cX+/devlRu3Ua+rr1u1n8hxg6ccs+N0HaygzeOlW
zbKUJFTh5nDRi+0V55ceXcHLNcvbyy1pcFe87gQkwep2LHMrUIULFIDGcP1oe6lF
ap0dm4KlFpCXS2KGD/c2J6vzaBfOGhBMAop3XfEVcUXm6lRXf1zrK4LnkDe8UtXK
C0HHZ8ff2hHaZjva7718/cEVkslRWWSwm86sgSIp+kjT0pKcsuU3B2X1RLXd0Cv7
hORpqr6kwKf/+KEPqrHXyk4JyUXsGA9pcVjALTJS/ZRAirTpL8DfxYIVf76VopG1
/RtILGIdCrLIYkFfRubKdWW6j1y7fYnTwDaD++hO3qe/bEzgLq2vZdem0TS0qUcy
PV5ZRFJ8tWtIHVw3IxAgFUQyHOemi4Foleq/tb20+C7DXsi2aio=
=oXXt
-----END PGP SIGNATURE-----

--ejsrfuhv5ubzxiz3--
