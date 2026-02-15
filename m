Return-Path: <linux-man+bounces-5137-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AL9NG/gNkmktqAEAu9opvQ
	(envelope-from <linux-man+bounces-5137-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 15 Feb 2026 19:18:32 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A80BD13F596
	for <lists+linux-man@lfdr.de>; Sun, 15 Feb 2026 19:18:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43DF53016CB5
	for <lists+linux-man@lfdr.de>; Sun, 15 Feb 2026 18:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEA81260566;
	Sun, 15 Feb 2026 18:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbEQdiGr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9232D22D792
	for <linux-man@vger.kernel.org>; Sun, 15 Feb 2026 18:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771179508; cv=none; b=hAXjex7QzsIlHzK6k3RbKu+dxsYbp5T83vrFLCOMZDbsD0n28fjY92I0sfCw1q4VpTOrZNIAb8+DxcPhtpiyZWaPuDOSb+XaPPGRSyn7tzLGAx0ei6MUGQFowwgu0BJl+Qsl7pibVBChLb2fCInA90ly5Njm+9rGKy1+VG7XgD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771179508; c=relaxed/simple;
	bh=1sSxj8pUOkpQoaK59zHb+kCSg3WcTxAbIgDiWMBtsoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tOihUyTKQkGeDAY+uRMQIpS2M/HVhhF4I4ObbOEP7Hv0P/HOOzO47siBvhg5jBSa4mUVeqbrorWndtHywNzgWj3pf5QACRBhZjku3+8dzgbbIIlHdlS3oIo4VOdcJ5j4HDBM0udeA+3G8D1cUgbDkjjhkY17iIzlx/ACFEs6zmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbEQdiGr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88F97C4CEF7;
	Sun, 15 Feb 2026 18:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771179508;
	bh=1sSxj8pUOkpQoaK59zHb+kCSg3WcTxAbIgDiWMBtsoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LbEQdiGrIkht4VwliCBe2uRHJe/I53ayENjoOA1Ev+36eRWP/oNAVHjbbR+QnkPm1
	 keTVEkmB8U9c3rzwT3Q+DP0RqxSpzKrBvT2DvmdE/w1UhKhr/p+e1kgqBBVDOQjThl
	 kWLfbKzfZcMerfZEcd4D3oBkyYUXyXmqAa2YV0qiFWuJ9vUWvboIVXwQO9Gj0LQcTs
	 QlRbqtViwCTt6h5bBSWS/KI2mSeYqejO6F7gwFXtBChWEMU7QfwR5Un4EjJV7AKFq6
	 6+d6FVC5uJ2YIj9BYLt+7uEYdpbVtL/o5j7ZIUjT4eO6yemMC74z6pHFjDHY96ZQxZ
	 AlNnBZ3JLwjvQ==
Date: Sun, 15 Feb 2026 19:18:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v9] futex_waitv.2: new page
Message-ID: <aZILB86QfGuXJng4@devuan>
References: <aZDSt7hvlzKBq_Fr@devuan>
 <b2m66awhq3g7dsyccbawsqovfzw73ocqtbqmkpgpoje2jf6iiz@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uj5yamb3qtnloz6m"
Content-Disposition: inline
In-Reply-To: <b2m66awhq3g7dsyccbawsqovfzw73ocqtbqmkpgpoje2jf6iiz@tarta.nabijaczleweli.xyz>
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
	TAGGED_FROM(0.00)[bounces-5137-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: A80BD13F596
X-Rspamd-Action: no action


--uj5yamb3qtnloz6m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v9] futex_waitv.2: new page
Message-ID: <aZILB86QfGuXJng4@devuan>
References: <aZDSt7hvlzKBq_Fr@devuan>
 <b2m66awhq3g7dsyccbawsqovfzw73ocqtbqmkpgpoje2jf6iiz@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <b2m66awhq3g7dsyccbawsqovfzw73ocqtbqmkpgpoje2jf6iiz@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On 2026-02-14T21:48:01+0100, =D0=BD=D0=B0=D0=B1 wrote:
[...]
> +static inline long
> +my_futex_wait_private(_Atomic uint32_t *uaddr, uint32_t val)

I just noticed this should be my_futex_wa{it =3D> ke}_private().
Probably caused by my earlier confusion while reading these; sorry!

