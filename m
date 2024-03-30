Return-Path: <linux-man+bounces-710-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF0B892E0D
	for <lists+linux-man@lfdr.de>; Sun, 31 Mar 2024 00:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A09221C20B49
	for <lists+linux-man@lfdr.de>; Sat, 30 Mar 2024 23:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E89FF405C6;
	Sat, 30 Mar 2024 23:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3ObiRDR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA02F2209F
	for <linux-man@vger.kernel.org>; Sat, 30 Mar 2024 23:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711839943; cv=none; b=g0XetYo1rNkbY06vrlwKGhMEvSREIzsM44PUaYbCFa5Ybw5nl1vBZ9M5kzj41ZtaPP/Tk4vvekwi7NSJ3bnc0ZkL7dkhgNoGzlQWex79r9NxeJxh2G3xKsawLCRS9Kxe3v6wnUFdc9pUUYM1NQSQVyZpiarb5zKO29G9X0wgMos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711839943; c=relaxed/simple;
	bh=9y4GUwN/18iYbvXruOS/hLmE7AWY4jE1eurxCDpwIro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YqAH3F/UFpVqLySGGCXHyA2tGtzS0gUD7RBlvAAYzhJ0Q/+lsarqGLjhQNX0NpvnOrEdgmLNaFw25vRhaGZYIBXQNLY2CQv2u2W39yQvQ0qqzuKT1wnMpDQJwrKpTK7tJsDMyPibLiSrMp3O8DByvY3nN8uCvj3sc7dtPOub8Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3ObiRDR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43364C433C7;
	Sat, 30 Mar 2024 23:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711839943;
	bh=9y4GUwN/18iYbvXruOS/hLmE7AWY4jE1eurxCDpwIro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G3ObiRDRhfnSllO4nZCXg+yxX6ukV/Adqrjh75WF3zooSk8a2AcE5HpTeohiOs9Ge
	 fLd7wcjfHiTrSsS4vwqB/UbFzb4U9cPszT+yOcIeNak3fFZRg0Cj5gSCCQUQd74Tzv
	 75fzgcz3AluPmU93Mqd9RLkaGS0E666sUxg0TLuXdofwT4gAuAbWqIRMrjwQNoXRFE
	 KwDddo6eCffH/R+2utLQPPMI8OZzkQUVANLk/LXPaIohca6XlglPdEe8pvKIh7EuJt
	 i0nyes9TLORMrYKOM8O8bJs720dbug+up7P28hHXrP7Lm/rtejo5+9c5bfSF6JWFM/
	 oheTCutdUS25Q==
Date: Sun, 31 Mar 2024 00:05:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Michael =?utf-8?B?V2Vpw58=?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
Message-ID: <ZgiaxG6RKwWslu7J@debian>
References: <20240329124137.630521-1-michael.weiss@aisec.fraunhofer.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7z9Y+r1RE6UgBazl"
Content-Disposition: inline
In-Reply-To: <20240329124137.630521-1-michael.weiss@aisec.fraunhofer.de>


--7z9Y+r1RE6UgBazl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 Mar 2024 00:05:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Michael =?utf-8?B?V2Vpw58=?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag

Hi Michael,

