Return-Path: <linux-man+bounces-2759-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 846C5A8214A
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 11:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D6B91BA7A9E
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 09:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A474025C6F7;
	Wed,  9 Apr 2025 09:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pk5BFGpk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573C123E351
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 09:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744192067; cv=none; b=Yaz4OLeK87xe3OZ4WgOEGOh5ugR7Me78ZtkubAF6yAxs8WjRTFxAo8hGawcnFNZ3xTOZg7JiA1t4DQ3cBgv0dqljY2w2/i3bpDcOhrFPSf88AQCVFu79ImWe5AHaX+O2MI6isDdHBkCOLlxgb7Z4HYCcrUfAwlJUruewNacIbKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744192067; c=relaxed/simple;
	bh=83hfHprY6oS0U0LtvYfu6qdq3IYxQIvDNDgJP7JzqUw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dF426mr98zxaS64e2ZbWlRhzorchTaDGH5sKZ2wyseXmh2R8VebAaDLIKfmr+1jQkYR3hcC1S42ww2tkL9oPcssEhZaQdatamnPFbuO7xjkUU4fgbDAtthuTS+pRoeHNXZJk46wDPr57xUL8vj2i3U6MftjD7pKr5t6FGWsOLAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pk5BFGpk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7FE6C4CEE7;
	Wed,  9 Apr 2025 09:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744192065;
	bh=83hfHprY6oS0U0LtvYfu6qdq3IYxQIvDNDgJP7JzqUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pk5BFGpka8nkHkL5zWbo3ObpQENZIuwrTSnC5EDtHbhoEofW1PtszhQd0gkvMfeRI
	 pgrZ95haYQO0RiDRUVChKDSRKkACmpqH3IE9bXwua9s5HCF0ON9wH5bXmPOSLkeU0x
	 +XLdGaOFnZ0vNqjnRyEgao9+rge9Q904IVtCCap4N9Bd0nWsvbtR9dSIeuWcnMfed2
	 007nFbujZxLLkDeALr9QZ1FnH7d+7ZwlCeI9L5Vp/E4ZVzMVEKkrS8U6fD1IrfiWUZ
	 x9Dxwen8QbDsNq+rx3Kt5LyrgsBTX4YyddR45nJiM+xJAasAC9deu9GnKOhaGSd5v0
	 fwUZ+bLeUZrPQ==
Date: Wed, 9 Apr 2025 11:47:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>
Cc: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>, 
	neomutt-devel@neomutt.org, Iker Pedrosa <ipedrosa@redhat.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, Richard Russon <rich@flatcap.org>, 
	Todd Benzies <tbenzies@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: spear phishing attack on me
Message-ID: <xq3h6udyhdm5tv6wwmxfsmbkbicp53dd226eqokcb6bwz7fyqz@ro5cnzxdmoy4>
References: <kmmxxicgr7mwai6rffhbqtfrs77gcbhdj5qfqmfuu33a6nafgd@xurecmxd3mup>
 <20250409041452.GA498769@mail.hallyn.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rg3cylwehcrutx64"
Content-Disposition: inline
In-Reply-To: <20250409041452.GA498769@mail.hallyn.com>


--rg3cylwehcrutx64
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>
Cc: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>, 
	neomutt-devel@neomutt.org, Iker Pedrosa <ipedrosa@redhat.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, Richard Russon <rich@flatcap.org>, 
	Todd Benzies <tbenzies@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: spear phishing attack on me
References: <kmmxxicgr7mwai6rffhbqtfrs77gcbhdj5qfqmfuu33a6nafgd@xurecmxd3mup>
 <20250409041452.GA498769@mail.hallyn.com>
MIME-Version: 1.0
In-Reply-To: <20250409041452.GA498769@mail.hallyn.com>

Hi Serge,

