Return-Path: <linux-man+bounces-4959-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAQwND+yd2l2kQEAu9opvQ
	(envelope-from <linux-man+bounces-4959-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 19:28:15 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AEC8C15B
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 19:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E52CD302A53F
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 18:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDEFA2F362A;
	Mon, 26 Jan 2026 18:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cPDM3WGb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552B3239085
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 18:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769452092; cv=none; b=TW3Vn+34kqvYABgDWkTZGUcOZgbd2TCdypVeSxaRmaCOjO85YwVPpFpqS9vU7aN+KbgkpKRDZkja1bnFIFMs7c7f9RgmG30syF6T/JBJlsYqN/omOEO4RhujYRR59CNcwpmydFAwPvmZbNTAW7dssgT0gyN+Ub8Ym0Q8Y6FKPj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769452092; c=relaxed/simple;
	bh=D0zpI8az5IDmJNZ3t4VCcEJRR5NWaTx1wJgs/bZnsUU=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GukmoScI0KSKTWOj2zPM+xpXWPbP7ExGIuKPu9nJXjOLsAib02b1XqXJGI/J8aFjF6v6Pvva/SUASaIpL9b8PnRlLDlqGtnIHHdZLRgQTX/sVjmn3SvCTMybQRYwjKscKnJuvHBWrzjeI7U+Bh0ph5IUHl2o8ol3xt9YZfj1C44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cPDM3WGb; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-79456d5dda4so16240557b3.2
        for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 10:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769452090; x=1770056890; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HYAU9D6kw9KQdxJIF3MWZNmCD3EcyFLJYgG2h2sCuCc=;
        b=cPDM3WGb9c77OUirBlgmQF0e2dhlbQasgx7dSrjdoq11kA7h4PDBZbzLFM1ijM4/wI
         szgP1MX0w4E8RBk7/qlmfn2fpvXY2xzqj3ePgBjWtG9WOYlPMb3VxZUC4PnEbcqPUbgJ
         dPI7Tp7wLfysae9+4trZVzxmL4XhLjKc5uGziiCobfpUuGh2yEpJ97bSlKc/oXJpGcYa
         ZLP29+dzFtbTC2YOrdzAw+r1Xg9y/wKPag25vTR502l8ImFhqy9I/gNEu2YJTDWoaUYd
         EQE2QnmLEaGVAmFBYRLX/s312UsUsfHDO3oBIRbM75P3dEepPy9aJ1SsJaDaAYbHgp2z
         4cKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769452090; x=1770056890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HYAU9D6kw9KQdxJIF3MWZNmCD3EcyFLJYgG2h2sCuCc=;
        b=fG6ILLTwVwDmvd42Ay3yQRwM/j9vkJXhOFTnMa6AqHbijBzB3GPmD97ZQ7IgJbEFCh
         HM46zKAxbagROPXcdxW19l9aNONkozfLa5w907rpHa28JDP5R0MJrrVe2xuoDIVgOzX+
         YtV65lgCRzrKWtWw6bENBll7U+pRA8JjEgSZvCh0xVfkU94ypOV/lUcwSgMyYoNE2gNT
         5rjQ14jKmcrRrMHJf8TWqvdB3j6tXPc+PBPDhK/yVoMfGeSZ7B/XGtxF36pDcjpNJUh5
         srFEIqbW3Qc32HJT0vaIC1uZYGmMGyqCh1Pv3E/fmYEHNbRWI6GXFXXLWr6ugSPRUDAe
         8luA==
X-Gm-Message-State: AOJu0YyKupkLscLSewTmaJeisK91kwnK9ERjN4RiXJwUa21xInd6f9c2
	yL/qTKI343Air35Bsou3ePI7iQoxxeZPf3fD+qRANPzbRMlRAiPSqtOO9LjBAg==
X-Gm-Gg: AZuq6aI9bPme85Cyfhgonkrl7Go/0VSMq/j+Eafj3dzCeul8WbRYXFKyTZSZFgW1lSP
	LZrbbzgoZwrkzxsPMK7Yzq59hM12IHO9CiVY+LJMKKGoZXj+BUnXl0kKj7hEzBB8fCjFr/akvIw
	Zus+FeDqr11mIvohcvA+MJgebmWoPMfIOkM3UerOuepYtaAtd265Sv8t6XOpKD+n6KEHxf/OXnX
	nh4hx9lJ1xTRdiqlWTArcF0XUtS8RX2nE0ScClEUT86bITuSJr3aWmzIsxV6u9mti0WLfAAum/P
	oNtGYDEi2NOxLhwHUwu9bUaHC2pED/wBnYvb1A1TwR+DV0uNM+EzznxgIkNPvm4BoF0SIxixWGU
	qlr7iJZYMixQWG6b7fuGTGmnaruN+xSXCVbM5VtIXtGb5j4LWIZjRsxdAtLOLcTgj1hj/ayrJ4a
	Pm
X-Received: by 2002:a05:690c:ec7:b0:794:2b18:5464 with SMTP id 00721157ae682-7945a86bab4mr99678717b3.11.1769452089583;
        Mon, 26 Jan 2026 10:28:09 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7945dbbdf9esm19248247b3.24.2026.01.26.10.28.08
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 10:28:08 -0800 (PST)
Date: Mon, 26 Jan 2026 12:28:06 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 06/21] man/man2/lseek.2: HISTORY: Update appearances
 of SEEK_{DATA,HOLE}
