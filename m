Return-Path: <linux-man+bounces-5631-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AnFN9SQGWrVxggAu9opvQ
	(envelope-from <linux-man+bounces-5631-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 15:12:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E2942602B7E
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 15:12:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E69AE3006825
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 13:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84AB231E846;
	Fri, 29 May 2026 13:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8LrI91y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543611A6801
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 13:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780060366; cv=none; b=SiUuTeW27SITWvX3apZtKxbQTVhNqHDBw2uS2ZvvVUcMwIbUuRPQh7gI8IJ/VQBxn0criDhg7wgEkO7kqpPftjSYw07cM8N4HyQ+UmUXFmyFIYlSAwULw/tUW9DudZOre82F1uFuQ7xWpVi7peIXgwwWgvOdVTSP6P2WKCRBNgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780060366; c=relaxed/simple;
	bh=rs6trgwV5LS+ub9qAq92Z57B8QIkIn8pHiM1aT1zom8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DRKcNS0jZDtW9gQRtizmIsH+BnlCb5syZ0rXhpmG8c6rymyBeOKHQt+9+Fjy4tgqqZ1nYDdyyFCmZFM0UlngNcdW3iX45HggfVHfsbKa6qBvhUYG2NA453xxS7V4RMbMWR6URM76eVRw8e7u2ElnJPVugc71EgEyPrPpbOryKmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8LrI91y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A6161F00898;
	Fri, 29 May 2026 13:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780060365;
	bh=+i+RqYvYtCr0nViJoeYSnknaB2wTTJpaNAY3wveI0w8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=J8LrI91y9HCvLhx9BdGDu5mJARmkY9JK64u2klRrD2aoXgVS527W9WimQ5KOch8ME
	 r1I+UYfU8H8TjfFQpWea0E9R+DOcutmtfskVBPD5Q2U1LE/ESURR+fft7iTDBpvELU
	 ScA+oWEZSbEXRpsUieenmRUzwvaANYb+X54S58lq1/1NvcEzM6POv39j0f/lGI+2VU
	 Od3N11TqCRhmku/0roakbES3nBPbMsq31zubqDwg4sRKC0Wz3min8KCl4wxdZsk1ST
	 8zSKK1FzvtkAtfK8IV0Ic0w4GDHF6u4tA/gGhW4J45YiuXgmrV37ubKci6yjNVu/Zd
	 QZheF+R7Uky/g==
Date: Fri, 29 May 2026 15:12:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Pratyush Yadav <pratyush@kernel.org>
Cc: David Hildenbrand <david@kernel.org>, 
	Daniel Verkamp <dverkamp@chromium.org>, Jeff Xu <jeffxu@google.com>, 
	Pasha Tatashin <pasha.tatashin@soleen.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Hugh Dickins <hughd@google.com>, linux-man@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH] man/man2const/F_{ADD,GET}_SEALS.2const: document
 F_SEAL_EXEC
Message-ID: <ahmPrpekhMwD-8fD@devuan>
References: <20260529124047.1483026-1-pratyush@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c6bjqu5mtdxsgyfa"
Content-Disposition: inline
In-Reply-To: <20260529124047.1483026-1-pratyush@kernel.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5631-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E2942602B7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--c6bjqu5mtdxsgyfa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Pratyush Yadav <pratyush@kernel.org>
Cc: David Hildenbrand <david@kernel.org>, 
	Daniel Verkamp <dverkamp@chromium.org>, Jeff Xu <jeffxu@google.com>, 
	Pasha Tatashin <pasha.tatashin@soleen.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Hugh Dickins <hughd@google.com>, linux-man@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH] man/man2const/F_{ADD,GET}_SEALS.2const: document
 F_SEAL_EXEC
Message-ID: <ahmPrpekhMwD-8fD@devuan>
References: <20260529124047.1483026-1-pratyush@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260529124047.1483026-1-pratyush@kernel.org>

Hi Pratyush,

On 2026-05-29T14:40:44+0200, Pratyush Yadav wrote:
> From: "Pratyush Yadav (Google)" <pratyush@kernel.org>
>=20
> F_SEAL_EXEC was added in Linux v6.3. It seals the exec bits of the
> memfd. Document it.
>=20
> Signed-off-by: Pratyush Yadav (Google) <pratyush@kernel.org>
> ---
>=20
> Notes:
>     I discovered this was missing when working on [0]. I had to look at t=
he
>     code to figure out how it was supposed to behave.
>    =20
>     Disclaimer: I used help from Gemini to write this patch, mainly becau=
se
>     I don't know the man page syntax. If the man-pages project also uses =
the
>     AI-assisted tags as Linux, feel free to add:
>    =20
>     Assisted-by: Gemini:gemini-3.1-pro

	$ head -n13 CONTRIBUTING.d/ai=20
	Name
		AI - artificial intelligence policy

	Description
		It is expressly forbidden to contribute to this project any
		content that has been created or derived with the assistance of
		AI tools.

		This includes AI assistive tools used in the contributing
		process, even if such tools do not directly generate the
		contributed code but are used to derive the contribution.  For
		example, AI linters, AI static analyzers, and AI tools that
		summarize input are forbidden.

