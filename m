Return-Path: <linux-man+bounces-465-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D46BD85C2FA
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 18:48:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88EB828574D
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 17:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730E876C98;
	Tue, 20 Feb 2024 17:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq+Dq4dd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3291876C6C
	for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708451315; cv=none; b=d6GPet6EQs/uWveshZ3ONj0BPQQe80TSMuVbecIZOBpAhzNXgxMRl/29ON40AzeGKAi68GBHQ3l+dwF0GQHfhi2nP3BVKATsdAJypmAbaKUymjSZZTfldEgeuLNHMcfxZaogHceQk0X8kxLC8WuSYA+a5ldc9YNxIIQYGCxHKBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708451315; c=relaxed/simple;
	bh=zJp3vS9IFZpLp41X4yE22yGcy/jVm5ag8n+FDRpjxx8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hb7Xnn5QTiVgTmGfEreZTVeddaXIRNvztE2mHVjzbb3Q83+XI3q/kosMg0xg3i3TH0pZyyD8HFZMZ+gWFxXSVJmt1wXLr4cYeyqOXIpDjwukK+OepW6PtADSvIfO6N70Dp8V/lZ0ZGxACJOgByUd43a6RmvrMA41oCoYw8o3bh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq+Dq4dd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7186BC433F1;
	Tue, 20 Feb 2024 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708451314;
	bh=zJp3vS9IFZpLp41X4yE22yGcy/jVm5ag8n+FDRpjxx8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eq+Dq4ddtYOaagVCtc0tEKogstFJkyMgkIIcmq/nRSIShOwQdftKaZkvsa2t/3quR
	 cakSLqi5ctlzRAX6v3dHJuuq9pcYBPKJfctCmJK+ER72lkNQW2A1UWY6YA89q0EPsj
	 LM8lPrhLijFf2nsqSUvY/v+JVqmiqZHbY4Kbh143rQEgBwDUtWgCzLg7wRsFJxqbsJ
	 4u+3wjAO+6yxcaF9AcGIhFFtFTLA7D1bkbr0kcKsXnBw24OFYRwvvRaPk9tkhXuRvU
	 BKEHQ1dYyikAi+zZIYlPlPHb1IB70cLJbkdlVnvVS+9YfMiIt9qSqeQwQX+aAUb0nH
	 7Sy2vnFCDFfGQ==
Date: Tue, 20 Feb 2024 18:48:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour
Message-ID: <ZdTl74iu0EduIrWj@debian>
References: <20240220092144.140251-1-oficerovas@altlinux.org>
 <20240220132015.pjqlf66odcgqdtqv@illithid>
 <ZdTEIqz56h4wdJmv@debian>
 <20240220163611.4hfyds2jqfegjacg@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1SIPVUFnKKRt5jOb"
Content-Disposition: inline
In-Reply-To: <20240220163611.4hfyds2jqfegjacg@illithid>


--1SIPVUFnKKRt5jOb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 18:48:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour

Hi Branden,

On Tue, Feb 20, 2024 at 10:36:11AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-02-20T16:24:01+0100, Alejandro Colomar wrote:
> > [Off-topic; just language curiosity; feel free to ignore]
>=20
> [no worries]

I was preventing other innocent readers, who might not be aware of how
much we enjoy such converations.  :)

> > That's also taught in Spanish high school.  The Spanish word is
> > "actual" too, which means current.
>=20
> Oy vey.  I've got more training in Spanish than any other non-English
> language, and never hit that one.
>=20
> I raised this point because it was (mis-)used repeatedly in groff
> documentation and I had to clean it up.  It was then that I learned that
> this specific solecism is frequent in technical writing where there is
> multinational collaboration.

And you're probably right.

[...]

> > Some other dictionaries don't acknowledge this meaning, and claim it's
> > a mistake.  Do you know who is right about it?  I fear some dictionaries
> > might be ahistorically removing that meaning.  Even if that meaning
> > wasn't the main one, it probably was correct some time in the future.

Huh!  I meant s/future/past/

