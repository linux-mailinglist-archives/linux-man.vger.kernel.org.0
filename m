Return-Path: <linux-man+bounces-229-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0BD807941
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 21:18:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F631282186
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 20:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55096F61E;
	Wed,  6 Dec 2023 20:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD1xPmGe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E3D6F606
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 20:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA82EC433C8;
	Wed,  6 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701893897;
	bh=PeyRJff1j5aR+P64cM3aCYA7o4m5pxePQomwpQD5F84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FD1xPmGeePRj2qdCvpA5JWGdZgRE9s82/ACIPjXXtIufZcQcXCIMNkUz39t1gGPli
	 I5hYW6JVhz31v9pm2TfwXr1brsUThjd0Xij1N3EnG7+r/2vS32oX9sTGIwYAIxKDlx
	 grTX4YCbdDbyjlYkWi8gQoMUv0jJRel9rYOYRvpuY3aCEoAqsdJapTTeOWgOiOCaIR
	 Q/h64uLoGKy5OKQSn6cP1H8K3/XtsN32IjfjsZUL/Fk8qPGeB8M/l7g7MOGNChe+Ge
	 dFF1h8BnNy07n9aMymOE/RZaMx3CVXAkwzi87N8G6bvM+l2Fpzn3sIWi3vh7ZV6eV8
	 YWEElh1C/RvVQ==
Date: Wed, 6 Dec 2023 21:17:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	Zack Weinberg <zack@owlfolio.org>,
	Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Message-ID: <ZXDXBngCYG11NsMZ@debian>
References: <20231206145132.5538-2-alx@kernel.org>
 <ZXCjD5dP-jaUpeER@debian>
 <20231206183351.749567-1-mattlloydhouse@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kG+WcW6i3DTbyXD1"
Content-Disposition: inline
In-Reply-To: <20231206183351.749567-1-mattlloydhouse@gmail.com>


--kG+WcW6i3DTbyXD1
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Dec 2023 21:17:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	Zack Weinberg <zack@owlfolio.org>,
	Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS

Hi Matthew,

On Wed, Dec 06, 2023 at 01:33:50PM -0500, Matthew House wrote:
> On Wed, Dec 6, 2023 at 11:36 AM Alejandro Colomar <alx@kernel.org> wrote:
> > Also, I was going to ask for strtoi(3bsd) in glibc, since strtol(3)
> > isn't easy to use portably (since POSIX allows EINVAL on no conversion,
> > how to differentiate strtoi(3bsd)'s ECANCELED from EINVAL in strtol(3)?=
).
>=20
> I feel like this is rather overstating the difficulty. In practice, the
> no-conversion condition is very commonly detected by checking whether
> *endptr =3D=3D nptr after the call. The usual idiom I see is something li=
ke:
>=20
>     char *end;
>     errno =3D 0;
>     value =3D strtol(ptr, &end, 10);
>     if (end =3D=3D ptr || *end !=3D '\0' || errno =3D=3D ERANGE)

That test could trigger UB, if you passed an unsupported base.  Of
course, in this case you pass 10, but what if the base was a
user-controlled variable?  In such a case, nothing says what happens to
'end' (experimentally, I see it is not modified, so it would be left
uninitialized); so dereferencing it, or even comparing it, would be UB.

>         goto err;

Yeah, if you just don't care and want to handle all errors in the same
way, and you know the base is supported, this is correct.

But what happens when you want to differentiate the different errors?
Let's list the possible errors, as per strtoi(3bsd):

ERRORS
     [ECANCELED]        The string did not contain any characters that
                        were converted.

     [EINVAL]           The base is not between 2 and 36 and does  not
                        contain the special value 0.

     [ENOTSUP]          The  string  contained  non=E2=80=90numeric charact=
ers
                        that did not get  converted.   In  this  case,
                        endptr points to the first unconverted charac=E2=80=
=90
                        ter.

     [ERANGE]           The  given  string was out of range; the value
                        converted has been clamped; or the range given
                        was invalid, i.e.  lo > hi.

Let's see how strtol(3) handles these:

