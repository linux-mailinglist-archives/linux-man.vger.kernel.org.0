Return-Path: <linux-man+bounces-5151-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCTaDVuNlGn6FQIAu9opvQ
	(envelope-from <linux-man+bounces-5151-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 16:46:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B36014DAC6
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 16:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF562301BCD5
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 15:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65B331D90DF;
	Tue, 17 Feb 2026 15:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOx4o4ff"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B1AC2FF
	for <linux-man@vger.kernel.org>; Tue, 17 Feb 2026 15:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771343192; cv=none; b=F3VRcddkNfjOn/ttEO9siywftyPWqRkbXQFgumAQ460OUPs0lXKxOoccXVRwTR5AK2cZxNdQ5AnrikKS3nYKvdR0Q18z/pqPH2pWAukE6tt1uXmRRv2KUxxLlQNPV4JyEICtpHghFANPRdyFiwHLu2g74D/29LpCYqOxAlPCd4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771343192; c=relaxed/simple;
	bh=M0ZqPrC1odPNZw5g+/w4V9re6qtHijy7qViXepjd6Ok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ga2J6tzW73JtvADC79OglaP0pbPmoOs+UnWqVc5KsYyJjAO5/2hrgzx3yMFhTFE4A9soLlf8VsUCOG7+SPtIOIEV27w+52hhTs8N5MGrEVBMdPSYpDmFRo/QzBCyFDWWXyZ1hecOOEUmlvOTgpPFvLaG1bAgU4iCVLFSygdKqr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOx4o4ff; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1800DC4CEF7;
	Tue, 17 Feb 2026 15:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771343191;
	bh=M0ZqPrC1odPNZw5g+/w4V9re6qtHijy7qViXepjd6Ok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LOx4o4ffLsV7fq0534B5tuQhEss/lizzBvX6O+ipJiGtwRsS2JWCFqbAOl6DZHJuZ
	 gngwQ//0zy8esMnQnMxQeC9eYqQQX6EqFeO7PC5saLf0j8+N+CxlMZCfgELMBe0Sdy
	 4U2Z3ntbPauuxKwUPOJfrr6g0MhQCW8MgSPEOWS7JXxgN9rGuexeGYfiKOzdwweZp/
	 BYy7Ie1QrU53kB+3T0/GztjtjLj0udCgd0iXlC75RTgOxmY9wlIKBYKgwpsao+m8WG
	 pg82gwtjLbSP+9/0LLQUsPT31fljCBsO+8DXhPRLogGkwP/rrWmC2oG9OkWaN40BpR
	 vM7RmoCN4X70w==
Date: Tue, 17 Feb 2026 16:46:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v13] futex_waitv.2: new page
Message-ID: <aZSK5oo7o_jF85zP@devuan>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
 <aZRnXT1Zwmtt0eIr@devuan>
 <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dalxvr2q5l2r6arj"
Content-Disposition: inline
In-Reply-To: <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5151-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8B36014DAC6
X-Rspamd-Action: no action


--dalxvr2q5l2r6arj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v13] futex_waitv.2: new page
Message-ID: <aZSK5oo7o_jF85zP@devuan>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
 <aZRnXT1Zwmtt0eIr@devuan>
 <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <y2tytznhy5c6grvzvtw7px3a3qmj2u7evwaax4qzc2lf44sawd@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-17T15:31:29+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Feb 17, 2026 at 02:07:42PM +0100, Alejandro Colomar wrote:
> > On 2026-02-16T21:43:14+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > +.TP
> > > +.B EINVAL
> > > +.I *timeout
> > > +is denormal (before epoch or
> > > +.I tv_nsec
> > > +more than 999\[aq]999\[aq]999).
> > I suspect .tv_nsec < 0 is also denormal, and it being a long, that's
> > certainly possible, right?  Should we specify a range?
> Hm, yeah:
[...]
> I hadn't considered the cast also checks for <0.
>=20
> Scissor-patch below.