> > I'd like to see some investigation showing history of that meaning
> > before claiming it's wrong.  I rather call out the Cambridge dictionary
> > and others as being wrong.
>=20
> I'm not sufficiently credentialed to argue with published dictionaries,
> but I will offer that the use of "present" in these definitions has to
> be understood in context, and note should be take of the one we're using
> here.  When discussing software, implementations sometimes don't match
> specifications--documented behavior may not be reflected in code.
>=20
> So when we encounter the phrase "in the actual version", one can infer
> that a description is being offered in contrast to some non-actual
> version; perhaps some change of intention occurred in the passage from
> design document or bug report to the code as written.
>=20
> But, in my experience, most of the time when we see "in the actual
> version", all the (typically non-native) speaker is trying to impart is
> a temporal statement about the present (or near-present) situation, not
> drawing a contrast between intentions elsewhere document and actuality.

Agree.  For documentation, we better write unambiguous English, and not
just correct English.

>=20
> Returning to your examples:
>=20
> > 	     3. In action at the time being; now exiting; present; as the
> > 		actual situation of the country.
>=20
> Contrast:
>=20
> "The Central Committee of the Communist Party reported that per capita
> intake of nutritional calories in Ukraine in 1933 was 13% higher than in
> England."
>=20
> If a historian were to offer some perspective on that claim, their use
> of the word "actual" would be contrasting reality with assertion more
> strongly than it would be nailing down a temporal datum.
>=20
> Similarly:
>=20
> > 	      5: being or existing at the present moment; "the ship's actual
> > 		 position is 22 miles due south of Key West"
>=20
> "The ship's reported position was 5 miles southwest of Bah=C3=ADa de los
> Cochinos."
>=20
> The contrast between "reported" and "actual" here is a more
> significant factor than "at the present moment".  Given enough time, a
> ship could move from one location to the other, just as an API can
> change over time; but when we use "actual", our emphasis is not on
> temporal matters even though we often need some temporal information to
> decide the truth of a claim.
>=20
> Does this clarify?

Yup.  "actual" may be actually correct as a synonymous of "current", but
it's more ambiguous actually than it might have been a long time ago, so
we better avoid it in documentation.  :)

Have a lovely day!
Alex

> For more along these lines, I highly recommend Jeremy Gardner's document
> "Misused English words and expressions in EU Publications".
>=20
> https://www.eca.europa.eu/other%20publications/en_terminology_publication=
/en_terminology_publication.pdf
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--1SIPVUFnKKRt5jOb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXU5egACgkQnowa+77/
2zLrIg//alKTW7HfiM8XZq0j84/q8XhKn4Xi1OXZduz6UWjB6GpMCPMSJzbXZf7D
IzLX0WDSpFrxv4i7N8THo+gU8G0Zs3ZLGuT8gCkKs66jFu/2S7RGWWs8ISQBhLLP
LEOFeEeqlGP7/XSll4XJOO6SPtx5hc/DF0BHlKAqlMY/btObwbis6lP3GaRcyl50
syrmcyyZq/WPpgrFdlw/8vapMgFFCI2M7Pj7HeqFsJUppVAp/a9QAxtznJ7S7gJ9
s0hbHKD3E28jSrVoeNAdkMFEEUMw1Kcl/GR4ooa8WHHEfskTa+VQyC1t6chPXz4Y
x9aODSaor0gtFe8mY4UbsaWwDvoPGCvHP6Ftab+eRPBWDaIj0guFjoMcSsh35zHB
YFns03bnHnVuPW89wmOeRkOkc1kIoH/83w/6OUD06jMmU7kFPTk0UK2G94mHwSm4
2XeqMGkBchFfwbErjFMRr16YtLMVBiJrRphjP/CeaetnQElOAgs1MAPSNN23Jvkf
Rm2VVPJ77OnKnL4R1p/S9Y8Wv8Ms1LcGOhGAliGDcIQlV/kIeftqZECXe9fOe8lv
gz7limEnTUkr3/dzFan3Wcmmugf19OK3vlRJ9lXyiLDEfUMeBzjToNiwlttPegfY
DDHEma3EFiH6Bj/lyKJYH5OOnOFQ3nWEjvG476+A9tvYnhVI40g=
=LffR
-----END PGP SIGNATURE-----

--1SIPVUFnKKRt5jOb--

