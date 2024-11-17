Return-Path: <linux-man+bounces-2013-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9669D0465
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B54D1F2181D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E911898FC;
	Sun, 17 Nov 2024 15:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utenvCmK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1D638DE0
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855692; cv=none; b=tCZRq/CshmGXSSNuhHRWtzgm/B/tBJ2qR/Rs2PquOg261f7QuTbm5WQgwHX6hyhmZHQxht9QzQ9XMBOkqAtJhsxVzBo3fBYC1Rcbk/A8pct6mmMIWmuVdOw8KIvgEX4PnRK58ttBAMl6cE3E0tHrNJYsvm6ECRNUR5lhrAUBGUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855692; c=relaxed/simple;
	bh=RmAIXnKBxxYI+was8Vk7mxzeHIo7otbzGX3Xa4qijcE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dls09+gNKBH55K4BswLIJpmLefwpKouKVgEEBNhA2jyecUjVho+rGiQp/ca21RPdJiLrNKoS+zuFlxMjY3BNow/XbXP1ZKCLoA1Go5Gz1SoRuhBcfJNN81y73UBfv1rghrLt7EXX/JR1XHJa99OPHV6cc9sFLhGeMlUgZ0l1hWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utenvCmK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7330CC4CED8;
	Sun, 17 Nov 2024 15:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731855692;
	bh=RmAIXnKBxxYI+was8Vk7mxzeHIo7otbzGX3Xa4qijcE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=utenvCmKKMGu22AapPimfFaem17iGjsUFMOii6x75kp7oHhP/7/eeAWRbL+dn9iMd
	 I7PNC1WsRO9FHKifQEy5ae/VjeQ4bJLzEt+vI7uczy0lFNvU0wDGq8HJxBPnxR4x+Q
	 EKRFwjOrtAJN9BvoS18y1n7tioY29GkJorhyiX+hMCbl70XGOSQad6BOgQLAofuMbj
	 9ow5742QhCFEUqUokU/Lzho+9OAMblWYw57EaA331bF59SWQd4egclD3QxnPy/UccC
	 VMEUB38HvtImeNP/eENoQUuyTfTJatwQJcdujdhzC3AAqutHJeLl9Uzu/DM0EL+D8z
	 tmR02ZDRoi+og==
Date: Sun, 17 Nov 2024 16:01:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page clone.2
Message-ID: <rdmt5cqz7vgbne5vwxel3ws2scki2yjzdt5iqc3t73sh4weyki@k3z5rxxkria5>
References: <ZznJge9al7KNW0tN@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xk2vz2kosvsszdv7"
Content-Disposition: inline
In-Reply-To: <ZznJge9al7KNW0tN@meinfjell.helgefjelltest.de>


--xk2vz2kosvsszdv7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page clone.2
References: <ZznJge9al7KNW0tN@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJge9al7KNW0tN@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<exit_signal.> =E2=86=92 I<exit_signal>.
>=20
> "B<CLONE_THREAD> or B<CLONE_PARENT> was specified in the I<flags> mask, b=
ut a "
> "signal was specified in I<exit_signal>."
>=20

This was fixed in

commit befb4aaa6d3e2bf1bf975a3585c23b863a534092
Author: Alejandro Colomar <alx@kernel.org>
Date:   Wed Nov 1 16:02:49 2023 +0100

    clone.2: ffix
   =20
    Fixes: 184ecd225079 ("clone.2: Note EINVAL when exit_signal + bad flags=
")
    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
    Cc: Mario Blaettermann <mario.blaettermann@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man2/clone.2 b/man2/clone.2
index e5ba4fc44..8e5eae806 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1449,7 +1449,7 @@ .SH ERRORS
 was specified in the
 .I flags
 mask, but a signal was specified in
-.I exit_signal.
+.IR exit_signal .
 .TP
 .BR EINVAL " (AArch64 only, Linux 4.6 and earlier)"
 .I stack



Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--xk2vz2kosvsszdv7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6BUkACgkQnowa+77/
2zJkJA/+OtfznfwYeTMIBrIgA9Ul2hH/docdfE5aLFd4rfz4jves8W3uCtrSLyEp
HO0nkwaTIDrt/B6BxoH7WtdAuAypXK/b75m0DX1WFr8YHI1DbhVxBUAY6K0x72ph
IDHPQSyBJGPFneRvHKprTg+lHf+9WloCkFqC0IgRdVjlzUyacN+vtGM1ZgI6+KyL
CGTs06ONKHRlOtl6j2CxI8nTkf9cTaMgUrQYPKAh2601JJnM4sXjC1oHsnRrO4PX
rXokoA4/23M3TpoOjBSOOUt9fk2Tt6j/UmyfnpEJ90boK30PYCUJSxmh8WgahSRB
LgxHAFBCwhDVzlxkPtFE7tRvXUN+dyZVahhOemecJfmhj4LmiTpDomDw4YdvO+xn
iTb2KbmoEURZOSCiLV50SLdOeW1sRPEPD0nt9fbjP4NYWaRBDEiBbuzbgYB4iQe2
FjegefMDmTT2acCb67XrlYsXIHsANo+KvhxGRRIqPP2XkxUY4LNqVhWZr9ZldNGJ
hVwnAoui2Xv4ApPfE9VnTIFxDXZCKRUEUdIbF8Zh8JBS8dcJFJ/P11GwGYOxcT5c
13q9VI6AIo2PPDyIZK0CBO/TZZs0a1sWNETym6RTikuRqtPXxv/FqlOARqbHVml3
8XE5ZTJi/UZ9rVuDKTRHW0d+1DF5zVlNIg36/PRrhvRhCfOMVXQ=
=2arD
-----END PGP SIGNATURE-----

--xk2vz2kosvsszdv7--

