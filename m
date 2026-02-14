Return-Path: <linux-man+bounces-5135-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJp+GwDVkGmodAEAu9opvQ
	(envelope-from <linux-man+bounces-5135-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 21:03:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6D113D191
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 21:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7D5CE3012CC5
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 20:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 568C3270EC1;
	Sat, 14 Feb 2026 20:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEcGFKat"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4C87081F
	for <linux-man@vger.kernel.org>; Sat, 14 Feb 2026 20:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771099389; cv=none; b=RpRNm4b7irU4Av5bUTldRO33WsTkB1uyCgTbFsa12p2a08ufDpGz4KDQ7TYeNCUJ7mXCO49plqjhULoeTQEa9i13xmxD8OnUV2y3WbT24TtxKUApW0iJ1yOyK+TCrM2dmifhre11gPhNcNgeWM3joE73TvyzGr44HnYfeDnfnMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771099389; c=relaxed/simple;
	bh=XRwoJgBrVqxmMfG4tnIgFR1zfRVC8BDfrkpn2OnUTJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=orAOqgaMCN98SaOP1T1gEc+lCD3UIJBBsQq5ZGh8+X9dPn3U7c+iGIiLU8F+OC0LriecDN+DSqt87HQDmgoYU1D1ID2Yp8Px8MY2x0bhyfFzww9NPuuhefNIMjLRtVTfVCaEtpdPwqtr9BkpVnrKtR1FAkxKDD1lk8dQG+Pa2sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEcGFKat; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C16CC16AAE;
	Sat, 14 Feb 2026 20:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771099388;
	bh=XRwoJgBrVqxmMfG4tnIgFR1zfRVC8BDfrkpn2OnUTJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZEcGFKat7w2bfdVMKTfdAX5PdM/cNJKRoUrj0iA5fPtyCh3kjD/Ue7xNuzRDBzz2N
	 dgkKP2jVqg6EXh5+HYmK6v05/Ge2jPb5V82rFZpSeROWUyYUW/oA9uwoKhG6mCSBF0
	 3Kk5GnRyXpobwFX5uMj2xi5U/0Sh9J3wRZejIOKKebn6k6s3Wz5oj/xRmNR47riP2+
	 fkhrY+tgNZ9sbVc8apmtAOdVKKHXD/ZTjaLBwZ/o3Pw0D3UCoq/NRJcN37yuBEL/dw
	 ni60stdF92z0kmzuSMb5q+kiYdx5GF81Dn1ozRJbfmExOpy7EfWkDdq0HWGZSNj6oK
	 SqCXJ1UNKYPyQ==
Date: Sat, 14 Feb 2026 21:03:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v8] futex_waitv.2: new page
Message-ID: <aZDSt7hvlzKBq_Fr@devuan>
References: <aYySf9HuORRCchje@devuan>
 <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
 <aZCpWitr7ioKU1C-@devuan>
 <44t3xfewbwmbgvvtk4kwmsdkpwshnrylbf56dzbi6grj5o4gw5@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y4irzbucyod2nlhh"
Content-Disposition: inline
In-Reply-To: <44t3xfewbwmbgvvtk4kwmsdkpwshnrylbf56dzbi6grj5o4gw5@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5135-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabijaczleweli.xyz:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: CE6D113D191
X-Rspamd-Action: no action


--y4irzbucyod2nlhh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v8] futex_waitv.2: new page
Message-ID: <aZDSt7hvlzKBq_Fr@devuan>
References: <aYySf9HuORRCchje@devuan>
 <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
 <aZCpWitr7ioKU1C-@devuan>
 <44t3xfewbwmbgvvtk4kwmsdkpwshnrylbf56dzbi6grj5o4gw5@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <44t3xfewbwmbgvvtk4kwmsdkpwshnrylbf56dzbi6grj5o4gw5@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-14T20:30:37+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Sat, Feb 14, 2026 at 06:32:17PM +0100, Alejandro Colomar wrote:
> > > diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
> > > new file mode 100644
> > > index 000000000..a1eeb8ce8
> > > --- /dev/null
> > > +++ p/man/man2/futex_waitv.2
> > > @@ -0,0 +1,421 @@
> > [...]
> > > +.SH SYNOPSIS
> > > +.nf
> > > +.BR "#include <linux/futex.h>" "  /* Definition of " FUTEX* " consta=
nts */"
> > Out of curiosity, why are some macros FUTEX2_* instead of FUTEX_*?
> > (if you know)
> They call the futex_*() syscalls "futex2", in contrast
> to the futex(FUTEX_*) family which is (retronymically) version 1 futex;
> futex2-specific macros start with FUTEX2_, the original futex macros
> started with just FUTEX_.

