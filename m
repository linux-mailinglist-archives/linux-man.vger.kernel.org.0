Return-Path: <linux-man+bounces-1812-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F1F9B924B
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 14:47:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87807B20E95
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 13:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58A5175D2D;
	Fri,  1 Nov 2024 13:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4noeWrq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9441119BBC
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 13:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730468820; cv=none; b=U7aNG84nHmuqZrUizEOkQaR34nbRdvX4tWgp8Gwcu7TKNAx/aHTYLU3VI8XRLiPGDySdEOUoBVjLjV5dxPJKHWv0bn45vKKbt78SeaHLjna5KrE+jF5CeMUNf5DDVEyaG2ZABwF2T0xGW3B5Gk1lZjayGg0snHwjk5+nz6iDzsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730468820; c=relaxed/simple;
	bh=+/DZeP7hJAZr0VVYlcUe2MBlN5BxKkssUkbtlU2lVh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LkDB+dU866BYTE2Jk409lq/UIyrnZ1QrF37hzWr1+k2tK9sNNV5yYt/nAHRnimTx7et5TyvSeNJL+ZrJSeqP0Raj8msOR7Eyhb6zaxlfVeDhAxrdlVRZWvZPRQzkgiwijSdru+l2jGRn6Fu50oNVpHX+1jT5lK4ixYx/4MxLrt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4noeWrq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8202C4CED2;
	Fri,  1 Nov 2024 13:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730468820;
	bh=+/DZeP7hJAZr0VVYlcUe2MBlN5BxKkssUkbtlU2lVh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N4noeWrqqngTKGkVCf6pG1h6jl09opMTn+5qY0K9kO+aRsmiSM5Swxdm0YDqmqTIV
	 QLYD4RP3zcXx9PLiScer2GZLT73NiPBpqPKK1U8V4BvKFlh2t18+UKriMzsj39Ll9T
	 G7y+E9/FPSFR9oz8yqQnckYvwcQYpAF6CSyxpm5+MYup147+svIjbh6jdA8Rf4B3xL
	 369R9ynQTvUwQ9qUh2MsKWJySTwSpxHLsKC4j6WmDkDZ7d+8Fot4iAtSktsvQh6Xih
	 iIa7unrLoZICPJhdJBJDm8uSsr+GC6F02lNnWHZ9+TvQG9C2uO4pOgX3c9K3//iUer
	 ZzubqiRQmQTRQ==
Date: Fri, 1 Nov 2024 14:46:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Greg Minshall <minshall@umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: getaddrinfo_a man page: add notification example?
Message-ID: <20241101134653.3vwbgzk3ffegckzh@devuan>
References: <863308.1724581040@archlinux>
 <4vdd7x3bdhpomg5epf4huwbdsytvgd2qqgohyavpsjmqgwperv@tx2ytsol5ymv>
 <864874.1724585353@archlinux>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gwlzx2snm27ycl7e"
Content-Disposition: inline
In-Reply-To: <864874.1724585353@archlinux>


--gwlzx2snm27ycl7e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: getaddrinfo_a man page: add notification example?
MIME-Version: 1.0

Hi Greg,

On Sun, Aug 25, 2024 at 02:29:13PM +0300, Greg Minshall wrote:
> Alex,
>=20
> > Would you mind sending the extracted files?  That way I can comment on
> > those directly.
>=20
> here you go.
>=20
> cheers, Greg
>=20
>=20
> ----
>=20
> #define _GNU_SOURCE
> #include <assert.h>
> #include <err.h>
> #include <netdb.h>
> #include <signal.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
>=20
> #define CALLOC(n, type)  ((type *) calloc(n, sizeof(type)))
>=20
> #define REALLOCF(ptr, n, type)                                          \
> ({                                                                      \
>     static_assert(__builtin_types_compatible_p(typeof(ptr), type *));   \
>                                                                         \
>     (type *) reallocarrayf(ptr, n, sizeof(type));                       \
> })
>=20
> static struct gaicb **reqs =3D NULL;
> static size_t nreqs =3D 0;
> /* default is "no notification" ('n') */
> static char notification =3D 'n';

Would it be better to use an enum instead of comments?

	enum {
		NOTIFICATION_NONE =3D 'n',
		NOTIFICATION_SIGNAL =3D 's',
		NOTIFICATION_CALLBACK =3D 'c'
	};

