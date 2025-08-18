Return-Path: <linux-man+bounces-3476-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 327A3B2AF1E
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 19:15:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23A001BA21CB
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 17:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220AD32C334;
	Mon, 18 Aug 2025 17:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrJaLyDi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72F332C322
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 17:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755537296; cv=none; b=BneTWhyqBQYJN0iIXFOAQ7Wzgl2+S6sUO0fYauWXPFjpbNEYRKvWWNrPvExQOSDk/PThyiXqeQyf/sPeM7PvXkTw1WSPlDxDC2tdpKQcvkoJ6n17dQ2VUDK+YUwYJ0vVRVx+obAN8ZvtgbMOBU0JFs2VGiBY3y++VCxrY160Yww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755537296; c=relaxed/simple;
	bh=u+K6RAEp4O5LWjtFiZ0lX/nKGrDUgC/NslGW1p3Bx8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QqYALtE//y2ikhZmWfpHuK5mP/yQwSwiWGLUFX5iHHFyipo372mZZSZEhabFz3tv6WFk5lMTNOMUVR3yPx/hiuhukSaKrEFtV6kd7qDE2hQVEOWAqTIhlp85uCOl9K1utNdn/RCGaY5SokOIL6AFEFLbfgMzb0uoGNEIVMGGWMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrJaLyDi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31E50C4CEEB;
	Mon, 18 Aug 2025 17:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755537296;
	bh=u+K6RAEp4O5LWjtFiZ0lX/nKGrDUgC/NslGW1p3Bx8M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KrJaLyDizXrTw6RDR356pXxmeAHB8h5CIGStxlXg4uMwGtGVGTt25rF5bJep2ni4R
	 Ju7br8Krbp4Vt1is0cJkIL8CQ+pOFaybIDT2ksyEixOBN1/oCwI+4+H4XlGMCnk5VA
	 EVR4eG5h0s9Z0skDRJbgayNI7zaiFTxvuoA4QePiwfC3q/mAysQbFFCEGaWdYnETB7
	 XtJSVJzBrm4rjZJYi6DFiwnM0FGwMkxfh40sHpINI9tVNTO3a740ywe0cQjkli3ky+
	 s7iSVvifOGQNqyu+2MgjukX609V99feP8i4P8cCemwyfeM/3CmeDy59Ky6PJzWE2SP
	 OrrD53NDPUpfg==
Date: Mon, 18 Aug 2025 19:14:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/strftime.3: Check parameter
Message-ID: <wwgiyenaug2vquoevgfjzx3ml4xzzwbcarbk677isrwvya36ak@hzv5yz6zurdi>
References: <20250818165636.44122-1-dave@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3h5qkllpmfchwlp4"
Content-Disposition: inline
In-Reply-To: <20250818165636.44122-1-dave@treblig.org>


--3h5qkllpmfchwlp4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/strftime.3: Check parameter
References: <20250818165636.44122-1-dave@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20250818165636.44122-1-dave@treblig.org>

Hi David,

