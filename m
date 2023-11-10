Return-Path: <linux-man+bounces-2-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DE17E7EA4
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8160A1C20919
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7172138DDB;
	Fri, 10 Nov 2023 17:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z50KRf/H"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885BC225D9
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B8212E5FF
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:20:50 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBFB0C433C7;
	Fri, 10 Nov 2023 11:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699615249;
	bh=Vjz4BZq1Zd3yDi+/O9UDM5I/BoUawRDqXQSS7hu2SPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z50KRf/HX5UX8/qzQdq7EHGO+nHZDrvkfoRZRxtzjQ6yWKDaKK3fyGSjoZUGDg6P8
	 eu/oCj6KXSbW5/uNmawjXUMciUeXmJ2oa/mHrEnU17cxCsT4SXHEYyNXg+kA/5K7ht
	 4E0OoRfYSfqz5Nkz0WXSRO2LYN5uvngZ5ZHyUwVx6tovkMJ5JZHBhfRXe0EE8z5R2p
	 L3OUGbn0PXyeTxVbmdQBYjYM6j0P9gNwNVUFlTLM6EMSs1p59+e+Za/tvszr1LQrDZ
	 CTC1WLMxNT0d4o1DNFigEduC+TWWnbZwYpjXcMbfyRqCMBqEgj2vKlyRJ2ERwDUNIs
	 48q7MYSRkFfNw==
Date: Fri, 10 Nov 2023 12:20:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU4SDh-Se5gjPny5@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <CACKs7VDsTdSNwbC6+2LtQ67J_eJiD814xkw2_5XM1Q=iMjLXJA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="N3MLKvX3XDwnCN76"
Content-Disposition: inline
In-Reply-To: <CACKs7VDsTdSNwbC6+2LtQ67J_eJiD814xkw2_5XM1Q=iMjLXJA@mail.gmail.com>


--N3MLKvX3XDwnCN76
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 12:20:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Stefan,

On Fri, Nov 10, 2023 at 12:40:48PM +0200, Stefan Puiu wrote:
> Hi Alex,
>=20
> On Wed, Nov 8, 2023 at 9:33=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
> [.....]
> > strncpy(3):
> > CAVEATS
> >      The  name  of  these  functions  is confusing.  These functions pr=
oduce a
> >      null=E2=80=90padded character sequence, not a string (see string_c=
opying(7)).
>=20
> I'm a bit confused by this distinction. Isn't a null-padded sequence
> technically also null-terminated? If there's a '0' at the end, then
> it's a string, in my understanding. Or was the intention to say "a
> character sequence that may be null-padded", where the case in which
> there's no padding at all being the reason for the distinction?

The latter.  I'll check the wording.

Thanks!
Alex

>=20
> Thanks,
> Stefan.

--=20
<https://www.alejandro-colomar.es/>

--N3MLKvX3XDwnCN76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOEg4ACgkQnowa+77/
2zI8FhAAn9xpbu8LLfeC+fku2n5iTQ7X+vHTV9/QQ6mUes34r1ZvHK8LXqtX5D00
aA7bGaQP4iJcoSUX2Hhd3btHZkAYgJm1Kh6F5nVmMcKAG+1jYkji7Shz5QnvYUj+
2bpEnomklyHZDmsfc14+4UsExXtdT8FOlXLxXQis2X9GFC/TWiO8Dxr7bkhSkdlB
pAopn+EfeZQLu6+IdrIsxFshEvqXhI76GBlDTlbuYbkHOAPMXzkOJaT83WL/T4ky
0gs3RJObN64pZ0l0zNW64CDjk+XZj+sb2X+1/ZOn3L8Sj+gyubfnUJfl8ZNoJiuu
Uo2N+dfCKUTKahVBbgUtQXuTG9cl3IO4VGDHsoynOwi+7diP+U8x2SkTGP1ZpAXb
4MHwEICJ+1YwpxNZLl+fSZ6KyFKOi3IcnzgbQ0jmnWnLak3g0u9wYtkOpS9FBxXY
onTr0F8VpJintVGGBtc0o9zZkVDgH+p1aFJgwRhccgc6KhvGS6eRNMdRBdEK9jHa
S1wziuDo1/+sgMiqfuMST6cW6oAVCqvF5IhWl4yFGOgbtiLPkgy8zKSmZDIIjEQW
taYxFWSfT1LjqsRll9gCK+Y71NC4nyQzvclhton4jdYbbOgAd/PMqy0wI49fIFY1
ZVYQGONzflrSADkSOrgDj/CK/8L1uvb3Q+lM/HNdHn2cuVSSPLo=
=2hiR
-----END PGP SIGNATURE-----

--N3MLKvX3XDwnCN76--

