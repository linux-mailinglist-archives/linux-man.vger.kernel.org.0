Return-Path: <linux-man+bounces-3803-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D878B3E573
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 15:40:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99F68202AA0
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 13:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41517335BB7;
	Mon,  1 Sep 2025 13:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2sI8N+u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3894335BAF
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 13:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756733963; cv=none; b=Okxy2MWE1Jnw3Wyt2YOnzpSquHmrmwjA73/n1VwHKZ0jT75PRPV8MDgapntATbdX3WZ0NwpQn/r5bHNqrRzTVdplarnfo3YZTlAhPFVU0UTCkHpmGpXi29Qr8V9kj5pn1bW3tw236FlUkheIrqsS4fk7UfFOPYyQz1qYTfsj3f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756733963; c=relaxed/simple;
	bh=stxhIAVl9KzdxxpA88LjVOPxZ+gSPwB6QI3yCwPcJcw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PyqkTUfZzk23/owABZJzsAhlnrEj7pu3i/eHccpC7wmmefL3Hg0uRLQWLgCDAcOyx8znYCTSRiV+xyGstJGkDZJsO9rhRwQEzGl8udHJZsTBCNzMPEIjymsg5Vt94FmdbcsL3B5lju+UHU8N6nm+of4oU272UghIYs5RmOwMFBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2sI8N+u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2505FC4CEF0;
	Mon,  1 Sep 2025 13:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756733961;
	bh=stxhIAVl9KzdxxpA88LjVOPxZ+gSPwB6QI3yCwPcJcw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f2sI8N+uoC5Lhii14AtEDqjaTJ7gAKBgBo1vWiHXRq/E+Evb6RDPuquqTVLzfzyG1
	 mMeIUU1w5V6PpBmh7l5anlgG8rIsKDEQnuyOWVKm4BMsORFx3VtFr+rYQYHluRVPWr
	 5G4oJiRTaW+Pl6qbrEJDlcHvOgfDv2G3+ee0TusTS/vPRFVG5i06e3SAetfMNL1Dd5
	 jqRW1hRfGIhaoI8GxuLSQt7hI48xzaePwITziSuf4YY6v46elpicqmawFYUglz13Fk
	 1hF0wCjm/Ic8HecVk958+FR3zZfseH4O6RSw3UOn/lB0Ka8h1vwFk91A1YwPmqTi2J
	 PknvTWhBm7+XQ==
Date: Mon, 1 Sep 2025 15:39:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page cgroup_namespaces.7
Message-ID: <4q6f2zqkrslkfqqxpgqwaemtmfbk3z6bjikkh5zeffdvcxcwpr@7chvliw7tema>
References: <aKsmQUS9R5QXyAeN@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ezqetzxheyq5osbu"
Content-Disposition: inline
In-Reply-To: <aKsmQUS9R5QXyAeN@meinfjell.helgefjelltest.de>


--ezqetzxheyq5osbu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page cgroup_namespaces.7
References: <aKsmQUS9R5QXyAeN@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQUS9R5QXyAeN@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:33PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<Create>aB<process>thatB<lives>forB<a>while =E2=86=92 Create a=
 process that lives for a while

Fixed; thanks!

>=20
> "#B< mkdir -p /sys/fs/cgroup/freezer/sub2>;\n"
> "#B< sleep 10000 &>#B<Create>aB<process>thatB<lives>forB<a>while\n"
> "[1] 20124\n"
> "#B< echo 20124 E<gt> /sys/fs/cgroup/freezer/sub2/cgroup.procs>;\n"
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ezqetzxheyq5osbu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1ogQACgkQ64mZXMKQ
wqkq3hAAntjjrvzdsbm3l6UoktTxAzTgWwtCQIwRmfpb268TMirw+//ebnog7jSM
tY7G55oSSD1dL6CFWyCo6BiUDhcgfFIZpd+RokhS/F9ziV5s2tt57IL3n5jd6NZH
+xMrFgmRouNVMgoExhdzEKQ9q47BDoI9cwQov4HDdSm2OJFHqMpifI3atzNTqW+S
Hehpckj81LZNyKL7/gPHJRdOaSbY2hzkXz5UW0IdAQHifgmGAJsByozAoLSm2NSL
DXjzx6hB7raGZNQCWE58Hg5bZeYBqtioVZqhaN4WjMoKR7KW2OzoerkvJRGfkY5q
FE7GsGujyU3qY2ncx975YkbhRwHhb2iCsc4ob+KwpnLLpGWqKMJ4QywcAUDG1jB+
9/0CeQiBl00m69HhncEui93LAeaAW1luZ217CJlllZyHU6kwpPuN/pzIHj1sroji
KM+FOWROAlaousFzM8qRrNBsQ/qDKlzpxzXCaW8leDIGO0hgvDEXWhd8fT1hJLb4
TbAKAu2+zjfWw6PQC+betxjAKoZp/5mlo2M+25hvnjvSdgVz2mawSWAIOWHEKN/W
MnulqUCECnwRtN2m3U536EIjZbbo093b73EmjYUlfnnpc1luoWGQc18qF1dLZxD3
/h/GtChixrDmcGH6+bnyK5tsfjUsjIbWXM+U0DKY1YY9ftH4jyc=
=ejS4
-----END PGP SIGNATURE-----

--ezqetzxheyq5osbu--