>=20
> /* forward declaration for callback routines */
> static void list_requests(void);
>=20
>=20
> static inline void *
> reallocarrayf(void *p, size_t nmemb, size_t size)
> {
>     void  *q;
>=20
>     q =3D reallocarray(p, nmemb, size);
>     if (q =3D=3D NULL && nmemb !=3D 0 && size !=3D 0)
>         free(p);
>     return q;
> }
>=20
> static char *
> getcmd(void)
> {
>     static char buf[256];
>=20
>     fputs("> ", stdout); fflush(stdout);
>     if (fgets(buf, sizeof(buf), stdin) =3D=3D NULL)
>         return NULL;
>=20
>     if (buf[strlen(buf) - 1] =3D=3D '\n')
>         buf[strlen(buf) - 1] =3D 0;

If the string does not contain a newline, it probably means something is
wrong.  Returning as if all were good is probably not a good idea.

I suggest

	static inline char *
	stpsep(char *s, const char *delim)
	{
		strsep(&s, delim);
		return s;
	}

and then:

	if (stpsep(buf, "\n") =3D=3D NULL)
		return NULL;



>=20
>     return buf;
> }
>=20
> /* Set notification type: none (default), signal, callback */
> static void
> notification_type(void)
> {
>     char *type =3D strtok(NULL, " ");
>=20
>     switch (type[0]) {
>     case 'c':
>     case 'n':
>     case 's':
>         notification =3D type[0];
>         break;
>     default:
>         fprintf(stderr, "Bad type: '%c' (expecting 'c', 's', or 'n')\n", =
type[0]);
>         break;
>     }
> }
>=20
> /* callback routine for signal notifications */
>=20
> static void
> signal_handler(int signo) {
>     fprintf(stdout, "notified by signal\n");
>     list_requests();
>     fprintf(stdout, "> ");
>     fflush(stdout);
> }
>=20
> /* callback routine for thread/callback notifications */
>=20
> static void
> callback_handler(union sigval sev_value) {
>     fprintf(stdout, "notified by callback\n");
>     list_requests();
>     fprintf(stdout, "> ");
>     fflush(stdout);
> }
>=20
> /* Add requests for specified hostnames. */
> static void
> add_requests(void)
> {
>     static struct sigevent senull; /* static, so initialized to zero */
>     static struct sigaction sanull; /* static, so intitialized to zero */

These comments are redundant.  Please remove them.  Maybe add a blank
line between static variables and automatic ones to make it more
evident.

>     struct sigevent se =3D senull;
>     struct sigaction sa =3D sanull;
>     size_t nreqs_base =3D nreqs;
>     char *host;
>     int ret;
>=20
>     while ((host =3D strtok(NULL, " "))) {
>         nreqs++;
>         reqs =3D REALLOCF(reqs, nreqs, struct gaicb *);
>         if (reqs =3D=3D NULL)
>             err(EXIT_FAILURE, "reallocf");
>=20
>         reqs[nreqs - 1] =3D CALLOC(1, struct gaicb);
>         if (reqs[nreqs - 1] =3D=3D NULL)
>             err(EXIT_FAILURE, "calloc");
>=20
>         reqs[nreqs - 1]->ar_name =3D strdup(host);
>     }
>=20
>     switch (notification) {
>     case 'c':
>         /* notify via a callback */
>         se.sigev_notify =3D SIGEV_THREAD;
>         se.sigev_notify_function =3D callback_handler;
>         break;
>     case 'n':
>         /* nothing to do */
>         break;
>     case 's':
>         se.sigev_notify =3D SIGEV_SIGNAL;
>         se.sigev_signo =3D SIGUSR1;
>         sa.sa_handler =3D signal_handler;
>         /* set SA_RESTART so read(2) in main doesn't get an EINTR */
>         sa.sa_flags =3D SA_RESTART;
>         ret =3D sigaction(SIGUSR1, &sa, NULL);
>         if (ret) {
>             err(EXIT_FAILURE, "sigaction");
>         }
>         break;
>     default:
>         fprintf(stderr, "program error: `notification` not one of [cns]: =
%c\n",
>                 notification);
>         exit(4);
>     }
>=20
>     /* Queue nreqs_base..nreqs requests. */
>=20
>     ret =3D getaddrinfo_a(GAI_NOWAIT, &reqs[nreqs_base],
>                         nreqs - nreqs_base, notification =3D=3D 'n' ? NUL=
L : &se);
>     if (ret) {
>         fprintf(stderr, "getaddrinfo_a() failed: %s\n",
>                 gai_strerror(ret));
>         exit(EXIT_FAILURE);
>     }
> }
>=20
> /* Wait until at least one of specified requests completes. */
> static void
> wait_requests(void)
> {
>     char *id;
>     int ret;
>     size_t n;
>     struct gaicb const **wait_reqs;
>=20
>     wait_reqs =3D CALLOC(nreqs, const struct gaicb *);
>     if (wait_reqs =3D=3D NULL)
>         err(EXIT_FAILURE, "calloc");
>=20
>                 /* NULL elements are ignored by gai_suspend(). */
>=20
>     while ((id =3D strtok(NULL, " ")) !=3D NULL) {
>         n =3D atoi(id);
>=20
>         if (n >=3D nreqs) {
>             printf("Bad request number: %s\n", id);
>             return;
>         }
>=20
>         wait_reqs[n] =3D reqs[n];
>     }
>=20
>     ret =3D gai_suspend(wait_reqs, nreqs, NULL);
>     if (ret) {
>         printf("gai_suspend(): %s\n", gai_strerror(ret));
>         return;
>     }
>=20
>     for (size_t i =3D 0; i < nreqs; i++) {
>         if (wait_reqs[i] =3D=3D NULL)
>             continue;
>=20
>         ret =3D gai_error(reqs[i]);
>         if (ret =3D=3D EAI_INPROGRESS)
>             continue;
>=20
>         printf("[%02zu] %s: %s\n", i, reqs[i]->ar_name,
>                ret =3D=3D 0 ? "Finished" : gai_strerror(ret));
>     }
> }
>=20
> /* Cancel specified requests. */
> static void
> cancel_requests(void)
> {
>     char *id;
>     int ret;
>     size_t n;
>=20
>     while ((id =3D strtok(NULL, " ")) !=3D NULL) {
>         n =3D atoi(id);
>=20
>         if (n >=3D nreqs) {
>             printf("Bad request number: %s\n", id);
>             return;
>         }
>=20
>         ret =3D gai_cancel(reqs[n]);
>         printf("[%s] %s: %s\n", id, reqs[atoi(id)]->ar_name,
>                gai_strerror(ret));
>     }
> }
>=20
> /* List all requests. */
> static void
> list_requests(void)
> {
>     int ret;
>     char host[NI_MAXHOST];
>     struct addrinfo *res;
>=20
>     for (size_t i =3D 0; i < nreqs; i++) {
>         printf("[%02zu] %s: ", i, reqs[i]->ar_name);
>         ret =3D gai_error(reqs[i]);
>=20
>         if (!ret) {
>             res =3D reqs[i]->ar_result;
>=20
>             ret =3D getnameinfo(res->ai_addr, res->ai_addrlen,
>                               host, sizeof(host),
>                               NULL, 0, NI_NUMERICHOST);
>             if (ret) {
>                 fprintf(stderr, "getnameinfo() failed: %s\n",
>                         gai_strerror(ret));
>                 exit(EXIT_FAILURE);
>             }
>             puts(host);
>         } else {
>             puts(gai_strerror(ret));

If you invert the conditional, you can add a continue after this, and
unindent the non-error code.

Thanks for the emanple program!

Have a lovely day!
Alex

>         }
>     }
> }
>=20
> int
> main(void)
> {
>     char *cmdline;
>     char *cmd;
>=20
>     while ((cmdline =3D getcmd()) !=3D NULL) {
>         cmd =3D strtok(cmdline, " ");
>=20
>         if (cmd =3D=3D NULL) {
>             list_requests();
>         } else {
>             switch (cmd[0]) {
>             case 'a':
>                 add_requests();
>                 break;
>             case 'w':
>                 wait_requests();
>                 break;
>             case 'c':
>                 cancel_requests();
>                 break;
>             case 'l':
>                 list_requests();
>                 break;
>             case 'n':
>                 notification_type();
>                 break;
>             default:
>                 fprintf(stderr, "Bad command: %c\n", cmd[0]);
>                 break;
>             }
>         }
>     }
>     exit(EXIT_SUCCESS);
> }
>=20

