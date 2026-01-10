Return-Path: <linux-man+bounces-4784-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CCDD0D529
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 12:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1034301E937
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 11:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1CA3382E6;
	Sat, 10 Jan 2026 11:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh7T+rq5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037833191C2
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 11:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768043551; cv=none; b=IxGlgmqMK6iARTf9goHp7TQwp14wSzTjDpf1K+a7lNDH/Jk/oCQ2wJAOR+swFC15W88y6DPhGXijgLRjkJWoIcEURHg+da2YGThbvEDmft6CZhQ8w2lq4Y05AnphO9uyyPdz5GJAPcBY1hD8Cu9XC2XkDRw+pV4m0gsTGzMmTDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768043551; c=relaxed/simple;
	bh=c7Q5ZwJd8OGEQNIVdYHudVJn1/spOrTwTZVUY3oz8x0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EwdFB3mfycrpwMuu9SL6gauBCaukVmzp8jwjyivAX96FYL0/HhDFjKPpkkdJ9iL/yuxXhmrFBJHW/8bRBmMePYJWLu+7jctT2giZJjhxkXkyv7T6okukto0AqSuQQ+FCZ80nVluy7K3WhA8GWKHF3dhSbTS154pK5pm/lo4Cj6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh7T+rq5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFA7AC4CEF1;
	Sat, 10 Jan 2026 11:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768043550;
	bh=c7Q5ZwJd8OGEQNIVdYHudVJn1/spOrTwTZVUY3oz8x0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Oh7T+rq5wYad9jEJS0Zu9o40Z/whYEIjInqPXOWrWxMlVEsLMjzj2C3j7eODHUM2J
	 ssZxrFxnkCz52Gs+9Ba4qXOO+gW/s4yf8UGl+oF0dbpaWfX7Zz9hes+BdiLsXiX5Km
	 F2eMr3ezed8Mkb7b/eIlI46SMP9Dw6h6CvGCx+bs9w03OTl2sZkaD2Tf/TmlH4b5I1
	 5fsXncjlPTbX8WoU2dtuTEVvo7UdSiFMhCDdV0BcI77KFHUzM8Zmg5Y9Gycmba/JZb
	 rw5IDSMmWxfABIplDj7UGls/swcdaMK2T9lvHqCyvRo12ZkSaFJOA5Cb56CqPCptx7
	 AyKM+CnbaLcnw==
Date: Sat, 10 Jan 2026 12:12:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first
 POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <aWIwpq89awdmYTS5@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>
 <aV-ZG_8At_-R7G2v@devuan>
 <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me>
 <aWDO3nEcZWMcqvXx@devuan>
 <O3wNNZ-8zjB5uqYmBT-pq1iZtfGLOznbpKjwEKFZqn0Alz65p63u1_R9jcyHDD-9yZocERBl1fVdn5LKF6bHJALSvtWvvbpfHGNmc93geok=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5tfxwor3hoj37ipe"
Content-Disposition: inline
In-Reply-To: <O3wNNZ-8zjB5uqYmBT-pq1iZtfGLOznbpKjwEKFZqn0Alz65p63u1_R9jcyHDD-9yZocERBl1fVdn5LKF6bHJALSvtWvvbpfHGNmc93geok=@pm.me>


--5tfxwor3hoj37ipe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first
 POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <aWIwpq89awdmYTS5@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me>
 <aV-ZG_8At_-R7G2v@devuan>
 <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me>
 <aWDO3nEcZWMcqvXx@devuan>
 <O3wNNZ-8zjB5uqYmBT-pq1iZtfGLOznbpKjwEKFZqn0Alz65p63u1_R9jcyHDD-9yZocERBl1fVdn5LKF6bHJALSvtWvvbpfHGNmc93geok=@pm.me>
MIME-Version: 1.0
In-Reply-To: <O3wNNZ-8zjB5uqYmBT-pq1iZtfGLOznbpKjwEKFZqn0Alz65p63u1_R9jcyHDD-9yZocERBl1fVdn5LKF6bHJALSvtWvvbpfHGNmc93geok=@pm.me>

Hi Seth,

