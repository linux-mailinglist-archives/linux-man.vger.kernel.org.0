Return-Path: <linux-man+bounces-5237-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEdVIZfoqGmfygAAu9opvQ
	(envelope-from <linux-man+bounces-5237-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 03:21:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE9220A288
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 03:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A91E30CDEA5
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2026 02:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB15B2550D5;
	Thu,  5 Mar 2026 02:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="VhXJOix2"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666E3BA21
	for <linux-man@vger.kernel.org>; Thu,  5 Mar 2026 02:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772677140; cv=none; b=cBY6lgjpLjLYiCiJIeZtEuaAGyI1s+r6bqIKLrNxXKtk+0JbHyZlm5DkmEFFCatOAZOXP6sKA06wSQ2MEbKNMPAO6laUjmTrWQRdDD+CDE+Cdr7hu+1JxJfCCX8qCMl+OwInXCEAj8bhE2nskr7PYwe9mP5XLYwyc9n5Hrgp+XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772677140; c=relaxed/simple;
	bh=hJJDmTqZq5ZgLRgbgOM/ZMkwXYjWGNYKxbGepPCgBsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qitgOnwl13po5VPK2a0/082SPstli94iRfMy2wHotgOue/4O2SRACUvvwsGTlvMtNfexAOZBM4ttRlySmkSp2nsBJ5s0bB7G3osoxTtnB6DrvNkxMwflswX2qZYrF6VFLjVFPvAzxe6cXGFnaiqvjnoEHtkzS35vnGxi8g07Hcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=VhXJOix2; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fRCrt40l7z9vCt;
	Thu,  5 Mar 2026 03:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1772677134;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hjNA/Xf4i9Dcmu5w2Zzmro8ALWG9M6y/4cdp8qwrYTU=;
	b=VhXJOix24vh29ktZsocA2fxhvQclv/PeoHLlo7rCnqj+mq4zwnBRbzocNr5sNIeFTV6x4X
	FfpQKuApHMTS+LYMAx46xCQ8lLZyi+B6DorLpySNl+PpxcF0yXVpM1GXoGzRvitEYn6fQg
	TG7h+awtQ+/z2xQgShv15UhXgKpFIsK7QZKCxwwXHk49Gcv3ad/gjnNPA9Z8Vctu+9wm0x
	lGETQginQaSlIwelOYcSMueKfiTrI43X7FSWmuvJ65PJWs5MUjSL6j33X4c2r1F7wtVEHc
	64ISOoA0zKp6TD7cOn9uj/8aYf9ljq6MfhZVo+xYd8hlDgJctnKVd5l8bu5xnA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Date: Thu, 5 Mar 2026 13:18:39 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Askar Safin <safinaskar@gmail.com>
Cc: alx@kernel.org, avagin@gmail.com, b.sachdev1904@gmail.com, 
	brauner@kernel.org, criu@lists.linux.dev, jlayton@kernel.org, josef@toxicpanda.com, 
	linux-man@vger.kernel.org, miklos@szeredi.hu, ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <2026-03-05-older-hairy-letdown-remedies-rZxNsK@cyphar.com>
References: <aahG1Mb0oRBEG6sy@devuan>
 <20260305001337.3323169-1-safinaskar@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wa5c2ht5yrtn7n3a"
Content-Disposition: inline
In-Reply-To: <20260305001337.3323169-1-safinaskar@gmail.com>
X-Rspamd-Queue-Id: AFE9220A288
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cyphar.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[cyphar.com:s=MBO0001];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5237-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cyphar@cyphar.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[cyphar.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


--wa5c2ht5yrtn7n3a
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
MIME-Version: 1.0

On 2026-03-05, Askar Safin <safinaskar@gmail.com> wrote:
> Alejandro Colomar <alx@kernel.org>:
> > Is this the same as a "mount object file descriptor" as describer in
> > fsopen(2)?  If so, we should use the same language, I think.
>=20
> The term "mount object file descriptor" is probably confusing. In fact
> fsmount simply creates detached mount and returns O_PATH fd, referring
> to the root of the new detached mount. (Note: I'm talking about fsmount h=
ere,
> not fsopen.) This fd is similar to what open(O_PATH)
> creates. So probably we should just replace this "mount object file
> descriptor" in fsopen(2) with "O_PATH fd".

No. From the perspective of userspace these are different types of
objects, calling them both O_PATH file descriptors is just more
confusing.

The fact that they are "just" an O_PATH to a root mount in an anonymous
namespace with FMODE_NEED_UNMOUNT is an implementation detail, users
reading the docs will be confused if we start referring to two objects
with different semantics as "O_PATH file descriptors" (especially once
you consider that O_PATH file descriptor semantics are also woefully
under-specified).

> This statmount patch refers to any fd inside mount in question. I. e. any
> fd referring to any file inside the mount. This may include O_PATH descri=
ptors
> and, yes, descriptors returned by fsmount. So, current wording in this
> statmount patch is correct.

I agree.

--=20
Aleksa Sarai
https://www.cyphar.com/

--wa5c2ht5yrtn7n3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJEEABYKADkWIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaajn/xsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIACgkQKJf60rfpRG/7WgD/Uiyw8w5GNfwxrgEtKnFG
Kskjkpgo0h2sYB1tS61fC3YBAJGIgAtgShqXyGNm7nRYZ2v54DT0I+05nkZUTiYp
ak8H
=mDTQ
-----END PGP SIGNATURE-----

--wa5c2ht5yrtn7n3a--

