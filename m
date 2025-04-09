Return-Path: <linux-man+bounces-2760-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E89A82154
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 11:51:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 335CF3B45C7
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 09:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3C825D218;
	Wed,  9 Apr 2025 09:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+V9nFOx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A4825D210
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 09:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744192271; cv=none; b=mEInlh+0JPoDNwX9/L3V9l6u3pDVad56SIBl5gtwSzr6sTyfhgKoea/uoS9d4Xx7YN1ZWg9rcZakGgsxmVgOsVjOZjejQ2bbrvXlgWVloRyEZiZz9r5l4v3wdykeW0OckqAPDXB9OSwV+eai8wNRYdWCt91KvizVGdxGpz9LNeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744192271; c=relaxed/simple;
	bh=UB6UzRKfzd2tnBaeJ6l0+Pe5LpF1kRnJrhnC6y6sDFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y4zOLIw+AvDwgiyD9sL7kelKU9VQpdtlTajuVm2zvVccQGnS36DXoREVHxifNpMkr7LTlQ4T7Slx8SVEf/VKkF5gRgxtfbvV97YnsAB8s53rrpVaoN/Bt+5XKi7r2bNrHP/QmrKtN5wS9uww815s+6PVjRRzhshau33ys5ibhQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+V9nFOx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3281DC4CEE3;
	Wed,  9 Apr 2025 09:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744192271;
	bh=UB6UzRKfzd2tnBaeJ6l0+Pe5LpF1kRnJrhnC6y6sDFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z+V9nFOxs1MAKszH5MGyt/fP+I2g0tCcNM6e1UlcWtM5fyNYWDHuxDL2UHFuVSN50
	 SMyr0Ixv1eixG2HEDgI/TXK+K9Kd5j173PBzq0bzzYcRR9Bucdki4WkySszph8aNRm
	 DrlHSIN9CxuAr/jY2apESaquhFoBYA2EGAKWXigMmvuKEdQbJUtYesp9Y7+S3Kgz1m
	 8QfjP/7jnUf52xePRASQMSbtUJh+o6CVagRQU7z5iGXVGWyktwxi6MoAVbn6DY5irD
	 dZ7oreQacMEb8qvVBVd5Xpk6QLNqvjv1DUZP88y0UKhx6A3MzBKXWXLkR6RpA0btQD
	 XFR+tiVvw4B5g==
Date: Wed, 9 Apr 2025 11:51:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>
Cc: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>, 
	neomutt-devel@neomutt.org, Iker Pedrosa <ipedrosa@redhat.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, Richard Russon <rich@flatcap.org>, 
	Todd Benzies <tbenzies@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: spear phishing attack on me
Message-ID: <oagg2ypexrswrsn6gptlqpcdg2yssf46pclzloblmk3kthxao7@32oygpytiwhb>
References: <kmmxxicgr7mwai6rffhbqtfrs77gcbhdj5qfqmfuu33a6nafgd@xurecmxd3mup>
 <20250409041452.GA498769@mail.hallyn.com>
 <xq3h6udyhdm5tv6wwmxfsmbkbicp53dd226eqokcb6bwz7fyqz@ro5cnzxdmoy4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g4rcj7sp3i37g6ch"
Content-Disposition: inline
In-Reply-To: <xq3h6udyhdm5tv6wwmxfsmbkbicp53dd226eqokcb6bwz7fyqz@ro5cnzxdmoy4>


--g4rcj7sp3i37g6ch
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="nh7opr7rsll72ned"
Content-Disposition: inline
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>
Cc: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>, 
	neomutt-devel@neomutt.org, Iker Pedrosa <ipedrosa@redhat.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, Richard Russon <rich@flatcap.org>, 
	Todd Benzies <tbenzies@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: spear phishing attack on me
References: <kmmxxicgr7mwai6rffhbqtfrs77gcbhdj5qfqmfuu33a6nafgd@xurecmxd3mup>
 <20250409041452.GA498769@mail.hallyn.com>
 <xq3h6udyhdm5tv6wwmxfsmbkbicp53dd226eqokcb6bwz7fyqz@ro5cnzxdmoy4>