On Mon, Aug 18, 2025 at 05:56:35PM +0100, dave@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> The strftime example requires a format paramter.  If you don't
> pass one it crashes.
> Check for the parameter.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> ---
>  man/man3/strftime.3 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
> index 4a3f805bb..3c1108b36 100644
> --- a/man/man3/strftime.3
> +++ b/man/man3/strftime.3
> @@ -739,6 +739,11 @@ .SS Program source
>      char outstr[200];
>      time_t t;
>      struct tm *tmp;
> +\&
> +    if (argc !=3D 2) {
> +        fprintf(stderr,"%s: format-string\[rs]n", argv[0]);

Please make it consistent with examples from other manual pages.  See:

$ find man/ -type f \
| xargs mansect EXAMPLES \
| man /dev/stdin \
| grep fprintf.*stderr.*argv.0;
               fprintf(stderr, "Usage: %s MOUNT\n", argv[0]);
               fprintf(stderr, "Usage: %s <file>\n", argv[0]);
               fprintf(stderr, "Usage: %s device [output [input] ]\n", argv=
[0]);
               fprintf(stderr, "Usage: %s <source> <destination>\n", argv[0=
]);
               fprintf(stderr, "%s <owner> <file>\n", argv[0]);
                   fprintf(stderr, "Usage: %s shmid semid string\n", argv[0=
]);
               fprintf(stderr, "Usage: %s path\n", argv[0]);
               fprintf(stderr, "Usage: %s path\n", argv[0]);
               fprintf(stderr, "Usage: %s [mount-path]\n", argv[0]);
               fprintf(stderr, "%s /proc/PID/ns/FILE cmd args...\n", argv[0=
]);
               fprintf(stderr, "Usage: %s <child-hostname>\n", argv[0]);
               fprintf(stderr, "Usage: %s <pid>\n", argv[0]);
               fprintf(stderr, "%s file offset [length]\n", argv[0]);
               fprintf(stderr, "Usage: %s <path>\n", argv[0]);
              fprintf(stderr, "Usage: %s file...\n", argv[0]);
               fprintf(stderr, "Usage: %s <file>\n", argv[0]);
               fprintf(stderr, "Usage: %s <path>\n", argv[0]);
                   fprintf(stderr, "Usage: %s <file-to-exec>\n", argv[0]);
               fprintf(stderr, "Usage: %s <num>...\n", argv[0]);
               fprintf(stderr, "Usage: %s num-pages\n", argv[0]);
               fprintf(stderr, "Usage: %s <pid> <signal>\n", argv[0]);
               fprintf(stderr, "Usage: %s <string>\n", argv[0]);
               fprintf(stderr, "%s name size [seals]\n", argv[0]);
               fprintf(stderr, "%s /proc/PID/fd/FD\n", argv[0]);
               fprintf(stderr, "Usage: %s '<num>...'\n", argv[0]);
               fprintf(stderr, "Usage: %s HOST...\n", argv[0]);
               fprintf(stderr, "Usage: %s <libpath>\n", argv[0]);
               fprintf(stderr, "%s response\n", argv[0]);
               fprintf(stderr, "Usage: %s <user> <ngroups>\n", argv[0]);
               fprintf(stderr, "Usage: %s str [base]\n", argv[0]);
               fprintf(stderr, "Usage: %s username\n", argv[0]);
               fprintf(stderr, "Usage: %s <file>\n", argv[0]);
               fprintf(stderr, "Usage: %s <num-cpus>\n", argv[0]);
               fprintf(stderr, "Usage: %s <string1> <string2>\n", argv[0]);
               fprintf(stderr, "Usage: %s <num> <num>\n", argv[0]);
               fprintf(stderr, "%s <dotted-address>\n", argv[0]);
               fprintf(stderr, "Usage: %s <mq-name>\n", argv[0]);
               fprintf(stderr, "Usage: %s <num>\n", argv[0]);
               fprintf(stderr, "Usage: %s <string>...\n", argv[0]);
               fprintf(stderr, "Usage: %s locale1 [locale2]\n", argv[0]);
               fprintf(stderr, "Usage: %s string delim subdelim\n", argv[0]=
);
               fprintf(stderr,  "Usage: %s [-c] string...\n", argv[0]);
               fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
               fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
               fprintf(stderr, "Usage: %s mq-name\n", argv[0]);
               fprintf(stderr, "Usage: %s string\n", argv[0]);
               fprintf(stderr, "Usage: %s port\n", argv[0]);
               fprintf(stderr, "Usage: %s host port msg...\n", argv[0]);
               fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
               fprintf(stderr, "\nUsage: %s -o <suboptstring>\n", argv[0]);
               fprintf(stderr, "%s num-calls\n", argv[0]);
               fprintf(stderr, "Usage: %s {i4|i6|<num>} string\n", argv[0]);
                   fprintf(stderr, "Usage: %s <seed> <nloops>\n", argv[0]);
               fprintf(stderr, "Usage: %s <str1> <str2> [<n>]\n", argv[0]);
               fprintf(stderr, "Usage: %s <locale> <string>\n", argv[0]);
                   fprintf(stderr, "Usage: %s /shm-path\n", argv[0]);
                   fprintf(stderr, "Usage: %s /shm-path string\n", argv[0]);
               fprintf(stderr, "Usage: %s yyyy mm dd HH MM SS isdst\n", arg=
v[0]);
               fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
               fprintf(stderr, "%s <process-ID>\n", argv[0]);
               fprintf(stderr, "Usage: %s backing-file\n", argv[0]);


Have a lovely day!
Alex

> +        exit(EXIT_FAILURE);
> +    }
>  \&
>      t =3D time(NULL);
>      tmp =3D localtime(&t);
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--3h5qkllpmfchwlp4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmijX4QACgkQ64mZXMKQ
wqk8kRAApGgfYzBH9g0qpMzPq67IQ39EcC0V0qnXzaMUV63WmKSNDik4g7qfwmif
fQu9yXAt5xIFw8NSb2m+empsFkgnBorJeGgcG+ZnOsSB1JfBWHhwvNH2TV3Vwsoa
k7BWnceQycOmYgFW4s9iZhhS8PuGF+BVibJylnTcGaSqGtVTM5iT6XSZrIVrd557
MeUsi32Kamiy70n8qjme78BDZC5d5qKDNKGj+OGXP4F5wqOWDxgEjK5q+Qxb2PbV
lRL36iW0kGkcHEYpxrzPHCExp82iG+pocjV44TOXPcp/xuHHxHqfz4vmv9AzBKJL
a9BGORnYBKNJ1SU9Qaz3aJOLaalcyeinTXtCLIjtM+J3FKf9iZD94l2RYAqLUy5F
+vIRsgrRMo18UIX2FRU9B37fS1nAPHJ6KqtlbbE7AUEHz59A5roWI2SakFHy8yBN
6Bh3Rz/aqwvTTUgtRkedvb9ZxtQiONR7sE0iGSeyMUGxQ7zQDhziFZKz+LxSSRm3
SoVUXB7H8G3ES8RBOXhuJX3o2YJm0NhxZU6+TtzDeZiyILM5aF6iHCdT/KxBdVtK
AwNlYox4fAjb04r314yVP284KXBAburLznphFBpfn+t2SLj79ECF68TyZCk8Aqqg
Nl4oEoVtgN9s6TUB8jvWqhYfyqcKBV3u1l1NZ+KRBqWR0EmOxOk=
=Mi1K
-----END PGP SIGNATURE-----

--3h5qkllpmfchwlp4--

