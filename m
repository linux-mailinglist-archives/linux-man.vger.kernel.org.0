Return-Path: <linux-man+bounces-3741-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA734B3740D
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 22:51:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC2411BA4D27
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 20:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A2F7283128;
	Tue, 26 Aug 2025 20:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBF+z1Uy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE642281508
	for <linux-man@vger.kernel.org>; Tue, 26 Aug 2025 20:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756241493; cv=none; b=dCYvfe6DRtfcmEUZaBSKHr52LGHE0WRDCysiMoX6U5bqlMBPSjd40EFVppquu45ewUQDg8iRtzBVmLBV6goPZHfD7BOJDuksi79GC4UR5sbe+HGHjYBbGWh3eBFLVer2PjVuq3KlwetfCTaqsn/WN4KEQQDD2PPcdTThFeJ54K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756241493; c=relaxed/simple;
	bh=HscO72aZ/WCXkLsPvTedWvsx9AE/7EIajPYl3I7FqrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PYNIKh67GdSyk1Oyw7W/RWfgshd3pL6Rfh7MyxtZ98pGrn3ypFDsl1kUthqHh0qaaxF7/zEoBcWVB330WnnW7xJcO6cO7jWbAc15NLMFUTAgv6f5mRodpYhMsCMD3xQI+whaSo6JAlGWIIYmcunC4LDEyj2BKK6YFItFIHE7BvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBF+z1Uy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BB12C4CEF1;
	Tue, 26 Aug 2025 20:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756241493;
	bh=HscO72aZ/WCXkLsPvTedWvsx9AE/7EIajPYl3I7FqrY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DBF+z1UyrJ+hjwMGHYoWPi+jXrn5Qg/sgLHd2+4IlMlP9kSEI9opXomDAFFxf0HAo
	 tn8tCIUds17VHlJYM0+Rz3Zo3uP21EDrjelcpI3ALI8eXzNyZCmnyfGI/95yhgjthU
	 soxj/XXhhbeGwebTg84LoYuuGRPGBR2s6unYjuYhudgyOmR6QMm82sKGnj/17sWFQJ
	 4l97z8CJ5FlgbVP6kqgipaYcOudWS149q0y9wra/IN1pXbDAZZStsrgd0nO9VA9+Bm
	 swwgN5kRCH1g/bgUv8OJJ9/etEEiFoHv93CMh2EgKzwzoBf24i03KamVHVY/Gwevku
	 zpt3sHP3uxpfw==
Date: Tue, 26 Aug 2025 22:51:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, man-db-devel@nongnu.org, linux-man@vger.kernel.org, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
Message-ID: <xefutc5fg3cgpsaxfzlj3h4ejaxndxbghznem3hzy3vsvbun4i@tqks7vd2l3zb>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
 <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
 <aK3v4_PHAtycO4qz@riva.ucam.org>
 <20250826202309.ygpshcemn4tcv3nq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2sh4sq7cmf3pvwmx"
Content-Disposition: inline
In-Reply-To: <20250826202309.ygpshcemn4tcv3nq@illithid>


--2sh4sq7cmf3pvwmx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, man-db-devel@nongnu.org, linux-man@vger.kernel.org, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
 <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
 <aK3v4_PHAtycO4qz@riva.ucam.org>
 <20250826202309.ygpshcemn4tcv3nq@illithid>
MIME-Version: 1.0
In-Reply-To: <20250826202309.ygpshcemn4tcv3nq@illithid>

Hi Branden,

On Tue, Aug 26, 2025 at 03:23:09PM -0500, G. Branden Robinson wrote:
> Here's a sketch, interpolated into some existing logic.
>=20
> .\" For most purposes, we treat the nroff devices equivalently.
> .nr an*is-output-terminal 0
> .if '\*(.T'ascii'  .nr an*is-output-terminal 1
> .if '\*(.T'latin1' .nr an*is-output-terminal 1
> .if '\*(.T'utf8'   .nr an*is-output-terminal 1
> .
> .nr an*can-hyperlink 0
> .if \n[an*is-output-html] \
> .  nr an*can-hyperlink 1
> .
> .if \n[an*is-output-terminal]) \{\
> .  if '\?\V[TERM]\?'gnome-terminal'       .nr an*can-hyperlink 1
> .  if '\?\V[TERM]\?'some-other-terminal'  .nr an*can-hyperlink 1
> .  if '\?\V[TERM]\?'yet-another-terminal' .nr an*can-hyperlink 1
> .\}
> .
> .if '\*[.T]'pdf' \
> .  nr an*can-hyperlink 1
> .
> . \" Later...
> .\" hyperlinked text desired
> .if !r U \
> .  nr U 1
> .
> .nr an*do-hyperlink 0
> .if (\n[U] & \n[an*can-hyperlink]) .nr an*do-hyperlink 1
>=20
> (I don't, off the top of my head, actually know of any terminal
> emulators that implement OSC 8 besides gnome-terminal(1).[2])

I see hyperlinks in xfce4-terminal.  I suppose it supports them.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2sh4sq7cmf3pvwmx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiuHkcACgkQ64mZXMKQ
wqnmbw/6A2yqOJIGWGAPl4NHgPCpfnzPdtpECNPk5BQ47C5lblKsOgP6nVZez9fq
9U/u56fASHfsnsBp2rQqAY+G8XFz/z7TbM2qeJGgdl0zmOCWffgjwxVXCIvlWNFB
nkIDVZHaagr5BdLv0agDAriA1k/HoX876Q1y+kZsKvT6ZRxssPvth9cL/YAvlJu4
W58mKQaxutcVsRdbgvb3dcLVlH8q1YTdhW7ySaLeVdf7vO4sKLOqL7UGcy3djcu9
JXFITUFo1VeXdzoQ66T+AnPQk6MwnMe+r2I6OIpd9GVmxoPm9JNSb+1a2Oh/U20S
WyjR2pKMxSPxR6vWdAWNRxV6yaRrDZ3036Ik1/ImF0zoy6VQU3Nl6LvD7mf7KiYK
t+CxQxi0jEM13ctA4ux4EPGQJmy0TkHzP0SruHzRXWG+BZwYtPNcLlWvYTkFSOxA
Btms02c2P8Hd0Cj/w4yQpzUR9QHPg07PpPq974dXBmsiMWplT3mrMp+D/pf30x1j
ZxnCBF+ItDqxt2JGekVLjORqjJCwQ6ReWZXVwawJHr267ZNTe29N5lTXl5Nh/EU2
rkXI8WtmANTxZKa/l6oSuOLCslA9728oH3bL1kco+V+Oux2E+XIhnvDz9fehcclC
Mjj8toG+qqvIBtW3Hc1OwiD5JUvIavJwenYPsA4hKYjThGrND0Q=
=iWBW
-----END PGP SIGNATURE-----

--2sh4sq7cmf3pvwmx--

