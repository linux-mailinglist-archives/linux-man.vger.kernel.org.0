Return-Path: <linux-man+bounces-4523-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C0DCDCB50
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:30:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53851301CE87
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3151834D907;
	Wed, 24 Dec 2025 15:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ib0EqAgz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8DD3126B3
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590196; cv=none; b=q5nACzl7V3ot9AaB3BdPumWY0ixiJN0sfhAahxM7kqm0jwvsqaH/A8Hg03ozM1XNz5E+y0kyIhNdNTcAQNrNfUYcOCjH5UOQIDgUKby9K4F/G7qG5IQpV40Y4QBE/e+c35LjfEjyEjGMM7dz+AvTekN8gUNkhPLRq/IkWoMXzRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590196; c=relaxed/simple;
	bh=RcI4z2anj1K7CSYodcfQgt+bFLj94xVAGBsBfJ6mm4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XSlv0Qg/UgwAD1EdKWXunXP+2JF1ygN03xtuiSufiwktYeJKY4S4yFq/1pobSLb+VK0T8T1NCeYC5yqLyrg17Sn48XnpzGr9sFek62FeyXTvenCxDnwjmYyu3dqXvFFCdX+JrGIcZ5D67+vvgWlkA2ffSNX9T0NpbfX9m/kyXoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ib0EqAgz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72B58C4CEF7;
	Wed, 24 Dec 2025 15:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766590192;
	bh=RcI4z2anj1K7CSYodcfQgt+bFLj94xVAGBsBfJ6mm4c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ib0EqAgzs+ryiRymUWrZH+sgSuGguPMbp+7PO+yvCQxKYsXUPTZ74dASfQZhqN6w9
	 AEPrXzbnEAiFEZ5qD5aLWuAFb5wg00ty8NLJMdP8OacuWb+HiLphi9+LxafA/X1RBg
	 1LaF7ub/F1xoUG7wtMAGq5geOs/97AJh6zg63x54gDsh8duCxTIWmExr/ay+W1KOOw
	 6tzyzkEiuKvXmvx0tro95AJ+6xGb/KAFqWdP75+7vqefVrqyTuDfVaoY9lwFyj3MRY
	 uFHbHyJpCrXsbQuaFIJwZU+V+lR3JnYZ969+iWk1o6qnbf8Ov4PMZ7B8KbJy8+M/zw
	 FN0sTPUlSOLlw==
Date: Wed, 24 Dec 2025 16:29:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mansect.1
Message-ID: <aUwGZCvGKIGBOAet@devuan>
References: <aUv63faCNiITftgX@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gbt2lgwskjj6zpfu"
Content-Disposition: inline
In-Reply-To: <aUv63faCNiITftgX@meinfjell.helgefjelltest.de>


--gbt2lgwskjj6zpfu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mansect.1
Message-ID: <aUwGZCvGKIGBOAet@devuan>
References: <aUv63faCNiITftgX@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63faCNiITftgX@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    In Debian unstable this programme yields: Binary file (standard=
 input) matches, add "-a" in line 23
> Issue:    Even with this patch, the output of this command is just a sing=
le line. ".lf 1 /usr/share/man/man3/strtol.3.gz"

The issue is that Debian compresses manual pages.  Please consider
changing the policy to not compress manual pages.  The storage savings
are irrelevant in this age.

Please CC me if you talk about this in Debian.


Have a lovely day!
Alex

>=20
> "$\\ B<man -w strtol strtoul | xargs mansect \\[aq]NAME|SEE ALSO\\[aq]>;\=
n"
> "\\&.lf 1 /usr/local/man/man3/strtol.3\n"
> "\\&.TH strtol 3 2024-07-23 \"Linux man-pages 6.9.1\"\n"
> "\\&.SH NAME\n"
> "strtol, strtoll, strtoq - convert a string to a long integer\n"
> "\\&.SH SEE ALSO\n"
> "\\&.BR atof (3),\n"
> "\\&.BR atoi (3),\n"
> "\\&.BR atol (3),\n"
> "\\&.BR strtod (3),\n"
> "\\&.BR strtoimax (3),\n"
> "\\&.BR strtoul (3)\n"
> "\\&.lf 1 /usr/local/man/man3/strtoul.3\n"
> "\\&.TH strtoul 3 2024-07-23 \"Linux man-pages 6.9.1\"\n"
> "\\&.SH NAME\n"
> "strtoul, strtoull, strtouq - convert a string to an unsigned long intege=
r\n"
> "\\&.SH SEE ALSO\n"
> "\\&.BR a64l (3),\n"
> "\\&.BR atof (3),\n"
> "\\&.BR atoi (3),\n"
> "\\&.BR atol (3),\n"
> "\\&.BR strtod (3),\n"
> "\\&.BR strtol (3),\n"
> "\\&.BR strtoumax (3)\n"

--=20
<https://www.alejandro-colomar.es>

--gbt2lgwskjj6zpfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMBuwACgkQ64mZXMKQ
wqnQWg//TWoqEVMAPzcqVbur07BpdEygHdDkvWP2z+5/HrFZeGjfROtDqY1WfLAu
vyhZYVgS73pgOPoebHIv0hCKYtWyEtBRoz5HfKHnsxBiL6EBpR3BJCEiXBNcHIz5
EASYDdZ8WXCQotf4qNqCo2/EGjTueraFsY+38PDetQfLGgYGW2YBkkR1bKFWxRpu
F0SfHTGZFYEp/MkFzzzRyEObD4xMSOJNLkdrdHRsjm4ZCCLiL1soNDDM55l4fpEn
shWc5A9/YDz409U6Xv5a9pMVLnn2JUfJ0+E2RX9DXcmFLxXDaGZTwpcC49rBN4Zb
5e82ZdmSmaOGfL/BgdZz8b7TZdCEKFrZ80lQanE07D0TOigNFQLPC1YrBCl7Hszb
GCJP4vmX+gbkpbbARtm5HVi58kB6/ykUICIsNFxev4ear6QsD4ZuzXvwczU5N6t+
6baCFd/93Vd7cBARfDt+w3eBYLCUIQ7nN2H4CMv7lj2vi78P3ZiFmSIm9SDrAOrZ
CYUMrhy7ZmtliLddgXZtJxP6Nx6jaEuABUZ5fGx43DGeOT6BV+m9J8JXLBWehwf5
rDsjPqeDjX/7j5RJnurSKwI3JOqMe2Yj+Ri4YVyL061elz91BIvQUGnxHwHJzxgJ
bHijNNsYpIrrx4N3kc3rtJmXUpuv/3u4mVY/g6Px6vJdJ9o1SAY=
=7TMT
-----END PGP SIGNATURE-----

--gbt2lgwskjj6zpfu--

