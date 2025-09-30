Return-Path: <linux-man+bounces-4012-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2D1BAE574
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 20:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A881A1922483
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 18:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9453A22126D;
	Tue, 30 Sep 2025 18:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHyRrNsF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5399034BA58
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 18:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759257988; cv=none; b=aQ0pdxkG61fDAfrA0cwft4iFuhiF848+rqTff/hpSqd+qPMXjLteEUeo732QgVHqVwh1wlxf/hXhkAqOFinIV5wREKyC3L/adMmKKC82reHfme+rV2N7uKUSlozyfnq0tt/piaXc9nQDocnVKmJeBucN41yfUJU4DRi7PZq/o2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759257988; c=relaxed/simple;
	bh=dYzaW5m1s0JNfC2jOnGz5wKYjnODSqtymRtsS7fJvLQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MbEJfdKwenuR9GWd+yIwYmeT2jntzmQBcb1YDJeLmGwYFCud2rpCYf+ekVlltAkajaF1TMmrxIIBK+wtU1EYoVWJN80fqu4I2U/PNaxH6BE9ZmDNNxGS4jUtFtGFiE90sRM3/tV0KyqYcl6Ew2+3P4R7AxAvzoPqpEZ34hqicfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHyRrNsF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37708C4CEF0;
	Tue, 30 Sep 2025 18:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759257987;
	bh=dYzaW5m1s0JNfC2jOnGz5wKYjnODSqtymRtsS7fJvLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MHyRrNsFIWR5+a2ahzMjTxbJimhUW1qZcCtmLNhtSorUPibL7JtHPtiKwO5SNG8DX
	 D/sPUUhqrsdH0PuwmES5kyPLvf/Zu+Ek5yJNfhl/jtNBNjj6H5YwTyDdQ3KRPy+5Cp
	 yQ3fttcrWLxW/2W4l0e7mdAv+1wUYi7fSAxX6cC4tAwwiNLPpO5ElnJ0f/631JxcjM
	 +w3uCL2Yo4eMF8JVGW3ExhzUenlrbYdCjAbGUXDykZ76lrwHl4lc69U9kxtTvZB5Di
	 VRV9AswXONq8x29uuZBciM7NEBqjBA7FfTga9Nj7SuLG6RvU4caNJ7XuYnD+I5E3DH
	 VjSJB+ebTqVgw==
Date: Tue, 30 Sep 2025 20:46:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Bjarni Ingi Gislason <bjarniig@simnet.is>
Cc: linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <xvj6ylzxcbmr4wu3p73uylhb2sgyzx5egbukc4r745oosrvqc2@nka5rihouesp>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="il6wa6utquz44drv"
Content-Disposition: inline
In-Reply-To: <aNwetmt-I0cT-u93@kassi.invalid.is>


--il6wa6utquz44drv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bjarni Ingi Gislason <bjarniig@simnet.is>
Cc: linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <xvj6ylzxcbmr4wu3p73uylhb2sgyzx5egbukc4r745oosrvqc2@nka5rihouesp>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
MIME-Version: 1.0
In-Reply-To: <aNwetmt-I0cT-u93@kassi.invalid.is>

Hi Bjarni,

On Tue, Sep 30, 2025 at 06:17:26PM +0000, Bjarni Ingi Gislason wrote:
>   This is shown with (my version of test-groff)
>=20
> test-groff -man -t -ww -b -z man7/vdso.7
>=20
> troff: backtrace: file 'man7/vdso.7':146
> troff:man7/vdso.7:146: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':196
> troff:man7/vdso.7:196: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':225
> troff:man7/vdso.7:225: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':261
> troff:man7/vdso.7:261: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':279
> troff:man7/vdso.7:279: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':307
> troff:man7/vdso.7:307: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':369
> troff:man7/vdso.7:369: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':411
> troff:man7/vdso.7:411: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':451
> troff:man7/vdso.7:451: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':472
> troff:man7/vdso.7:472: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':490
> troff:man7/vdso.7:490: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':508
> troff:man7/vdso.7:508: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':526
> troff:man7/vdso.7:526: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':551
> troff:man7/vdso.7:551: warning: trailing space in the line
> troff: backtrace: file 'man7/vdso.7':570
> troff:man7/vdso.7:570: warning: trailing space in the line
>=20
>   This result in an empty line.
>=20
>   Not all '^\}' lines are reported.
>=20
>   grep -n -e '^\\\}$' shows all lines.
>=20
>   Visible change is two empty lines after a table instead of a single lin=
e.
>=20
>   A full stop should be used in front of '\}' to make the line a control
> line.
>=20
>   This also the case in some other files.

Would you mind sending a patch?


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--il6wa6utquz44drv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjcJXoACgkQ64mZXMKQ
wqkcTQ/+N0hemhfplz6BjWW+WXfu36DY1AfQ09iFrjHphDCmqF5vkwzzxuWOuY2N
rH5nxfarkApW7SKKjX3gVd+4Ylh+K0RvuUI2fAwBsdJqGoRje8+VDXiDZBBRHl7p
gSSJKM0zJvSvM1zyprmF7HSZrAc9NQcUbNCzrOWN+xBV1EX7eEt4kWv4HUhddaRi
WhnYToULhzQUi9ViRbOpVmqanmhighrB8pc6kyNDeC66wSRjh6W0B+mITp8h0Wx5
jMg8Pp49yuJUI7O5fJ7FlnNecXfD44kZhOTxRVx+eSQgxCmknAb8CgGzrgZnCazX
f2MZR5tk06fE9r4aBt6m0y2rykONyuoR1ZrCO+xHw70/JylqDplKhXYa+FqPeZUt
5rm+AGsvJekeR3IqR+0vdhz2iJOkSbt3FmX+Fsjb2TksYzbi3i4Xog+/nzygt3y+
Bc8mRybB4M+DMjTTZJmaca3VFYFEb1xcj3TL+2wUoB50MYvwTe7VL6upaUhr3Ggy
CUyj/TcG0g7n86+Lw6SxavGjunhmv/R7TlMNVZu3VRhKC3F+dD5qWEa5S0n95DQd
rclmVxkBwgB695pCuTp/mVQ8fBdr4zZS3fzc6niRe7x82GQ7Tzt2dsfS/8gof0Ba
i1chMNkac31o1vxpTRyWMKuUNlwKFHewp3gB7UInTfu6gUyGA7A=
=qgRK
-----END PGP SIGNATURE-----

--il6wa6utquz44drv--