ECANCELED:
strtol(1) has `end =3D=3D ptr`.  But POSIX allows EINVAL.  But make sure you
pass a supported base.

EINVAL:
strtol(1) has EINVAL.  But what happens to end?  It could be left
unmodified (current glibc behavior); or could be set to ptr, since none
of the string has been read.  If the former, it's easy to trigger UB.
If the latter, it is indistinguishable from ECANCELED.

ENOTSUPP:
strtol(3) has `*end !=3D '\0'`.  But make sure you pass a supported base,
or buy a protector for nasal demons.

ERANGE:
strtol(3) has ERANGE; same as strtoi().

In the end, it amounts to saying: "the behavior of strtol(3) is
undefined if the base is unsupported; don't bother to test EINVAL: don't
trigger it".  Which is fine, but we need to clarify that, because if
someone actually needs to use a non-standard base, they should be very
careful, and set end=3DNULL before the call (but there are no guarantees
that end is not modified either, so...).  Or better, provide strtoi(3)
and compare (err !=3D 0), or (err !=3D 0 && err !=3D E***) if you explicitly
allow some error.

>=20
> Of course, the *end !=3D '\0' condition can be omitted or adapted as
> necessary. Alternatively, one can avoid checking errno at all, by just
> checking whether the value is in the permitted range, since the saturating
> behavior will make such a check reject on overflow. And even without an
> explicit permitted range, one can just reject on  on value =3D=3D LONG_MI=
N ||
> value =3D=3D LONG_MAX, or just on value =3D=3D ULONG_MAX for strtoul(3); =
rejecting
> a value that's almost an overflow isn't going to harm anything, except for
> the rare scenarios where a printed integer can actually reach the minimum
> or maximum, but needs to be round-tripped unconditionally.
>=20
> In general, I don't think most programmers are in the habit of carefully
> distinguishing errno values for <string.h> functions. They'd rather check
> for self-explanatory conditions, such as *endptr =3D=3D nptr, that readers
> don't have to refer to the man page to decipher. There's a reason that mo=
st
> high-level language bindings return errno values for file I/O but not for
> anything else.
>=20
> Thank you,
> Matthew House

--=20
<https://www.alejandro-colomar.es/>

--kG+WcW6i3DTbyXD1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVw1vUACgkQnowa+77/
2zJh4RAAjZEbq5Bci+iJzaivNRfTSj3+VWg6aAOvcAeZ41G0Wj9ytOME7ymEPl7m
sP1Cf2UYImTPsV3cHFrnkyLHWVAq2ROiZ1ZpnyaDF7MEkLnSzEZWvOtmTAPUYdf8
JyAhEsOtrp9WiWv1ejoeaVaGxArt3N4EhT8nLDxY+a8Mja1Xjbq1IWPo3wajLpJQ
qhiM6AZC2RrCWgsLUqR7xozq/DA/f+KXDMtYYrHJtfLuzr4g8x8n3C6D51WxZ3mL
miZOEaot1O4xgw41uyhy19NBFapHOuybX4KUkNy0EcMsO0ZGW3OI4Q9BRS1UQSgB
UT1CaB8SM+wvkTNL3X3jbtwuGtrgqk5mrxPGi3G2mOK0xeqeE+3Zekhd3MXaLOHv
T2qT6STtmOBg4e2AAX0U7lf8b3p71jib+PDnl0j3XV1kuClFphHS0YtJ9uYIHheb
K7eJFhOIO1W9xghb2FisU/5SRbjKjGQiO6moffJrjZ0QIDQRnJodtefMiyfI7Z9z
sm0IpQPlcqK6EETjBV8iU8sEtwhtbslZf4nnSe25LTq2xl9LEst9HMh+iqkGKfIM
BeExjX1mcaUlHeanm0+rEL2d5bXrLQQBW6E7EaUsEVxJhHF7A5HjjkwVlu2hszpq
8Ca8qdP1U/zVfXzmMpam20hsitYSRQH7kNWqTCGYgxlvvHixoSk=
=xgTg
-----END PGP SIGNATURE-----

--kG+WcW6i3DTbyXD1--

