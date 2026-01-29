Return-Path: <linux-man+bounces-5013-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJUNNyjde2kdJAIAu9opvQ
	(envelope-from <linux-man+bounces-5013-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 23:20:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF32B53DE
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 23:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 506AF3015A5C
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 22:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA81367F2F;
	Thu, 29 Jan 2026 22:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kuY6DBmv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE7A3590AC
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 22:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769725220; cv=none; b=BIBSdL8p6hoxBGZroiBQpcJ3Rtj2y9CXeV0YddjMxA0JZKUuW5uMtRVP+CWBEU35yaCAWxpme1McD1lpDfOr0HV4bibjrnBU1PKRrlqor7V0jwNBz3cDkasVwioFEbw4jRVmYaVksxJrWW6XX5t9qyxc3Xr0kaMzdJ2q3A7+W0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769725220; c=relaxed/simple;
	bh=xxEjRS1a18vTY/Jq4HpShl/0+kxINNRqBRc5zUmGiA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LtwiDWwLYIyY3LHQaJILXmoUa3RSFX/vruAzm2SX5EXd20+Sb9VFnT7HmAhkDrMTfzUcZ5odIlvwqGvwo3QkSUGEiYPhaMVBht2ML8aJ8tpQcnpWJvKQ0HMpPd+CukLv/tgEbMBSNK4I6MPe1Cw7NlUk/Wq8J9ncBPmgbm3Rxr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kuY6DBmv; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-79472374371so10495387b3.0
        for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 14:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769725218; x=1770330018; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BDF7fiw1Z/UYfUlwJ96Y/cnVd36fLmET+hLTGKlKg9w=;
        b=kuY6DBmvtzbqjl0Dchc2rOIvPNyx5nKxp5UockAB7JtATyrhwElWr1OIoLY30doJF2
         KOyG+PtnyOFAtWFTZjq2OyKgVBv9nQ2YN3hqbs4cCaParnw5+lSxYm0mZvF1Up74zJzF
         D13xUlmhvyNKWk8e6c/7PntpPoZiS1rfzat/pm6FZimLZdsvjDarKXMEjBqueCJqU9QU
         UzZNSThZytpVL1aKRxm7WCUbAOn21/SBqrzN6JU2SjLI3eAdIXQooRjtiC2eztsUEmmN
         5sHZVX2odliyrIVXDyZpCahTxVAqbPIB1gQquDVZt+rwcQtKy3UM7BhbB8/vPUsvgqR3
         n+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769725218; x=1770330018;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDF7fiw1Z/UYfUlwJ96Y/cnVd36fLmET+hLTGKlKg9w=;
        b=ASSSJSWkJ86XPLlCVxe6h4QSvASIZ4KXBPyTPgW6mHP9c35n5Utc0Tj/te0xwtWwAp
         iDrZZhae0XGmthX0W2ZqF8HNQh9y3LpfWC1A8JR7OCpGiPGrn7ueaBkJad1Gn/CYaQYV
         wrw62/dvenmmDW8kdvNTw2wbvYQHJy6sAiEK3SmJnqWH/a3Mh60gvTYxuVq3IWji4akU
         ROULYUb8q8zQuYuafPsmfX23NRkQH7EZubsFybchcaIJmWkMsTSK2nx8gIJyjMJjtgRE
         ODJiGAO/5PDGLD0qQYDGsj+dSQxWphg7j9i79J0gG1FuMvJz+PK9+mcXi+NAwq6Kh5vx
         +zvA==
X-Forwarded-Encrypted: i=1; AJvYcCU8uK412iWQU4EPoF8Q1Tvt063F8kVVRxezVZQLfuPkOgcdLKcoNtNADEVihEurVhq/o/lq3HaAQjY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz44e+rGc1ucf/9oJIsQ9fCoLuWPjBOzcqtY+pEpjyOpRQ+5Pm5
	oggp+wR76IBhz0LfcFG1cJprDvz5OQlnV/LU9SM1cJkbRSqwWdTVoQN+AaKIUA==
X-Gm-Gg: AZuq6aJMZKVkGvRAquDo0eEJaPqaU1nw5ZDQWcK7pC/bvrofOeqqCvYELlAJvdHSXu3
	iyjHzW1ksZGs5AMS7ksTmGG2Hs1QKvvpYKx9yDc3oXBBZLQhUvvRA9d9u69U3LdbPWiI/j9f5gQ
	Oa3+uZxfk8c+2Ozgu7YFjJ5Qlpy3Nndb6cOAXZokNW16uIxPCx+iptLQFy6rJ0S6Cos2xX+xrhZ
	UQx9Ec00v8ZCimtn0CZzldw1H3kXl/kNtinKQrd6zibeF4RNKAv9+quqDl80hjg9bQGmcivUdQk
	O0Rct2sYZ3qebO2cUYcRtDb5Y14EEYFuVM4kiuV04FNi3VY6hFqBKIoQNzaQm+lnEadTHuQNpPx
	0FxgHlPNTN1pkjIqlUQFAP6GIuD5+btMZt7pWhRCfI7XgM/RrHkGuJSpTE4ZqLSOCFksYhLz7RU
	5Vwsspq8uu2Hg=
X-Received: by 2002:a05:690c:c38f:b0:78f:a6e7:76fc with SMTP id 00721157ae682-7949deddaa4mr8096627b3.24.1769725217945;
        Thu, 29 Jan 2026 14:20:17 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7949be04d80sm6800627b3.34.2026.01.29.14.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 14:20:17 -0800 (PST)
Date: Thu, 29 Jan 2026 16:20:15 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org,
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
	"G. Branden Robinson" <branden@debian.org>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
Message-ID: <20260129222015.ecejnhijsre33bzj@illithid>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
 <aXtuXfFTn2VjD5z3@devuan>
 <20260129202457.vuvhcbjp6e3x5g4n@illithid>
 <aXvXmSe50hi6DMu-@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jo2iljfwtwes2gtw"
Content-Disposition: inline
In-Reply-To: <aXvXmSe50hi6DMu-@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5013-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5BF32B53DE
X-Rspamd-Action: no action


--jo2iljfwtwes2gtw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
MIME-Version: 1.0

Hi Alex,

At 2026-01-29T23:06:13+0100, Alejandro Colomar wrote:
> On 2026-01-29T14:24:57-0600, G. Branden Robinson wrote:
> > By making it a subsection, it can go _within_ the description, as
> > early or late as makes sense.  In many cases, if you need a
> > "Parameters" subsection at all, it should appear as soon as you need
> > it--but no sooner.
>=20
> I think I'll leave it for below the DESCRIPTION.  A problem with a
> subsection is that it would force using subsections below it, if we
> want to continue with the description.

Not a bad thing, IMO, since I think subsections are under-used in the
first place.  :)

