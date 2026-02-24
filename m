Return-Path: <linux-man+bounces-5221-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJ7JCDsbnmntTQQAu9opvQ
	(envelope-from <linux-man+bounces-5221-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 22:42:19 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6239918CD68
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 22:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C8D59300A65B
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 21:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0840533EAE7;
	Tue, 24 Feb 2026 21:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F41N+i55"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01C533DEDD
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 21:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771969321; cv=none; b=HZYeNwayBQ8btEyH3sPmZ51V5C/VMWDDdUGif/FbXGbYOrMis27Vlxa+NdUmtWvbjkSFHeCR3FwBHtRSzE9MFs3dpYWLHldgEj0bhjkz4xpzHIhBR4Dzm4a4DuF/cEVUJt6AD496Uk110K5c6CDka8vdbtqHWk0MQcDM/kRG41o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771969321; c=relaxed/simple;
	bh=QHmfOBWUxr7jYru7Zf8lUCfDq05my0LvddWlTd/dvbg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YvHfXDvuT6fwoCGRN2xbTgHN8oCRbTkCJ0fPvqVG0maxMzLZJ1NBnEYT9QxcYmHTPPvV8Nxa4FTt/ySyFtcUogdX6G9AIi5HDLD4wNzYtfEgmv6ABxxHfeRakAt1C+ZrW4nyeiaziHZp9m76HRcYZVaSaQbDM8dTJvi8CYuaY3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F41N+i55; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEDA5C116D0;
	Tue, 24 Feb 2026 21:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771969321;
	bh=QHmfOBWUxr7jYru7Zf8lUCfDq05my0LvddWlTd/dvbg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F41N+i55T/TCJiZGTBtultOE1upUx7mytuBAqb3nkq/Pk1ghXjJNHM4kV4DlVhmy9
	 OvP5hKG94lxlZ55u0LuT+TDkDt+P6fpHLG4xVf+1eeHAk1ErQY/Krh0GU61rFRqHM8
	 jKewQEm3yMCjS0chLyuRGYSlZ1+4wuU1SBKKUKyXRVhMHcnG44JXoFvMzpJlmABmpv
	 2165n/NUFibV3C6gyaJVTPSkSsIpCKlTR3N4HZR6f/Dfy9U4UxBpEQs3clf3l6N/3v
	 TmNeSnYajWpIaYvHbJp+Ot128+m0/Z4wKL/TzNTRMWCMSLWZwxBdHko3DlXxniv5kb
	 3SOYBiXlgMAog==
Date: Tue, 24 Feb 2026 22:41:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rene Kita <mail@rkta.de>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ4Y_-MagoDmdE9g@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <20260224185233.GE43043@x220.rkta.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rtfd35s45imvnj56"
Content-Disposition: inline
In-Reply-To: <20260224185233.GE43043@x220.rkta.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5221-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6239918CD68
X-Rspamd-Action: no action


--rtfd35s45imvnj56
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rene Kita <mail@rkta.de>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ4Y_-MagoDmdE9g@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <20260224185233.GE43043@x220.rkta.de>
MIME-Version: 1.0
In-Reply-To: <20260224185233.GE43043@x220.rkta.de>

Hi Rene,

On 2026-02-24T19:52:33+0100, Rene Kita wrote:
> > -  In the SYNOPSIS, do you prefer QChar/QVoid or overload style?
> >=20
> > 	QChar *strchr(QChar *s, int c);
> >    vs
> > 	char *strnul(char *s);
> > 	const char *strnul(const char *s);
>=20
> IMHO the overload style is more appropriate for the next few years.
> Everyone who has at least read K&R C will understand it.

Ok.

> For technical correctness the QChar/QVoid style should be mentioned, thou=
gh.
> That's why...
>=20
> > -  If we document it as QChar/QVoid, I guess we should we add a
> >    QChar(3)/QVoid(3) manual page documenting all of the details, to
> >    avoid duplicating such details in each manual page.
>=20
> these man pages should be created in either case.
>=20
> > -  How much should we document the old function?  Should we keep that as
> >    a historic detail in the QChar(3)/QVoid(3) page?
>=20
> As I usually don't deal with C23 - and don't expect this to change for a
> few years - I would prefer to have the old function documented. It might
> be that I work on a C99 project while viewing the latest man pages on a
> Arch system.

A problem, even if you write C99 on your project (let's say mutt(1), for
example), is that the compiler will default to something newer, and
you'll be exposed to those APIs.  If they're not documented, you'll be
quite surprised that your code suddenly fails.  So I think they should
be documented.  Of course, the old function would also need to be
documented, because otherwise people might be surprised the other way
around.

Hmmm, how about something like this?

	SYNOPSIS
		#include <string.h>

		char *strchr(char *s, int c);
		const char *strchr(const char *s, int c);

		#undef strchr
		char *strchr(const char *s, int c);

Plus a paragraph in HISTORY clarifying this.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--rtfd35s45imvnj56
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmeGxgACgkQ64mZXMKQ
wqlSlA/+IpbFMAQuj6dlo9e9jdJsUyILbMrqDP6MwVMVYVvQhBFCGaEb5RPOxpIH
YLh62IFXh4nGmqmkQ+Iicox2Jb9tn7c32ZGy+5gCR4Y5xXlU6CkvywrUih+e/+tx
ljNHDupAmHbuY2XqlkPmotdzOEk1dpEsRttucEwnut3hXB5YlFWExM0zfO6LcCia
uSH0Hk0+dA7W+UliF/RSPr/sOWGyGsTBX4FA6E+hDBeVQRIHHgye8rOoqU5r9Qp8
JNkzVz5WYOgFErzuKbvoB0yJs5Ae4FceODMimul1f5YjDJued836vrn/zUrUlooH
4Be3PK5OAJhB1faG960/qvAbHNG6u+LmBnpJp2rYm5Tm8qcFo93OHb/Cw55/n42Z
1qW5c0qMayenMJg2H6i7Y7IJjKrU7OgUA/aBCWu/mRoxSDUXl4kfT3VwGhd57vK9
lJiJT+hB5uvy0F5QJWHvANww0So+eq4reDqBmzTdE+LR1dcym6Tg863tiaX8fAOO
PwIoQ50eVbqZ3MlI+BeXP04rEKDI21o1Xe9wdWAlj2H61syZkAyZsjlBimOlOfT+
OnBGBu5LAs3QspoUTcQXQm+if0rkiDkURcptD3kabASnq1zZ+7iGVmkNRJEM4O8I
1Td3o7XuozvxtO7dWN+FCDcvvR/1hVQbDhlF/LvJc7ttjATa1/o=
=5BOZ
-----END PGP SIGNATURE-----

--rtfd35s45imvnj56--

