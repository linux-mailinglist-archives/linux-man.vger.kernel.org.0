Return-Path: <linux-man+bounces-3700-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CABD9B3326D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66DC77A05A9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8F7227B94;
	Sun, 24 Aug 2025 19:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/OE4kCt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1ED22576C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756065501; cv=none; b=GnZzF3Qkovwa5s9wtQXJay11FgaHlt0ULUtKsxGw4xL6jzsu7oXzNge8+5sSY/H18KhRCxF4x+oTqCziLKlxmALDI75/z7TkHuWX8NMEj4r/UewCk56ZXjspR8n0f+sIHSSfUOFyKKQyu2wB+P+TJgeQ9bXJdHvF9PYy+vFK5yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756065501; c=relaxed/simple;
	bh=d+p+oFLzp2uFLASnDvzFoNXNLt+wjLDXIBcP/g8MNoA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dMp4ZhdJRTCreARZAgciyLJprt3GLQwQ1e4lIKZ37i1SPj1+nYyjE0JmGNwVEHODf5nvJIjYCyO31QAPyU93VMEPpt2W35/C41X/dnt6bf9eSf/exV90eHoKKbL+lHzO/3n0y/PkQ8rfMeU6y+7BCbYivV3bKX1KNbGJksS0Mq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/OE4kCt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05529C4CEEB;
	Sun, 24 Aug 2025 19:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756065500;
	bh=d+p+oFLzp2uFLASnDvzFoNXNLt+wjLDXIBcP/g8MNoA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n/OE4kCtF6MkOOEpepojw0mjV1CKtO9D3KhdzfDzHSJsuPr1T35zWV8m4vAVeYyic
	 /Na1uw+tcekoFuU0W6wBF7rkQVKhE0pP0MChJpWhz6CPizHcBnYeJGuFSsrDIzNHtq
	 jZxF98H4djqlbV2+AYcviUU4NaJDp7oHbNwp4s5xt45Ue92dGVZ04M3W5i7jQtKNKe
	 BHgSYSvpVsua1ITnQqZnpLWyQb+WTXgw+7RLqDgfUwYNdbfb2y7cDQXdaq6wZqNwb0
	 sb0CtOkGv+ch2noAkjVOOy7Mu8NkBx6o+DBactDX8WJwN3xBRstDc7Y3F5ew4AzYjE
	 y2XFrneXyh/jA==
Date: Sun, 24 Aug 2025 21:58:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_FPEXC.2const
Message-ID: <yi4u5w3jidlmsqdca5iw42s4yjetaynqt5alaera6gofwveggx@kui7itqnkf62>
References: <aKsmT4x-9Fy2gf9N@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2cnyih42ttxnagx4"
Content-Disposition: inline
In-Reply-To: <aKsmT4x-9Fy2gf9N@meinfjell.helgefjelltest.de>


--2cnyih42ttxnagx4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_FPEXC.2const
References: <aKsmT4x-9Fy2gf9N@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmT4x-9Fy2gf9N@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:47PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    This is not very good to read. Maybe a table or a list?

