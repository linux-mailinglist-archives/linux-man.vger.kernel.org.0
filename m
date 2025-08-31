Return-Path: <linux-man+bounces-3774-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A08B3B3D2AD
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 14:11:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61D09441545
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 12:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0EB225785F;
	Sun, 31 Aug 2025 12:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="il0yF4UK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E46823C8C5
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 12:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756642289; cv=none; b=pOCAh7r652X2VNEYgFthjH5mSV4SAVnGj8XLY5v3SsSH2TQFrXNGg7jBsyHdjkkro9xuYsAz7ag5d72JndMWQ8cFfuKwVr+8x9oU9g1lo8vetNNA7DAKgDhO2laXCaIzRL9CLCjK/uHp3mLtAJxqsHk0ZXHEsoI0IcrlxTit/bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756642289; c=relaxed/simple;
	bh=Pb7/l/00i0ed5SHu6rXdjv7JA7NhQT6Cn/HaWaJR8ho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mJRYDwiLFue0vl/o0h/CNw1YO1eHeAvcyt1WDPaXr/dzip2jKP1722M5R51E9IWl9u1z0HdF9UcMl/9V5bpO7QEj9SDjuhQ/Jv8uZsRTN5QPxwIP5VtqbQEDE61xLTlLj0dyN56nq0siG4r8triC9s9xz4V/Sl56+5fddHUd/AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=il0yF4UK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A32D2C4CEED;
	Sun, 31 Aug 2025 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756642289;
	bh=Pb7/l/00i0ed5SHu6rXdjv7JA7NhQT6Cn/HaWaJR8ho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=il0yF4UKoOH55XjyAQAQdHviEjBHgvoFcGCQTHH418VaUofDeiEqlW8d+g86nSkT4
	 HlLlKIX9kLAak+SRGZuyGKhEKoR9Z4shSu51Ukd3NqmVYqKbsBwqNlWjriQWvPBLiD
	 Pill5sNRBiFYf9sGEEq+WpHY1AVKqcyspvtFyus7ieyFX6KILiK9uu1fKOLD5lP6v+
	 U4Dd+u8Eu2F0BC7REX4AvgTYdnYq7r8hT93XiUJoMLHNEcyVG1rR0IoiiGPuXMdRU6
	 b4dRcqevmXBToU+XDo9y7owlluhaA/ee+Ax8ohf1Xv2bDXCyK5SKMc1SmQGmZpPmh/
	 ftHdcEB5BgYKg==
Date: Sun, 31 Aug 2025 14:11:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cla5p7aymt7qqupk"
Content-Disposition: inline
In-Reply-To: <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>


--cla5p7aymt7qqupk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 31, 2025 at 11:42:49AM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Aug 31, 2025 at 01:33:46PM +0200 schrieb Alejandro Colomar:
> > On Sun, Aug 24, 2025 at 02:48:45PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    double space before "after"
> >=20
> > I can't see that.  Can you please check?
>=20
> > > "The contents of I</etc/motd> are displayed by B<login>(1)  after a "
> > > "successful login but just before it executes the login shell."
>=20
> I see the double space in our po file, but I cannot deduce how it is
> created there, maybe a po4a artefact?

Possibly; if you report a bug to the po4a, feel free to CC me.

> So please disregard this issue, I mark it accordingly for our
> translator.
>=20
> Greetings
>=20
>            Helge

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--cla5p7aymt7qqupk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0O+wACgkQ64mZXMKQ
wqlADw//QYGNpRUEY8/9Kqmb1av5pr0TBJvhQPPBwAMx1knapZ3AnfxqQmQmvX0h
l5Ok2D7Wr7wxuF7MXd6bVqUmkKUo5pf6gPvn5YknKPV96YNC6MFT4Tr0ZGeYzTY5
EV0pVKYxzq0Tz0LO3Y8kqlGbR071vTtXgaAc2A+5ZILkR4N8pQUjdeLzhhTd1JvC
OpvQh+GltUNvIzK4QEBPvxroltJtFnaMqNV99x+tLAl0aVlTwX+pHcS70FkI4db4
5/KxZyRn8GuG5HhzUeQC2vGEj4OHoa1VlKKhi+pTuEbnqhIJ+L/l06S/fTAut2tz
k2DN0V7fzLzRpBohvhr9o4yJqi0ZCI8UOA6qbsCEbqyLbDRHtOtwVw+y5d9emkwf
HMdsRu43/GVM5wh1iHLo4qLssxguzBZYvL9Wc7b/sDFXP8nFuGTvV1uLIfFJMDA6
/rT8cOMR95OnJePzpVVfsIq+TChQIPeiK5i1p9xPW/sWPAFAuRs+ypf3dtkezRLQ
btG5e5C7fv+p7ekdUmDY1igLD740ujdIFguSJZjnufINSjnKu5goExu09kbAI7JV
SWgt/QGu4Chrf01vVcm3TKWQaCBXExz62Zh+wlAQSxFWyfLx0AF3ylBdufOpm74k
P0owFSK8SE4BSKzk9PnxsqrEc8stHZUvnk3P4bm/YBGYmi3q1Bo=
=UJ9E
-----END PGP SIGNATURE-----

--cla5p7aymt7qqupk--

