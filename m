Return-Path: <linux-man+bounces-3721-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AA731B34AB2
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 20:57:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DFEF04E38E7
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 18:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F303727E041;
	Mon, 25 Aug 2025 18:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YC2qyWtH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C62272E61
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 18:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756148247; cv=none; b=YFftsi65oO5qFSr+chIQEh7PvX8mutqzDdjmzGKwJG1R2VfIcVxv/HElohtvLuuFA+NVd3+PzGDXktrmat9i8y8x8gYHPZ9UYOiDvXfSkBMdZWNpg4dJrIBCxpUR03zgfkdtBepx88/e7s+mMArd23iwhI06LXkIoK/MaAYyrmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756148247; c=relaxed/simple;
	bh=THPU+P5jsTYG1DOiM4kIbLvnHqQiVzJ8OxjmeBew+To=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i+keh5HJWxaT+X4hkfFtjh8wDyEVV1UGAuHbsuDpQkabAH4SsHnR6cRw/VuiOvTijE0cbYi081jH9Iv43XjTsIU5aukRdGEn+mny0SwKRYIqyoz3nWY65h4oyDgAJ0G6GAMZGce1XXGdSYlLERyW39BbX5lSMPIMEy3nTnHnUvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YC2qyWtH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C3F1C4CEED;
	Mon, 25 Aug 2025 18:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756148247;
	bh=THPU+P5jsTYG1DOiM4kIbLvnHqQiVzJ8OxjmeBew+To=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YC2qyWtHdo9oqw564PqVv6IuRjGwRSvND7hEtfLVwiXDPaIjITgxdfEfkL08Fv2ng
	 KhLmcC0UO46zUVpUgFflJyGJS+0a5/B24Npk3DHghZG9JOABogXVSAcwOimaco1bct
	 tCc5P7WzAUnqYKwYglFqnA8Z1DjXs1QBBrPu96l55QiAC0MJVUkKCSN1AqFKExyh5F
	 avymE0Z0j3plj5ytspHE764cze7CNVWtMITNoLFBezY46Hd0TyMLVZFh5s1LOdiMcR
	 aIm5rUCvPMcu9IkG6ZfffoGTn3RXe5YdGrSCMV1DGMmXdqGAUEyJuqkda7mnyDkmMH
	 pnTFGNKWLDAgA==
Date: Mon, 25 Aug 2025 20:57:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Issue in man page pathname.7
Message-ID: <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="42znche4o7j2crup"
Content-Disposition: inline
In-Reply-To: <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>


--42znche4o7j2crup
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Issue in man page pathname.7
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>

Hi Helge,

On Mon, Aug 25, 2025 at 04:17:32PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Aug 24, 2025 at 10:04:04PM +0200 schrieb Alejandro Colomar:
> > On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    The URL is invalid
> > >=20
> > > "For maximum interoperability, programs and users should also limit t=
he "
> > > "characters that they use for their own pathnames to characters in th=
e POSIX "
> > > "E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:base=
defs/"
> > > "\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<.UE =
=2E>"
> >=20
> > Hi Helge,
> >=20
> > That URI has '\\:' in it, which is correct in roff(7) (and in man(7))
> > source code.  That is removed by troff(1) when formatting the page.
> > If you read the formatted page that's not there.
>=20
> Yes, then no URL is there :))

Hmmm, that depends on your terminal.  If there's no URL or hyperlink,
this might be an issue in either the terminal or groff(1).

> > The effect of '\\:' is telling troff(1) that those are good points to
> > break the line if needed.
>=20
> Thanks for the explanation. Checking the URL after removing the \\: is
> a valid URL.
>=20
> I'll keep that in mind in the furture when checking URLs.
>=20
> Greetings


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--42znche4o7j2crup
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmisshEACgkQ64mZXMKQ
wqnQZBAAn8H0DdTNcLAzlewb4GeoXye/yDd69Hj+/eJjfYXzipCv/P6YnxOq9vKu
F/PHAVDUTOCc6f3GZY2uvQLssgUTvEAd5j5APaPQS2IVOQznj+oRCla2z1vg7gc3
M/bCcmQrRwpKqcWaDtrgMP4l7OIGF5yhrRXWip0neO0AiYHXQVdlnjo5pVrlQL9J
m/KahyJ5BjncguRU5eBwl94h9EQ5MXwFmhGj5jr9LccxK8Oyjezdg/7qDeJ/mUB8
+bbYuQ50LnE1aFGNaI5dxzycrgbXTcFl3OJCFmyWmc5uGTGzyJthAemZuAh2ppEF
F9+5dcJ7VKbvw5XGDR3y5fjAHMeCFNLjq+5XDXhMXAKXRtIGYSQjMJWGF5zLS2IK
FCAW/pNfRIYIQNDVsTxFWnUNL6g85sFqNRO9FSKScpg+wruZ/rZH+9ozSM/LEjk1
TlXqL/04kZc6vrPyAu2xg6kTI5eI9sfcskRum69eY4762aBgeRrxZ2xGi3F0822J
K60fzvBkhISeRVb2EyYmrzZf1c5bVYAIOBTsA7k1O14iNwvHPfa8UE3P92zUEak+
ItwID3DcEHUMc31/3szuJAKu1Jqw+iA+BOk7ezF0dxG9F095y2MhiOHxFTCXHT7P
8/u+FxEw+P3MQpzyxUpfGxp/ZCBLcF3QF6kuoBSxch5lhhDVLLg=
=G2+7
-----END PGP SIGNATURE-----

--42znche4o7j2crup--