On Tue, Apr 08, 2025 at 11:14:52PM -0500, Serge E. Hallyn wrote:
> On Tue, Apr 08, 2025 at 02:31:37PM +0200, Alejandro Colomar wrote:
> > Hi everyone,
> >=20
> > I'm writing to the mailing lists of every project in which I have write
> > permissions: shadow, linux-man, and neomutt.  I also CCed maintainers,
> > LWN, and my contact in the Linux foundation.  In BCC is my contact from
> > Google for my sponsorship, which might be of help, and also another
> > friend from Google.
> >=20
> > Last week someone reported to me a vulnerability in shadow utils.  It
> > was a real vulnerability, although something relatively unimportant
> > (needs physical presence of the attacker, or a way to read memory of a
> > setuid-root program --which means they probably already own the
> > system--).  In fact, we kind of knew its existence already, and I've
> > been working on mitigating it, and we've discussed it in the project.
> >=20
> > The report seemed legitimate in the begining, although I was suspicious
> > that it was only sent to me (I'm involved in the project, and am the
> > main contributor by number of commits, but Serge and Iker are the
> > maintainers (I maintain the stable branches only), and the guidelines
> > say they should have been CCd), but that's something that could happen,
> > so I continued discussing the vulnerability with this person.  In my
> > responses, I added to CC the co-maintainers.  When this person replied
> > to me, it removed the co-maintainers from CC, which again is suspicious,
> > but is something that could happen.
> >=20
> > This person tried me to open a couple of PNG files, supposedly showing
> > an exploit for the vulnerability.  Of course I didn't open any of them.
> > I replied asking for a text-based alternative, because it would be
> > ironic that talking about vulnerabilities I would have to open
> > "unnamed.png" and "unnamed-1.png".  The person didn't reply again, which
> > to me was the confirmation that it was an attack, and they realized they
> > got caught.
>=20
> (Had asked this previously privately, but this seems worth discussing
> publically)  Would be great to analyze the images.

Yup; I'm attaching the mail containing the suspicious images to this
message.  The mail is contained in a compressed tarball signed and
armored, to make it more difficult to accidentally open the images
(MUAs open them carelessly if they can, in some cases).

I created the tarball with:

        $ tar czf ~/Downloads/suspicious_mail.tar.gz cur/1743721130.26271_1=
=2Edevuan,U=3D7595:2,RS;
        $ gpg --armor --sign ~/Downloads/suspicious_mail.tar.gz;

It can be open this way:

        alx@devuan:~/Downloads/sus$ ls
        suspicious_mail.tar.gz.asc
        alx@devuan:~/Downloads/sus$ gpg --output sus_mail.tar.gz --verify s=
uspicious_mail.tar.gz.asc
        gpg: Signature made Wed Apr  9 02:06:19 2025 CEST
        gpg:                using RSA key 4BB26DF6EF466E6956003022EB89995CC=
290C2A9
        gpg: Good signature from "Alejandro Colomar <alx@alejandro-colomar.=
es>" [ultimate]
        gpg:                 aka "Alejandro Colomar <alx@kernel.org>" [ulti=
mate]
        gpg:                 aka "Alejandro Colomar Andres <alx.manpages@gm=
ail.com>" [ultimate]
        alx@devuan:~/Downloads/sus$ ls
        sus_mail.tar.gz  suspicious_mail.tar.gz.asc
        alx@devuan:~/Downloads/sus$ gunzip --keep sus_mail.tar.gz
        alx@devuan:~/Downloads/sus$ ls
        sus_mail.tar  sus_mail.tar.gz  suspicious_mail.tar.gz.asc
        alx@devuan:~/Downloads/sus$ tar tvf sus_mail.tar
        -rw------- alx/alx       31193 2025-04-04 00:58 cur/1743721130.2627=
1_1.devuan,U=3D7595:2,RS
        alx@devuan:~/Downloads/sus$ tar xf sus_mail.tar
        alx@devuan:~/Downloads/sus$ ls
        cur  sus_mail.tar  sus_mail.tar.gz  suspicious_mail.tar.gz.asc
        alx@devuan:~/Downloads/sus$ ls cur/
        '1743721130.26271_1.devuan,U=3D7595:2,RS'
        alx@devuan:~/Downloads/sus$ grep -r From: cur/
        cur/1743721130.26271_1.devuan,U=3D7595:2,RS:From: Mahdi Hamedani Ne=
