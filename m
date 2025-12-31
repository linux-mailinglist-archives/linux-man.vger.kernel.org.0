Return-Path: <linux-man+bounces-4599-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB34CEC0A9
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 14:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE70A30078AE
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 13:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01A13233E8;
	Wed, 31 Dec 2025 13:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKwvzUXL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02AA263F5E
	for <linux-man@vger.kernel.org>; Wed, 31 Dec 2025 13:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767188924; cv=none; b=h7GfeqG+jSEpbgTS9Jt/stHO5z+hu8YjZ0xt3mMCgsHhM5dp+ELfTaI5/UXrmKys7VkHXcMMk1Uxu5t/ae6QklaSzLa4Iv7HYIeZwyvuEMQ7wvEbTPdW9dvakvbjb4kJsEJK5fQ/crm9G45Yo/IbuTpG6OjZQph6Hdim6gcAN70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767188924; c=relaxed/simple;
	bh=znfU0KuZ7D3tq/mxOlpTf3vlBz0mxkCQc1ouQCNwZdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dBa/8VwkcII1HI5sq+rs69YxsAsUX/yyK8zYMvTKl/5U3zorGCGL9QNQ+XBC/iM9jImajbGkK086Mwn6rpizUfmld7+ci0iBlkUSt8xHyPny5quKN4paAx6UdDoKFTZRw2MqaG1nErsIwTUORU9kPvV2+UJHy85qb3c+CBQbHeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKwvzUXL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85123C113D0;
	Wed, 31 Dec 2025 13:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767188924;
	bh=znfU0KuZ7D3tq/mxOlpTf3vlBz0mxkCQc1ouQCNwZdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aKwvzUXL/QTv5EClnTw1q51TpPxhdcG1RNVU748Se2oR+1HLyvzNpXOBMGGm8P6AQ
	 LdjhrwceTyQKsvrMgQ5QnYjV3BRIDhiPFXTtx/IEXPy9bsxM8xqWWLcI7Z7wGiPskY
	 4guZQPh1FXjapjMHQEdlgDvFidPUgX7CAmBhzt04tqeq4Wsn8+X12yiiKdfYNYf7Wb
	 aKvlJwjKWIn9w2XE4/j6NXYadhG9SZ6Yc1E4N2UUTfQYDYwYf49khDSYY1jQ4Enfwm
	 4/hpaoshMk8d0zYf1V2hPDVIfwoeZna+PKnCWwe6JwTFI4mfuMbM2zBgCb2DRz4B09
	 ZJcRINKmzzMjA==
Date: Wed, 31 Dec 2025 14:48:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/4] Miscellaneous fixes
Message-ID: <aVUpk01CrHZSsze1@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="at7ivfkyncldbqoz"
Content-Disposition: inline
In-Reply-To: <cover.1767072049.git.sethmcmail@pm.me>


--at7ivfkyncldbqoz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/4] Miscellaneous fixes
Message-ID: <aVUpk01CrHZSsze1@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1767072049.git.sethmcmail@pm.me>

On Tue, Dec 30, 2025 at 04:41:59PM +1000, seth.i.mcdonald@gmail.com wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> Hello,

Hi!

>=20
> Here's just a few minor fixes I came across.
>=20
> Hopefully (fingers crossed) the patches will remain intact this time. If
> so, I may be able to begin sending out some patches for the updated
> HISTORY sections (currently at 109).

Yep, they all worked fine.  I rejected one patch, and applied the
others.  Thanks!


Cheers,
Alex

>=20
> Seth McDonald (4):
>   man/man2/syscall.2: Add HISTORY section
>   sys/man2/sysctl.2: HISTORY: wfix
>   man/man2/utime.2: SYNOPSIS: ffix
>   man/man2const/F_GETSIG.2const: HISTORY: tfix
>=20
>  man/man2/syscall.2            | 3 ++-
>  man/man2/sysctl.2             | 3 +--
>  man/man2/utime.2              | 2 +-
>  man/man2const/F_GETSIG.2const | 4 ++--
>  4 files changed, 6 insertions(+), 6 deletions(-)
>=20
> Range-diff against v0:
> -:  ---------- > 1:  a2a2a51ede man/man2/syscall.2: Add HISTORY section
> -:  ---------- > 2:  1477de655f sys/man2/sysctl.2: HISTORY: wfix
> -:  ---------- > 3:  fad6d60041 man/man2/utime.2: SYNOPSIS: ffix
> -:  ---------- > 4:  2f33ba3b5b man/man2const/F_GETSIG.2const: HISTORY: t=
fix
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--at7ivfkyncldbqoz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlVKbkACgkQ64mZXMKQ
wqmt8A//b2RaGT1g2N1ph+5RYxGMCGg5dFjeiG1MbWGSrTXytomE1kkyiRtNfovN
19eIvlG4x1Dvta8fk2KTsxzLo7QWkqHstdY5ATluwcbELYW/KMAarcz79txsT5MQ
TgrRn4KA6i/gL2U0P1WzHSrxP6s1c6EpCFRCCPSuypE+XQMiBppObiImbvT4Q7nc
P1kiRGBjRFOCA+xt5Wf7c+ZSb+9EuQmLo/DCElApYWexZIgL/21hnnDlw4mG3wJD
ADt1c3zCJRqRdymsqM0fyvLvX89StsWmqWs3SjlwvsBkdMAawXsV/WKRPT1QQYAT
PdpGVgoQTUo/NxUwlT0Wm6PhzcvHMs0lxiHa4qP8DExt+lVYdwN8/dSjmLR7uruK
kAUWFKh8hj61Q+REfB/iQzRX6D8/DzSazSjivdYAJapXv5Gad7FVYDRmfJBBDNwS
WeuaODfr9wHLLxiV65Q+Sqes5Gm9jvcVHiAZ6g2diyGDnQze7P4zv48XOoWDBhtb
FjPIYgkmdv8BDNspwK+A61mAc4PQP4YEpFVbcroe4usnpShekEOTEYZYfYmevSr5
sTn7L8Z/9nPOSpxdzaw7WKyOLjCm898xJ8xPBmizhS93N8oHC7I7+YpBjJoVcBp1
Y8JIg3MdiIpbdufeZ/BElzibN9UkVlAzA1c8UZakKBTl2iDAUkA=
=apY8
-----END PGP SIGNATURE-----

--at7ivfkyncldbqoz--

