Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B97AA7E6033
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 22:51:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjKHVvF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 16:51:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbjKHVvF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 16:51:05 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19BD92582
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 13:51:03 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24F3C433C7;
        Wed,  8 Nov 2023 21:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699480262;
        bh=1gDhqlpzBe8Cd/4D4obIxFrj5AFcccelsOwOISsR7aY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NEDnyqX1jc0NF8MM1b0zHe9lmLFZ40hpgJFjY+nCF9svl6a+JsmuNo2kIvzosRZ1L
         JB4fLF0rmbObusmHXx0jYAbh6RxZQrnQaqtN6ZbgGaiXTXHEYvcnUoy02sOOFxTRsr
         5tFweWLqRBG2Uhtanu92512EZXgJA6Y40xy8KVCaJuTPl5+Ve/tzDMQRU9+F0rhubb
         6U5jRvGUxB9tC+C5Q5w9wif7e+IO2kD9c9gKVt0P3J6fqwwj+jWKdnWt9WZctsSUTu
         sHVdsrAaBQXwMgJfgLLyBmcI4dMbO6vOHiK+i5u5qndMmvFq/USSzCniMdoo+twSBM
         Ts/qe1sb4JfZQ==
Date:   Wed, 8 Nov 2023 22:50:53 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     DJ Delorie <dj@redhat.com>
Cc:     libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUwCwxyPfur-hfea@debian>
References: <ZUvr_FPICn5VkP4q@debian>
 <xnil6cq7ic.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ch1jJvwWzQBVbiqx"
Content-Disposition: inline
In-Reply-To: <xnil6cq7ic.fsf@greed.delorie.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ch1jJvwWzQBVbiqx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 22:50:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated

Hi DJ,

On Wed, Nov 08, 2023 at 04:07:07PM -0500, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > Would you mind reading the latest versions of strcpy(3), strncpy(3), and
> > string_copying(7), as in the git repository, and comment your thoughts?
>=20
> I think my examples would work well after the first CAVEATS paragaph:
>=20
>        The name of these functions is confusing.  These functions
>        produce a null-padded character sequence, not a string (see
>        string_copying(7)), like this:
>=20
>      strncpy (buf, "1", 5) -> { '1', 0, 0, 0, 0 }
>      strncpy (buf, "1234", 5) -> { '1', '2', '3', '4', 0 }
>      strncpy (buf, "12345", 5) -> { '1', '2', '3', '4', '5' }
>      strncpy (buf, "123456", 5) -> { '1', '2', '3', '4', '5' }

It fits perfectly there.  And it also merges nicely with the paragraph
below.

>=20
> >       These functions copy the string pointed to by src  into  a  null-=
padded
> >       character sequence at the fixed-width buffer pointed to by dst.  =
If the
> >       destination buffer, limited by its size, isn't large enough to ho=
ld the
> >       copy,  the  resulting character sequence is truncated.
>=20
> hmmm... perhaps
>=20
>   These functions copy at most SZ bytes from SRC into a fixed-length
>   buffer DST, padding any unwritten bytes in DST with NUL bytes.
>   Specifically, if SRC has a NUL byte in the first SZ bytes, copying
>   stops there and any remaining bytes in DST are filled with NUL bytes.
>   If there are no NUL bytes in the first SZ bytes of SRC, SZ bytes are
>   copied to DST.
>=20
> This avoids the term "string" completely and emphasises the not-string
> nature of the destination.

I don't like that, because it talks a lot about what the function does
in terms of low-level copies of bytes.  That may induce programmers to
try to find an abstraction in terms of strings.

>=20
>  stpncpy,  strncpy  - zero a fixed-width buffer and copy a string into a
>        character sequence with truncation and zero the rest of it
>=20
> Or "fill a fixed-width zero-padded buffer with bytes from a string"

But this wording is perfect!  I also used a similar wording for the
description.  I'll send a patch in a moment.

>=20
> That avoids saying "copy a string"

Yep!

>=20
> string_copying.7:
>=20
> > For historic reasons, some standard APIs, such as utmpx(5),
>=20
> Perhaps "some standard APIs and file formats,, such as utmpx(5) or
> tar(1)," ?

Yes; thanks!

>=20
> > however, those padding null bytes are not part of the character
> > sequence.
>=20
> add ", and may not be present if not needed." ?

I'm not convinced about this one.  "needed" is not the right word I
think.  For now, I'll add the other suggestions to a patch.  Expect it
in a moment.

Cheers,
Alex=20

--=20
<https://www.alejandro-colomar.es/>

--ch1jJvwWzQBVbiqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMAr0ACgkQnowa+77/
2zLFKRAAoc6V1ZnMKgYcaClTyanORf2VjBVcuVoPjtt44OJjth1LkIx9uaRjh182
/CRC7kzEJ/Ah7U2rqb0V2Qj6iyVF4BJIUh4LCUB7YnHwbwmWVMb1KUvLfy172YME
XfF8iBYbpwoYASmQ7SgPge3bMh0gSlyhEJ3wjBzZlmcxdUTy4Y/Gb49NPTL8Kxbq
l70l8H/74/IO8YPE4ZlsTgnz//5PUMzqGN8W8QZPpc+p/1J02piaijG35/vqoJM6
R6fWK0YHZnMyYy2XmguXO3BniZv2QASA1e3WBskMmGjZ3sls/0JEW7Q3h/W1q+2d
NNgVXu9Z/4rh0VWFA6KPJPEY32agIBimy/aN+lOMlQv0H8E1uKKd8LlSRlIhN3uZ
LutizU3XPJImbxHy9l3cmK3mD0DxVrFAwLIpYj+bygZXSlyrPC3soMwQaFoCu2Gt
38twiUK/RQ2qh3J5aSxSMQzwE5ykrnEspIb+LHHq1VQY+SNxxbMREUvN0Gi2fSJL
c4byLCdx2Ntuvw3vCml6UC0xC63hy34n3brWTHZJBRO2iQSehnaNlauPXCdZ5rSF
4TCWYTHeoHg5PMpKL6hXXJd0YmxD8KrhHTVruQ1V8ar8itXK0y3GeoND3pBkPDBL
YDlKsgIMMnofBaM1P5ex9iJGsIzK0tJAHSC00Xhk98QK2+Eh94I=
=fivs
-----END PGP SIGNATURE-----

--ch1jJvwWzQBVbiqx--
