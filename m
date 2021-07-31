Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 923D93DC287
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 03:50:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231380AbhGaBu5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 21:50:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhGaBu4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 21:50:56 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9489CC06175F
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 18:50:49 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id l19so17782265pjz.0
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 18:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cXHw7TcWhGODzs+7xNKpkNmT08n6ZitbkXB7uAUplnw=;
        b=jo12QCGVKa3S+TQirgi10Ob4WyI8v7Gl48q9rZ2U9rweXdqdQQIqjZ5jlWn1kzebbW
         yo2JRHDdPmjF6nVhMBm3W1M4mdnw83w2yJqOFJQu/EdXLjjJf2uU7uuuiBQ4xZWgySNq
         6+woBTy7Va47rF3sWoHcDEw86giY5HI3Zelcqfto5Ov4eVZqJ93CrrhTv7DT230e3k5T
         nvMtCyKCNft/WWvFHfOSKEdSGkJs4FuSpXG0ID4OZmFxOckh46tmMb96AaaPR8oyVRCc
         LUOw11yaQh57gHmShs9UXWneoitCcGeN2eCAQDkI6SASQV62+sdSQvzXY8WOsrAcYEcw
         rv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cXHw7TcWhGODzs+7xNKpkNmT08n6ZitbkXB7uAUplnw=;
        b=INdKMdjwT4wVQRQkiV3jguSlG5ali+s+iEH0ifWgAyYdCq6XZ81pEZIGjE1OwpwsfM
         B6xYVXX5z4OkqfM14Un95QzsAEaeAS9MG2C0ZrFsQ1OtTapEqKlgrz8MthsP+ih3ynGD
         x235fNd8tHG1hodaecEft6IgscKWOVtRAzwH1ULPn9bgOjiHIBIOlUQNvMI/9AtmObSN
         db9uKc1tPKuXcvKGEdVGMppBoEO6ggXmQaayV4VEpnHL2cPJ+S5oCe1puf52pajXMccF
         +1mFS5hgmnTwKG5QIWk8RHHfsMvY2lDwWVy7xoYT1SODd8lb8B88vKsxioRwc7PrvPA4
         d4rg==
X-Gm-Message-State: AOAM533i1KodW4JNUKueMJihM+nkew4o4YQndcvvY7KSud5VDDORlEPz
        qqfxgnlz0prCMf1Zkz3Czzw=
X-Google-Smtp-Source: ABdhPJyxhMvCNDArBqIxpnuHcdY4wJpansiQ3CB2BM4kt4PAO5UvKBoAXEzxJj2VB0M2QtrXqBQG1Q==
X-Received: by 2002:a17:90a:448f:: with SMTP id t15mr5971822pjg.21.1627696249184;
        Fri, 30 Jul 2021 18:50:49 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id x26sm3766635pfm.77.2021.07.30.18.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 18:50:48 -0700 (PDT)
Date:   Sat, 31 Jul 2021 11:50:44 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] termios.3: Add information how to set baudrate to any
 other value
Message-ID: <20210731015043.zbdab35mm36nfwsc@localhost.localdomain>
References: <20210730153044.23673-1-pali@kernel.org>
 <d8e81fd3-0a7d-8fc8-4d2f-863aec8f6f14@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="fb3gjwvxlgg7uwno"
Content-Disposition: inline
In-Reply-To: <d8e81fd3-0a7d-8fc8-4d2f-863aec8f6f14@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fb3gjwvxlgg7uwno
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Pali & Alex!

At 2021-07-30T20:29:24+0200, Alejandro Colomar (man-pages) wrote:
> >   for the speeds beyond those defined in POSIX.1 (57600 and above).
> >   Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
>=20
> I think this should go on a separate paragraph, don't you?

I would line break after the comma, quote the multiword literal in case
the bold attribute gets stripped out of the output (copying and
pasting man page text into emails, for instance), and use font style
macros instead of font selection escape sequences.

> .PP?
>=20
> > +Setting baudrate to other value than defined by
>=20
> wfix?:
>=20
> Setting the baud rate to a value other that those defined by

I'd say "baud rate" as two words in English prose (contrast with C), but
"than" is correct.

> > +.B Bnnn
> > +constants is possible via
>=20
> s/via/via the/?

I agree.

>=20
> > +.B TCSETS2
> > +ioctl, see
>=20
> s/,/;/

I agree.  Comma splices are evil.

Incidentally, when checking for semantic newline issues, I use the
following search pattern in Vim.

/[.;:].

Strictly, I should say

/[.;:!?][^\\]

and were to bind that to a key, that's probably what I'd use.

Regards,
Branden

--fb3gjwvxlgg7uwno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEErHMACgkQ0Z6cfXEm
bc6MbA/8Ck2CE+KkVceMQKpI0wzp4ySUGWDlrvMTk5latBszbQqwP/DwC47bH4kH
39jxpGQ3aX3H78vq+VR/RLegMtvRtJxC27FYJ87CqI+w/Mg+DIuFfyP3St/FR26C
PqEhIBvhavVtlIS1BZt+Bd1dXHz9PSoHRaeJIdZYIWu346WBBlaiuz4dBw+tXPJY
1+xIMGz4eaohFSI/aCSZaJ4LiTqvQHoRzzd5DAf/x9+76k90XRDdrwYPgrbTwUNa
1cwreF/X+LE72qeBSUJni6Rk8T0w0e177bWeRFWp7IdTiAUeUUYGjtfXQBuKbY7o
7npDz7L2i3E4967YCx6eqRJO5F2Oi0qp4LaloNf6WXravHLPOZhX15VQ7XNkxjj+
7+pmRZHPVcGrvB8W7QE5SKNsO55KiD4bQpgY7qFMggjiJ0SCdxi4KCGlO1rzfHu7
4TuWtlfniO9JiZ1Rl5sn1wG72d9Xlvd6J4fBfIWJLTjrWjSq+4gHUqlJm1ouTdtp
S6r23XdCwAy42K8YwcOTh8699E1SrdtCGsajQioZ9TOC1RyMwYMhKz6xo74dTetq
D/0p/nYewpRMDyuCYyIy8sSG3FHVDgImCN1ZyJ5Zfz5N7DupWx9xasU/YYFmWhY5
z0+ftCDM/Dl/bI0Lt76DJABMPPBLJq8B2c1s4cdbUdfd58EZRqk=
=gRQq
-----END PGP SIGNATURE-----

--fb3gjwvxlgg7uwno--
