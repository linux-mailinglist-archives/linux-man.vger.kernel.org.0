Return-Path: <linux-man+bounces-5553-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E92BkgwC2plEQUAu9opvQ
	(envelope-from <linux-man+bounces-5553-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 17:29:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F0F56FF8D
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 17:29:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 04B1E3024550
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 15:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C982372B39;
	Mon, 18 May 2026 15:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb0gN6ND"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306052C0285
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 15:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779117151; cv=none; b=tzdn1+ObCcLNPenbGtIkpjzPCrqpVlt2/Ca1Li65pipqLAeiUApxbFxFXYpmhNmA+OBjX32Nrw3sPUU78cWnCW3Pi2lklkFk9apoFvHk2so5xZCWk+kqole4pwLFMEQhkE0xA8ornNf0EA4Q1Dj12+Iq1IWWVOTulmE7D52h7VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779117151; c=relaxed/simple;
	bh=64NQFtFXHHz1ZAiN3akI0Z0jSIfmQ7qDYR9SjXqgij4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tl9OUKCE0vj/IMrOPQs0sQQ3Eq+ACWsv6iazlHddZFJzJMfYMCUVE3j/u6XA/6bOmd4i0nNeSnjLAAXdP81KvJPBtXXvsuaLfGMwSDuldDOiJdSJQkYoKAaH63m+0BLmQgP4kML1v+EImHQBPGjaOLJBMe67GDlrDPLdSySKXAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb0gN6ND; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFF12C2BCB8;
	Mon, 18 May 2026 15:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779117150;
	bh=64NQFtFXHHz1ZAiN3akI0Z0jSIfmQ7qDYR9SjXqgij4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tb0gN6NDf/cvpRA1XqddJiRHl93Rmisgnyd+Wmv4S8hQj/nCDfYH3e0GTGSOyLts6
	 D5NmhaRXk43PLjVqkb2wkfWpSRYx4AGaxBb47aL/Hs6XYpruPjkQQ9MesQJwUyWZny
	 Yla2pIqhLUf6hxfxlROPAyK7cfIa55V6hyJQ16jv473eQ4SWVB9bmocihHnP8R2QC0
	 9sBoGyB5CIyO+Red+qiyyrzoFe3aWin7vMfktaD3TkSSXH8uTJWqFhdYSKGBx7dN9D
	 jRPzWnzU5bRL70gDh4L2zamXKCRb4Xo14k9Dbdi5eQN5DENZUvqeym77JTj/2qOehp
	 YRM86hKcgUctA==
Date: Mon, 18 May 2026 17:12:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kara <jack@suse.cz>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: [PATCH v1] man/man2/quotactl.2: tfix
Message-ID: <agsrnqainyp3vZbX@devuan>
References: <9d328eab7a632ac87f48bcfe88c0e5c3cca18d2a.1778951437.git.alx@kernel.org>
 <kf4k33gsaax2v2iwzfprvogsyfqxbjdldpkdefwraaea2ytijx@tm7g2gul3h53>
 <agsKOHLgfGkiyE1r@devuan>
 <b2kszapero3mb6q3763rrgjjfltkvt7aapm6s7oakpbpepfypk@mwybch7ayyqd>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ne2yrg42dhnyaeb2"
Content-Disposition: inline
In-Reply-To: <b2kszapero3mb6q3763rrgjjfltkvt7aapm6s7oakpbpepfypk@mwybch7ayyqd>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5553-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 19F0F56FF8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--ne2yrg42dhnyaeb2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kara <jack@suse.cz>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: [PATCH v1] man/man2/quotactl.2: tfix
Message-ID: <agsrnqainyp3vZbX@devuan>
References: <9d328eab7a632ac87f48bcfe88c0e5c3cca18d2a.1778951437.git.alx@kernel.org>
 <kf4k33gsaax2v2iwzfprvogsyfqxbjdldpkdefwraaea2ytijx@tm7g2gul3h53>
 <agsKOHLgfGkiyE1r@devuan>
 <b2kszapero3mb6q3763rrgjjfltkvt7aapm6s7oakpbpepfypk@mwybch7ayyqd>
MIME-Version: 1.0
In-Reply-To: <b2kszapero3mb6q3763rrgjjfltkvt7aapm6s7oakpbpepfypk@mwybch7ayyqd>

Hi Jan!

On 2026-05-18T17:05:59+0200, Jan Kara wrote:
> > I have more questions about quotactl(2).  In the operations that ignore
> > the 'id' argument, am I right to assume that QCMD() is unnecessary?  My
> > assumption is because if there's no user or group ID to be used, it also
> > doesn't make sense to specify whether we want to affect a user or a
> > group.
> >=20
> > So, for example, Q_QUOTAOFF would have the following synopsis:
> >=20
> > 	int quotactl(Q_QUOTAOFF, const char *_Nullable special, 0, NULL);
> >=20
> > While Q_QUOTAON would have the following one:
> >=20
> > 	int quotactl(QCMD(Q_QUOTAON, type), const char *_Nullable special,
> > 		     int fmt, caddr_t quota_path);
> >=20
> > Is that correct?
>=20
> No, QCMD() is always required. For example for Q_QUOTAOFF you still need =
to
> tell whether you want to disable user or group quotas. And even if the ty=
pe
> would not matter for some quotactl, QCMD still does a mangling to the
> passed arguments that is expected by the kernel (QCMD is ((cmd) <<
> SUBCMDSHIFT) | ((type) & SUBCMDMASK)).

Ahh, thanks!  Makes sense.

> > Also, I wonder why caddr_t was used at all, instead of void*.  It seems
> > to unnecessarily require a cast, which could have been avoided with
> > void*.  In quotactl_fd(), since we need to use syscall(2), which is
> > variadic, I'll document the correct pointer types, instead of caddr_t*.
>=20
> For this I don't have a good answer. It was like that for ages... I guess
> you can ask glibc guys - the kernel uses void * but glibc uses caddr_t.

Hmmmm.  I'll ask; thanks!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--ne2yrg42dhnyaeb2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoLLFQACgkQ64mZXMKQ
wqnkKw/8CVWIk6pRazr/mG9XELsqrZQB036N0SH1RGvVCA5dtp7/GUL8Kp0G0rMN
JnBwnTFfOnClkoDEG/1eiR/f8FqTI/VQkSwVOEdSfHcwMuBifGV1FGc5JTGwoFM8
uOhETTRULKNfxCgR3JS4W3aM+0jzwb6PK6556WoRc7XnWjMxuwtSrqJGJ0o7uYXz
ct7m/eG/xNkiIB4H4baFbrLGj8gxeavhOH2NHzNQQb47i45I9ROiefdQXun9qi6I
JPS+JyxNCNbpsgGBKMpVxNDuETv48Zmu36tEB+u/MCn34P9vVH6Gue/GKIUm0Lh7
1suZhUWjCd8zovabMbhpVpdZEBjfAJCYPiACWRLTO0WXfTiXCDZa8GKic54AaZ2k
A66IMwMUMX/W2ZiJvcXSscdd1FNaSSdrB9AwURmMNM9iozFAon2sXg/qwsNJ6X8L
J8MeTQiU2qtZIGQ/zSpfO/9VdqkvkmZRr8yR/JTxN5ieYHSWtdUhsg1MfdTuEoeH
HyVKFK57Bl5a+Fjk5yrsoa+8dsPWO2nXle0ql/52xT3RUcswZbGRZqzU1NKNR2Ik
zG+Pe7wfcWeHbYaTdqbjRZZfWhWbQA/YAefJTKOWfNjb0n9FJ/Fn0Op2WLOXFoL9
pMS8vdEdh4cLAhdz+UWjSUtJIhF+WZ+BVRUDcccT7sfCNwm+xtY=
=cf3x
-----END PGP SIGNATURE-----

--ne2yrg42dhnyaeb2--

