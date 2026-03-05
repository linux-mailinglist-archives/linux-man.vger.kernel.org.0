Return-Path: <linux-man+bounces-5236-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMz8DJvRqGmnxgAAu9opvQ
	(envelope-from <linux-man+bounces-5236-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 01:43:07 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C3C2098AD
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 01:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9212E304607A
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2026 00:43:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1F51E9906;
	Thu,  5 Mar 2026 00:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFM7wsF+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9611E5201;
	Thu,  5 Mar 2026 00:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772671383; cv=none; b=Q8sSzNyL1hH1RQWAuD+3ffEC/3o+McYkXNCzTrvQoPBxCK0s8FBgorBWrbApJr9JwINBbP8bW/XVB6LG4rK5MEhfad0qlN1YyikUt3SqCtK/0ZeGBLDKNEMg7vBnhC75yR0Mn1Iq759iqZvapV13HYGzKcNLa3MP0LgHfZVteHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772671383; c=relaxed/simple;
	bh=akpEqzFyQKKq4V/vpg12Djiz1SfCb7C2ms3j52E/WTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ilKxT6DxhToCh+trK+qpkgaOWBxkeB5yUG/qqQCwcxfk2CvO+wYHAlobqqANZiqipWTK2oKdBpZuu79lMdrxyviQJyrxzFHjD9CwptR27Jz1hSvqg9KSVtjUW9WlBd0SOwQu7ZwdnNCcqwukIyf8JbqdHWlohlPP0vcGvw8DlmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFM7wsF+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 324B3C4CEF7;
	Thu,  5 Mar 2026 00:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772671382;
	bh=akpEqzFyQKKq4V/vpg12Djiz1SfCb7C2ms3j52E/WTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vFM7wsF+wQvkpktd+EtmBMGkjL+qfBi52SauxfsDvAfx2Tg7c7/OXJ5dwh19xToEz
	 ZztXKNs0Lg5cTa0eR7qw1fa9oQGVCbffijrkD1TFYVymb9bb2BIuW3lIan3URPSMjZ
	 l8ABrianJ96XEomU51vLPWFhJHXUHEq9weDqkXIaL1wbYppaUmKELmJo4m7Wdu9+oP
	 ZogAYC+Snub5yEds96xR4pLCsUoziMlovPkHJCXOxFCuleCL4O/behV4hSH0j8BvSq
	 7JatuQ2ZZbP5dLlkTCDJDjR89IJ7AxlNn7WqKsIq7L97tQPBdRTtt/YsZnT/HdWGny
	 4HOvER1AJrJ1Q==
Date: Thu, 5 Mar 2026 01:42:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@gmail.com>
Cc: avagin@gmail.com, b.sachdev1904@gmail.com, brauner@kernel.org, 
	criu@lists.linux.dev, cyphar@cyphar.com, jlayton@kernel.org, josef@toxicpanda.com, 
	linux-man@vger.kernel.org, miklos@szeredi.hu, ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aajREfJrV15V7HPe@devuan>
References: <aahG1Mb0oRBEG6sy@devuan>
 <20260305001337.3323169-1-safinaskar@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ukktejfczerigncp"
Content-Disposition: inline
In-Reply-To: <20260305001337.3323169-1-safinaskar@gmail.com>
X-Rspamd-Queue-Id: 80C3C2098AD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5236-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,cyphar.com,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bootlin.com:url]
X-Rspamd-Action: no action


--ukktejfczerigncp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@gmail.com>
Cc: avagin@gmail.com, b.sachdev1904@gmail.com, brauner@kernel.org, 
	criu@lists.linux.dev, cyphar@cyphar.com, jlayton@kernel.org, josef@toxicpanda.com, 
	linux-man@vger.kernel.org, miklos@szeredi.hu, ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aajREfJrV15V7HPe@devuan>
References: <aahG1Mb0oRBEG6sy@devuan>
 <20260305001337.3323169-1-safinaskar@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260305001337.3323169-1-safinaskar@gmail.com>

On 2026-03-05T03:13:37+0300, Askar Safin wrote:
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

Except for expanding fd by file descriptor, what you say sounds
reasonable to me.

>=20
> The only difference between fd, returned by fsmount, and normal O_PATH
> descriptor is that fd, returned by fsmount, has FMODE_NEED_UNMOUNT flag
> on file description:
> https://elixir.bootlin.com/linux/v7.0-rc1/source/fs/namespace.c#L4495 .
>=20
> This FMODE_NEED_UNMOUNT means that when we close fd, the mount is unmount=
ed.
>=20
>=20
> This statmount patch refers to any fd inside mount in question. I. e. any
> fd referring to any file inside the mount. This may include O_PATH descri=
ptors
> and, yes, descriptors returned by fsmount. So, current wording in this
> statmount patch is correct.

Thanks for having a look!  And thanks for confirming it's correct!


Have a lovely night!
Alex

>=20
> --=20
> Askar Safin
>=20

--=20
<https://www.alejandro-colomar.es>

--ukktejfczerigncp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmo0YsACgkQ64mZXMKQ
wqlURhAAmZ3tkLtixLMoxdKHUPma4Sy4JUn2Xt5c1m8tVvnzVlTvlQFwK7/t5CST
MMlt/NbSlJmY6g+c6fQYBuk32SpYwEZLCkOqz1122/RrFsInqSHBJHtwoXNpe7Pj
doiLV7ewu9q4RnrW+tsR/fLBNmvi78IGDpLOmCrQimL1EkxiwOXlt9dxdk5XnP+J
JlcxDo+xkY8z1bfO2izLmox+q9QX6lOIW3+KvnMB650mjkNo738JgBulhALXOifR
+x3LJh58GoUv0my1xrlOKzLGis0MEYZ0Nyn59yBsEpMho1ztLAMt1SoQyPOAOVX3
ZkPT0mkSdy2H50oZFIX2AO1o+LDrzem5Sgfcp3xg7WJ2Lu+xcKjsJxasshWz97ex
8VlAHgezX/LPEA5heqssGtWdLALKdYFA1wGvBVmCLwVwNi6OGeZrvv6KTHIKMYJA
dfFtRbu5/ewHmq8u1A5BmZthsQDwB8iYEyr6RkGShbEyDUHObIQlhdu4DOPdY+/q
FUjZ4uwJe9RhF5wk+gfvTlulJ9WVJIGh7JfDP0CqNlIINODoNtAGadgYxCiAxs4r
O17hFexqQ5ZQ7tVOG9Cm8Pyv0DitXXyPnaij0e1Dx6hbBuqNAwtIFVzlKmIbBOV6
OGoAChj/NUjhLczXp5q5lv/CRQjg8v3ldJW59EwNPrGPYzsfg04=
=dw2W
-----END PGP SIGNATURE-----

--ukktejfczerigncp--

