Return-Path: <linux-man+bounces-1093-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9BD903E99
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 134891F21E0E
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 14:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAA6517CA0B;
	Tue, 11 Jun 2024 14:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mi9oJ3AY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB551174EC9
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 14:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718115752; cv=none; b=WzczyC3ctkrzPaH/5M8WIJFto1QtJTDP1Uaf8zvOs+WayuxNQvPgA47uEAdUmAJ9TnJJQVFfSWzspyO/u+bFG1NdgYaITIvgTvslRpDjldqjGN0aEQGU8Att6e8/YkOEihLkbEfsj4hOSxMTzxnfGehI2rjMKkNqUFkO9JvOCZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718115752; c=relaxed/simple;
	bh=Q75PxvkW0o9S1nT1UDWsenKVU3scLKe+XUXIDciwPhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AiIoN6M2e7XUZlA6fIDHpB56ajH7lptCDRi31hV4WkGcfwsM7jAWMRCsuCsNFtqXSkuihvc/2PxYH6lA9LNlcduZR6hJoVH9tjOSIsOqSXamUKlPej5XXUH0ZBH2s2I0OEoAW0MuMxwWAENnWAsVEZRDBgnUrzHmw3U8LQc8FHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mi9oJ3AY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60973C2BD10;
	Tue, 11 Jun 2024 14:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718115751;
	bh=Q75PxvkW0o9S1nT1UDWsenKVU3scLKe+XUXIDciwPhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mi9oJ3AYv0+7GN1WaMcmmhjqemJsSueyVn1IcBGYxDCgvPyqWzUe4yKtrgb7q3N4Y
	 zmU62LHg0dKHd7jLSem0ssjLBg8188ncUD7zjrRwyer63uX7fQdD/C2QkXtwu3c6Tx
	 kH4jn+x+pfZAetDDTK+x2UxisIHbt8i539z781CSzioxDPoiAMI3OVsWnINgdH+qJ7
	 xIer9SFxw+IVA/a8fnrwRrA//nAqjmHaFUygr3NAmZbF/a2GJw65zluUO+/2ZJvw2w
	 M2sMN93ij3cltaR4X96ItQe5yl/J0P5L7aBBq13SoeHfMBuf+6mYhHcMRdUI0k3Ocg
	 iHb9CdUof3+Tw==
Date: Tue, 11 Jun 2024 16:22:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <kmuodpe6ijgk6g2lsjiggg3d6kdi5tv433jso54jxz2mxsvtqr@nlipunv5stt7>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <20240611122453.qn6jyl4go4bvwkqm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6kh3lkk6z7rgv4t3"
Content-Disposition: inline
In-Reply-To: <20240611122453.qn6jyl4go4bvwkqm@illithid>


--6kh3lkk6z7rgv4t3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <20240611122453.qn6jyl4go4bvwkqm@illithid>
MIME-Version: 1.0
In-Reply-To: <20240611122453.qn6jyl4go4bvwkqm@illithid>

On Tue, Jun 11, 2024 at 07:24:53AM GMT, G. Branden Robinson wrote:
> Hi Alex,

Hi Branden!

