Return-Path: <linux-man+bounces-2329-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEDBA24E3A
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 14:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11C6F3A68BC
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F210D1D63DC;
	Sun,  2 Feb 2025 13:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3M1ipxy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E282746D
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 13:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738502917; cv=none; b=tCbiPq4nLYzXaLBBScldyrM20GmhBgoBdXsiy3Rh5aRQsL61m4nzzRZE5OFQHAP+8wG+nmAUAf45uasBFwO8Y5WgaavOEHrjl/82x/KOpmpTqX5njR8+kT+8c0Opo+NAgo0MLbkE+MOiNgE6Wuis6UsLVb7oNKtf2w78cBEchd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738502917; c=relaxed/simple;
	bh=GorvEl+kLuuv9sq1FTF411jr2Wgf4p2hqzhNCZXTT+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZOi1cXAjcOKEyBHbssM63Ijk/X8ogr2gvu5t7Pc2LAO8qJFUiLlOEX0p4A2bB6kFHIPKyprrLZxqG4ixrmuNVKLaqGQIthDfGVzUgxjeVNa517OXPa4eLtdYGtGSeZXEqQ0zrZDKNEh/DWgj/RvlRRX2VZMWkMn6sIdV44ZccV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3M1ipxy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD1D1C4CEE3;
	Sun,  2 Feb 2025 13:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738502917;
	bh=GorvEl+kLuuv9sq1FTF411jr2Wgf4p2hqzhNCZXTT+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I3M1ipxyrDJ9Y9PhQa0Yuawd9LsmqTCItSSI6nZTG45cf1vPYeVKrSmeb3zij72rZ
	 7OVNFL50Yx3isjaWkXJQlr4BoVeWPJJCtWr32C0LRHMFGR9LlP1fcCAQ7HXvcib1Yr
	 1O7ZVwjvJWxvvHMnvvR6yQ17WwFebIhw2C03SoPV0Sh2x8RyMx3I+SQkntnTroWCt9
	 v7SacKoqDru7rVBfoGvBPPYjjMN1PsSoQpjE1ehb3ziTjOc0jYi4Q4li2dY0T/xWqc
	 SrIxYtxNn//UDFRJBU30b/uoUDlEv9NzYYXrTY/hrUhdXLE6LmH8m+HFw4ufMG2F7x
	 mK2Va1QJB0WXw==
Date: Sun, 2 Feb 2025 14:28:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/mkdir.2: Add EOVERFLOW
Message-ID: <u2qbdk2owlwcs5sjdgcuua4z73gvf4atqtfvhbrwtt4tuvw2vd@nklz2rvljwhg>
References: <FA96BA75CD41C940+20250125094605.28203-1-chenlinxuan@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gyrh3wvl7yjvzh73"
Content-Disposition: inline
In-Reply-To: <FA96BA75CD41C940+20250125094605.28203-1-chenlinxuan@uniontech.com>


--gyrh3wvl7yjvzh73
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/mkdir.2: Add EOVERFLOW
References: <FA96BA75CD41C940+20250125094605.28203-1-chenlinxuan@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <FA96BA75CD41C940+20250125094605.28203-1-chenlinxuan@uniontech.com>

Hi Chen,

On Sat, Jan 25, 2025 at 05:46:05PM +0800, Chen Linxuan wrote:
> `mkdir` and `mkdirat` might set errno to EOVERFLOW when UID or GID
> mapping has not been configured. See
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D036d523641c66bef713042894a17f4335f199e49
>=20
> This is a small program in the commit message that shows this behavior:

Please add the necessary includes.  I can't compile the program.
You'll need to indent the program, so that the '#' are not interpreted
as comments by git(1).


Have a lovely day!
Alex

>=20
> static int childFunc(void *_)
> {
>         if (mount("tmpfs", "/tmp", "tmpfs", 0, NULL)) {
>                 err(EXIT_FAILURE, "mount");
>         }
>         if (mkdir("/tmp/test", 0755) =3D=3D -1) {
>                 err(EXIT_FAILURE, "mkdir");
>         }
>         return 0;
> }
>=20
> int main(int argc, char *argv[])
> {
>         char *stack; /* Start of stack buffer */
>         char *stackTop; /* End of stack buffer */
>         pid_t pid;
>=20
>         stack =3D mmap(NULL, STACK_SIZE, PROT_READ | PROT_WRITE,
>                      MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
>         if (stack =3D=3D MAP_FAILED)
>                 err(EXIT_FAILURE, "mmap");
>=20
>         stackTop =3D stack + STACK_SIZE;
>=20
>         pid =3D clone(childFunc, stackTop, CLONE_NEWUSER | CLONE_NEWNS | =
SIGCHLD,
>                     NULL);
>         if (munmap(stack, STACK_SIZE) =3D=3D -1)
>                 err(EXIT_FAILURE, "munmap");
>         if (pid =3D=3D -1)
>                 err(EXIT_FAILURE, "clone");
>=20
>         if (waitpid(pid, NULL, 0) =3D=3D -1)
>                 err(EXIT_FAILURE, "waitpid");
>=20
>         exit(EXIT_SUCCESS);
> }
>=20
> Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
> ---
>  man/man2/mkdir.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
> index d84dbc27e..2af618d68 100644
> --- a/man/man2/mkdir.2
> +++ b/man/man2/mkdir.2
> @@ -203,6 +203,10 @@ does not support the creation of directories.
>  .B EROFS
>  .I pathname
>  refers to a file on a read-only filesystem.
> +.B EOVERFLOW
> +UID or GID mappings (see
> +.BR user_namespaces (7))
> +has not been configured.
>  .SH VERSIONS
>  Under Linux, apart from the permission bits, the
>  .B S_ISVTX
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--gyrh3wvl7yjvzh73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefcv4ACgkQnowa+77/
2zKGPQ/8DabTZljFSaSALG+hlMpShNt70GRuXp2GOkA8J2vPzIAw/xAwqYppDkmc
odSasULJVs9z5bzm8Rwiz+i7+dhm2b9YLSxSP8dGTRCFE5UeV0e2yNBcoqASaz8p
MLmzYUisl+aJy/1v1IagrdSOGx6OeO11PzOv+bVWk1SLgZmoNxfLNld7u1HVw3Pr
Ykt8OPMzVhvVQ1YemzsQON3zN30dohxCESxMfIuKwhG+/X16/obBHqUgWZA597OO
0nmgZMMBlX490e7bl0M9SKUMZHK9wA5iMs/jkqn1LO0lEfub1JX/4egTDs3x/kpo
hH+FXjrUIlIC2o6NGtrR1N5RAmQexOqhqXm4PONZEz4C3A65qMs5Enyfb4Pbw4cV
GsdxFsPo4JVSja8VeOySWlX6Uqua5u/TyEsKFZU/a1c8HTjOCrbkhrLpYkik1eX0
tsx8ehxMxEwntXWU/IGdOQUWtnYGxtZrKazqqlIi/Th8Wgyx+0ylAopK9sa2Mj7F
TVZOi0cBbAnGZo46VsMORjYps5+fiUGR8ztdppk21HO+0/YpZW+35Lf4lNzQB1rJ
Q4Hlte8n1KZtqeOUpg0htVqkZEtMRdOSoi9wIPoyPharY4T428mhLGaXP7NQefkv
RgBvXu0Het+PfzTBqDLAcxI/eUVpGbpBXjQjVqk32uoBF3Jqfko=
=ECyW
-----END PGP SIGNATURE-----

--gyrh3wvl7yjvzh73--