I'm applying the patch, amended with the following.

	diff --git c/man/man2/futex_waitv.2 i/man/man2/futex_waitv.2
	index f0553698e42a..7e336fec830d 100644
	--- c/man/man2/futex_waitv.2
	+++ i/man/man2/futex_waitv.2
	@@ -4,7 +4,7 @@
	 .\"
	 .TH futex_waitv 2 (date) "Linux man-pages (unreleased)"
	 .SH NAME
	-futex_waitv \- wait for FUTEX_WAKE operation on multiple futexes
	+futex_waitv \- wait for FUTEX_WAKE operation on a vector of futexes

The NAME section should try to explain the name.  Thus, using the word
'vector' in the description of the name seems better, as it clarifies
why it has a trailing 'v'.

	 .SH LIBRARY
	 Standard C library
	 .RI ( libc ,\~ \-lc )
	@@ -15,20 +15,20 @@ .SH SYNOPSIS
	 .B #include <unistd.h>
	 .B #include <time.h>
	 .P
	-.BR "long syscall(" "unsigned int n;"
	-.BI "             SYS_futex_waitv, struct futex_waitv " waiters [ n ],
	-.BI "             unsigned int " n ", unsigned int " flags ,
	-.BI "             const struct timespec *_Nullable " timeout ", clockid_t=
 " clockid ");"
	+.BR long\~syscall( unsigned\~int\~n;
	+.BI "             SYS_futex_waitv, struct\~futex_waitv\~" waiters [ n ],
	+.BI "             unsigned\~int\~" n ", unsigned\~int\~" flags ,
	+.BI "             const\~struct\~timespec\~*_Nullable\~" timeout ", clock=
id_t\~" clockid );

I'm planning a global change in SYNOPSIS to use SY/YS.  This will reduce
the work.

	 .fi
	 .P
	 .EX
	 .B "#include <linux/futex.h>"
	 .P
	 struct futex_waitv {
	-    u64 val;        /* Expected value at \f[I]uaddr\f[] */
	-    u64 uaddr;      /* User address to wait on */
	-    u32 flags;      /* Flags for this waiter */
	-    u32 __reserved; /* Align to u64 */
	+       u64  val;         /* Expected value at \f[I]uaddr\f[] */
	+       u64  uaddr;       /* User address to wait on */
	+       u32  flags;       /* Flags for this waiter */
	+       u32  __reserved;  /* Align to u64 */

I used a tab.  Also, two spaces between type and name, and between code
and comment.

	 };
	 .EE
	 .SH DESCRIPTION
	@@ -300,6 +300,7 @@ .SH EXAMPLES
	 .B !\&
	 indicates the futex that woke up each
	 .BR futex_waitv ().
	+.P

You forgot the P.

	 .in +4
	 .EX
	 .RB $\~ ./futex_waitv
	@@ -361,29 +362,28 @@ .SH EXAMPLES
	 int
	 main(void)
	 {
	-       _Atomic uint32_t  futexes[10];
	-       uint8_t  init[countof(futexes)];
	-       struct futex_waitv waiters[countof(futexes)] =3D {};
	-       int  i;
	+       _Atomic uint32_t    futexes[10];
	+       uint8_t             init[countof(futexes)];
	+       struct futex_waitv  waiters[countof(futexes)] =3D {};

Aligned the names.

	 \&
		if (getentropy(init, sizeof(init)))
			err(EXIT_FAILURE, "getentropy");
		init[0] =3D init[1] =3D init[2];
	-       for (i =3D 0; i < countof(futexes); ++i) {
	+       for (int i =3D 0; i < countof(futexes); ++i) {

I prefer C99 loop variables.

			printf("%w8u\[rs]t", init[i]);
			atomic_init(&futexes[i], init[i]);
			pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
		}
		putchar(\[aq]\[rs]n\[aq]);
	 \&
	-       for (i =3D 0; i < countof(futexes); ++i) {
	+       for (int i =3D 0; i < countof(futexes); ++i) {
			waiters[i].val   =3D futexes[i];
			waiters[i].uaddr =3D (uintptr_t) &futexes[i];
			waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
		}
		for (;;) {
	+               int              woke;
			struct timespec  timeout;
	-               int  woke;
	 \&
			clock_gettime(CLOCK_MONOTONIC, &timeout);
			timeout.tv_sec +=3D 1;
	@@ -392,14 +392,14 @@ .SH EXAMPLES
			if (woke =3D=3D \-1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
				err(EXIT_FAILURE, "my_futex_waitv");
	 \&
	-               for (i =3D 0; i < countof(futexes); ++i) {
	+               for (int i =3D 0; i < countof(futexes); ++i) {
				if (futexes[i] !=3D waiters[i].val)
					printf("%w32u%s", futexes[i], i =3D=3D woke ? "!" : "");
				putchar(\[aq]\[rs]t\[aq]);
			}
			putchar(\[aq]\[rs]n\[aq]);
	 \&
	-               for (i =3D 0; i < countof(futexes); ++i)
	+               for (int i =3D 0; i < countof(futexes); ++i)
				waiters[i].val =3D futexes[i];
		}
	 }

I see some diagnostics from Clang, which I suspect I should just
silence; let me know your opinion:

	.tmp/man/man2/futex_waitv.2.d/futex_waitv.c:36:13: error: implicit use of =
sequentially-consistent atomic may incur stronger memory barriers than nece=
ssary [clang-diagnostic-atomic-implicit-seq-cst,-warnings-as-errors]
	   36 |      usleep(*futex * 10000);
	      |             ^


	.tmp/man/man2/futex_waitv.2.d/futex_waitv.c:37:13: error: implicit use of =
sequentially-consistent atomic may incur stronger memory barriers than nece=
ssary [clang-diagnostic-atomic-implicit-seq-cst,-warnings-as-errors]
	   37 |      *futex *=3D 2;
	      |             ^

I have little knowledge about atomics, so can't judge, but the code
seems good to me.  Please confirm.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--dalxvr2q5l2r6arj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmUjVQACgkQ64mZXMKQ
wqlrmxAAsXgxhBzBVqvfjrKF8u9Jvzg93WxOIYZFboc1bkE7qTfoge9A2MC6E5/n
WPVvA7abBinE5fkc9T++PiXnhE0/oBi6tLhu+RZyKt9aqRvPmgkQRt8I3il49xQq
jYEe0EeJFvdXGHegYmyIijp8dzEqh5QHqrbvzeDfTcW2qImLBqmTEW8v8Qk8zbq0
VaqRU6h179npB3Oyu2GpS2Qxo+ONUmQcdgaIu/bKINada/USaqyGyaLO+jXLXNiz
CSmYROeHgcpUjKI+qKCvGcrrWPOrqRcf6uh9y2S5kxjr5gQG0fMc/trU8DWs7nSr
xTO6Mswjpaxekw0S/eVsDP6RR2GUf1VgxzyCe4yCCOVnLt5uT43EhNd69VLJWnTI
E1hc9eJAD1dLLjRdYrO+hw7Up+FcIcR785wa8re3K3ZUYLTrx+j47y3Lmt35ICo5
EfuDgvolXaqRA5EGy+VdEuAyfGO6r9wULnScJvwv3XkJ3BrvcAWaYxdjiSOURm4A
lQW28siffRvfOFMJHFi7YP6w0n+TnsX12uQwpyxvaJwx6d3L/YCTbmZq8Iuo+O2P
V5z4MOgB3wgwKlIgWN4AaPm6WxNiIc18x67wZiaKIU/Fc9Y+SAXvPo8ZCY2vuRXU
pbwSixtx/K5J8NNU0Mautqaoqt6pqRGTkR36v9EBJobM2oo/x+I=
=+gf5
-----END PGP SIGNATURE-----

--dalxvr2q5l2r6arj--