On Sat, Jan 10, 2026 at 06:00:14AM +0000, Seth McDonald wrote:
> On Friday, 9 January 2026 at 20:00, Alejandro Colomar <alx@kernel.org> wr=
ote:
> > Hi Seth,
> [...]
> > You may be interested in diffman-git(1). I think it would help
> > reviewing your diffs. Here's some example of how it works:
> [...]
> > For more documentation, see diffman-git(1), of course. :)
>=20
> That does look quite useful!  I've seen it used before in the mailing
> list, but couldn't initially find its documentation.  Which I now
> realise is because I was looking for its man page in my installed man
> pages, rather than in the repository *for this documentation* (ironic,
> I know).

Yup, I wrote that script very recently.  Distros have not packaged it
yet.

> > It's provided in the repository, in case your distro doesn't provide it
> > yet. You can install it with the usual
> >
> > $ make -R -j4 && sudo make -R -j4 install;
> >
> > Or just run it from the repo, since it's a bash(1) script. It's here:
> >
> > $ find * | grep diffman-git
> > man/man1/diffman-git.1
> > src/bin/diffman-git
>=20
> My distro (Debian 13) indeed doesn't seem to provide it yet, so I've
> installed it successfully via the repo.

The only distro that already provides the scripts from this repo, AFAIR,
is Arch.  I've been talking to Fedora and Debian, and they'll likely
package them soon.

> I'm glad it's a bash script,
> as I'd be a little more hesitant to install a binary executable.

Yup.

> [...]
> > I have a question: do you use mutt(1) or neomutt(1) by chance?
>=20
> Currently neither; I generally just use the Proton Mail Linux app.
> Mainly because it's a familiar interface from before I switched to Linux
> in mid-2025.

I was mentioning it because since you send many patches, it would be
interesting if you could sign them with gpg(1).  It's not necessary, but
if you used one of these, it would be trivial to sign them.

> However, I have been really getting into TUIs recently.

Nice!  :-)

> So if you recommend either, then I'd be enthusiastic to give it a try.

I recommend both.  Personally I like mutt(1) because it's simpler, but
for sending patches, neomutt(1) is useful because it allows signing
patches cryptographically with gpg(1) in batch mode (called by
git-send-email(1)).  mutt(1) can only sign emails in interactive mode.

I certainly recommend you give a try to mutt(1) first.  For interactive
use, I don't need more than that.  I learnt to use it with this youtube
video: <https://www.youtube.com/watch?v=3D2jMInHnpNfQ>.  If you want more
help, I can share my configuration files with you, and maybe clarify
some doubts.

neomutt(1) is a fork of mutt(1) with (many) more features, but I prefer
simpler software with less features.


Have a lovely day!
Alex

> ----
> Seth McDonald.
> sethmcmail at pm dot me (mailing lists)
> 2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369




--=20
<https://www.alejandro-colomar.es>

--5tfxwor3hoj37ipe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmliNBAACgkQ64mZXMKQ
wqlFrA/9GgmgnQ8Gpea0nQ8VnmCKjzrCfh+5UeOhu9f3Q0nTLzPVwc0nTwglTIF8
7YtLh4dTKSX14SoXtp+yH6wMKWoobwBan91j/lGRwsF5IeoVzkt9j5skBCuRk0hB
uCzdDdKoarXgtM6Hedad8KVgnyPpMss+myg8Xckv/7n4aagBmzdWOJA5CPcIYcIR
pOeRM0R5bya4bJHsAu6MwqsP8DrrhXU6XcOoOnRFISccFQOwcXi4dSCp4UwIVKnG
KbDwZjM00I0XcgK7X15vRvmB4/5dzICpyG+lQXkku6ZHcOytv8CN3iIvlWj8EJeA
AAUKA8aTJl+bsmrxuC4t+yLLeIOEciIqWiehX8ukxC0K28RF8LAEv0QtTOUcfzEp
a4kY/Y0pSC/I0gFBwty7vGWe5QsKmAo2B69RD5bHZ6Uts5gxdaxbEJ5hzbbw3BiE
5Cfw0Ny5H5F5RilpiiHSr6YB0GfaScYPjFVHm0oDijp/Q3i/9ZDik9kqrj1fNArd
O60/R/aOBUdZQArPNl5NLlogliwE5d9Hdbbmqy87rt4MaPk0Sa+6d3DSXu6JAT1F
47dn6adveqXYM3la6tlNi/KYuNdqY+1IoPn13PVvwFJmthsadqZ6E4MnhxPWOPl0
hySgtr1q7UPiTd/rUabJIKiMQrDVdJp5s0i5B3ZKzf20nHhgtZc=
=6gp5
-----END PGP SIGNATURE-----

--5tfxwor3hoj37ipe--

