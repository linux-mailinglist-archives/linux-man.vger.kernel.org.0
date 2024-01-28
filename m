Return-Path: <linux-man+bounces-404-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B78083F9DE
	for <lists+linux-man@lfdr.de>; Sun, 28 Jan 2024 21:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5909E1C213BC
	for <lists+linux-man@lfdr.de>; Sun, 28 Jan 2024 20:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA0133CE7;
	Sun, 28 Jan 2024 20:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfYsM2PU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D286D3BB5E
	for <linux-man@vger.kernel.org>; Sun, 28 Jan 2024 20:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706473667; cv=none; b=tfTFd1XRmB6shywqDiWtLbF67amM8C6TDmFCRqGoR5evur6vFTvWR5fektYbuJ1b6vuknjq2HYbC5rjJI2jxLIawS+VDK5y6xAXjIpkPPg8RVJD0vxbQPbBMdR7NyK14EicK9zKhjqEy8C1YjLTKmoCTbWfGs4wRuqKiqTH5klc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706473667; c=relaxed/simple;
	bh=EO+xUEob8/STLoX1eH24UawVvp+9mcUlPZJBOGQn/LA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=daD2F0COziDfz2SqSTZDKQK3sIO8DLRpB2fJg923ISng6QndARijtYkyZFn/VZrhkV2148FbhnzKdjut+qAO758u1rePAzXOA1vVutNCFjjl2ebDeDef6hR4lqggnWZHWBVuModvQbOwqts1OeR+M47m0DBbe1p5MOwwxLpDPnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfYsM2PU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52D36C433F1;
	Sun, 28 Jan 2024 20:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706473667;
	bh=EO+xUEob8/STLoX1eH24UawVvp+9mcUlPZJBOGQn/LA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PfYsM2PUMQf7jFc+dsWUtFk8INnO1ST3YLQmWZEAv95FTys6SncyO860hA9V1PMij
	 eA7tCa77y0udsY0ISXs//cLxXgbfl0htO5EDc3vwLqQy5k9rB3PRNsbdl9YKWn7rmc
	 RZeVJb3lWhz0f0Jwm3JGGGCQ0l1uDUvYde06TrqooouvxskRm92JUJ3HR4/nCN5JEW
	 MVENe6Vpef+MdzFqfIWYo0MZpb669pttsagyj/XtY90kRvPr1pzpNFYTx3gba/Ppnx
	 FMVKbiUatv9p1kW0wLKEipDAYkUlkzriCmSGevj9J6QBnXG01q5/SEQIuCu8DJrtFX
	 dTJff6tKxQQ+g==
Date: Sun, 28 Jan 2024 21:27:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page adjtime.3
Message-ID: <Zba4wP-oe-7gF-9o@debian>
References: <ZUJaZJzhUkuDV_Fs@meinfjell.helgefjelltest.de>
 <ZUJ6JnryG7BnDf5P@debian>
 <ZaAiIziggN9w2Y_Q@meinfjell.helgefjelltest.de>
 <ZaBzlVVjMx0DvATK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="viEd3HGO+2PIYWNw"
Content-Disposition: inline
In-Reply-To: <ZaBzlVVjMx0DvATK@debian>


--viEd3HGO+2PIYWNw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jan 2024 21:27:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page adjtime.3

Hi Helge,

On Fri, Jan 12, 2024 at 12:02:45AM +0100, Alejandro Colomar wrote:
> > Ok, then I mark this "WONTFIX" for now, so I don't report this again.
>=20
> Re-reading it now, I think your report makes sense.  I'll fix it.

Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5f971ca8d6d9974d5c5e4c369841027f7edd47ca>

Thanks for the report!

Have a lovely night,
Alex


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--viEd3HGO+2PIYWNw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmW2uL8ACgkQnowa+77/
2zLFig//csAISY0oHO/2TPotKEAiqTmtO5EQVwyrBIJneq+Ljz5C1G5QJJCwx6QG
dB/KgPAhRWpuBUacJcHj41QXIGVxicGneBRIzscl8IKvFU28MfTPS5RiLMPrxJQH
jn78EEja6e/2GLEKsQihyPCc8H55JE8bEeqb1wX77eI+EDU/qhndvy7cLCKCu0m+
xV/IaoqppoMLJtvKZWLOAypLkeefTCEDclXHnvZhA1htRyG95flIp3gRVQ8vYNP0
DtgbIlKpUC12PIJJeIfdEti99pkc0Y9QKgocd0+R/k9rUKy6+a6WdMaKlLuY6puj
r6Tej8YPzGvm/z//mOxhY9vYXKHVvAm7LuWNg6bve9QeiOTW8ZHd/aewj8E8Y6qF
RGN7MM+1YwJOwihmA/Wf4VhAVGDqb8Ue4NYJ61fAI144AnAjrx3Gevn13x81p8yd
taJziA22hl2YnNVhOG4t6JN2Nb+us60opf6PRkumVEUg8RjIPgyYIOlf6zDnSyqe
e53+8TOC0lMz2bwnqPGzIAkzywUpgZ1FhcqVqm3wgLmhsg7rGSvP0fJaT3uBwzh6
PHVvtGdWtAmvNk2cyBRNLRrygg9/xG17nFaaPyEDJT5FBkmDGLqFFD2ByrhEnDIZ
dB10KNRa5TF9l49jYPEg0dxP4IKAC3WhtMtCy60/jTip27mfC+Q=
=imTJ
-----END PGP SIGNATURE-----

--viEd3HGO+2PIYWNw--

