Return-Path: <linux-man+bounces-5170-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGFLLtwNmmm5YAMAu9opvQ
	(envelope-from <linux-man+bounces-5170-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:56:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5C716DC0E
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:56:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41EB73029C2F
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 19:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5619834104E;
	Sat, 21 Feb 2026 19:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDaRYqtA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18041311587
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 19:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771703769; cv=none; b=CF+rMpgdKgHuUjTZQRB929QmnJsyJqZY+IdxWIvjBY3+SSfY0ayvsqEvV8wph1uolhZ6XPyUwB9nDAmdSgoU2ZKT+kibHObV+gRBHiFPJxeDCCMquYTM1OQobvDEyuroOmay/qiKTluIOEUm6wGZITtkqV1ArxvIVwAAHCGCY9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771703769; c=relaxed/simple;
	bh=g7PJwGsTyWu/bxYy5aQYKgKkH95+U0ibeE4JWZWFut8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B+RU8gM36PndJYYiHHq3NaSZdCUinQJojOPEp6/D1VSdtxTou6UdDLnZ4qCcBjJu99S7hc0+UPV7zWtXSRgCVMi6aZdyoGqvzi/cg0XUUzne+B+De4pSx3c7yEuJ23CAxT9l3r0+2uJCj3sy5F6UE7mLxlyt3py/Q766cU+Y4TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDaRYqtA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 284A0C19425;
	Sat, 21 Feb 2026 19:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771703769;
	bh=g7PJwGsTyWu/bxYy5aQYKgKkH95+U0ibeE4JWZWFut8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bDaRYqtAfgSFlheR0M9NMSqu8SxEnHReB/6D+OJvo8blI4dYKBiP7AEqlf1Phc1Z3
	 XcqPJRpSB6AtJZrO+ldJPwFlx9NRNqpuw6B+1FyBH1F4IEqUIdN7Q4w+jgGvIVR1sh
	 CBI5fBWnnG5qqnXRFr5KlaCIxVvY6hsfvnWZhAflLANCeb/AEpvto7EQMhYUdor0HX
	 owqsxUWNkD0Sbr6Phe2FGeU6qQ/ujqNlRlViofpScT89XMgCz6nItc8CA/U2ZP+y5J
	 RM1gQQm1XigDT7ciEJaOjiRfqruIEj3fLe8ohyFqTrKyU4pTqOEFhnXs8TpBki4gdv
	 sN/VzlMpPpiqg==
Date: Sat, 21 Feb 2026 20:56:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZoMp9gUNpU6rGo4@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <20260221174142.5e6xufffrawahxsp@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kf4hkaiosenkgdeo"
Content-Disposition: inline
In-Reply-To: <20260221174142.5e6xufffrawahxsp@illithid>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5170-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C5C716DC0E
X-Rspamd-Action: no action


--kf4hkaiosenkgdeo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZoMp9gUNpU6rGo4@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <20260221174142.5e6xufffrawahxsp@illithid>
MIME-Version: 1.0
In-Reply-To: <20260221174142.5e6xufffrawahxsp@illithid>

Hi Branden,

On 2026-02-21T11:41:42-0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2026-02-21T16:02:52+0100, Alejandro Colomar wrote:
> > +.SH RETURN VALUE
> > +.IR s+strlen(s) .
>=20
> Too cute, in my opinion.  Use English.  :)

The thing is, at first I thought, am I going to repeat the same exact
words as in the DESCRIPTION?

DESCRIPTION
     strnul() returns a pointer to the terminating null byte in the
     string s.

RETURN VALUE
     strnul() returns a pointer to the terminating null byte in the
     string s.

I could remove the DESCRIPTION altogether...  What would you do?

>=20
> C novices struggle with pointer arithmetic as it is.  (Even non-novices
> can, when working with exotic architectures with multiple memory models
> like the x86's historical--and thankfully near-forgotten--`near` and
> `far`.  Pointer arithmetic in the former can, if my vague recollection
> is correct, do surprising stuff like wrap around a 64 KiB memory segment
> without causing a fault.)

I might as well write it as &s[strlen(s)] if pointer arithmetic is the
confusing part.  :)

>=20
> I assume that the string library reforms you're pursuing are intended in
> part to be adopted by newcomers to C.

I intend old programmers to use it too.  I guess you're expecting
a patch to groff once this is in a branch of gnulib you're using.  ;)

>  Avoiding cleverness when
> presenting new interfaces can make them less scary.

Agree.


Have a lovely night!
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>

--kf4hkaiosenkgdeo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmaDc8ACgkQ64mZXMKQ
wqkabxAAvJn7u6beyMyuH90MuuaLYScb8G8G4NiUWMkih+uGaB0onbC2O4CcA4nm
4YfknFTCbKglvU5H5ajDmd3R3yMfdl629lI1bj+0RnnQaXlYTtbVcGedCvFTsIqt
n+HVe6D9VOfJFjp3oQ37YMTc6uidLJ+41ZPLEPW+OwfGPYW7mtJaawBQdahmm2m2
LWcYcmsIfbEuTLER4QuYUZGKOUxzj+kOV6zzVmr2s3PsKpXpAg37LjlcsynOxCih
zvU1X/8uZExDTOiUA/4l4djvtYUbpl0v7SuNwZ6+f4Ke8v5hOQeJV8pI9k5FtM1E
CrwOVG0gcZlh/R2YxpdLzXo1M/cAPJN04CWUsTmeuSSZwih17QZdEVqfhkyfnqEW
K2bR+1Pl76+HsLUPhPaDJL7Bp7miw/9dxQeATB1ytk+SweaeKnX04I+GaW2PRMq8
lWcjrzViCCa/oxm3Y8epVFXKJkYeAy6ijih3uX+KlcXM6zUCwxwCaZdG2ynxrlvB
CbSXWrknzSqf4ojAZ+1VzXJqihREIv6dJwK5i+Ry7HU515JUK0iYfPhDa1soFEG5
HN5iPlMsYlDGunX53m2EFAqbvC8CCHdSHj5K/kUJwKwyukMvoWtfwu+oaeIvJ5Iy
66Sxg52HZG7T/dKSiLh1kxBQCeZI3+GZM/+2zNcf5q4hUNO2bYQ=
=LqlN
-----END PGP SIGNATURE-----

--kf4hkaiosenkgdeo--

