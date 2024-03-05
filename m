Return-Path: <linux-man+bounces-538-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D2B8727ED
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 20:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 928741C263A1
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 19:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD40E84FC1;
	Tue,  5 Mar 2024 19:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWeT7wC3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC345C5FD
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 19:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709668152; cv=none; b=Zws7GNkw/WlfvYoahYLHNjXfo0P0mdAFVZdc6VjStUtg8EUZoc+vB968X2/V2VnJxggxOjurW56GNwnqUpean9LD6fuf8YwQB//fZ0h3xiZlXVYjaQOuEPEWj5/5rO1erFDiY4CHEp8CPG/4OwB0EthEVi9CgUuRM5+7qwg9yyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709668152; c=relaxed/simple;
	bh=8locZqk/CZTSm838TOaQXVBbZjaILdD7kY0j4daIlCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qJygllRbnw/hmr6we7fCJJ91KKrhuP0TTJsDUcz7fYBOsb9kGgA33X1e6AjmbjUcB6Gxp6p0IbN5urk/1LvuhYSPcpaamd6PxncOXwP3cbwgZ6mUHdg1Z8zwKppnOoMouSjN+RAdCqDWMZ7DDt0o5VleTLApX3A9PIVXqRW+AHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWeT7wC3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68D8FC433F1;
	Tue,  5 Mar 2024 19:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709668152;
	bh=8locZqk/CZTSm838TOaQXVBbZjaILdD7kY0j4daIlCI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YWeT7wC31q2Qg/qtjBRRjZVPcV6S8zWqtVWeWL/3TpXbVMMhP3ReXj4M/0Ei/ONMp
	 jYyDRRTd3vuD8KYJRwyHsAV7po8/3oepf9ovrxJ5MFBjhFf1cXsB/7DRIsEa4RtZSp
	 +WWdG1nUMnIs9jgfSBWMt5dfIFltnJgQLD0LICxoDrpW5gtoG/wyC5r6+u99gl3aw1
	 6DF+KOkQnKlykBieQ8pnFT8sXp5taU8HtDeP7IX664sEZHfyykQJ4BPdZlgvha8Vui
	 0PnfhGFzlYQ35R8QJk8XFlqpWrcIQs83UwhIPUMB7Q5f0pEIS3lrh0+EAjep1yFf0R
	 yzx//aytKq6dg==
Date: Tue, 5 Mar 2024 20:48:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: linux-man@vger.kernel.org, dutyrok@altlinux.org, kovalev@altlinux.org,
	"Dmitry V. Levin" <ldv@altlinux.org>,
	"G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v4] delete_module.2: Update man to current syscall
 behaviour
Message-ID: <Zed3MrLGIMzjK9pS@debian>
References: <20240305073957.108599-1-oficerovas@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NTg07M9vVmQCUomH"
Content-Disposition: inline
In-Reply-To: <20240305073957.108599-1-oficerovas@altlinux.org>


--NTg07M9vVmQCUomH
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 5 Mar 2024 20:48:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: linux-man@vger.kernel.org, dutyrok@altlinux.org, kovalev@altlinux.org,
	"Dmitry V. Levin" <ldv@altlinux.org>,
	"G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v4] delete_module.2: Update man to current syscall
 behaviour

Hi Alexander,

