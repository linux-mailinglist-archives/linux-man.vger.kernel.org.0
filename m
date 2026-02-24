Return-Path: <linux-man+bounces-5215-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +O98E++1nWnURAQAu9opvQ
	(envelope-from <linux-man+bounces-5215-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 15:30:07 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8832E1885ED
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 15:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ECFDE300D579
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 14:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D05039E6DC;
	Tue, 24 Feb 2026 14:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjA7V6oj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AFC39E6D8
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 14:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771943325; cv=none; b=iPZaDVe9r4/e/c0h1oGEfuwVF2A84TUpb6TZOHIxo3269ve4+586UukZxXaFI+gjzXt3ykhfwUpxOiAXFO51axrsmz1OhY2eksFI5T37jjJjyjME6CPzdI1a+AdZ1O5KCaRqX74RVmFk4tBMdX+JTAh9/lTl/D9e0s/gVzeBBZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771943325; c=relaxed/simple;
	bh=iCJ07+AwspmZHtFrofqaT2segCX4xCdzdLcJXT4+2WE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=D0r3uqxBUcsOhlV+X5KWnIopsmkkDh8QUykJaIfxImQtIetBwRFTRoVXAhwJyOdmxjqdhcJkUSywiLJKXcRPTQR2/W7t2rNPyAbUtiCQQyhugjX9X60Ejd5xlXVLKoVuoFePTq30oESD/vvphTf9ycXcWN5y4oO0AAKIra5TI3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjA7V6oj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FE58C116D0
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 14:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771943324;
	bh=iCJ07+AwspmZHtFrofqaT2segCX4xCdzdLcJXT4+2WE=;
	h=Date:From:To:Subject:From;
	b=gjA7V6ojahyDTPnQzMmBVTo+wGL1WSxXemns3xYVrwSZR/fm/45gXa8ATCyyj9fNz
	 44ywoujSMOIfAwKY8cBYXyweuteMDnN7OIgo2/YVUihdNq4rtHIVbS5HPuM4YFqObM
	 tpaxwc4+Eu2t7OMCO4akZf2VUfnU5TjHnIdMKKzoEsRaRARr6y6toM5tlNWupN0WUx
	 RhCaYCXfcmMGTLLr7r+gPbSKmax8lpobcGX9+yEnKyV02i0mRQ9C7hbaO8pEfOapH6
	 S6bUzB8NprfZzDmDnXdSXu/iNiwL2hVtxm9zr1RoV/EMaKw/KSlVUTN40OpLV0UhIB
	 u4opt2n/DupcQ==
Date: Tue, 24 Feb 2026 15:28:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ2xBQcy7mMEXW_b@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kgckx6gy5lsqo2sl"
Content-Disposition: inline
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
	TAGGED_FROM(0.00)[bounces-5215-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devuan:email]
X-Rspamd-Queue-Id: 8832E1885ED
X-Rspamd-Action: no action


--kgckx6gy5lsqo2sl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ2xBQcy7mMEXW_b@devuan>
MIME-Version: 1.0

Hi!

ISO C23 changed the specification of string search functions so that if
the const qualifier is present in the input, the APIs preserve it in the
output.
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#subsection.7.26=
=2E5>

For example, memchr(3) and strchr(3) were previously specified as

	alx@devuan:~$ stdc C11 memchr
	void *memchr(const void *s, int c, size_t n);
	alx@devuan:~$ stdc C11 strchr
	char *strchr(const char *s, int c);

They are now specified as

	QVoid *memchr(QVoid *s, int c, size_t n);
	QChar *strchr(QChar *s, int c);

The new specification is only possible through macros, and only in
calls.  Function pointers such as &memchr or &strchr, or calls that
avoid the macro, such as (memchr)(p,0) or (strchr)(s,0), do not use the
macro, and as such, still use the old function prototype.  However, the
ability to do this is declared obsolescent by both ISO C and the glibc
manual.  This means that the underlying functions might eventually be
removed from the headers.

glibc has implemented the C23 specification in glibc-2.43, in commit
glibc.git cd748a63ab1a (2025-11-20; "Implement C23 const-preserving standar=
d library macros").

I've written a patch for musl, but it hasn't been applied yet:
<https://www.openwall.com/lists/musl/2026/02/23/1>

gnulib has recently added a new search function, strnul(3) --which we
already document in a manual page--, and didn't include an underlying
function, since it didn't make sense to add something already obsolete.
I documented the strnul(3) API as if it were a set of C++ overloads:

	char *strnul(char *s);
	const char *strnul(const char *s);

Now that I'm considering the documentation of the glibc changes, I'm
wondering what's the most appropriate way to document them.  I have
a few questions:

-  In the SYNOPSIS, do you prefer QChar/QVoid or overload style?

	QChar *strchr(QChar *s, int c);
   vs
	char *strnul(char *s);
	const char *strnul(const char *s);

-  If we document it as QChar/QVoid, I guess we should we add a
   QChar(3)/QVoid(3) manual page documenting all of the details, to
   avoid duplicating such details in each manual page.

-  How much should we document the old function?  Should we keep that as
   a historic detail in the QChar(3)/QVoid(3) page?

Any other comments?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--kgckx6gy5lsqo2sl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmdtZAACgkQ64mZXMKQ
wqknyw/+Kv24YvmO2RfBYovsyKuu3i40/5LDhNlYf3il3b/aYZZBtw0EgRM3HI/F
bybat6b9yGTTLvG5xYU81AUP1ZfOHQmNZycFtQHMJBrdzTfl94wyCKxEesHgX7Xl
aQh6O+gSu06jQaZFZP0mlpV4Uji7ckHfOjyh4WxZnFiyJs/l5pMuv1IBfub+8GGA
FsEt8BrMi1CrCsSTaNKNH3x1RWqdOINQz1eYGABqDsloK/4Zur6aQ0eU7yhUnQiP
w1/g98Oprd7GNQkadGSOIuADDBa2/hY9L0xv03kz4pKHpoVVDUev/kT8FY+14sn/
EjqEpjlnpPgyVwBXbwaCYW7SJ9BILXa3uqUmYzwN67jr7FRXed1r5EaveifKowCD
EWZhZ3E2BfGlu3NzDinlyZ4X4ruusgpA5GZmxfxZEMD68oogqtK/xJOAI+aKvSs3
NzvAw5sd83ARgfN2KVO0oJPULV4PXmGlFSCwIOO2NLBJpVkPu8I9Ww/Nz8DdLiDz
5jfJvoUn6oRhdqRftFrbmV4LT7hbhRSm9V7Y+upRxPU7cyfff9tS3qGP9O1Xvjeb
NOZiH8S4hl3nVzOareWmYy1vLAXrc+pdaSrNiVsIx3I5NUMw3zj4F9nkDi2TYK9x
m7NnXiNrjWhULfLvCu2MryISa+UheFDFMgXurqVBS0A/RU/Ju9U=
=IyjD
-----END PGP SIGNATURE-----

--kgckx6gy5lsqo2sl--

