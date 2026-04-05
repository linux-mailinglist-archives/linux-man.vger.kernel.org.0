Return-Path: <linux-man+bounces-5296-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JDj4I3fd0mmAbwcAu9opvQ
	(envelope-from <linux-man+bounces-5296-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 00:08:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AC039FF28
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 00:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 30D59300146C
	for <lists+linux-man@lfdr.de>; Sun,  5 Apr 2026 22:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAEB133985A;
	Sun,  5 Apr 2026 22:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r83NuFvz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0C61A262D
	for <linux-man@vger.kernel.org>; Sun,  5 Apr 2026 22:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775426930; cv=none; b=Kh0v6/Nkc+1FlmBQOZeSieueJrA2mduRFDL20Is5NQJgXK1QH06F/VeLuCFi6yTcz6fZEh1qb0Z5/kznRjbs2XtgxvmimEdeUJ4lMeNCZrPAkC45GfaiP8KKiSkkkA3XtueRzwt3q4a8qz5VbMJ4xfOjR11ucUtr4RYSrLfWh9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775426930; c=relaxed/simple;
	bh=YNCWoGlmfHzft24Y0kAP2lMGobaWbUdFAj+7PfQlYuA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EfVoN/kHACeZowfDT5IJ5wVn7P/B0eRkpiQTo191RU9G/VqRn+012q+Mso/ZsjHP7d2jBnMvBcmxSQHMEpRDBEJjPK1VQ8a6mQ1eQD0NvfKO9GLH/rZmbKiAE7hwcgRb05Vr9FLMVwKTyWt1T4anxr745zIWL9d5OEGE6xuJX24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r83NuFvz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01054C116C6;
	Sun,  5 Apr 2026 22:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775426930;
	bh=YNCWoGlmfHzft24Y0kAP2lMGobaWbUdFAj+7PfQlYuA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r83NuFvzaoyXNyPN7HdmtmYpRZEI2QMjUOzmEwGi+SaOAKJi/Rv8NNx3n3tPgWXlp
	 oDJmUMJ7ot9/+gZPLdIE+ojxBcnzLlOf13SVXH9PHk39+oVuCOa42CwOGFJPnTesSt
	 mGzndR+AAt/Y0WBUL8XJdueIqFlifFHlKW3RkBPcG+mHvU29+DTnpi8l0ZkPzlMymz
	 y/L49SiKve2UOurxF0UpdDggt1zjFg1mL7fzzi8Ky+QAGsNvuY6Te4vjLdN6OyQOpK
	 zSJMMQpkJXox4lCBuwZsQOCGz+8rHhXsU8FSWaYuNqC8Br8J0/+/WUsvEfbSXCXliA
	 Pcl9V2mcU5RDA==
Date: Mon, 6 Apr 2026 00:08:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Stan Ulbrych <stanulbrych@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] man/man3/strptime.3: fix typos
Message-ID: <adLdJb9OVGD3oD3l@debian>
References: <CAEMnaZ+paJ5_Dc5FkibQSggqiR9hW7EYLtnn=wmbCz3Cb+iLVw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fjdm5ocqqsxmetrj"
Content-Disposition: inline
In-Reply-To: <CAEMnaZ+paJ5_Dc5FkibQSggqiR9hW7EYLtnn=wmbCz3Cb+iLVw@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5296-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 23AC039FF28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--fjdm5ocqqsxmetrj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Stan Ulbrych <stanulbrych@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] man/man3/strptime.3: fix typos
Message-ID: <adLdJb9OVGD3oD3l@debian>
References: <CAEMnaZ+paJ5_Dc5FkibQSggqiR9hW7EYLtnn=wmbCz3Cb+iLVw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEMnaZ+paJ5_Dc5FkibQSggqiR9hW7EYLtnn=wmbCz3Cb+iLVw@mail.gmail.com>

Hi Stan,