On Tue, Mar 05, 2024 at 10:39:57AM +0300, Alexander Ofitserov wrote:
> Parameter O_NONBLOCK described in man doesn't exist anymore
> in kernel versions 3.13+ (particularly in commit
> 3f2b9c9cdf389e303b2273679af08aab5f153517 aka v3.13-rc1~83^2~5),
> which is quite old, only O_TRUNC parameter present for current kernel ver=
sion,
> O_NONBLOCK does nothing.
>=20
> O_NONBLOCK used in "try_stop_module" function, which is invoked by syscall
> delete_module, here is the code of this function for kernel version 3.12.=
74:
> https://elixir.bootlin.com/linux/v3.12.74/source/kernel/module.c#L775
>=20
> However, in later kernels, this parameter disappeared.
> Also, here is the code for 3.13:
> https://elixir.bootlin.com/linux/v3.13/source/kernel/module.c#L767
>=20
> In recent kernels, 6.7.5 for example, this parameter also absent:
> https://elixir.bootlin.com/linux/v6.7.5/source/kernel/module/main.c#L637
>=20
> v3 -> v4:
> added more information with links to code to commit message
>=20
> v2 -> v3:
> subsection Linux 3.12 and earlier renamed to O_NONBLOCK
> removed info about arguments for kernels 3.12 and earlier
> added semantic newlines
>=20
> v1 -> v2:
> added behaviour of syscall for kernel 3.12 and earlier
> in history section
> added commit hash to commit message
> changed word 'actual' to 'current' due to ambigious
> meaning
>=20
> Signed-off-by: Alexander Ofitserov <oficerovas@altlinux.org>
> ---
>  man2/delete_module.2 | 92 +++++++++++++++++++++++++-------------------
>  1 file changed, 52 insertions(+), 40 deletions(-)
>=20
> diff --git a/man2/delete_module.2 b/man2/delete_module.2
> index e9c432e84..e4b107702 100644
> --- a/man2/delete_module.2
> +++ b/man2/delete_module.2
> @@ -50,42 +50,20 @@ is zero, then the module is immediately unloaded.
>  If a module has a nonzero reference count,
>  then the behavior depends on the bits set in
>  .IR flags .
> -In normal usage (see NOTES), the
> -.B O_NONBLOCK
> -flag is always specified, and the
> +The
>  .B O_TRUNC
>  flag may additionally be specified.
>  .\"  	O_TRUNC =3D=3D KMOD_REMOVE_FORCE in kmod library
> -.\"  	O_NONBLOCK =3D=3D KMOD_REMOVE_NOWAIT in kmod library
>  .IP
>  The various combinations for

"various combinations" is rather confusing, now that there's only one
flag bit, right?

>  .I flags
>  have the following effect:
>  .RS
>  .TP
> -.B flags =3D=3D O_NONBLOCK
> -The call returns immediately, with an error.
> -.TP
> -.B flags =3D=3D (O_NONBLOCK | O_TRUNC)
> +.B flags =3D=3D O_TRUNC
>  The module is unloaded immediately,
>  regardless of whether it has a nonzero reference count.
> -.TP
> -.B (flags & O_NONBLOCK) =3D=3D 0

Is flags =3D=3D 0 a possibility?  The rest of the page seems to say so, but
this list of "various combinations" doesn't include it.

> -If
> -.I flags
> -does not specify
> -.BR O_NONBLOCK ,
> -the following steps occur:
>  .RS
> -.IP \[bu] 3
> -The module is marked so that no new references are permitted.
> -.IP \[bu]
> -If the module's reference count is nonzero,
> -the caller is placed in an uninterruptible sleep state
> -.RB ( TASK_UNINTERRUPTIBLE )
> -until the reference count is zero, at which point the call unblocks.
> -.IP \[bu]
> -The module is unloaded in the usual way.
>  .RE
>  .RE
>  .P
> @@ -151,11 +129,7 @@ in
>  .TP
>  .B EWOULDBLOCK
>  Other modules depend on this module;
> -or,

Please keep 'or,' in a separate line.  It reduces the diff, and it
doesn't hurt much.

> -.B O_NONBLOCK
> -was specified in
> -.IR flags ,
> -but the reference count of this module is nonzero and
> +or, the reference count of this module is nonzero and
>  .B O_TRUNC
>  was not specified in
>  .IR flags .
> @@ -172,6 +146,54 @@ it is (before glibc 2.23) sufficient to
>  manually declare the interface in your code;
>  alternatively, you can invoke the system call using
>  .BR syscall (2).
> +.SS O_NONBLOCK
> +In Linux 3.12 and earlier, parameter:

I would  s/ parameter://

> +.I flags
> +also can contain=20

There's trailing white-space in some lines.  Don't worry too much about
it; I can remove it while applying.  Just wanted to let you know it's
there.

> +.B O_NONBLOCK
> +flag in addition to=20
> +.B O_TRUNC
> +flag.
> +Behavior depends on the bits set in
> +.IR flags .
> +In normal usage (see NOTES), the

You removed NOTES in this commit.  :)