Agree.  I've formatted it as a list:

	$ diffman-git HEAD
	--- HEAD^:man/man2const/PR_SET_FPEXC.2const
	+++ HEAD:man/man2const/PR_SET_FPEXC.2const
	@@ -13,17 +13,41 @@ SYNOPSIS
		int prctl(PR_SET_FPEXC, unsigned long mode);
	=20
	 DESCRIPTION
	-       Set floating-point exception mode to mode.  Pass
	-       PR_FP_EXC_SW_ENABLE to use FPEXC for FP exception en=E2=80=90
	-       ables, PR_FP_EXC_DIV for floating-point divide by
	-       zero, PR_FP_EXC_OVF for floating-point overflow,
	-       PR_FP_EXC_UND for floating-point underflow,
	-       PR_FP_EXC_RES for floating-point inexact result,
	-       PR_FP_EXC_INV for floating-point invalid operation,
	-       PR_FP_EXC_DISABLED for FP exceptions disabled,
	-       PR_FP_EXC_NONRECOV for async nonrecoverable exception
	-       mode, PR_FP_EXC_ASYNC for async recoverable exception
	-       mode, PR_FP_EXC_PRECISE for precise exception mode.
	+       Set floating-point exception mode to mode.  mode can
	+       be one of the following values.
	+
	+       PR_FP_EXC_SW_ENABLE
	+              Use FPEXC for FP exception enables.
	+
	+       PR_FP_EXC_DIV
	+              Use FPEXC for floating-point divide by zero.
	+
	+       PR_FP_EXC_OVF
	+              Use FPEXC for floating-point overflow.
	+
	+       PR_FP_EXC_UND
	+              Use FPEXC for floating-point underflow.
	+
	+       PR_FP_EXC_RES
	+              Use FPEXC for floating-point inexact result.
	+
	+       PR_FP_EXC_INV
	+              Use FPEXC for floating-point invalid opera=E2=80=90
	+              tion.
	+
	+       PR_FP_EXC_DISABLED
	+              Use FPEXC for FP exceptions disabled.
	+
	+       PR_FP_EXC_NONRECOV
	+              Use FPEXC for async nonrecoverable exception
	+              mode.
	+
	+       PR_FP_EXC_ASYNC
	+              Use FPEXC for async recoverable exception
	+              mode.
	+
	+       PR_FP_EXC_PRECISE
	+              Use FPEXC for precise exception mode.
	=20
	 RETURN VALUE
		On success, 0 is returned.  On error, -1 is returned,

Have a lovely night!
Alex

>=20
> "Set floating-point exception mode to I<mode>.  Pass B<PR_FP_EXC_SW_ENABL=
E> "
> "to use FPEXC for FP exception enables, B<PR_FP_EXC_DIV> for floating-poi=
nt "
> "divide by zero, B<PR_FP_EXC_OVF> for floating-point overflow, "
> "B<PR_FP_EXC_UND> for floating-point underflow, B<PR_FP_EXC_RES> for floa=
ting-"
> "point inexact result, B<PR_FP_EXC_INV> for floating-point invalid operat=
ion, "
> "B<PR_FP_EXC_DISABLED> for FP exceptions disabled, B<PR_FP_EXC_NONRECOV> =
for "
> "async nonrecoverable exception mode, B<PR_FP_EXC_ASYNC> for async "
> "recoverable exception mode, B<PR_FP_EXC_PRECISE> for precise exception m=
ode."

--=20
<https://www.alejandro-colomar.es/>

--2cnyih42ttxnagx4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirbtcACgkQ64mZXMKQ
wqm3QBAAvDvnIeAzyxhNR8E/NhUJwBS0qSumzNemZHCHaV6ihEPFWzoMOqH+Z9di
lh/GXJkoSiD2hFAtm2RVVTKFTuUypFILRWDWa++jKU7kU7Vd9xcurOrAP46Zgmlt
B/xK/z1upAV2TiIe0f5ebUIfLihjElTrx1zL7YE0GdQeI/Wi58fkPwsvUTjYYDYv
OHLOP+0mK/uvmgk3q5HqvQzTQxSVOjTGVGXZx5pqvQeCdDXD0BhoDtD99G0GhBd5
xRi/aFiyigzpDPPOZjGc3gS9JLH9tWUFzABeZ/el8FigSqtaKn7UzrS00TwNZcKr
uRCEOmS2nUnRA3OWp2bEy2KPtOMDk7Fn1EDEKbfje3dbn0IRO74Lx1fEMp959Q1E
sBE+Quay11prKzlza5kdfOSqkuJ+HJB4tspeY/5fNZ4JeEHAu/6f1UPLksS+56uw
x6yPLUFDkJcV0hdVKz99fMyAPUmWZEX7eu4s/QXC2Bufq69eNWfGqejVEfmD+z33
KaKgZfgeFWdxBUfQ/zl06CrmPdB/LxLTa/HZgtfTw2IZl5a7NvZDiSS+YlxB7uU4
gg5oX9Lao6VkVmwL+q0jlIszUJVcPSWtqpsplCmERf7M+wqtm4XggDa7M3azcoSA
rQZOVcsxAK6RaCEoBJ2lgWKu4yOs6MMrnOuZgkROsRLGUQXHSwY=
=wWPS
-----END PGP SIGNATURE-----

--2cnyih42ttxnagx4--