On Mon, Mar 30, 2026 at 10:50:55PM +0200, Stan Ulbrych wrote:
> A little patch to fix a few little issues I noticed in the doc. I've
> never contributed here before so I'm not sure if I'm doing it all
> right, if not, apologies!
>=20
> From 42228dd6c167dab1d0dd61d2d25b626d0fc2ecfb Mon Sep 17 00:00:00 2001
> From: Stan Ulbrych <stanulbrych@gmail.com>
> Date: Mon, 30 Mar 2026 22:41:23 +0200
> Subject: [PATCH v1 1/1] man/man3/strptime.3: fix typos

Thanks!  I've applied the patch.

It was a bit weirdly formatted, but it worked.  You may want to look at
the CONTRIBUTING.d/git file and other files under that directory.


Have a lovely ngiht!
Alex

>=20
> ---
>  man/man3/strptime.3 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man3/strptime.3 b/man/man3/strptime.3
> index b969a2a..979bffe 100644
> --- a/man/man3/strptime.3
> +++ b/man/man3/strptime.3
> @@ -60,7 +60,7 @@ The
>  function processes the input string from left
>  to right.
>  Each of the three possible input elements (whitespace,
> -literal, or format) are handled one after the other.
> +literal, or format) is handled one after the other.
>  If the input cannot be matched to the format string, the function stops.
>  The remainder of the format and input strings are not processed.
>  .P
> @@ -288,7 +288,7 @@ explicitly specified, except that it recomputes the
>  .I tm_wday
>  and
>  .I tm_yday
> -field if any of the year, month, or day elements changed.
> +fields if any of the year, month, or day elements changed.
>  .\" .P
>  .\" This function is available since libc 4.6.8.
>  .\" Linux libc4 and libc5 includes define the prototype unconditionally;
> @@ -319,7 +319,7 @@ the same format characters as for
>  (In most cases, the corresponding fields are parsed, but no field in
>  .I tm
>  is changed.)
> -This leads to
> +This leads to:
>  .TP
>  .B %F
>  Equivalent to
> @@ -364,7 +364,7 @@ and
>  .B %P
>  is accepted as a synonym for
>  .BR %p .
> -Finally
> +Finally:
>  .TP
>  .B %s
>  The number of seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC).
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--fjdm5ocqqsxmetrj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnS3W0ACgkQ64mZXMKQ
wqkmPg/8DEJR/yz5qyZ+r2TP7env34xENDwbCucu/XTKLdqBOOkx+qdWfbFRa0OP
4b9hUj+JMrMlu96myoAUyFaap1c1fbLbjN1JIKPsokfRNxCN8AcSrTYaZnnL67rU
hZpHg2o6dvyiiHQVsMTYtQP/tJPU+3OHSHERQTWsax4J3Kiacvsm5JKK6egrkoYQ
2hlykdJ7lNiz7yc549Y9KR8xJhbPinGNtFD+6rAV1k9YUw6O3ZeNGc9Ik80IIADt
FaNp/SfxMCpBNI4C2oRowZFTyAv9pXNhtMFQAGVom5D9E+i9/QoMai9ZfqKHjPVs
tNH3H0fuodOgImWbRPTj4nhgUSr20jBIzKknyaVxHE8q7yHoeD8Sfjxyt1RVP4r7
0BqlBOYvNu33z4WGIFqA94kPPquy+UlvOCnLWhIoMY9Ng7yeQ7ZwXKq0dZNKhton
sGn6/ozFMFb8xk2onrHnY1YB3Y4NRq8cokKyV7Xib2Ye3aoXCI7KrpMPeGQCdveG
jSu5hygySiLNjcRbrKZj4jSaoQQ0Nf9S2qz8UYxIJdR8Z/EfATIpniVgM4ObLp3L
4jfp/xH0a8jQVeZpQWU+BuloqAC1vawP5C6s2ZOn3dyRcnxCaalzEwVeNl9bpuyk
2GQxCENUbhiYYWeLXBMDTCBX8p0GK96TbILjd9pmY/2Edql2aoY=
=stoU
-----END PGP SIGNATURE-----

--fjdm5ocqqsxmetrj--

