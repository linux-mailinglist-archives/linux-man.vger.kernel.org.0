Return-Path: <linux-man+bounces-5096-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPD6Okqri2lXYQAAu9opvQ
	(envelope-from <linux-man+bounces-5096-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:03:54 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AFA11F981
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87B5E304B77A
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BA130FC1D;
	Tue, 10 Feb 2026 22:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF3JZeCG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871182EBB84;
	Tue, 10 Feb 2026 22:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770761031; cv=none; b=n61G2DmbK5i1swU/DcHdGt0lqbVRc8X2xk4K831M2Kx5Rc1a8Ak12xdoAOIPaELDJiYMHDZj9WmW91jWSHOFYnJVzofISjKT+4je4CdmzsdTZ2cGoAytkkVPlWuYTIwXan7pU6goqukyYqX7QlicDtZ33q5EIk2npsfc3uoI5Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770761031; c=relaxed/simple;
	bh=zFjAwWT6Yx0AcSLXd75jCHeyPH2mJv/Fbi9VsbLV7JM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I6RnQK2E94ATWXWm9avRuJYkEuHW1ijggVtid6F9mZmLw4K2FroP268U00KwJ2nQYdKujBtogsQ8I1RClVwaeoiE8o0KL0Y2nzDjVGWqCh0jG+Y+o7oOkVys2WDgKQvQoQdau47onWYEsL3eGY2xs1v4XBZJL1Ltcd48cLDX0Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF3JZeCG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89864C116C6;
	Tue, 10 Feb 2026 22:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770761031;
	bh=zFjAwWT6Yx0AcSLXd75jCHeyPH2mJv/Fbi9VsbLV7JM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mF3JZeCGBlSGuyvQkSLEQ8X2svxZ5ddBuISJtZoNgkEYiRVroaV6qHzDXPcEejpOo
	 rCgStFW0xfdhC60iSmHo8aP/ZQ/odtnAu2u72qdrpm4PfRqzj8HDUKHKF+dpQvBBav
	 o0gmU+rA8N6pOu/WmKIDK6bMQkbU7fcEKd3hFWwpK0OUowR2buxWDdD/vo0Kp8/fkB
	 7HZl0vJ33ADp45XcUNdruhKGCLvr33Yq7MpaLUYK7x3wFMeV8KrUVUM1lIr1WMFTsz
	 ONw/eLDWdoyUeaOB/DdwVZfZoERCATUGVF+zIAXFX7GpN0zU76o23Y6QQdJx2Bo73N
	 z4ThVw+mFLNzw==
Date: Tue, 10 Feb 2026 23:03:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc: Alyssa Ross <hi@alyssa.is>, David Howells <dhowells@redhat.com>, 
	Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>, Xiu Jianfeng <xiujianfeng@huawei.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYurI7J08tHu5xQD@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aYJSDDwK1T9xxca1@mbp.qyliss.net>
 <aYJZ31jO5ZE1Z6Xp@devuan>
 <252F93CE-E2C6-4D5A-9B2B-1B4907EEE0BA@gmx.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6pwv23hlik5gtvpo"
Content-Disposition: inline
In-Reply-To: <252F93CE-E2C6-4D5A-9B2B-1B4907EEE0BA@gmx.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de];
	TAGGED_FROM(0.00)[bounces-5096-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[archlinux.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 55AFA11F981
X-Rspamd-Action: no action


--6pwv23hlik5gtvpo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc: Alyssa Ross <hi@alyssa.is>, David Howells <dhowells@redhat.com>, 
	Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>, Xiu Jianfeng <xiujianfeng@huawei.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYurI7J08tHu5xQD@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aYJSDDwK1T9xxca1@mbp.qyliss.net>
 <aYJZ31jO5ZE1Z6Xp@devuan>
 <252F93CE-E2C6-4D5A-9B2B-1B4907EEE0BA@gmx.de>
MIME-Version: 1.0
In-Reply-To: <252F93CE-E2C6-4D5A-9B2B-1B4907EEE0BA@gmx.de>

Hi Heinrich,

On 2026-02-03T21:47:57+0100, Heinrich Schuchardt wrote:
> Am 3. Februar 2026 21:27:44 MEZ schrieb Alejandro Colomar <alx@kernel.org=
>:
> >Hi Alyssa,
> >
> >On 2026-02-03T20:53:33+0100, Alyssa Ross wrote:
> >> On Tue, Feb 03, 2026 at 08:50:01PM +0100, Alyssa Ross wrote:
> >> > This is true for Fedora, where this page was sourced from, but I don=
't
> >> > believe it has ever been true for the mainline kernel, because Linus
> >> > rejected it.
> >> >
> >> > Link: https://bbs.archlinux.org/viewtopic.php?pid=3D2088704#p2088704
> >> > Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKB=
yqOzzMufBoovXVnfPw@mail.gmail.com/
> >> > Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kerne=
l Lockdown feature")
> >
> >I've now CCed you in an email documenting the format we use for these.
> >It should be:
> >
> >Fixes: bb509e6fcbae (2020-10-16; "kernel_lockdown.7: New page documentin=
g the Kernel Lockdown feature")
> >
> >I'll amend that myself.
> >
> >> > Signed-off-by: Alyssa Ross <hi@alyssa.is>
> >>=20
> >> Just noticed there's a long-open bug for this as well, so additionally:
> >>=20
> >> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=3D213577
> >
> >Thanks!  I'll keep the patch for a few days, in case anyone wants to
> >comment.
> >
> >
> >Have a lovely night!
> >Alex
> >
>=20
> Can we move the information from the Notes section to replace the
> removed statement? What causes lockdown is central for users.

We can do that, yes.  Although, I prefer doing it in a separate patch.


Have a lovely night!
Alex

>=20
> Best regards
>=20
> Heinrich
>=20

--=20
<https://www.alejandro-colomar.es>

--6pwv23hlik5gtvpo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLq0IACgkQ64mZXMKQ
wqnshA//Z/MuJFNZakUFi9t4tuWFlynkPU8TK3w0fD3lSpE7fWq3i00GsdJLJPv0
a63o5Udj6zcnw0AZeHoumnIzrLrYNlxuASo517sYMTzpWQ8drvJYtPU+kShbPBi+
g37u0dzKndq3CIUEGdF0h526tfNATX87aTM+8Ak42531pt4zaXSKbwkLgbBZod4y
Oa6MfGNpmjpnL8OxaIvCYh+FpEtvxVzudRKWxyUiyOS93jPpezqbG4XDbIMV6k8D
1/T6LSddG3Tf/tGu6x1eWKu0mZF++NxVdoYjMWbNPH6ut6PpN6oKkoa4DSsMWGKv
Se9QAO6NoNZqxfDOaiyfCM0vJuz82TwjyflYY+pxeG248sIYknDSt1AFgJ5Abm1Z
2KB9oGWhGstYQJ/yCloVegQ0H8M6TTSnt0TWxQXuTDvNPC70oSF6Wu50wHyK50IY
l+gmU77lCEasfYdl6cr4yDIYHySs6RIuGfjjkX976dRAmdpB3Mew18l38UjHoEdM
z5+/EujDtyF1vuz+sNLDkyc8PE/F1fVSIBPxOgmXu9oHLCtrM6Ophg/zZmwNry38
vLoWgGc+yQ4tVXx5uhsLyLeC6wwdj805hQWhOzRE6TvfoM0dHg9p/zaWeI0mqHE+
dmzVHbcG19WHUx3wRTl3ISAVVipPYpXxsjm/a6/EgSXMiBRiQsY=
=8qEe
-----END PGP SIGNATURE-----

--6pwv23hlik5gtvpo--

