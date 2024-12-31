Return-Path: <linux-man+bounces-2180-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EDE9FF133
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 19:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DDDB18812D1
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 18:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3169192B85;
	Tue, 31 Dec 2024 18:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apZYqfcP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D96613FD72
	for <linux-man@vger.kernel.org>; Tue, 31 Dec 2024 18:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735669217; cv=none; b=KpUr3RBfkYfkIDhg0Ctq1ojnmLm0qJQtR2DjAEBmUXz0Vopk2G12lQDnrsWSowYzugSLEmooTeRFUisX+SRebgKNtbklpPNEjTyFjqrdda8jd4z6w5d5XaoIa1+i5J4HLBemlq05RcTisEWyXWI41FDMgrZcK7ZcWEKmKgs9X4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735669217; c=relaxed/simple;
	bh=tBje1QGaO/TM7EyOL47Ov1tRGe9+4u0SAYXvtxbOecg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bDPF1Wq/0RNe9hGAALY8PfX6HLGXnQFIYWME/fksWThXfI8k1O9GJfjHzi9H8itzfblUTw7MzNrs3IzJ+Dkr6w9I3KMhGQh5E/Y5n/4YPZVCWD0OWJS8BU1CZ8aeeOJgg0TmpS53F7/hF95mQpFGUjsWYh7WYYWE1JsqwNdWrtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apZYqfcP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70F1CC4CED2;
	Tue, 31 Dec 2024 18:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735669217;
	bh=tBje1QGaO/TM7EyOL47Ov1tRGe9+4u0SAYXvtxbOecg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=apZYqfcP0n3+FvDSF57Bv+9NzSg5Yc1w3BGVNoeFRKgHL9fa7WD93CAi3B+KP13tQ
	 QCJYx00M1uwd6W4/MquXNx6lsMljkTcVTRffyMdf2VM8GqINDr++TzChxlYH2+zare
	 MSYRlTIXg+USPGC+Byu+7RuSp1mtfvl02MctoeJh5tykuwj7ohkfWlaqFzqlEnBgcO
	 DW63n0fTBXNhtBWOU/zGqJ0JXr7fA6b3+cNnEPB1ixe08t2Su07apAqQ6CjpwKN3/G
	 Eoym35GFiqopmB/mZbyoibAoll9wWduAUH3cQTZs3sEU3808a/9NYBU4ILHOL9GQY+
	 vlWaxbY8ah08w==
Date: Tue, 31 Dec 2024 19:20:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 219646] New: Most Make targets missing when path to
 man-pages has spaces
Message-ID: <mvt7epx7b4qhx2a2ed3enkcqv7x66aqilyalg35dda6mkzk4zp@tesdtmyqmd34>
References: <bug-219646-11311@https.bugzilla.kernel.org/>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yajed4flkt63mwl6"
Content-Disposition: inline
In-Reply-To: <bug-219646-11311@https.bugzilla.kernel.org/>


--yajed4flkt63mwl6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 219646] New: Most Make targets missing when path to
 man-pages has spaces
References: <bug-219646-11311@https.bugzilla.kernel.org/>
MIME-Version: 1.0
In-Reply-To: <bug-219646-11311@https.bugzilla.kernel.org/>

Hi Jason,

On Tue, Dec 31, 2024 at 05:34:14PM +0000, bugzilla-daemon@kernel.org wrote:
> The path to my clone of the Linux man-pages repo contains a space.
> This causes Make to fail to find most targets.

POSIX says:

<https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.html#t=
ag_03_265>

	3.265 Portable Filename Character Set

	The set of characters from which portable filenames are
	constructed.

	A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
	a b c d e f g h i j k l m n o p q r s t u v w x y z
	0 1 2 3 4 5 6 7 8 9 . _ -

	The last three characters are the <period>, <underscore>, and
	<hyphen-minus> characters, respectively.  See also 3.254
	Pathname.

Your path is thus non-portable, and this is just one of its
consequences.  Software tends to not support such paths, especially
paths containing whitespace, control characters, quotes, dollars, and
other special characters.

> Actual Results
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> This list is printed:
>=20
> > all
> > help
> > nothing
>=20
> Expected Results
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> A list with over 100 Make targets is printed.

115 at the moment.  :)

	$ make nothing -p \
		| grep '^\.PHONY:' \
		| tr ' ' '\n' \
		| grep -v '^\.PHONY:' \
		| sort \
		| wc -l;
	115

> Additional Information
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> I encountered this bug while using the tip of the man-pages=E2=80=99s mas=
ter branch
> (b199d102db5be24e0ac88eb6879e3e3b6e0ea722 at the moment).

I would close this as WONTFIX.  Sorry.  If the fix was easy, I might fix
it, but I suspect there are so many break points that it's impossible to
fix.  Just don't do that.  :)


Have a lovely new year!
Alex

--=20
<https://www.alejandro-colomar.es/>

--yajed4flkt63mwl6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd0NdkACgkQnowa+77/
2zIviA/+KsvmqL5imyvP45lIqOpQkf2uJnt72WCOBeQdTD8y5CzmMjZl8+ulWQEd
Zu/ti+1qYVbk6aGkJK5E+CPwBTaju8w007BmuMepS2XiEeEaoc+gjINoBtuW13PX
t5/cjMr3O5kiUFi0OwRk3Ga21GepxbLbnDKpPHwfxGnPypGj3TW5/9/NN828tCVh
+ChCL2jGhEDEeVzr0vJCW7szNb2aqkDopuliZbF6ar54MH2f7Kvi4vI4Vv2OFMnW
oHd2qIPrBKPpHagKLk0iRXys6chgE6/aPRSQMPslJw73dESOOMUd+yTkMJHllba1
XUwEnzWJcRF6ggPn1uQD3GCxxPDw0Ubo7jPoX8uSeddA8dbmuzcfDmNLOUJXOGXY
uNfTxND9Pn2FnbggH3j7V/lup3WPzjDDQMnfbi3Zb/J78r5bNAgr/w515kFfWLaH
AAk8UlHMeXjj6NiC4BIrYyzr8GkS7BdxxDWLwN8vsPIpdfLXXEzmqJihQiaklksH
xz2qSf05GjxrztySXFWI8CKS71liFi+FUod1yTuI5L4+tMzHycUZPr87Eu6l6395
Fulfp6yf1hPJ7oKAuwYadWQgqQimijuQTktMQjOYijUKm7heOwlTxmfvprNAqbHY
wNlYECnQBOf3R7ckR5sFA5XJwr5DrAcRyVLSr7/LxNySeSxvfKM=
=ZWCG
-----END PGP SIGNATURE-----

--yajed4flkt63mwl6--

