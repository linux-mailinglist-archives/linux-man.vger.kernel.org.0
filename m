Return-Path: <linux-man+bounces-3782-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 843ADB3D460
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:28:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44B493BCBE8
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C60226F47D;
	Sun, 31 Aug 2025 16:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ80PvxW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE582561C2
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756657687; cv=none; b=GAU0ePusQ7i6gBmONbmANIfgVemgLEccUaghTUuHjlXjL0w89CSbOH7aUXVOi7p+XUTkVVlO+UcHFVuOupFj6bTskQfNI60UAwRTTropApARLvQhbfvHwKD7VluT2IJoynJjS3N9UgDU0/ygzyY1Ex2jEI9iNjS6xXtjuxjQhfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756657687; c=relaxed/simple;
	bh=EG/8erTj9K+jWwaMKfW/K+dWpbisfqdMGtl1n1cGPuU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Civev5l8k91mT8CmbCFCruo7IB9ejfRRMTmCAkhRTbSyAcTCD0P5ARcemEkys2SGzj9OyfFV2NRzHrsNebt2hb3Zh9OH1vpwvl96cfqdVKqQJxo4wuPVOCFq2SDOR8/kY3f7lCujI+r/dpAMRyyEQ8Tl3Y13FRGFUVfF/eLGP8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ80PvxW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E7F6C4CEF4;
	Sun, 31 Aug 2025 16:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756657687;
	bh=EG/8erTj9K+jWwaMKfW/K+dWpbisfqdMGtl1n1cGPuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rJ80PvxWDyoj9p6xJhlfnCVrc+e0ZhVKd2+7acmY+izXqhzqnGXoEX3laiGtl4en/
	 0OBLlWD+GpF0KLCfUB5yyw+1VGVJO9XEJ/Bw2rOWZsYdP9dug/rxbOHR4UpsHzNtq0
	 gBm9NTECzLOBNOofS2orxcwLzEvSHAp0lhOh0tLezJr4VuMv58USa+tjnqwV2ffbkC
	 jIWJZBhwi1EpXOrJi+JZ/r5C14lp4GW/mxRdK70aakbMIwunqge/ZP8nN4Qx/VsWc8
	 gKTtzrDyt81uWOoUDS/xZNhQEeWxyt73Zs9v45E4ZlidV9510O1pGD+p99rT3uAO1k
	 Wc1FHY9jsD55A==
Date: Sun, 31 Aug 2025 18:28:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page gnu_get_libc_version.3
Message-ID: <vg7djqkj4ooggzy4jkbkybak4ifdfldwy7gzs26smvddlkoa4f@2o5cx3exbscj>
References: <aKsmSqu8Ty29qLuk@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wizs4ttngdhlnaqb"
Content-Disposition: inline
In-Reply-To: <aKsmSqu8Ty29qLuk@meinfjell.helgefjelltest.de>


--wizs4ttngdhlnaqb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page gnu_get_libc_version.3
References: <aKsmSqu8Ty29qLuk@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmSqu8Ty29qLuk@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:42PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    indicates =E2=86=92 indicating

Fixed; thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D96a0a40b8a79e24dbefac19f80e4868026fae493>


Cheers,
Alex

>=20
> "The function B<gnu_get_libc_release>()  returns a string indicates the "
> "release status of the glibc version available on the system.  This will =
be a "
> "string such as I<stable>."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--wizs4ttngdhlnaqb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0eBAACgkQ64mZXMKQ
wqnvxQ//WpLsh3TjSzSnUllPD4rLFT8Lmj4VKPU8jndz+OEdFDNIG0xXXirnlR2k
qPmXXpFLi4WZj9RDocvwrE0jTz9iWb/me5T6dYBXIpaz3TJPa8D1YT1CIRfjso+l
JG2ydywcMmraQVlB7XsMvvdh5L7G26byb2FbDCojCFvQ/2gm09zE+IWOhUbhLaAD
PDkkjf6ucunmgTEf7Dg0A9Jpenp6X12sWLptufV2/nJLA45BKpPUMzYI+SvodFZM
rXW3Pufor6gfX1x3HAPxV50jjCCg4pOnNphbxzCKGqnuItEzeEZ2UhjZhgIHhA9z
lZbusekMvlx1pXcXbYnPSbuUhT1lDxooP6d7Eq2C4tKCtkMhgzL5rvvN+56eV1g7
0n7wld7zpzOvEWVr7JoIbT3huzgQsZBJErbxGz5zlYlZgVJpQWVMqtSPR3WAO/+i
gOOu9Ar2uFh08+y6BeM8rZSfnYEiAAeBi0rFMKbdDwcKHap7HcIgNYZwpal5LwQD
hFtQM6Uigywu9FiqfRMEQq9G8h/GXbfea/ROfcG1PkC7Nnoqrl8USJ9mApuSNEKr
WGByJKDTj2cLoO4x1tcv1Rj/oXQNiWbKNLvCraOEG1nFMz/6+ThLaF4Jhe837HAn
RXYjPv2glhTuGPF453ZfSunf2O/8sqZqsJM4uroxAluCYAG/DC4=
=fV+G
-----END PGP SIGNATURE-----

--wizs4ttngdhlnaqb--