> +{
> +	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val);
> +}
> +\&
> +static inline long
> +my_futex_waitv(unsigned int n;
> +               struct futex_waitv waiters[n], unsigned int n,
> +               unsigned int flags, const struct timespec *timeout,
> +               clockid_t clockid)
> +{
> +	return syscall(SYS_futex_waitv, waiters, n, flags, timeout, clockid);
> +}
> +\&
> +void *
> +worker(void *arg)
> +{
> +	_Atomic uint32_t  *futex =3D arg;
> +\&
> +	usleep(*futex * 10000);
> +	*futex *=3D 2;
> +	my_futex_wait_private(futex, 1);
> +	return NULL;
> +}
> +\&
> +int
> +main(void)
> +{
> +	_Atomic uint32_t  futexes[10];
> +	uint8_t  init[countof(futexes)];
> +	struct futex_waitv waiters[countof(futexes)] =3D {};
> +	int  i;
> +\&
> +	if (getentropy(init, sizeof(init)))
> +		err(EXIT_FAILURE, "getentropy");
> +	init[0] =3D init[1] =3D init[2];
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		printf("%" PRIu8 "\[rs]t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
> +	}
> +	putchar(\[aq]\[rs]n\[aq]);
> +\&
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t) &futexes[i];
> +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
> +	}
> +	for (;;) {
> +		struct timespec  timeout;
> +		int  woke;
> +\&
> +		clock_gettime(CLOCK_MONOTONIC, &timeout);
> +		timeout.tv_sec +=3D 1;
> +\&
> +		woke =3D my_futex_waitv(waiters, countof(futexes), 0, &timeout, CLOCK_=
MONOTONIC);
> +		if (woke =3D=3D \-1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
> +			err(EXIT_FAILURE, "my_futex_waitv");
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i) {
> +			if (futexes[i] !=3D waiters[i].val)
> +				printf("%" PRIu32 "%s", futexes[i], i =3D=3D woke ? "!" : "");

This line goes past the right margin, and could be trivially narrowed
by using the new (C23) fixed-width length modifiers:

	alx@devuan:~/tmp$ cat pf.c=20
	#include <stdint.h>
	#include <stdio.h>
	int
	main(void)
	{
		int32_t  i =3D 7;

		printf("%w32d\n", i);
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra pf.c=20
	alx@devuan:~/tmp$ ./a.out=20
	7

So, the line would be:

				printf("%w32d%s", futexes[i], i =3D=3D woke ? "!" : "");

> +			putchar(\[aq]\[rs]t\[aq]);
> +		}
> +		putchar(\[aq]\[rs]n\[aq]);
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +}


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--uj5yamb3qtnloz6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmSDeoACgkQ64mZXMKQ
wql4SA//TIWkiejdmBL2C1KKoR5xww2J078eVKRNym1sH8xV6VBQLt+W6v+cP1dt
djcTmmwi152P3HE5AjAc791XYE2cPObBiBYT+v5MZuxgxaYt1nG73MBI8CapXQpM
kwGVK8yrcaReCE7kTe4dYGkEqtk6+sdRe0kfYxh6Rx0SwEn1m5kS+AcTzwiPS+GZ
7Eycf9rDFQoOXLfqrJmYI/yHURAOEXnLofyusL0CxKeo8+fG8cqTb7s2yy3e+9in
VVEzRc6vH3SASiwM6Ri76ih734DvHjxLiMonjA/Fm8L3n+41vbkQ1+oV9Rhk5Pvf
vMu4iKPgfOmIEdJNYY6i22OY4D0073WmF2JkvwM4SkGJIqmNh5XFU3aWesAN9mD9
tdr41L6sVdJqBSjEKaH1gekiUbTSASJvAnA3hJ/Vzw7AVaJ990DlCmV++LMIma3K
R+hDiX1oZ0HiXOKly+tI3eLaBor8bwkYUkwbGNgjMx9TIGWQ7Jajtz+3uEgvnDbz
E0UwHL5iax8IeEM2i5ewQLwlLEOaiUTQEvIvAkuRX0DUav4Yy2wHGHEVCNIEh/7v
lgZvAsdVTPE0+CflZZ1WUhjpnoQnYWDvqNwViCJQS72+bO3QFU6q8upWuqwPVWXX
p66RQIBpChcOqzE7bYcyl7rROjuA9b8MRsCLUaF+093v9WDA90s=
=h+3R
-----END PGP SIGNATURE-----

--uj5yamb3qtnloz6m--