MIME-Version: 1.0
In-Reply-To: <xq3h6udyhdm5tv6wwmxfsmbkbicp53dd226eqokcb6bwz7fyqz@ro5cnzxdmoy4>


--nh7opr7rsll72ned
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 09, 2025 at 11:47:45AM +0200, Alejandro Colomar wrote:
> Hi Serge,
>=20
> On Tue, Apr 08, 2025 at 11:14:52PM -0500, Serge E. Hallyn wrote:
> > On Tue, Apr 08, 2025 at 02:31:37PM +0200, Alejandro Colomar wrote:
> > > Hi everyone,
> > >=20
> > > I'm writing to the mailing lists of every project in which I have wri=
te
> > > permissions: shadow, linux-man, and neomutt.  I also CCed maintainers,
> > > LWN, and my contact in the Linux foundation.  In BCC is my contact fr=
om
> > > Google for my sponsorship, which might be of help, and also another
> > > friend from Google.
> > >=20
> > > Last week someone reported to me a vulnerability in shadow utils.  It
> > > was a real vulnerability, although something relatively unimportant
> > > (needs physical presence of the attacker, or a way to read memory of a
> > > setuid-root program --which means they probably already own the
> > > system--).  In fact, we kind of knew its existence already, and I've
> > > been working on mitigating it, and we've discussed it in the project.
> > >=20
> > > The report seemed legitimate in the begining, although I was suspicio=
us
> > > that it was only sent to me (I'm involved in the project, and am the
> > > main contributor by number of commits, but Serge and Iker are the
> > > maintainers (I maintain the stable branches only), and the guidelines
> > > say they should have been CCd), but that's something that could happe=
n,
> > > so I continued discussing the vulnerability with this person.  In my
> > > responses, I added to CC the co-maintainers.  When this person replied
> > > to me, it removed the co-maintainers from CC, which again is suspicio=
us,
> > > but is something that could happen.
> > >=20
> > > This person tried me to open a couple of PNG files, supposedly showing
> > > an exploit for the vulnerability.  Of course I didn't open any of the=
m.
> > > I replied asking for a text-based alternative, because it would be
> > > ironic that talking about vulnerabilities I would have to open
> > > "unnamed.png" and "unnamed-1.png".  The person didn't reply again, wh=
ich
> > > to me was the confirmation that it was an attack, and they realized t=
hey
> > > got caught.
> >=20
> > (Had asked this previously privately, but this seems worth discussing
> > publically)  Would be great to analyze the images.
>=20
> Yup; I'm attaching the mail containing the suspicious images to this
> message.  The mail is contained in a compressed tarball signed and
> armored, to make it more difficult to accidentally open the images
> (MUAs open them carelessly if they can, in some cases).

Oops, I forgot to actually attach it.  Hopefully fixed this time.  :)

>=20
> I created the tarball with:
>=20
>         $ tar czf ~/Downloads/suspicious_mail.tar.gz cur/1743721130.26271=
_1.devuan,U=3D7595:2,RS;
>         $ gpg --armor --sign ~/Downloads/suspicious_mail.tar.gz;
>=20
> It can be open this way:
>=20
>         alx@devuan:~/Downloads/sus$ ls
>         suspicious_mail.tar.gz.asc
>         alx@devuan:~/Downloads/sus$ gpg --output sus_mail.tar.gz --verify=
 suspicious_mail.tar.gz.asc