On Fri, Mar 29, 2024 at 01:41:37PM +0100, Michael Wei=C3=9F wrote:
> finit_module() supports the MODULE_INIT_COMPRESS_FILE flag since
> Linux 5.17. See commit b1ae6dc41eaaa ("module: add in-kernel support
> for decompressing")
>=20
> During implementation of a secure module loader in GyroidOS, we
> wanted to filter unsafe module parameters. To verify that only the
> two documented flags which are disabling sanity checks are unsafe,
> we had a look in the current kernel implementation.
>=20
> We discovered that this new flag MODULE_INIT_COMPRESS_FILE was added.
> Having a deeper look at the code, we also discovered that a new error
> code EOPNOTSUPP is possible within newer kernels.
>=20
> The inital commit only supported gzip and xz compression algorithms.
> Support for zstd was added in Linux 6.2 by commit 169a58ad824d8
> ("module/decompress: Support zstd in-kernel decompression")
>=20
> Signed-off-by: Michael Wei=C3=9F <michael.weiss@aisec.fraunhofer.de>
> ---
>  man2/init_module.2 | 48 +++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 47 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/init_module.2 b/man2/init_module.2
> index 95917a079..8197b0df6 100644
> --- a/man2/init_module.2
> +++ b/man2/init_module.2
> @@ -107,6 +107,10 @@ Ignore symbol version hashes.
>  .TP
>  .B MODULE_INIT_IGNORE_VERMAGIC
>  Ignore kernel version magic.
> +.TP
> +.BR MODULE_INIT_COMPRESSED_FILE " (since Linux 5.17)"
> +.\" commit b1ae6dc41eaaa98bb75671e0f3665bfda248c3e7
> +Use in-kernel module decompression.
>  .P
>  There are some safety checks built into a module to ensure that
>  it matches the kernel against which it is loaded.
> @@ -136,6 +140,41 @@ If the kernel is built to permit forced loading (i.e=
=2E, configured with
>  then loading continues, otherwise it fails with the error
>  .B ENOEXEC
>  as expected for malformed modules.
> +.P
> +If the kernel was build with
> +.BR CONFIG_MODULE_DECOMPRESS ,
> +the in-kernel decompression feature can be used.
> +Userspace code can check if the kernel supports decompression by
> +reading the
> +.I /sys/module/compression
> +attribute.
> +If the kernel supports decompression, the compressed file can directly

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.

> +be passed to
> +.BR finit_module ()
> +using the
> +.B MODULE_INIT_COMPRESSED_FILE
> +flag.
> +The in-kernel module decompressor supports the following compression
> +algorithms:
> +.P
> +.RS 4
> +.PD 0
> +.IP \[bu] 3
> +.I gzip
> +(since Linux 5.17)
> +.IP \[bu]
> +.I xz
> +(since Linux 5.17)
> +.IP \[bu]
> +.I zstd
> +.\" commit 169a58ad824d896b9e291a27193342616e651b82
> +(since Linux 6.2)
> +.PD
> +.RE
> +.P
> +The kernel only implements a single decompression method which is
> +selected during module generation accordingly to the compression
> +method selected in the kernel configuration.
>  .SH RETURN VALUE
>  On success, these system calls return 0.
>  On error, \-1 is returned and
> @@ -221,12 +260,19 @@ is too large.
>  .TP
>  .B EINVAL
>  .I flags
> -is invalid.
> +is invalid or the decompressor sanity checks failed while loading
> +a compressed module with flag
> +.BR CONFIG_MODULE_DECOMPRESS

This should use B, not BR.  (It uses Bold, not Bold/Roman alternating.)

> +set.
>  .TP
>  .B ENOEXEC
>  .I fd
>  does not refer to an open file.
>  .TP
> +.BR EOPNOTSUPP " (since Linux 5.17)"
> +This error is return if the kernel was configured without

The first words seems redundant.  I'd use:

	The kernel was configured without CONFIG_MODULE_DECOMPRESS.

Which seems incomplete.  I guess if the module is not compressed, then
it won't report this error.

	The module is compressed, and the kernel was built without ...

> +.BR CONFIG_MODULE_DECOMPRESS

This was missing a terminating '.'.

> +.TP
>  .BR ETXTBSY " (since Linux 4.7)"
>  .\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
>  The file referred to by
> --=20
> 2.39.2
>=20

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7z9Y+r1RE6UgBazl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYImsMACgkQnowa+77/
2zJoEw/+Kj7mbyA+ltv8jbcLqFHW+GmqqypEbv/baJZqqdw4wwtv2C5/2A0ppBs0
kpKPvceCjFqo0sjfLpKd7sTFU4H9d0N7RJ0/0pSOu3IfCNxxMG7RoeFCuhFKtOsx
3lIr5acOZMXms18+NhLv2dfcF6UY6er4WL3jYvEBpO2eGpKxK2Cs8A/i/f/HD6e/
j7oo3ztqTSmzEdROyfXBCF6qL2nLdlQcUZASBielo88Ictf/xm2hg4ewac3BSlGC
aWjotGOoC/z1DCd1GqJlQPHZuChz/OjXyun76bJBbNrHAybDoMlkiGVY4gSLoA2J
qWsAyYjHPc7gIwjmICozxkgjjsjzM1lsiNs7A+jUNxEcWn/YBAUplwiLOehv5RbK
kmuOahXjAMu9T3PhYu6hILTPlMmvIkksl8zOG2i3a2iZndLZA5BCQ5ZxsFvl718C
fHVdux/zI6LKo70WgEWzbmqTLfyzfe8DSuaHMnl2g7R+kOztJ6cqXNbJ3Rm0Eer0
4/GIP3gmo5EZj/yIFtJsVFIlQrCIt/4pyVZ98n58qQvS8u0qjHzxstRh+Vs9QNOk
W7XKpdcpG8nhtEnq2+TLAI00wLW9Vta6It5TaANXTQAYs/N2ouL8GZdPU/FyDy/T
EPaZ8L/qhtNbFbvXaQuSFmxP20T+U3cw7pYCEm4V+Fz+AVDIlF4=
=gr0N
-----END PGP SIGNATURE-----

--7z9Y+r1RE6UgBazl--