zhad <hamedaninezhadmahdi@gmail.com>


Have a lovely day!
Alex

> Of course it *is* always possible (unless you've found even more
> evidence to the contrary) that the reporter is legit and just...
> awkward.  Google does come up with a "security researcher" by that
> name.  So I wouldn't go whole-hog on the witch hunt just yet, but
> the whole thing definitely is fishy.
>=20
> > I don't know why exactly they targeted me, but I assume it's because of
> > my involvement in one of these projects, so maintainers of these
> > projects should be especially careful these days, in case they try
> > another vector.
> >=20
> > As for me, if anyone tries to impersonate me, please make sure it's me.
> > I almost always sign my email and *always* sign my git commits with my
> > PGP key.  If in doubt, please verify it's me.  I have never changed my
> > PGP master key, and keep it almost always offline, so that should
> > ultimately be the way to know it's me.  The key was certified by Michael
> > Kerrisk, and he knows me physically, in case we ever need to verify (say
> > if my master key ever is stolen and I need to revoke it).  This attack
> > was unsuccessful, but if I'm a target of interest, they might succeed in
> > another attack.  Don't trust me too much.
> >=20
> > As for the attacker, I've reported to Google via
> > <https://support.google.com/mail/contact/abuse>, although I'm not sure
> > if they'll do much.  It would be interesting to learn the IP of the
> > owner of the account, and if it used a VPN to connect to gmail, if it
> > tried to attack any other people, and any other patterns that might be
> > useful to learn who is interested in this attack.  Maybe my contact at
> > Google can talk to people within Google to investigate this further.  Or
> > maybe some of you know someone at Google that can help investigate this.
> > The attacker is "Mahdi Hamedani Nezhad <hamedaninezhadmahdi@gmail.com>".
> > I presume this is a false name, trying to impersonate someone; I assume
> > noone would try to attack someone else using their real name.  There's a
> > real person with that name --or so it seems in LinkedIn--, and is a
> > security researcher in Iran.
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--rg3cylwehcrutx64
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf2Qj0ACgkQ64mZXMKQ
wql6PQ//f1PXeuosVTrA159V8FfRYzYVjafaaioWo4Twzba8kl+4Psl4usjTu3+Q
kn0Jc6VqDB4yD2wetZmAie4vjvVH3GzlN/mj58SlAHWw6YS67xK3YCCWcprhrAD0
qCssl8SsFGKzjLW1Kro3vIk77jrNyX6RXOl3Cei7msYn8iyN0QmXmVSD5hKmXra2
ChFmnJLM6GmAGB/9RhjicyisgFa2U4yA6eCgWueq15EpQSwbSXnyLIv8PjPaw/Ky
97I0E+00ZizFCnw7SaJD13a/WEaJJ/GI7XI8P8Mw6iz1t7Ybl8lnKVQh2R2ob22C
Yf/oKfR0X06jH7DHd832mkdhNhjgpFvKwLQ5AVMKXzQuv8AaFSovz14Yjqs3Hxhp
rdSufAn3Zp+3Ho6AV7I0JVUvo7RyqmyM2lYOy7a6SRg0JeCDs2iZG96497VJ4xWb
zUs+Ik5xZ/LTMd+3RhXK/d6hlYuxhkWYW84Rnslr/pd17q5kB4qdbl2z82IJW9BU
DKYLMicCozYgb8xn/A9ken5NDkjc2JAGoVHZN0QV/R2wodn3H/KA9mWmN6UDnm4+
gpR1MHvf7l925hFKHtgXWAwZbZPdcITp3pXjwiTI1j6+XdFdtHYYcruruB74ZPcc
5+YsPrUL+5S+1y1CflMLnZExUHd6OIvuce7aLQ0M+sKEd+XJTIA=
=cuad
-----END PGP SIGNATURE-----

--rg3cylwehcrutx64--