Thanks!

>=20
> > > +.B EINVAL
> > > +.B FUTEX2_NUMA
> > > +was set in
> > > +.IR waiters []. flags ,
> > > +and the NUMA word
> > > +(which is the same size as the futex word)
> > > +is too small to contain the index of the biggest NUMA domain
> > > +(for example,
> > > +.B FUTEX2_SIZE_U8
> > > +and there are more than 255 NUMA domains).
> > Is it 255 or 256?  I assume it's a 0-based index, so I'd expect there to
> > fit 256 indices in a u8.
> kernel/futex/futex.h:
> 	int bits =3D 8 * futex_size(flags);  // 8
> 	u64 max =3D ~0ULL;                   // 0xFFFF`FFFF`FFFF`FFFF
> =09
> 	max >>=3D 64 - bits;                 // 0xFF
> 	if (nr_node_ids >=3D max)
> 		return false;
> which is first true when nr_node_ids is 0xFF,
> so "FUTEX2_SIZE_U8 and at least 255", actually.
>=20
> Also this variable is "/possible/ NUMA domains" apparently.

Hmmm.

>=20
> Scissor-patch below.
>=20
> Best,
> -- >8 --
> From: =3D?UTF-8?q?=3DD0=3DBD=3DD0=3DB0=3DD0=3DB1?=3D <nabijaczleweli@nabi=
jaczleweli.xyz>
> Date: Tue, 10 Feb 2026 21:32:19 +0100
> Subject: [PATCH v8] futex_waitv.2: new page
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
> Range-diff against v7:
> 1:  da50b4733 ! 1:  c63cce1ec futex_waitv.2: new page
[...]
>     @@ man/man2/futex_waitv.2 (new)
>      +.P
>      +.\" SRC BEGIN (futex_waitv.c)
>      +.EX
>     ++#include <err.h>
>      +#include <errno.h>
>      +#include <inttypes.h>
>      +#include <linux/futex.h>
>     @@ man/man2/futex_waitv.2 (new)
>      +	struct futex_waitv waiters[countof(futexes)] =3D {};
>      +	int  i;
>      +\&
>     -+	getentropy(init, sizeof(init));
>     ++	if(getentropy(init, sizeof(init)))

Space after structural keywords.

