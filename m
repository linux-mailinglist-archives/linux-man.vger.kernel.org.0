Return-Path: <linux-man+bounces-5333-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDguEvvX32mYZQAAu9opvQ
	(envelope-from <linux-man+bounces-5333-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 20:24:59 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FAB40712C
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 20:24:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4EFA93013714
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 18:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C7531AAA3;
	Wed, 15 Apr 2026 18:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BxcCYy9k"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918AE199FAB
	for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 18:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776277461; cv=none; b=Vj0yRWbYZQNxWx11c9srgWZ7fpyLT2ykhCpKR7a/t8rLFg8iJbVhtFapJOMbQzKv8PsLihHIPj03IeDpSPTpy6JN5xhr8GreJOVbgy6LnEWhUfxd4XQTRmqacxs4xu+nkQjB9+NWpIQUUGAFZEG7Q3o7Y8W3N+K3lcVgU3tDfyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776277461; c=relaxed/simple;
	bh=Ql8oQS4RCBd7PJR213lrDUVoO7Cl9YBVM5uOBqvtGpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kh9GKeUrOOBQkolUzHzt7oMp0qj6ZeaACQfPYj+vAGETROM1cCGsBGP+jFCuTy6875OI9xjf626KuAuCbGj+ZC1v4t5lOtDA4EoP1PqGIyOWlO5Gv2JFl863GZN547J3MisHhGXJ1TvP8SB+sv3kv1eh87/Gi6rSaKOlJIDBkIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BxcCYy9k; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-7b6ae2ea4a1so21020927b3.2
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 11:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776277459; x=1776882259; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y+Fxj1yhe55Btz1HBCPETFrGYXLVGS4JqTOZtWzWez0=;
        b=BxcCYy9k8g+q0QSZ6FUbNiEdiqKp4XrtWSzjI2FhApWo+rWah0MTy6/sD5kiIc4skb
         7ETdBTTkO5m0NaFzbVl9YZ3I4+YpNvNYkyw6BqJHBNQiacCKUHxc5AtUb7N4oeaVKJoP
         6dZ27cjhXY3fFSSkPHpM2LNNPuo2Owkq0yx72fl9CmtMhsT8hZQIkR1B/HJM1saTB+Kx
         3w7qsCSOfkgetmjXehqYXEypDnUWxAX1Qr3V6GjF+hpmoTjNSV+ZAT6Kxhxdkj/fRa8T
         YXG+JuBbTQwOTRo0IQv68WrtSDoBL4OjonioidqMkH8TDkFwgt8HmjXeRzvynEhAwAE/
         ZbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776277459; x=1776882259;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y+Fxj1yhe55Btz1HBCPETFrGYXLVGS4JqTOZtWzWez0=;
        b=lYMDuZIiYxhK+Ps2mf6km/Nn0wQkBzFpZvIrseR5FajyvADc2RoJMgfe8KN6RawK8f
         4lM2dYe61MTWNtIavLbfzhB312UDcsOTZHj+JItmV3bxqI/lZ53qsXqFbyqvDkPA5iMm
         Ud+Cq+7kLR+Vg+L6p+fNREPLcNcTV6AdJ0MusNDIVThVKJiP086FuiDqhFU9MXAQhNFO
         JaaaZnxN9gtb5YJRpbPiqN3DNCwL5AEg2RCpC8XHrEG/TTb+x8YZjURSnL/eKXc4LHpw
         bz/sDhQj2UEgWJvgGnmyXZpr6YoL2J2Hn9+aSXA3HMVlSNHtij+QyA9rFbM5J+qbPldl
         MT+g==
X-Gm-Message-State: AOJu0YzZIxSQGI8syc/8XOYe0RBO0tEfbgf8gXK94NiH+3Pdk4y8tRdI
	D+Dmd8VVkCBxvDsrNcyehwmBiHCJn+2breY3ZAGtOAY0WqhJQWAy7AKRHiruaQ==
X-Gm-Gg: AeBDieu95WeOcuXWz8zvxks5Wx0Fz/lY+BwFXFJY8wPLJUIkOLONQeITyqYPhEQk36w
	HQVczp3KWz/cOJL7APFUaf4sz2nhbE7MjJ+D1tCbtsGoX2pLI9nSma3fktlonYJyvlnMFz7zaEB
	ERLM0DUZvmBHS//XSnsbRiK1VihRsR6RQjS7KthzKyAmALtfhpzlgKKwYu7ztvchTPjJbvTlE0O
	WDqH+BLR2OBwnlXhxcc1QbtKQE+yPkmWynO3mgDYuJA4NjlRgL+FLTQTvDwpUtkKd0n5yjiLkr1
	ede2l3o244RxokoZLPKiDgpummhwb5sZ8LR+KBnBhk9rf0BQkBPS8rwVbbrSazibjuZserHZ0Cp
	KzkuXX3UxF2VaGbqJDnwvPGaCdRVldCg4YirN+vRubq7eoojQWk6Odic47XD/BW8I5yTnNyXM4S
	aXqMdv76URgNRx
X-Received: by 2002:a05:690c:7283:b0:7b4:dc3a:79c5 with SMTP id 00721157ae682-7b4dc3a845amr96127417b3.12.1776277459597;
        Wed, 15 Apr 2026 11:24:19 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7b7667003casm12462757b3.11.2026.04.15.11.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 11:24:18 -0700 (PDT)
Date: Wed, 15 Apr 2026 13:24:17 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Dirk =?utf-8?Q?M=C3=BCller?= <dmueller@suse.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [BUG] typo in man2/readlink.2
Message-ID: <20260415182417.b6cvefbzk6ss3lmw@illithid>
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n3r3uqmymiv6fytf"
Content-Disposition: inline
In-Reply-To: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5333-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gnu.org:url,man7.org:url]
X-Rspamd-Queue-Id: A3FAB40712C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--n3r3uqmymiv6fytf
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [BUG] typo in man2/readlink.2
MIME-Version: 1.0