>         gpg: Signature made Wed Apr  9 02:06:19 2025 CEST
>         gpg:                using RSA key 4BB26DF6EF466E6956003022EB89995=
CC290C2A9
>         gpg: Good signature from "Alejandro Colomar <alx@alejandro-coloma=
r.es>" [ultimate]
>         gpg:                 aka "Alejandro Colomar <alx@kernel.org>" [ul=
timate]
>         gpg:                 aka "Alejandro Colomar Andres <alx.manpages@=
gmail.com>" [ultimate]
>         alx@devuan:~/Downloads/sus$ ls
>         sus_mail.tar.gz  suspicious_mail.tar.gz.asc
>         alx@devuan:~/Downloads/sus$ gunzip --keep sus_mail.tar.gz
>         alx@devuan:~/Downloads/sus$ ls
>         sus_mail.tar  sus_mail.tar.gz  suspicious_mail.tar.gz.asc
>         alx@devuan:~/Downloads/sus$ tar tvf sus_mail.tar
>         -rw------- alx/alx       31193 2025-04-04 00:58 cur/1743721130.26=
271_1.devuan,U=3D7595:2,RS
>         alx@devuan:~/Downloads/sus$ tar xf sus_mail.tar
>         alx@devuan:~/Downloads/sus$ ls
>         cur  sus_mail.tar  sus_mail.tar.gz  suspicious_mail.tar.gz.asc
>         alx@devuan:~/Downloads/sus$ ls cur/
>         '1743721130.26271_1.devuan,U=3D7595:2,RS'
>         alx@devuan:~/Downloads/sus$ grep -r From: cur/
>         cur/1743721130.26271_1.devuan,U=3D7595:2,RS:From: Mahdi Hamedani =
Nezhad <hamedaninezhadmahdi@gmail.com>
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > Of course it *is* always possible (unless you've found even more
> > evidence to the contrary) that the reporter is legit and just...
> > awkward.  Google does come up with a "security researcher" by that
> > name.  So I wouldn't go whole-hog on the witch hunt just yet, but
> > the whole thing definitely is fishy.
> >=20
> > > I don't know why exactly they targeted me, but I assume it's because =
of
> > > my involvement in one of these projects, so maintainers of these
> > > projects should be especially careful these days, in case they try
> > > another vector.
> > >=20
> > > As for me, if anyone tries to impersonate me, please make sure it's m=
e.
> > > I almost always sign my email and *always* sign my git commits with my
> > > PGP key.  If in doubt, please verify it's me.  I have never changed my
> > > PGP master key, and keep it almost always offline, so that should
> > > ultimately be the way to know it's me.  The key was certified by Mich=
ael
> > > Kerrisk, and he knows me physically, in case we ever need to verify (=
say
> > > if my master key ever is stolen and I need to revoke it).  This attack
> > > was unsuccessful, but if I'm a target of interest, they might succeed=
 in
> > > another attack.  Don't trust me too much.
> > >=20
> > > As for the attacker, I've reported to Google via
> > > <https://support.google.com/mail/contact/abuse>, although I'm not sure
> > > if they'll do much.  It would be interesting to learn the IP of the
> > > owner of the account, and if it used a VPN to connect to gmail, if it
> > > tried to attack any other people, and any other patterns that might be
> > > useful to learn who is interested in this attack.  Maybe my contact at
> > > Google can talk to people within Google to investigate this further. =
 Or
> > > maybe some of you know someone at Google that can help investigate th=
is.
> > > The attacker is "Mahdi Hamedani Nezhad <hamedaninezhadmahdi@gmail.com=
>".
> > > I presume this is a false name, trying to impersonate someone; I assu=
me
> > > noone would try to attack someone else using their real name.  There'=
s a
> > > real person with that name --or so it seems in LinkedIn--, and is a
> > > security researcher in Iran.
> > >=20
> > >=20
> > > Have a lovely day!
> > > Alex
> > >=20
> > > --=20
> > > <https://www.alejandro-colomar.es/>
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--nh7opr7rsll72ned
Content-Type: application/pgp-keys
Content-Disposition: attachment; filename="suspicious_mail.tar.gz.asc"