> +.B O_NONBLOCK
> +flag is always specified, and the
> +.B O_TRUNC
> +flag may additionally be specified.
> +.\"  	O_TRUNC =3D=3D KMOD_REMOVE_FORCE in kmod library
> +.\"  	O_NONBLOCK =3D=3D KMOD_REMOVE_NOWAIT in kmod library
> +.IP

This should be .P not .IP

It was IP where it was before, because it was a continuation of the
'(3)' bulletted (_i_ndented) paragraph.

> +The various combinations for
> +.I flags
> +have the following effect:
> +.RS

And this .RS/.RE pair should also go away.

Have a lovely day!
Alex

> +.TP
> +.B flags =3D=3D O_NONBLOCK
> +The call returns immediately, with an error.
> +.TP
> +.B flags =3D=3D (O_NONBLOCK | O_TRUNC)
> +The module is unloaded immediately,
> +regardless of whether it has a nonzero reference count.
> +.TP
> +.B (flags & O_NONBLOCK) =3D=3D 0
> +If
> +.I flags
> +does not specify
> +.BR O_NONBLOCK ,
> +the following steps occur:
> +.RS
> +.IP \[bu] 3
> +The module is marked so that no new references are permitted.
> +.IP \[bu]
> +If the module's reference count is nonzero,
> +the caller is placed in an uninterruptible sleep state
> +.RB ( TASK_UNINTERRUPTIBLE )
> +until the reference count is zero, at which point the call unblocks.
> +.IP \[bu]
> +The module is unloaded in the usual way.
> +.RE
> +.RE
>  .SS Linux 2.4 and earlier
>  In Linux 2.4 and earlier, the system call took only one argument:
>  .P
> @@ -183,19 +205,9 @@ is NULL, all unused modules marked auto-clean are re=
moved.
>  .P
>  Some further details of differences in the behavior of
>  .BR delete_module ()
> -in Linux 2.4 and earlier are
> +in Linux 3.12 and earlier are
>  .I not
>  currently explained in this manual page.
> -.SH NOTES
> -The uninterruptible sleep that may occur if
> -.B O_NONBLOCK
> -is omitted from
> -.I flags
> -is considered undesirable, because the sleeping process is left
> -in an unkillable state.
> -As at Linux 3.7, specifying
> -.B O_NONBLOCK
> -is optional, but in future kernels it is likely to become mandatory.
>  .SH SEE ALSO
>  .BR create_module (2),
>  .BR init_module (2),
> --=20
> 2.33.8
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--NTg07M9vVmQCUomH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXndyUACgkQnowa+77/
2zJV9g/8C9wLWGlIs3aPy5iJdwNFSjidl3wvJI+K+4UJ6YOLYFHFe6gAGSWJJPy1
08bz2efP0NqFyXvLCB7mfGdvXeyy3REcn0aNstk8GDloTyB4Sn0l9sqjm2pOh2ZA
3hebMn60+A3HMsNoi1BuPNWvX2gnkabFfzrDPimpkH+/cuXD85kuy9t39AGFQpGg
ez2iKWbCTvyGICTlc903PtaK0v+HEshtE29YUkrobBCrOC/P117U29NajrLQppP8
+oeENdFQh0aPs2PbL8rz5up3qT1Qk5Vp4KLlC2cweI2oWis0w6qi4+WdLaGgTmEW
2L/vgxW+17A7eCqGFl53XA7vqQe1kUhUVlqyHy0fVL6W0q33mi16ictbEqRdnsnW
o6Ay83QzlDoHywmTSNE5GRLIzPKlUp+NTSmPOmzkdl/x0gW+llL8Nwxuvtc3no4t
pyUyndZpjZGsg/KSR5lHLsAEfrxyZSyx+8PEWjGzI5fukzHfutltyeJU8kvYgIxh
sEfaLz29zO3eDu1/6SVsQ0c43PvXLzoc0eFnPi/4WAv2gPjD56Wlc9gJrQTJPcIQ
KwppClwwYjqvrVj5pK5u+NkTqZFuWhuxSyLxIYvqYuLxEO9OcNG/738++MLB7gMW
HitF2f1GvtODYsHjGwy3rU18smQ6wlvE4GeKHwgiWyWWLLWsvKQ=
=Wv/Z
-----END PGP SIGNATURE-----

--NTg07M9vVmQCUomH--

