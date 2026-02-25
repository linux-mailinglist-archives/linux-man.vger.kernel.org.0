Return-Path: <linux-man+bounces-5227-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNh+KlZNnmkrUgQAu9opvQ
	(envelope-from <linux-man+bounces-5227-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 02:16:06 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1157118E93A
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 02:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65791303FA9B
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 01:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74AF20C012;
	Wed, 25 Feb 2026 01:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zjw9H1wK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6301EB5FD
	for <linux-man@vger.kernel.org>; Wed, 25 Feb 2026 01:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771982142; cv=none; b=UqJWkqgWWemO3uM3k3nWvuFSOpvzHxhqq5yRYuJ/Kfyk5ZGbpUirtvJSZqesWGtaoUaI/iVtBJa5j+7DW3dUmlAX/EQGKbSoIzmbWpqL+gmB2Sw6kZhjARXU2P7rfKLHAC6u84HW+bjpvGIuIAwG9vR2zowcbgygm0iX/h534hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771982142; c=relaxed/simple;
	bh=9u29znb83FdCCAZMuiBLFDLrnck+9aj8TsOIL8hIyyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fXbxVpcfvA43kU+BE9FMlYLO0pHgQ+r+OTaxPqJk779I68zmzaOXUvQos//EIQzm4/y+O0f00MhxSVhIM5uyDjrwFC6Y/kxOM6Kw9xZIBMdDdAD/5T84w15FFpqKMH8/LJgewz5OcXUCg7VmoWypkzt5DIUCA/TrqMiZdhgbUWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zjw9H1wK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68EC1C116D0;
	Wed, 25 Feb 2026 01:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771982142;
	bh=9u29znb83FdCCAZMuiBLFDLrnck+9aj8TsOIL8hIyyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zjw9H1wKE4qSDfwWUFTTptUVg4F7RqNQceZRi+CIggum8hOkEny3h0zqMN/gYibfP
	 xFm6IAHosIPqqYPVy34Qv2Y9OIs+ytkYj4THgbhavtdZIPt1q3VmEyPKmdBirVYw4o
	 S8E0Z32XNWm3/dtqCRYNkniRcvYOeOncKSjXR9T1emhrq1qCZLaWBXyX7hJFTwBjZW
	 eBK5TR4iPAolJirp2TJu0aT8oK20KKD5heVhIi7MBEzfrGS6SHWmaW6n8gSYGh2ZuE
	 ZGERoUe6573m/zu3rp/B8tg4/jxW5Eu+muS5MtA4Gn+exVKGTxhZKYDYqy53VC5kyQ
	 yC5v1d/8IOjLg==
Date: Wed, 25 Feb 2026 02:15:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ5KlMue5WUSlRgh@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
 <aZ4YhDCzMOnokXH9@devuan>
 <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
 <aZ4uoYdrTOidHhmh@devuan>
 <ba68e79b-c86c-4cd1-b826-fd67f0cd0878@cs.ucla.edu>
 <aZ40B_03Qigx680z@devuan>
 <CAMdZqKF8wO5Kq8ac4t7r9_8GkYSe=XN70SAa5e699zkSncMcqQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oy7bucdxl57gs6ef"
Content-Disposition: inline
In-Reply-To: <CAMdZqKF8wO5Kq8ac4t7r9_8GkYSe=XN70SAa5e699zkSncMcqQ@mail.gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5227-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1157118E93A
X-Rspamd-Action: no action


--oy7bucdxl57gs6ef
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ5KlMue5WUSlRgh@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
 <aZ4YhDCzMOnokXH9@devuan>
 <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
 <aZ4uoYdrTOidHhmh@devuan>
 <ba68e79b-c86c-4cd1-b826-fd67f0cd0878@cs.ucla.edu>
 <aZ40B_03Qigx680z@devuan>
 <CAMdZqKF8wO5Kq8ac4t7r9_8GkYSe=XN70SAa5e699zkSncMcqQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKF8wO5Kq8ac4t7r9_8GkYSe=XN70SAa5e699zkSncMcqQ@mail.gmail.com>

Hi Mark,

On 2026-02-24T17:03:02-0800, Mark Harris wrote:
> >         strchr(3)
> >         SYNOPSIS
> >                 #include <string.h>
> >
> >                 QChar *strchr(QChar *s, int c);
> >
> >                 #undef strchr
> >                 char *strchr(const char *s, int c);
>=20
> I don't see how anyone would understand what this is trying to convey,
> unless they were already familiar with the C23 changes to strchr.  The
> #undef in the middle makes it worse, because it appears to be going
> out of its way to describe the function using strict C syntax, even to
> the point of sacrificing normal synopsis conventions and clarity.

While it would be new to use #undef in SYNOPSIS, we already have #define
in many places (as a way to document necessary feature test macros).
Here's an example, which uses it in the middle of the section (more
often, it goes before the first #include):

	SYNOPSIS
	     #include <string.h>

	     char *strstr(const char *haystack, const char *needle);

	     #define _GNU_SOURCE         /* See feature_test_macros(7) */
	     #include <string.h>

	     char *strcasestr(const char *haystack, const char *needle);

Using #undef wouldn't be too extraneous compared to this, I think.

> However QChar is not a C type or macro, so by making it appear that
> the synopsis is supposed to be interpreted strictly as C code it just
> ends up making it more confusing.  The C23 style only works if you can
> put QChar in italics, as in C23, or some other style that clearly
> distinguishes it from a type name or C code.

Yup, I'd use some style that makes it distinct from regular types.
Maybe italics, or maybe roman.  That's the least of our problems.

>  If you don't like the
> two-line synopsis it would be better to just leave the synopsis as it
> was, and add a sentence to the description that in C23 a
> const-qualified argument propagates the const qualification to the
> result type.

I prefer the overload syntax over the old syntax, because the old syntax
is confusing people.  This week someone was surprised because the
SYNOPSIS clearly shows the old syntax, but their test on Arch with the
latest glibc rejected some code that was correct according to the shown
prototype.  So we need to clearly document that the prototype is now
different, somehow.

Thanks for the feedback!


Have a lovely night!
Alex

>=20
>  - Mark

--=20
<https://www.alejandro-colomar.es>

--oy7bucdxl57gs6ef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmeTTQACgkQ64mZXMKQ
wqkxOBAAk+2u+hFd4WQuwR+oq8tnqjqgOjpd93tWXMzQeVAcnZbSO8f13aiXrSXH
rxa5aNQ0BdLPphPRm/6nswYV0OLStyZB94dR98spPyJxesdvtHZN9N4E/Fw8i6DQ
tkgOOVqmNAQyOdGkqchdExSWrvV63HPKpsi/priyw7q40pNPwAoxF1jmevkcgPzT
D2VoCsMASSwR8puSYtE77cwkNHAFV42ehP1qd0/KKo+JlPztPjY1HgIGfbYdOT2k
vITE5Yinsq20YrfL8oiXqme+oXvU3ve0c5mXMwll9dg0slncG3Xz/xoCD4v8L1wC
35cvLY20vGjWpWpvTcZS+pOChquHNLUU9a0WTHmmiYCkiXoq0xLJEqkECAcvMqOm
R3/D5L44gZfP80ULiS+mbB6mykkZ8DULglSmiQDbviI7keziD+pKZFntKCaOMUnI
rL8VYYd/tOFh8sJdMh4crkNXUbb2+lLNbN2qsY0TIsStAp3CUDRFkQzHb4qi2/xV
BVfvM38Dk+55zDfiSdtB9Jp9ufvWBUvYBA6qcdDr+rS+YJgscit8VfT3PohNOBmL
BgNn/Pj5sWzdIrh0CgINO4B6qx0d88StDZhUgBPcstByeAYWKmr/Dt6okcLm/rn/
mXH0dfWZNmGdFuzVVz1ZK3uCbQYXCRJNlCvXCRWTLJmBuqqWpws=
=K4tD
-----END PGP SIGNATURE-----

--oy7bucdxl57gs6ef--

