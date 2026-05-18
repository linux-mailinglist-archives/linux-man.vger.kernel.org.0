Return-Path: <linux-man+bounces-5558-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +H+UIEeSC2ohJgUAu9opvQ
	(envelope-from <linux-man+bounces-5558-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 00:27:19 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D80725746E6
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 00:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DD7E3021E52
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 22:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B1F63AA4E9;
	Mon, 18 May 2026 22:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au84S1IJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF962F7EF5
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 22:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779143076; cv=none; b=SeWYuD+114jI51Ges3SCc8KmpXWUqzVEk7ZOk5xudU8oKb+Jb7Qx1sj8uzQZx49ZLfFDCWe6vXxNXe6LcrRiGjKk0u1R/51HdBI3xvk+Wzjir6HB81Cng3rthQ/YqBcZTT+rLQiT4crsPvP4G9wWgqywZsthXmt3pvxQRtkgG7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779143076; c=relaxed/simple;
	bh=tUb8qBcz5rXWnoSed9Y9/6jkHFlfBruH6oAyyFDWJmc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G3nT37lcFYYWeSxwk6r0x8U3Vu7XVj2x399C9iNhLvbzSMuQddR2XJyTiHb5Lzz3gm3xV6EEO4BaEGMaZN8fc48dACnbnyOc164h29X0vk/aZl/Zzq63rO0eRsIL1zmox8KBNoZYqmxFDcjc+hVDK6j+fyww6dmGPuFpB7oQOpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au84S1IJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D3E1C2BCB7;
	Mon, 18 May 2026 22:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779143075;
	bh=tUb8qBcz5rXWnoSed9Y9/6jkHFlfBruH6oAyyFDWJmc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=au84S1IJMryC+d1s7/1kfdNdLhOgd2foVK2qhZTNXIYqKlkPF4UnI59al2zWDmCHp
	 mxOXo9GgQvjMEWqTmhhv8mpPo1TTPC/Lvd21Kif7MG8baxDdv5GV5tpD332Xo/YvSx
	 zJ/ayOp6cMJ3z93koGzdu8HGBFoZtH2s+M1IKFUKxKMMIfN0F2xBULd7PvD6eA2X8d
	 QPdXj1XgoxQSD+r+1JtXGT394B0gL2rhfoaRCvfq7r6sVI4ny+QLNnZju/sWe97v1/
	 A60RlFVpJ5neTXdVLHhm3V80W3MN9T/8yBbp22NnwhA7za34DMhlWf5+8tkWjM4VO1
	 qTnBY1f+T+U2g==
Date: Tue, 19 May 2026 00:24:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Tomasz Kramkowski <tomasz@kramkow.ski>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ioctl_tty.2: Fix references to TCSETS(2const)
Message-ID: <aguRQYY1MGTUkOu3@devuan>
References: <20260501145701.66573-1-tomasz@kramkow.ski>
 <afe6kmdqSAY6HrR7@devuan>
 <DILRHLVWZ1H4.3KE7ITJLCLV17@kramkow.ski>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o74evvfolihc7cja"
Content-Disposition: inline
In-Reply-To: <DILRHLVWZ1H4.3KE7ITJLCLV17@kramkow.ski>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5558-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: D80725746E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--o74evvfolihc7cja
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tomasz Kramkowski <tomasz@kramkow.ski>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ioctl_tty.2: Fix references to TCSETS(2const)
Message-ID: <aguRQYY1MGTUkOu3@devuan>
References: <20260501145701.66573-1-tomasz@kramkow.ski>
 <afe6kmdqSAY6HrR7@devuan>
 <DILRHLVWZ1H4.3KE7ITJLCLV17@kramkow.ski>
MIME-Version: 1.0
In-Reply-To: <DILRHLVWZ1H4.3KE7ITJLCLV17@kramkow.ski>

Hey Tomasz,

On 2026-05-18T12:21:50+0100, Tomasz Kramkowski wrote:
> Hey Alex,
>=20
> On Sun May 3, 2026 at 10:14 PM BST, Alejandro Colomar wrote:
> > Hi Tomasz,
> >
> > On 2026-05-01T15:57:01+0100, Tomasz Kramkowski wrote:
> >> Change the duplicate references to refer to all of the different
> >> variants of the TC{GET,SET{S,S2,W}{,W,F}} constants.

I think the first W should actually be an A.

> >>=20
> >> This looks to be a bug which was introduced during a restructuring.
> >
> > Would you mind adding a Fixes:' tag for that bug?  It would help for
> > reviewing.
> >
> > See <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/C=
ONTRIBUTING.d/patches/trailer#n16>
> > and <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/C=
ONTRIBUTING.d/git#n46>.
>=20
> Fixes: e59976296 (2024-06-13; "ioctl_tty.2, TC[SG]ET*.2const: Split TC[SG=
]ET* from ioctl_tty(2)")

Hmmm, it seems I pasted the blocks with the intention to edit, and then
forgot to actually edit.  Thanks!

>=20
> I hope this is sufficient, but if not, let me know and I will re-send
> the patch with the tag.

This is enough.  I've applied the patch.


Have a lovely night!
Alex

>=20
> Thanks,
>=20
> Tomasz
>=20
> > Have a lovely night!
> > Alex
> >
> >>=20
> >> Signed-off-by: Tomasz Kramkowski <tomasz@kramkow.ski>
> >> ---
> >>  man/man2/ioctl_tty.2 | 16 ++++++++--------
> >>  1 file changed, 8 insertions(+), 8 deletions(-)
> >>=20
> >> diff --git a/man/man2/ioctl_tty.2 b/man/man2/ioctl_tty.2
> >> index 1d6e279c0..cb2776867 100644
> >> --- a/man/man2/ioctl_tty.2
> >> +++ b/man/man2/ioctl_tty.2
> >> @@ -42,21 +42,21 @@ whenever possible.
> >>  .TQ
> >>  .BR TCSETSF (2const)
> >>  .TP
> >> -.BR TCGETS (2const)
> >> +.BR TCGETS2 (2const)
> >>  .TQ
> >> -.BR TCSETS (2const)
> >> +.BR TCSETS2 (2const)
> >>  .TQ
> >> -.BR TCSETSW (2const)
> >> +.BR TCSETSW2 (2const)
> >>  .TQ
> >> -.BR TCSETSF (2const)
> >> +.BR TCSETSF2 (2const)
> >>  .TP
> >> -.BR TCGETS (2const)
> >> +.BR TCGETA (2const)
> >>  .TQ
> >> -.BR TCSETS (2const)
> >> +.BR TCSETA (2const)
> >>  .TQ
> >> -.BR TCSETSW (2const)
> >> +.BR TCSETAW (2const)
> >>  .TQ
> >> -.BR TCSETSF (2const)
> >> +.BR TCSETAF (2const)
> >>  .SS Locking the termios structure
> >>  .TP
> >>  .BR TIOCGLCKTRMIOS (2const)
> >> --=20
> >> 2.51.0
> >>=20
>=20
> --=20
> Tomasz (Tom) Kramkowski
>=20

--=20
<https://www.alejandro-colomar.es>

--o74evvfolihc7cja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoLkaAACgkQ64mZXMKQ
wqmvUA/8DaHk9Fgz5MXeWSIreomXxP/Om1ao40oRJN9wIibghxO4ZlMiCscRULi5
Knie9N0iIXYnRLXPc4acX+ANgCbIEeYJ5/kandY32wvUpYYC8sKNavSO+HaTmUI3
YTIsnfVJR9IcDd7wluolCNgABt0rpNqPZMNS7bh4zd9E9V7X6MciIzha+38gINyN
GoCAe+sJWX03pJf9YDI1oJKE3xIB6NxrE+IXa/+WXk7Ic37ECePx98sqRvvTUFC0
kkWJpue3Bb6nx+XRSZhx42DM3fljG6P7g5OAVNubxgo6cb1mKAt3WIPskABE7fcG
8/NYcXy3GkYHHkiWa2OTVgynRJVVMpV+L7Il1aIYL6n9KMbj422xCcCNlJyiLf3A
Gulh6lEo2agFD6kT54n3289h1jF4NaUjSGNIExE+DurRPZ5AdYoMCOVCkrCleAjq
yNFWubQ5qrlC7UzaY9SiDf1qRBV0OvLBD7feyx1KQwfDanEN31fQF233h4LBgK1a
GDsDnpUl0sT7EclzS/+o/Nkqx1o2cMvFtw/wgmVDe9ZvG+fPevWqi3XtkD75zT0A
ShNHwkOQPi98wTfW5imbrisDxJ6m+AUJ1GdBVhFwtvRYXjGB1lGU2rS3A19rlrf9
ffLIMBPEZhnXwqkMublxz7QvYSVZLEfMlJlEOMLHKjRuAj8faLs=
=xGvt
-----END PGP SIGNATURE-----

--o74evvfolihc7cja--