> We might change later.

Yeah, it's a judgment call.

> > I think it would also be fine to either
> > (a) not ape FreeBSD in this respect or
>=20
> Sorry; non-native speaker here.  What does ape mean as a verb?

Roughly, "to imitate".

> > (b) restrict this "Parameters" subsection to section 2 man pages, as
> > the Linux system call interface is indeed huge and complex.  The
> > Standard C library, by contrast, has remained fairly manageable,
> > with bsearch() the fattest cardinal chirping in section 3.
>=20
> I agree to start with chapter 2.  I can't promise not continuing later
> with chapter 3, but I agree it has significantly less priority.

Makes sense to start where the change can do the most good.

Regards,
Branden

--jo2iljfwtwes2gtw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAml73RQACgkQ0Z6cfXEm
bc544A//RCxfIx6XcmkFrESypuo2iHT4pKXIm2GiswHKoFYHpNsxXfn8hToIBLvb
A1QQDCxEeLaCOr0EXG17+Nlx9Hdj6zNWFC0DESo7mB750VzN0BXMy7dcTBVL9gTh
0WjnQWw2HkTVBy3OaENDWdTnUYrAttHlcuK761fKrGfIX77Kv9jcG5adSQVMed+5
AnkZN05P+BFv3ChCxdik9bgmRrpOdLEyceHibsny/iKKWUVo7M6Sv8X8gPcvMLrt
xvuPR63LYUoTuOiC3Z6iY2sVvP2GjLEr/WFPkM/5ZNEhDjkD8zUUMEJEtm/fRfdE
sjrY2EtZay1w1pyyYaQy35AqECPC6bgOWD7oKBn2aqAQRg70Uu2KnyXl3KPWBV9D
f+Ilfv2CfEVodrbcPE5GIvngz2IxXbJEZ6J++nm77bDv2thnsQK9IBgwu+m6DyJ3
TK4WrYRjXfSJ5Yg+12rpKlew1pCKR5qm4Yz4WlTViXPS5Vj+EZbXtn+NUT18aKcU
6IIheiG9SgEptpqUBbMGyJkhxZ86wuucyBwbjnAaUxNUG1QpmL1Lg5dqzEDxN0DU
9n1aGqQzQ/N0fA9ZCz4LQtvTINfp+ZSm0/yykTPRCcfKBeyn4T+c5w8qeFQ46Rei
bCHe0x6p0BIdt36GY/vkt4izEXyiRBhJVqthjoxWWfIMdQz8+lM=
=DO/Q
-----END PGP SIGNATURE-----

--jo2iljfwtwes2gtw--