-----BEGIN PGP MESSAGE-----

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
8UV3HrSR9OcxfwmTxG2T/vr093TqE1KJXL7Xrr+uuv70Tef+tUW/p4kPIjGdK9Hf
08nHqG6gG6q/3s5Pyjec7r7C6y/19EvEzfV/T2u/REThleb3+/s3pvhbmvwJqd/T
5k9I/ZZG//WS3+32X5f9rpY/ECtBZvU72v4JX3+h8f+P/8GKn19v/iek/lL7v1Rh
ShL17QzgG23fTQESFv7KJOBLicAE76YBN0r5PSOBhNZvGgoktG7GAheh/8xo4EYp
Pz8cuAshv2NCkND6TTOC9IbfmxJczOylCb0xLigRycAgIftDI4Nn8t+ZG3xRAOYf
id80O0h4e2t6cFXW7xohXODmZ8YIF9k8zxISwduQmCUThdRn/nSmcDH/61whefBy
tgAPS4T4OZkw3BL+1RlDipAvpgxXISfB8LVpwyvJzUUad99+bA7xg8S+P6F4Ld36
3rDitfW/Orf4Nnv6+eEFplsiEsq3ecnvmGCUbpT7OwYZ5AfI+HHj8Er2Z6YZF0+4
TjQuoS0h+Opg4wcN542Rx2sWcFmCK6qnAQh+/trSHxqHvLbx90xGIGG1vSvR2/HI
D4rlO4OT7+77iWFKiUjGKd9n58dGLFg1T7IqEW8o51X4+OtDGNwwvxnDPA1hXlPq
8zzmB7n5iUlNibgpYV6Y7DVl/xFQ/sujnBJxHeY8j3Kux/3wPOcHOfyJSQ8g0KVa
uJn0vKaoN4Y+P8jZT4yDSsSLgdD1qJ+aCv0gpz8xLwIDezExum0z/NLQ6DVNvD4/
+lFM//5k6QepXGZO3zbP3p5ClaB2s99DfQkZXdJm/apYsrN7//jdwRVut73REPoN
cyww/ivJXx1n3RSPv2mmdUmxNddJQvyPzrYui5/mWxfFJUUaXDgtDi79jl8YdD2V
6em0CyJKcmpC9xemXheqxezHF8n0bRrwojudPn7bnG/aTq+0xNNWjYXi67Js9nLc
fX/4T6dl74EtC6903GTo4SP/2eCJO5P/M0pPXeafYSMdx73OCyDVN+73Q+T+jKE/
Hfq9IRsogF/h50+p3bHzJXdtvF9a8X82X8xm/9r//Ej+l0DOczafSZzalu4GVM9r
qyaATGCmeYHpWABpn8GxLfSdPa/MLRXAp8KVg+S/F91OyR6JZTbJeAw7+VyDw24+
JghzXh6Mj1SnsXElePUnM6M228BPswC/FytSC75VfEY7GfiBxPYrk/moVZG2CjfL
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
=2UtT
-----END PGP MESSAGE-----

--nh7opr7rsll72ned--

--g4rcj7sp3i37g6ch
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf2QwoACgkQ64mZXMKQ
wqnFQw//UvpkzWWiXW50nadprKLPu/QPJPl7Sa6NHkA+wd/znGvJU4AmB4br0QGq
9vIH1CrVM7kXwH6RlTffXtcYCOFrNPVN0txil5eTY+aPK3a9L0Vm7mbnDnH5sGwn
LLtaT9/IMzDszg6gX9gh9FN4ev6Yhvk/IqNKRRnJ/y6BC157C6TgQ/H3FAiDZ96p
Zb1O6dpikreMlsaPj6yZh1fHlaP7Jf4oBzNbjZhONszox0XetqYRtmgmKtCSD55Z
pbXpQHURGsaGFM39ehqUwQb4cvbq3/ufSiWAGtRELBfnI/oq4M1XOUx6ojHdiVUf
+DuirKTn3nx0RJe/dwWb5R2gOngfpIvW6Ga4r4D+Rha3keoPId2g2X6y/3F/6lz+
a4cJ0B179vwUyGy55Cd1VvMhaKbcrD97QTt6m5jhzjPNOztqfoYFfhqG2Uo40XtY
LMCE+QbfrLW9DDZRletrtv5NV5zctviV4k1A/T8PNIZc8maFm4iq+K8PXv/Wq7rS
pssMru6NUZQ0F86Yc9J8H8jDFxI3BiABCMUHreQcocBGJXmBfhTjTjpyYYrwcSxA
iOvrx7ml7hGX6BD5dpN73m7uECxcv5kG5yR13EIEPlsXv4a9igB0232/ilJkuqJT
0CGwX2fKP1w0XaI9NN9b5W8u9vuUO7a9yPgu402BaQnLwM3YbRM=
=KY9W
-----END PGP SIGNATURE-----

--g4rcj7sp3i37g6ch--