Hi Dirk,

At 2026-04-15T20:12:59+0200, Dirk M=FCller wrote:
> Hi,
>=20
> I noticed that man pages 6.17 release includes this in the Synopsis
> section of man -l man/man2/readlink.2:
>=20
>       ssize_t readlink(size_t bufsiz;
>                        const char *restrict path,
>                        char buf[restrict bufsiz], size_t bufsiz);
>=20
> I believe this is a typo and it should be:
>=20
>       ssize_t readlink(const char *restrict path,
>                        char buf[restrict bufsiz], size_t bufsiz);
>=20
> instead.

This is something of a FAQ on this mailing list.

https://lore.kernel.org/linux-man/adupQhfJQ7kws17U@debian/

It's a GCC syntax extension.

https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html

> Sorry for not including a patch, but I am not sufficiently skilled at
> editing man page sources :-)

Have you seen groff_man_style(7)?

https://man7.org/linux/man-pages/man7/groff_man_style.7.html

</shameless self-plug>

(Unfortunately Michael hasn't updated to groff 1.24.{0,1} yet.)

Regards,
Branden

--n3r3uqmymiv6fytf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmnf18oACgkQ0Z6cfXEm
bc41pg/8DwdEuonA8zWd8UcMFe7VntqaH7Z44oOSjwe4pmg3TJKvbwErlnxiF9U/
02Rz5JkfWsx5m8VKF3loSI6ss6mG1OQxnGG9EyBXwzp0GWvbw5T8XV3zAIqL8w+N
BND4J4nLjPVXmASPpDUjk7BnoSDqXmBCLi++Dx/669aRhCfmqP69R++Rer0L1QEF
AmsW3cw4d7LpC3tbon/0cod/NbmQ5K31/mW7dbfOSn7n6jHvPcRsfkD7iw3/I0vg
muYJJGwdYBwFFq5w/WTugjGZqUjlcLMky7Rh+Ky7ldDgVEhHFdx4Es5M9/x5+Jfw
cd1mk5+GN3kbPSYTCh/q/eUMKtjy1/zURCc7iWwWNVEoLhK9UGlhx4gqCWptFamr
JYZriSaX1BHaSJoblJrXQdA7bBLunUhxK3JEPCDmXpWlFsSjw8zVSxOKt4ed0hjI
2PUQF0nDlZrVbgGb2cge7dtWkephEreXEPR9NdM/tkPeeSPhtSdna7ATFpp0L4xV
qx7zMA4A2wFhuyuu5XqFeHy20R08wSqvx7Fh+TB0YpWonMz/ixoGOYM5JeZVQ3fB
rhssuS1T2g0e3kYjh4hfiLo2b3OIBHGOvr80F3smTDzYsrzKWplMRKUDWNd3rX1I
xPTrpnz898bZWFuYRwJyG+AzaOyhdRkVBzPKUYkYHKmbQq0mUHI=
=cgTj
-----END PGP SIGNATURE-----

--n3r3uqmymiv6fytf--

