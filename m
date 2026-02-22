Return-Path: <linux-man+bounces-5188-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kC9INIYRm2lArgMAu9opvQ
	(envelope-from <linux-man+bounces-5188-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:24:06 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3856316F5AF
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B09C300EFA5
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E42353502AB;
	Sun, 22 Feb 2026 14:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMc3Xi8M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A816C3502A4
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771770091; cv=none; b=mExuxZAIJFvksdUQCR1+yTXIL6hYR3Tc9fiCAfBqzpTemhCwsMFLDyBArpmGnOTPNmhuj+kwZHk4FezAkrOB3rTIhAGU2lTIEMXTJ4lWL2uLPHQ4tiTm+BVYQ0QvIwczCku5k24gHPgpYCrzZ3+IOxXklqQ7zZp7nPjI5Lr7okA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771770091; c=relaxed/simple;
	bh=FW4zMSQMNOMse9BYCBEHlre7cRiaW/ryDEbv882yhh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nmjx2GyyMbJjmGjoXF4T5vDFodkWJ1C/TZbdgBElrR4UBof/E+/WmQmUSxz3frcTD6IXu0ll0VCoqNFTcyYpzxWkZLpGE3EUjyc1K5l2eYnK13GNl/iB1FjcNBap76qhoacKDDjyDa/psrccT4ehYrJ8X8DtuljYEl3b4D9Xdhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMc3Xi8M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EAB4C116D0;
	Sun, 22 Feb 2026 14:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771770091;
	bh=FW4zMSQMNOMse9BYCBEHlre7cRiaW/ryDEbv882yhh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FMc3Xi8MoO3sGtef8Rz5MsvheWdTsIoOBltIikMRrCQitfIj4intV85dsJvDz2UeM
	 XXRhIMxTElFlvXNFuxqXxbibxhrRR5m2JLWk8KVTJd5C4bSjaA8CEAyClNIpVWlVQ1
	 /Y32sZfvKTDo51LMlF39hOSuVwNxcXDvNBDFkR4RQ62+7fpl5FzfLPUdReH80F/e4M
	 dd5Di78/PYcUbEiTVLNcu6fD4PJqZPu+tbC41I82XahDQzjBOvHedzFo9DOhlEJngm
	 LUIrLR7aYQtXBVXH3OTwR+m/jzLv8vjlt+pu7saj4I8Itf+3AOLLLnOleDaEoBSxYd
	 qgceByS04UZHQ==
Date: Sun, 22 Feb 2026 15:21:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, bug-gnulib@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZsQ1ARSAsTm7dnb@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <aZrmh5XLcUcKJz4b@devuan>
 <aZsIJhUxHa1L1cme@devuan>
 <2947259.IIHS8v3jeM@nimes>
 <aZsPpWJ7yZ1nG2RJ@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bjmcdbbkjx74saee"
Content-Disposition: inline
In-Reply-To: <aZsPpWJ7yZ1nG2RJ@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5188-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,clisp.org:email]
X-Rspamd-Queue-Id: 3856316F5AF
X-Rspamd-Action: no action


--bjmcdbbkjx74saee
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, bug-gnulib@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZsQ1ARSAsTm7dnb@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <aZrmh5XLcUcKJz4b@devuan>
 <aZsIJhUxHa1L1cme@devuan>
 <2947259.IIHS8v3jeM@nimes>
 <aZsPpWJ7yZ1nG2RJ@devuan>
MIME-Version: 1.0
In-Reply-To: <aZsPpWJ7yZ1nG2RJ@devuan>

On 2026-02-22T15:19:35+0100, Alejandro Colomar wrote:
> Hi Bruno,
>=20
> On 2026-02-22T15:10:03+0100, Bruno Haible wrote:
> > Alejandro Colomar wrote:
> > > 	 .B #include <string.h>
> > > 	 .P
> > > 	-.BI char\~*strnul(const\~char\~* s );
> > > 	+.BI QChar\~*strnul(QChar\~* s );
> > > 	 .fi
> >=20
> > Ouch. This is not understandable. Why should a user learn about what 'Q=
Char'
> > is??
> >=20
> > It's basically like a C++ template with 2 instantiations. Just list them
> > explicitly; this will be much clearer.
> >=20
> > It's common that the SYNOPSIS section has several lines. For example,
> > man1/locale.1 has 4 separate lines.
>=20
> Hmmm; sounds reasonable.  I'll do that.

I've amended the commit to do that:

	commit 0dffb0e8afdd3b025a6001a342b2f49f179a8914 (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   2026-02-22 14:34:36 +0100

	    man/man3/strnul.3: SYNOPSIS: Document that it's a const-generic API
	   =20
	    Document it as two overloads (C++-style).
	   =20
	    Reported-by: Paul Eggert <eggert@cs.ucla.edu>
	    Suggested-by: Bruno Haible <bruno@clisp.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/strnul.3 b/man/man3/strnul.3
	index 714b4d191cae..a92ced866a02 100644
	--- a/man/man3/strnul.3
	+++ b/man/man3/strnul.3
	@@ -12,7 +12,8 @@ .SH SYNOPSIS
	 .nf
	 .B #include <string.h>
	 .P
	-.BI char\~*strnul(const\~char\~* s );
	+.BI char\~*strnul(char\~* s );
	+.BI const\~char\~*strnul(const\~char\~* s );
	 .fi
	 .SH DESCRIPTION
	 .BR strnul ()

--=20
<https://www.alejandro-colomar.es>

--bjmcdbbkjx74saee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmbEOgACgkQ64mZXMKQ
wqmPtA//cBQGjo9RxMxND8+gp2MVwhLTpGQJJwC+ECMb19KGV88CQL1xzUhID4Am
p8Nwk9mYfkcLHxtrI42qay0S5uAM/Tem0QwBjkrpym9/Lig3louD32PwQMt/e+jy
fnJ4yM2PruZ9yLMYGl5c7Csrkf3h03qNk/R/8UwJj2HA/+3ZP7kVadvw6egg4FzD
h78Sy4sNgTtlZ7XOV4YR2AYGYGL8ZXDGypBAzqH6mr/dZVevTE2c7ky7NarKg1Rg
TD7NlYcR/3hWMppcUWa5zBob+/Wi16SISaj0Qd52CeeH7UBK/P2VwFZlkI3afq2W
mjLsAHuL3L0Z5evGdMhULDTR6oky0/pNnqVH4kKYLJ16eB9jT4cYt0hIVHjPQu8m
lO5OW5sG3ncfha99JgciFNuOB8TKj8CFIXL+eO3tvCqgy6fENkzT1KUjkfqH/TwP
/821OOMrXFkJBSc2uE5R9xeDBBT1yiw58ZiU2mqXP4+f+dJBmC+w5XQ/hJNPMx95
CiCDF0uckgcK0LAJ4MxR16rmCu5m+fE6tz0Y/Ts6FGHlbo1PZsNUNfOYWLsF0Ldf
QJKXQqgHfwbZRtUV2z3jFZURFMUcqDrgeZCk4n2t6eAsJ2uHm/LlbVrFyXnGHEMU
azCvJdr2zfxGPl184TDH9k48ZukE3q+CWzVUHz7HaoBWC1a1HzM=
=MXvn
-----END PGP SIGNATURE-----

--bjmcdbbkjx74saee--