Message-ID: <20260126182806.kyaq4iocq624bkvb@illithid>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <bcf9f5113f3c88ec1a3fa2bd9ec7a397b603f7c0.1769429341.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4j7bq6dbdihaqke4"
Content-Disposition: inline
In-Reply-To: <bcf9f5113f3c88ec1a3fa2bd9ec7a397b603f7c0.1769429341.git.sethmcmail@pm.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-4959-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bowdoin.edu:url]
X-Rspamd-Queue-Id: 37AEC8C15B
X-Rspamd-Action: no action


--4j7bq6dbdihaqke4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 06/21] man/man2/lseek.2: HISTORY: Update appearances
 of SEEK_{DATA,HOLE}
MIME-Version: 1.0

[minor point on English usage]

Hi Seth,

At 2026-01-26T12:28:59+0000, Seth McDonald wrote:
> SEEK_DATA and SEEK_HOLE appeared in Solaris no later than 2005-12-12,
> when a ZFS developer stated in a blog post that "[a]t this [time of]
> writing, SEEK_HOLE and SEEK_DATA are Solaris-specific."[1]

"At this writing" is idiomatic (but relatively formal) English.

If the bracketed "[time of]" was meant only or mainly to clarify meaning
for non-native English speakers, of whom there are many subscribed to
this list, that's fine of course, and you should skip this message.

I'm having trouble finding an authoritative source for my claim, and my
_American Heritage Dictionary of Idioms_ is no use--possibly because
this isn't an idiomatic, but a literal one, if one interprets "writing"
as referring to an action in progress, like "playing" or "dancing", and
not as a gerund, as in "in my time of dying".

But here are some exhibits of its correct (idiomatic, if you will) use
on the Web.

"I also subscribe to MLB-TV and urge on my Baltimore Orioles, who
haven't had such a good time of it at this writing."
	https://www.bowdoin.edu/news/2025/06/getting-them-laughing.html

"Linney has a series of audio lectures based on The First Year of Latin,
an 1902 text by Gunnison and Harley covering, at this writing, half the
text."
	https://quarksandquirks.wordpress.com/tag/william-linney/

"The program book, still online at this writing, contained informative
program notes by musicologist Anne Pi=C3=A9jus, an excellent essay by
Washington Post Art and Architecture critic Philip Kennicott drawing
parallels between the French court=E2=80=99s reception of Esther and impact=
s of
today=E2=80=99s social media, and an also excellent essay by music historian
Benjamin Bernard who covered private school education at a
contemporaneous boys school, Coll=C3=A8ge Mazarin, and the girls school at
Saint-Cyr, Maison royae de Saint-Louis."
	https://operagene.com/new-blog/2024/2/12/opera-lafayettes-from-saint-cyr-t=
o-cannons-moreau-and-handels-esther-theater-as-mass-media

(One's got to have an immense lung capacity to perform opera
professionally, and even its fans would seem to be up to that high
standard, judging by the prodigious length of the foregoing sentence.)

Regards,
Branden

--4j7bq6dbdihaqke4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAml3si8ACgkQ0Z6cfXEm
bc5i4RAAhgu61O9yj+ZOvo2p7GTBI6PtmMy0TcETf0dz5Wp77Ric5KDhOHjKXLaw
WUvzthGEllrn9o0vPZs0ZVVpvvL/2aE/BQJrHgN1sKlYGIUS98yKTuB5/KUfh+HI
M9UmuNp5WWi1hbiFbMQCWSobD2up7gpfOgrOsrcVUOeLl2CIr22Q2HgLl1AW2mNs
/r7D07y7BuCL1Jnfqk6RWHeVq5IMsLG3HZq8c4/TN0llqr+O3mFRDC5AvHZ+Oydf
xBQMMOekXz+qsaVvg6eCCuT6p/BDiZFbzNnxk+vtD786hkFmQx7BwwioIOmjDZt3
X1g8zAmgYEE1TpAzPSPqXUse2EFPTfUPgnLBDiu3SM/c+Z9HMKkBSNL1/BVkVAoQ
eSbaOp88OS8cZwiQCnmSa5iqcO1hEiBAYIXYIhEyegGX5TYMvIY8gVnAraqY8Z/C
6WTw0zxj4V7LFU3m33wiPNLKIk87uT32e0r0vhDEHen1tHZy0hKIVHZW5/TIP0ca
JZU/c0m2G09a8VA8mrWZtT6PjJUpvcgzyGs3AyU4F9hzr/NKY6x3HW5+ztSnLHKi
qPrcrjXAci4M7E6ZvNRNwafio5Ah1sLShS5dGtQY+iryeU3dygSgzj0OsNq83RZC
aCueGODum0vWwBuliun5SyehTg+gpgExlpWhQcggtK7ORsekz08=
=i27y
-----END PGP SIGNATURE-----

--4j7bq6dbdihaqke4--