>=20
> At 2024-06-11T10:54:27+0200, Alejandro Colomar wrote:
> > > > We use '\e', not '\\'.  (I haven't checked whether it also works,
> > > > and don't remember.)
> > >=20
> > > Change this to '\e' and tested it. It looks like it works to me :)
> >=20
> > Hmm, yep, both work the same.  I remember there's a small difference
> > in meaning, but I don't know why we use \e.  Anyway.
>=20
> GNU troff's Texinfo manual explains:
>=20
> --snip--
>    The escape character is nearly always interpreted when encountered;
> it is therefore desirable to have a way to interpolate it, disable it,
> or change it.
>=20
>  -- Escape sequence: \e
>      Interpolate the escape character.  '\e' is interpreted even in copy
>      mode (*note Copy Mode::).
> ...
>    The complement of copy mode--a 'roff' formatter's behavior when not
> defining or appending to a macro, string, or diversion--where all macros
> are interpolated, requests invoked, and valid escape sequences processed
> immediately upon recognition, can be termed "interpretation mode".
>=20
>  -- Escape sequence: \\
>      The escape character, '\' by default, can escape itself.  This
>      enables you to control whether a given '\n', '\g', '\$', '\*',
>      '\V', or '\?' escape sequence is interpreted at the time the macro
>      containing it is defined, or later when the macro is called.(1)
>      (*note Copy Mode-Footnote-1::)
>=20
>           .nr x 20
>           .de y
>           .nr x 10
>           \&\nx
>           \&\\nx
>           ..
>           .y
>               =3D> 20 10
>=20
>      You can think of '\\' as a "delayed" backslash; it is the escape
>      character followed by a backslash from which the escape character
>      has removed its special meaning.  Consequently, '\\' is not an
>      escape sequence in the usual sense.  In any escape sequence '\X'
>      that GNU 'troff' does not recognize, the escape character is
>      ignored and X is output.  An unrecognized escape sequence causes a
>      warning in category 'escape', with two exceptions--'\\' is the
>      first.
> --end snip--
>=20
> This matters when you use "\\" inside macro arguments, for example.
>=20
> Personally, if what you want is a _backslash_, to the Linux man-pages
> project I would recommend the special character escape sequence that
> _means_ "backslash".
>=20
> GNU troff, Heirloom Doctools troff, and mandoc all recognize it; that
> should be (more) than enough for places where the Linux man-pages get
> installed.
>=20
> groff_man_style(7):
>=20
>      \(rs   Reverse solidus (backslash).  The backslash is the default
>             escape character in the roff language, so it does not
>             represent itself in output.  Also see \e above.
>=20
> You can of course spell it \[rs], which is even better.

Hmmm, so we should \e =3D> \[rs].  Thanks!  I'll try to prepare a sed
script for it.  BTW, how are you doing with MR.sed?  :)

Have a lovely day!
Alex

> I would not give the same advice to bash or ncurses, which must be
> portable to geriatric commercial Unix, for example.
>=20
> Regards
> Branden



--=20
<https://www.alejandro-colomar.es/>

--6kh3lkk6z7rgv4t3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZoXaQACgkQnowa+77/
2zI/IA//frpEXoKWYQWxhktZXkWwyvn+cJI0OxtG6fMgQiADZra7laK7CsFeJinY
Tn226suh/FGKTmLM2FS9lQ+r3zMkmh1B5fHiUDYSNnsW05Pom9UQdvNAR3yz7oD0
0/QHVpSy0J0/utXSsB8ecKP+zTlsfFTZMTbuW4ZfctXA5l89wY4oa+IlThS3AF2e
kOEF/f+x/KBYknJi6LeAY4BZ7pKUFjPYdliwYYj3icEUL/O0dKxNEbFjMHv71vUO
gaOVY11mp7bSOVFYocuZGFaGVdT2p/KDAKxOeUHW9ZpJZbShyYHMxfMwxRmS5k12
WjFQSm2Yi9IGyOBMQXekHbqYX55KvQdVMsTR4MbwpSFayEvhD8ciEhn8/OkkX2lg
yzeyPl07BS2zUK37D0VuF2HQlBXWgB5yuVCSNGDLw1nRFJMH/cesx/KXntbPTWWx
b/ZJ6B0R4ANGsrFw/4jf26LUpwvuSLH+CZ5WGoKoP1wSps2v5ofTMHL6oCoFSw2Q
ZR/UECcKRMaAFs7Kp3KamRpS7YtddF4tqZUXfo24S0qFa0xfPy5BM8SizSNwVte2
Oc+NlBbEl1XuH3014iPzEg9DlHHc72glOFbRTjHH0FXpJPJJ8zg+xg6jrRNX5TJY
V51Q6kpWcwFQQB+gOK9d+GSOw3OYEHsqo+RIFSCbFM/5A3j92ps=
=9myd
-----END PGP SIGNATURE-----

--6kh3lkk6z7rgv4t3--

