Return-Path: <linux-man+bounces-3800-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C135B3DC0C
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 10:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2586C188A251
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 08:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672822EF66E;
	Mon,  1 Sep 2025 08:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXPkPWB4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279BD246348
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 08:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714341; cv=none; b=WOrZVirkjrLCAObXMvQUKapt9pT0UFrcNQvpedjIFvg59DJA4rJwx4SOteHOKItCCk7ygtQx+Dzgm+ojcItj84FzsS5mYUeMaogJpT8JFjv4x5AR+wweBazDkeLq8MfSNK1bJ+nyTxZ1ICC7F20BiPkB9dV04MZQTdVqLUqcq3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714341; c=relaxed/simple;
	bh=VzECQOEwWCJ5vCyb1BlVVvk3MaRstS+z1MOqjc0467w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aix4DbDtLvL2mFQWK5WP16Irp4rD5/L94jrdHHBF/M+Pb6QHrMlCzU5Z9m3vSQfGYKxLQdYY8uMbCLVgr07aXXY15wKbRibJQ0b3EayCQyed3C6PB8OzXy+Jt2sBqPUvKqOU7RtidGXrckDiaImNmI0AY6oHpSauMdjMJdvM2iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXPkPWB4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF21C4CEF0;
	Mon,  1 Sep 2025 08:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756714340;
	bh=VzECQOEwWCJ5vCyb1BlVVvk3MaRstS+z1MOqjc0467w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hXPkPWB4hXP9Y0GVxJVuBsrA+xOf+vEjbnGfwK4N1r8hhg/guwkuSF3eMV1NFOudd
	 wOB9YkKnkXm0ub1WLc3LbU/JlWjQc5Lv1t8GPwq8E0pvKaQWufLUshxji1gst5EXl1
	 wzKxSyDd065IDDkIQYbaMeHTZsySPmes91SppuFKc5keJtyNzPseTegQO6A7GWN3H/
	 QgG/CqXJVpxo0PnGKccxGWdioebrnMXtaYF1jtSgeBD1LXyMvqqxzDhKBH5gtdWTVF
	 +mLEMr2r4XZiawXv/4PfXFnIZGmkpCLgSDevGpDsr2FCcg3kyAjL+fOfqJVT2WWgTN
	 JxUniLzF7BhGA==
Date: Mon, 1 Sep 2025 10:12:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page suffixes.7
Message-ID: <hl3jme4w7ktejwe3gfvwongn335bng65uml2d7yqhcgr7k7cnf@a2i4wv6bwtrv>
References: <aKsmQ4FJIlUvX9uS@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4mljo7obanx6jhyk"
Content-Disposition: inline
In-Reply-To: <aKsmQ4FJIlUvX9uS@meinfjell.helgefjelltest.de>


--4mljo7obanx6jhyk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page suffixes.7
References: <aKsmQ4FJIlUvX9uS@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQ4FJIlUvX9uS@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:35PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    tar(1) =E2=86=92 \\f[B]tar\\fR(1)

Fixed; thanks!


cheers,
Alex
>=20
> "tar(1) archive compressed with \\f[B]compress\\fR(1)"
>=20
> "tar(1) archive compressed with \\f[B]bzip2\\fR(1)"
>=20
> "tar(1) archive compressed with \\f[B]gzip\\fR(1)"
>=20
> "tar archive compressed with \\f[B]gzip\\fR(1)"

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4mljo7obanx6jhyk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1VWAACgkQ64mZXMKQ
wqmHTA//YorS/SipbcVzxqQwGAVTi7kFPur/9Nq9/JfGy/GI/bAkM76m+asCjO1c
SwURgOiS70FdZH2r3yobMyPMb39yeg3+B/PxmoOrK8nRCebgdoJklCM64qyOp9aw
7Q358fKLviGWx+51JVwMbrwpzU3F4kLD2ApMokc+sW3QqiQULh3GPm4HN42a61z+
yKSzvvjnG5SnAU7fogLhzEO5kXm2wv1li29W18FTPsSy0YJkmoh1MJygS0is/7xB
kmSTEXAJER1QKijGauOPHBKRQry9uOOIlq8gln0ByWA8H+hxAbDPpzzSyeqpcdUS
+D1fKjSP4YpCKF1SkqjNRNCSurfoF6Rx+ANJcioM3AFQJSi+siIVbr1CxM8ExEN4
obsPglAXjVIy4emS2wMTMWTDIlpT3sMCenfaga2RCgd232Zq0I8QxmRKQrb20BqZ
+xZgB+0Ou4ukRBTKuMt2sRIsPFjHU08gT5GenLq41thfeS3l3Umfwj67p5wecpRf
1ajJIb8kbd1gvltYzkKqlG9B0MXQqmlOeWmQKLMriv2wRD4djs2dIuDijIAHfKw6
cZ/IerA1IpQ9R3PeCyWk+7WEcn06hJH2F5AKu5jXpZFInY8Dlz4KviUeucwgBoac
04fmCTE5L3K5jDbGGjAAQmqwjr9mBnn11G3NLHir078HUg5X2EU=
=Smbs
-----END PGP SIGNATURE-----

--4mljo7obanx6jhyk--