>     ++		err(EXIT_FAILURE, "getentropy");
>      +	init[0] =3D init[1] =3D init[2];
>      +	for (i =3D 0; i < countof(futexes); ++i) {
>      +		printf("%" PRIu8 "\[rs]t", init[i]);
>      +		atomic_init(&futexes[i], init[i]);
>     -+		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
>     ++		pthread_create(&(pthread_t) {}, NULL, worker, &futexes[i]);

This is not a cast, so it should not have a space.

>      +	}
>     -+	putchar('\[rs]n');
>     ++	putchar(\[aq]\[rs]n\[aq]);
>      +\&
>      +	for (i =3D 0; i < countof(futexes); ++i) {
>      +		waiters[i].val   =3D futexes[i];
>     -+		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
>     ++		waiters[i].uaddr =3D (uintptr_t) &futexes[i];
>      +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
>      +	}
>      +	for (;;) {
[...]
>=20
>  man/man2/futex_waitv.2 | 422 +++++++++++++++++++++++++++++++++++++++++
>  man/man7/futex.7       |   9 +-
>  2 files changed, 429 insertions(+), 2 deletions(-)
>  create mode 100644 man/man2/futex_waitv.2
>=20
> diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
> new file mode 100644
> index 000000000..6835434b4
> --- /dev/null
> +++ p/man/man2/futex_waitv.2
[...]
> +.SH EXAMPLES
[...]
> +int
> +main(void)
> +{
[...]
> +	if(getentropy(init, sizeof(init)))
> +		err(EXIT_FAILURE, "getentropy");
> +	init[0] =3D init[1] =3D init[2];
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		printf("%" PRIu8 "\[rs]t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t) {}, NULL, worker, &futexes[i]);

Not a cast.

> +	}
> +	putchar(\[aq]\[rs]n\[aq]);
> +\&
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t) &futexes[i];
> +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
> +	}
> +	for (;;) {
> +		struct timespec  timeout;
> +		int  woke;
> +\&
> +		clock_gettime(CLOCK_MONOTONIC, &timeout);
> +		timeout.tv_sec +=3D 1;
> +\&
> +		woke =3D my_futex_waitv(waiters, countof(futexes), 0, &timeout, CLOCK_=
MONOTONIC);
> +		if (woke =3D=3D \-1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
> +			break;
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i) {
> +			if (futexes[i] !=3D waiters[i].val)
> +				printf("%" PRIu32 "%s", futexes[i], i =3D=3D woke ? "!" : "");
> +			putchar(\[aq]\[rs]t\[aq]);
> +		}
> +		putchar(\[aq]\[rs]n\[aq]);
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +	fprintf(stderr, "%s\[rs]n", strerror(errno));

This looks like 'perror("")', doesn't it?

Although, I'd use err(3) instead, which correctly fails instead of
returning 0, right?

	err(EXIT_FAILURE, "my_futex_waitv");


Have a lovely night!
Alex

> +}
> +.EE
> +.\" SRC END
> +.SH SEE ALSO
> +.BR futex (2),
> +.BR FUTEX_WAIT (2const),
> +.BR FUTEX_WAKE (2const),
> +.BR futex (7)
> +.P
> +Kernel source file
> +.I Documentation/userspace-api/futex2.rst
> diff --git u/man/man7/futex.7 p/man/man7/futex.7
> index 51c5d5d9b..d271144ff 100644
> --- u/man/man7/futex.7
> +++ p/man/man7/futex.7
> @@ -45,7 +45,9 @@ .SS Semantics
>  Any futex operation starts in user space,
>  but it may be necessary to communicate with the kernel using the
>  .BR futex (2)
> -system call.
> +or
> +.BR futex_waitv (2)
> +system calls.
>  .P
>  To "up" a futex, execute the proper assembler instructions that
>  will cause the host CPU to atomically increment the integer.
> @@ -72,7 +74,9 @@ .SS Semantics
>  .P
>  The
>  .BR futex (2)
> -system call can optionally be passed a timeout specifying how long
> +and
> +.BR futex_waitv (2)
> +system calls can optionally be passed a timeout specifying how long
>  the kernel should
>  wait for the futex to be upped.
>  In this case, semantics are more complex and the programmer is referred
> @@ -107,6 +111,7 @@ .SH NOTES
>  .SH SEE ALSO
>  .BR clone (2),
>  .BR futex (2),
> +.BR futex_waitv (2),
>  .BR get_robust_list (2),
>  .BR set_robust_list (2),
>  .BR set_tid_address (2),
> --=20
> 2.39.5
>=20



--=20
<https://www.alejandro-colomar.es>

--y4irzbucyod2nlhh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmQ1PMACgkQ64mZXMKQ
wqnYdw/9Gy4fdlFhATXnn1kYe8l9K3I+RwtU1IFxsf0eitwfluy1wy5mI48Kd5Al
IwKfengjtWEgAtcueyibF/vvPyjpxwOrUWVKgor59YKE0mVL+M0+joAV6sl/tAA6
fhjaHu3V8m/94lf4E6y7hT/CYp4on3EIgXFJJPHfgYL2AMJmwozxNLaq4KjpV8Of
FgtDJZySnqX0dEaf0tHz3IPvqXzyV7M9jxDQrXgjRowRw1p5RlfgyOOwP1JLCdYf
lESUrxce+sDvnetTTp8i8gM6FSHt63iXtVjD+W6IRmzrClLuSQdX4HXC8TVKDupq
y8+Ltaa2MbxbvMbQJLRkd6qpfdXPFTV7sBTSArrCXL1gzOPo4ZUZTlsLtwq8eEJd
1987DloG6YvLsF+vHEWBUwxC6sr/ptdKnaCrOjLeMqVPiWpcX33Tw6zcQo3X556U
tN8NQgJ2v4cZj4O95PiJ4gOCIzelwLN3XPo8gl+zxfDzSApyIDyAjS7GNMMw8YmS
nATMIsvpcayeQvBiN/SWIUQrRNb5AdTcFIVDyuhyoGh/RGymrcf3wH6IISnMk03y
ttZ3Ormw0AKzPkwgmPB6TfsbHkcIJyaFhTX0VdHLQWGQ+3SuBN7zfLqwVRywFRcx
hlDMRUCEJJ89YTwEVAOnEduylBZ29sOFcyF/+1aD1FZRAp0EEes=
=bxco
-----END PGP SIGNATURE-----

--y4irzbucyod2nlhh--

