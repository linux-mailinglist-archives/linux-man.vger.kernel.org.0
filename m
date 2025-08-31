Return-Path: <linux-man+bounces-3785-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48582B3D469
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:41:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CB3E3BE306
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B1CC4C9D;
	Sun, 31 Aug 2025 16:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtOWyKQO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFF5207A32
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756658502; cv=none; b=aH8vDk6uoWxkaWWhAeXPrkoQKwLqK0SB1vR+fzxq0ra70s+a3KNcq1BM6yt6vKv3p1bteNE4hi8L+H23WuUC9MruluS1dydjz0sDjVzi1LpkgkDYhovPe8mjBOiBz9TR9ugGuAF0CSDogDFoktr0ZWjIBcIXgqgk8sWBdAH3vpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756658502; c=relaxed/simple;
	bh=bfPjBaiFoLnOvgSltVxUFkwfKXr/4/qJSVdnoKOGUrU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YSU61AaKSq8bC4077e0EVY5IY0E9mhPfDmt1OxH9n1pjypV/p4H0gArn5z1krAVFa3ldfs2KkNcc6r6NK0EVo7mIa0EDYjee6wI0RiZ3RQJXpbN/miRNYtc30gZWgoMgyUbg35bFI41XnSJhSJrFIACTNeZq5ekl8ox7Z/WxBJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtOWyKQO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84747C4CEED;
	Sun, 31 Aug 2025 16:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756658502;
	bh=bfPjBaiFoLnOvgSltVxUFkwfKXr/4/qJSVdnoKOGUrU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TtOWyKQOHoQXPyMk+ndQFzH/HUcnG+S6Kv6umfj/iWmS6rCWuddiUoCSxrVPP8F1P
	 mXv6d4KMxsfX55TgqCGLGHigMdAbQRMDjKC33sg7Sceu18OyHYsy/8tG21WdOKZcuR
	 i/FoSyi92k8oizl3ehOWcOe7mgGatbCCMTbma9xMcsnBHhxsckN8OPXy26i5lbVBE3
	 46MyVv3ET/XCPwHW1x5A9b+QVBxbxZRYdtglih7teW6e1jp6SQ6ywxmzQfS4H9OEtC
	 65XkWMhrsqtVww6TjFqaf5ck+mZsepAbXxf+XQflRXvybT2vx0JoqEpPi8Nb1GiMB1
	 VJloWNN/zCmsw==
Date: Sun, 31 Aug 2025 18:41:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page attributes.7
Message-ID: <qyamu7rdnt44vav4nr7lpkydnmwahit27d4gp4i5m46dttyygz@g3zqmghwfbgl>
References: <aKsmSYpPKR1MPD8H@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="btdqnobnsfor7ajf"
Content-Disposition: inline
In-Reply-To: <aKsmSYpPKR1MPD8H@meinfjell.helgefjelltest.de>


--btdqnobnsfor7ajf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page attributes.7
References: <aKsmSYpPKR1MPD8H@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmSYpPKR1MPD8H@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:41PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  The function =E2=86=92 Functions marked with
> Issue 2:  reads =E2=86=92 read

This was solved last year, in

	84e1cf996f02 (2024-11-17; "attributes.7: wfix")

Do you still have the old text?


Cheers,
Alex

>=20
> "The function marked with I<hostid> as an MT-Safety issue reads from the "
> "system-wide data structures that hold the \"host ID\" of the machine.  T=
hese "
> "data structures cannot generally be modified atomically.  Since it is "
> "expected that the \"host ID\" will not normally change, the function tha=
t "
> "reads from it (B<gethostid>(3))  is regarded as safe, whereas the functi=
on "
> "that modifies it (B<sethostid>(3))  is marked with I<const:hostid>, "
> "indicating it may require special care if it is to be called.  In this "
> "specific case, the special care amounts to system-wide (not merely intra=
-"
> "process) coordination."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--btdqnobnsfor7ajf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0e0AACgkQ64mZXMKQ
wqll8w/+KTMRAfJrUSS5Z/ZpNcFLO6XEPa2uC5BjpvmhvZiSezYZX0fJr4Z2He9g
O/LSg7f0PtqKpRzNBpvWb4Rco7vdTmAJrafipm0AHdIzu6/B+WDEv+yhhL1wK3+w
qr/Mi/jRq3RVyVGYKywdP9ck6hQKnyaEXbxS7NhKIG9dpNWyXBYhHouj8apCRzMK
E3RKLrudGiXQN6WOBnO7dXZTBSmX0AHJDCWgdEDgHf97rHFc5Vu+dRuVU91OXld+
P/6jBNFoUAVOt+kh0slIY+Y21s162WiKGtP8k/JtrGu5EMAFePeX/aD5ZS7z+Q/F
IlNcLb2Jh1irwY3UYQmnTJ8sjC2cPUZcD89oIZjfxZU3azgGa2B58hJCCqX/pQ5k
0bWRUGLaF9qmh7eBxDHtSRlxhBNav05EPhdQKLL3KO6p/tEtSoTDWyhD1nXafxTT
4XiRkIQ9Rc90uEBRB6QdKcKw6vi5mHddUVU+/bdPad3HwPm9muxrQ0EAeO2qW+q8
pqjltdtM+BLdh79TEhy4Y8AqzOcwC7Ogq05f9F3qoVx+xASnaOIJSGImARMEEyFK
gVvEHId3OnngqD1DNFvjQ1Fn6csAQqqCLI62FC3H9yckQhZbj3yPOqBO8fyjpv4m
zPwrkxK2mHuwu2P3d3a6UCC9puoZ4MG68fTRzuiDRq2ywzahlm0=
=xf7I
-----END PGP SIGNATURE-----

--btdqnobnsfor7ajf--

