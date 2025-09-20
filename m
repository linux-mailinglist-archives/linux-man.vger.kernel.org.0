Return-Path: <linux-man+bounces-3898-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D5DB8CD80
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 18:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 298977C2AA0
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 16:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605D1223DF1;
	Sat, 20 Sep 2025 16:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvQMt+0F"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F560188715
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 16:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758387362; cv=none; b=Zq/FbtPWPLJjlksLXJoAAP1QTpMe6gmSJPA5ptSpae+dpldpKqKLPbSNUcftZVpj+IDAa7blMY+kkRzveKazvXodBZ4GeQ1djIKB/F05LjlO7r8EUa51RltNW49SNJrlwFzgruTljoT5JYIEiDgwvsIfuhiifxAts3VVDvrMCNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758387362; c=relaxed/simple;
	bh=1klyj8hB7ssXEo92dQ50FXtKLCLm+EVwKpTBXaB8dm4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k8E5rlXhUV2d54xtl9UwRNB4oq2EWZ6SXvoQnSrLYfxn0XpNylVRNvWP7TyoRwrIl7oBjjzs/PPpXk01PFS/g01aU5Y8YZw+0mwvV9kVrjUmjJtyckXhM3QsCDIX9HRTmcWoKraQmPKZG81k6xb2gXt8jdU9Ee6Ez4mmOg8WVCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvQMt+0F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CEAEC4CEEB;
	Sat, 20 Sep 2025 16:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758387360;
	bh=1klyj8hB7ssXEo92dQ50FXtKLCLm+EVwKpTBXaB8dm4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mvQMt+0F9Sd9hdPgF8VBdRDCDwl+VRY+B/h+4R3QIbxcPiFZ7Q+XsySD9A1g4Eg8o
	 7Fd21HxpgqMvD2ahvhTG9ouaV8H3oNYY/bPggQxjfT3UBKmRw4tea3VP19nP3WDyTd
	 i7/8OWxqWNxmtGq59TO5YDdgtU2yZfQDK7c28IZ+dL8SxPHSmAPORibZVAwJhe/bMc
	 mnpgeaC3jRz9FZNOjGbi7a/WRbtZ5tfVKODG3ySnQyRF3Myj+odGxi2pu9edglRLWd
	 dlUmt07MrM2aGdafGKcI2+l0y/Iit3wNUfzEZVOEY8wDXaABtbaasK+NznZ8WW4MOP
	 K9PxfdQ7ucTpw==
Date: Sat, 20 Sep 2025 18:55:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m6qaitlbeomatvof"
Content-Disposition: inline
In-Reply-To: <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>


--m6qaitlbeomatvof
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
MIME-Version: 1.0
In-Reply-To: <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>

Hi P=C3=A1draig,

On Sat, Sep 20, 2025 at 05:34:03PM +0100, P=C3=A1draig Brady wrote:
> The man pages are programmatically generated from the sources.
> I.e. $cmd --help is processed by help2man.

Hmmm.  That's a problem.

> All of the man pages have links to the info docs for full documentation.

I know.  However, many users don't enjoy the info docs.

> Any concise improvements for the man pages are gladly accepted,
> but would be applied to the source (also for --help).

If I have any, I'll send them.  However, I wouldn't volunteer for
maintaining --help documentation.  :)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--m6qaitlbeomatvof
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjO3JsACgkQ64mZXMKQ
wqkICA//aKCHF+CyjfDMNzhoNrMxacRpU+k3M7s7fD704oCfgeECY/hdqFGidZyY
x3aujpNlHphW2pVIiGN+2f1kt0M6xuJ1o6wuEDIEJmusZQzLc1ZbOBWyQGpfnl9o
q2xSmbtJlIPBpf58irKFvkMLmmV4fKSY8u1kIXLCuEcE+3g5aBI1jdLYpBDMrDZB
XzzujYQN5jE3JcAcPp9NK4v0/r3qThye6X8BNl9CM2IJLqyQkW0is1xUzrZ64725
k5UHsB87MvrnKLRoi2sc8i9PKj7Wz3WTUK/xEgi6onXmkHfP3MZREI9GED6B3xB8
1o+b+QRZ0w6MGvwJCigXHRpY8Y/74kML1P3nmEQBK+i8ZwolOp9Qt1Feub8L4mUe
FNvIOTG0GX/UBL7xVuupMG3Y4TTFGp9JfKRJI8cTQPHTokTlSKjYYWq/20Fk6Ezh
nN44nOXRm9HJm8vs8tCRiqnnpiLZIM23akulr3Xlv6679+aHlUPKWjm9EsIZBio6
3LzOAItTXT/RT0loiHBYqU8Wt1ybsxv7KsZl40g1Q+xRw3Nz/8AqdUjKTcrMTCBF
QQucc6gi0XC0pGO7qV99HxnbMXDikgkJO5px3fyZvrfxE4S0AWxMnHxPCVInpS7W
Pi6xauvHGoEsqE0M2BwuV2tGz3M3ve+c47WtgMslBLU4X4NYApU=
=cJ8w
-----END PGP SIGNATURE-----

--m6qaitlbeomatvof--