--=20
<https://www.alejandro-colomar.es/>

--gwlzx2snm27ycl7e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmck28MACgkQnowa+77/
2zKWYQ//eseTLRm+qIFnXEVcIKYe+dL59h4iuWLrxmtKzei8xuMpOSuqJz98v6Yw
NFjgMCLDej1Iuub26WcePP+eJBlWbSKNRD4IJhpQJJnQLwxNePshJXsRrRlTnHy+
TWoUMHBmv21UswMLDDi3U2CylS7QiL1m895XcGzOWdr1Occ/nGA6BNZJytPj+bpY
STdYSG4L2bA2Nb6+wrgXP92IoB7T09hVYcpAAuMbngViYxGi85QhDDjH+0R67n2C
w/2zd5x9ASciBXs0mtYVGcGklLPQhey8Zyl4ibfiNGx4c62PEcaUeFEadBruQA/E
610I4TtbMeCKjoM7YNSukE2+aRS+A4QBWYeQNpyoCKm8SkfxSGS8OfA192JuG7TM
pqkxWorI3kZ/DZ/E51ehaciDoQ8cQX86oyG7RU9dMVvgkSotnP8FCm6BDkYMrPdH
ybxr7APea3gVQGzvaQGkLVEJ+9TXV9OIHtxrH1LbYm+LkVu7dnnayWT3vnIRagom
q5ZP8HieS1VfGDVA936mNB7BnjoE03cmXF4x5Zy6bklR+Gv/OX4BfKxf76lqdBSE
JsRUD5neQhrh9Ak2MtkLkyuc+S6Bgw/xhHKu8lEyvdTkCoOeLHjxqqIqwhrP3Ayf
bKqS0irNzqiBsQrv5ob8VXFAr+fcIT77ADCz518+gLDHYXeHc10=
=GfUC
-----END PGP SIGNATURE-----

--gwlzx2snm27ycl7e--

