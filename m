Return-Path: <linux-man+bounces-3801-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D6BB3DC0D
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 10:13:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77606174141
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 08:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89A92EF66E;
	Mon,  1 Sep 2025 08:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT4thVpw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2BB246348
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 08:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714401; cv=none; b=anU/mrYWL2FzZlU06n4H93XD2zQo4fDS/zOzAtvYYP0rhiX4WWry5ZI9qXT5b2QkdLTxaBWaRGPbqS3bwgTEPq/JixSbZWZ1xZGfyXudPaJ23AHohsENY5LPJtliSEUZJoOWOymVcJ5gjl1SJvYZFCpHmLnR3atCkkdwT72ENTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714401; c=relaxed/simple;
	bh=OpKGGF0Isrmevpze9mAhLK83CK3p83pwz055IL8dmKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=doMMlkoe+fYmektYnh1WDM6EVYrc7gxWLs35XG0Q5WQY7hSQkYwNdST8k1b5EcgNZ0HPJrsFk0YCXQoOWBrBvP1mjqE+74ekzebXT0XCdb9mj8PG2GOGGL0Ha1gKlqNyvLsOx4CoUBHC/VjsvJ3rMYu9xdbTkaflYaw3gQxd1uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT4thVpw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C24FC4CEF8;
	Mon,  1 Sep 2025 08:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756714401;
	bh=OpKGGF0Isrmevpze9mAhLK83CK3p83pwz055IL8dmKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bT4thVpwT1w4+sLPoPFpRoaD3fOf/0jJvspFBLSYwrzCV7Es7T9zp3pI6kTMcvv4Y
	 bFZ8V3zycfFsVj7zNWat4r8msntLCoJFAFZwgs89lDIPgBsDsGWXCPGMLvVpdPq/0k
	 oAoLWK2hO2wRcYE8eVg0/KN9sagsDuLijMOLaMiciqq4HCnC9E9d3HxYmWL4DnWc6u
	 JJsP9BEVvyXAh2sK3xQt5GkLgkxf9bzJ81+1tQ+l4cvfGxQeWvom8aAWnW7skLy+E5
	 AAr3V8jdJBAPGqFKQSmTBhh3L/LPgEZput23yIlT0232CWBBVXWo2kzdKnaNKPSgYs
	 v3PKDenRhCtPg==
Date: Mon, 1 Sep 2025 10:13:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page console_codes.4
Message-ID: <p57fjozh342dvyfccbyzcb72mokn3miysmyfaeemwwr6xfcxbs@d53qld6xgi4k>
References: <aKsmQ-CU1ZWBzU0c@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yeoxlo462hua5pmp"
Content-Disposition: inline
In-Reply-To: <aKsmQ-CU1ZWBzU0c@meinfjell.helgefjelltest.de>


--yeoxlo462hua5pmp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page console_codes.4
References: <aKsmQ-CU1ZWBzU0c@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQ-CU1ZWBzU0c@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:35PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Why is hard wrapping introduced here?
>=20
> "Select user mapping - the map that is loaded by the utility\n"
> "B<mapscrn>(8)."

po4a bug.

Cheers,
Alex

>=20
> "Set palette, with parameter given in 7 hexadecimal digits\n"
> "I<nrrggbb>\n"
> "after the final P.\n"
> "Here\n"
> "I<n>\n"
> "is the color (0\\[en]15),\n"
> "and\n"
> "I<rrggbb>\n"
> "indicates\n"
> "the red/green/blue values (0\\[en]255)."
>=20
> "Set screen blank timeout to\n"
> "I<n>\n"
> "minutes."
>=20
> "Set icon name and window title to\n"
> "I<txt>."
>=20
> "Change log file to\n"
> "I<name>\n"
> "(normally disabled by a compile-time option)."
>=20
> "Cursor to lower left corner of screen (if enabled\n"
> "by\n"
> "B<xterm>(1)'s\n"
> "B<hpLowerleftBugCompat>\n"
> "resource)."
>=20
> "Cursor to lower left corner of screen (if enabled\n"
> "by\n"
> "B<xterm>(1)'s\n"
> "B<hpLowerleftBugCompat> resource)."
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--yeoxlo462hua5pmp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1VZsACgkQ64mZXMKQ
wqkGmw/9H40v2MNeTPMnTEHPUxaMQjz1bFNaDnI4FMftVQCaOMLoTjBS8xvXBPNA
bR/4BcviaF8akwRp20oIElrMV1uV3aBxX6HxDs8ivDAOTBdV26QFg8gqDqcIojdo
nN1FO5Zpp+xIrL+H4RBPTeHtqyHfBiR89C9wk4tLfetEnoreSrIWbPx5+oH8GgKw
PxVA0mPmrf9WNGmNNCCWbIDfEC1uW2XK+YtabpT5aHP5Xo37iUQCBGZ/Ff2cCOVH
eSdEP1mhLEC6lK/H4AterBh1AUdbgY+PcyO7vDaWMft3nCmODSv2Incery+ikY47
twdVNcWpV8LNzl2WbdJE2jvf+vNiHDFsOmSxu4dg40GN4KP5IfYfW3ov2aZPCD/l
+AcAkUpxWQBsF8H0eyw/CpmW+tlVFbOBmGIbOpiWjpXfzu8UynB5cYgV5vMuQ5ns
/xG+cjevrz2suDX4tF50CyfLi7myH1O317bkDQWymUn1GObB2anWmeLECxCOI1Av
1CuVsuxZKMU6c8VBMEjKf6SYutFGxlEootkeJrQGQY1MiLR4/tyLq+7DZcERMotV
MjTicQA2exs3YnsjgoFeZi7x5vi70KtQeZFNUfTmG0UCQTy5MuYNB00PujpDMvtc
74M2zMvsedyo6KuwETkz+zQzD/QhFUmL3yaJs5xIhLwkme/dZ2Y=
=G3wk
-----END PGP SIGNATURE-----

--yeoxlo462hua5pmp--