If you only used it for formatting, and the text is entirely yours, I
guess you'll be able to write it again from scratch easily (it's not
a lot of text, anyway).

To proceed clean, you should remove the patch entirely, and write it
again from scratch, only looking at surrounding code and other pages,
but not looking at the contaminated patch.

If you have any doubts about the man(7) language, I can help, or even
fix things for you (as long as it's reasonably easy to do so).

Thanks!


Have a lovely day!
Alex

>    =20
>     [0] https://lore.kernel.org/linux-mm/20260505133922.797635-1-pratyush=
@kernel.org/
>=20
>  man/man2const/F_GET_SEALS.2const | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/man/man2const/F_GET_SEALS.2const b/man/man2const/F_GET_SEALS=
=2E2const
> index 175025c10..2de8009a8 100644
> --- a/man/man2const/F_GET_SEALS.2const
> +++ b/man/man2const/F_GET_SEALS.2const
> @@ -176,6 +176,25 @@ will fail with
>  Using this seal,
>  one process can create a memory buffer that it can continue to modify
>  while sharing that buffer on a "read-only" basis with other processes.
> +.TP
> +.BR F_SEAL_EXEC " (since Linux 6.3)"
> +If this seal is set, the execute bits in the file mode cannot be modifie=
d.
> +Any attempt to modify these bits via
> +.BR chmod (2),
> +.BR fchmod (2),
> +or similar calls will fail with
> +.BR EPERM .
> +This preserves the execute bits as they were at the time of sealing,
> +making the file either permanently executable or permanently unexecutabl=
e.
> +.IP
> +If this seal is applied to a file that is already executable,
> +the kernel also implicitly applies
> +.BR F_SEAL_SHRINK ,
> +.BR F_SEAL_GROW ,
> +.BR F_SEAL_WRITE ,
> +and
> +.BR F_SEAL_FUTURE_WRITE ,
> +preventing any further modifications to the contents of the file.
>  .SH RETURN VALUE
>  .TP
>  .B F_GET_SEALS
>=20
> base-commit: 9db8ca91f920b9aba40ed68de6b8da0ca9dbefaa
> --=20
> 2.54.0.1013.g208068f2d8-goog
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--c6bjqu5mtdxsgyfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoZkMEACgkQ64mZXMKQ
wqm0IRAApW+pPLwzwVdamgxo3qiTMWDe3AvSFaI3fc55UbJdX+RKHgKCu1DSNtOL
ksUCyrR3iTSwHXGeT3/ez3+kH8rLZuP4UuGjSiVzSBMyjpPemJrcw785COa82y+x
xEtfMavfvgUPkUY80hRciFQBQrqWa1J9Z1LeKY62ALd6JREAvN/Pj1rKAZsd9PBd
6cg9ZMru1omA8rdiSwBrtqNA1IlSOXHa+81NPbp5EoSTG5LyXYfXq7vCqBY5YZi4
TLJSBMmHcRkFaCtcphm8DYfDXpKAQJ6t8FIT62IaIJOW+cHcWD7BM8em8QFHfDV+
CjhwarvLbcjSqNePN56TnF5bVvc6+iR/6YzPcGOPoY2QK2+exgrpyTYSOMgIrbyf
8em4f/M3CcWGNw8oxWkFV4KWwXWFtkPeatz6DUxAa0L4ioMOYcYafJdESczpTWLQ
BkSVCQ1qQ4ha3U+8Xy8ZSi+OIbzTRnre5Uj+mtansu8xsgQ+pt47RmmDC7swgYNA
vYZtJ2LIUCmsQAZKsY+brAz6pf7F64q6Y2LulXzRnj0Nxnt93WoqAqhhIVZ0H5HC
6taB9jrU2dAOSl8McnCx8mmS0AQjtTpL+vju+9b/ky6Cilm8NUV3vSLBPv8hb+h8
IWY+NnvS9luQgibBes7SYwu9fZ7kgQpPpGsPT266fQ3EPfb2OJ0=
=RL1v
-----END PGP SIGNATURE-----

--c6bjqu5mtdxsgyfa--

