Return-Path: <linux-man+bounces-5737-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jCCINaJYUWqZCwMAu9opvQ
	(envelope-from <linux-man+bounces-5737-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:40:02 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F0373E6E7
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:40:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DHwwjJVo;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5737-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5737-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4DC3301F9F3
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 20:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707B9386C0C;
	Fri, 10 Jul 2026 20:33:14 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4665636CDF3
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 20:33:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783715594; cv=none; b=o1OwNEKQOTHjn8zbfg5iRx57wVlKdeLjp8i6aCcD69uq8MkyIx4qZGVETGLNcjpGb670aWPot7CUWRcLmvjRGEj4R8J3LIjr/yBQ8TMO2fvnByg77iLlw82yu0cXvh6/QoHwY9I7oipwKCKjMl89/GmelZ6EDbtlDP6QxG/ZBn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783715594; c=relaxed/simple;
	bh=uVyrpJnN65Ci/jhkjqd/AUwjMAGcoVJ9KNJdJO688ZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yz32GfESKHT071abmlB5B9Jy1nM1e1iVRXgo/h4QNxeH79QUgKt9EXXnqDjFJLaTCF7F90m5t7QTDX+ZgMVkYmrxEqxuCkLLcoTqc8LgkR0uaz2xlVpQqLb9BRpEfb5QLWCYm1DIYNlcFFuhyyTeQ9u9HjGcLuIBtyBYJBALpio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHwwjJVo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 398111F000E9;
	Fri, 10 Jul 2026 20:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783715592;
	bh=oSFIC+k/sI8BV5IDg00YlEbSyR3Eq0oAk0VRpSYPf2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DHwwjJVo/5bZMOshRy9gULMEwP8sVRsqBaPa2uiK4fXdyAq7u37lw4PxpENTnDSBP
	 CTMLLKRFfFuokf9raBfw2+E7vEc70c33Z7tnHDGEvCs1f/glA49km77JWprOLz/UnU
	 oIjan4XbhoCsosAqUKrVDuGyyffxghu1M3MyGdBTsHPfkvW8QzL/eNQtPOXnwrOXcE
	 HaB0lzbxRXjq5bbtSHWN2qUA4zoO6mW1UE+zIcYdjKQ6J2ZP7rqnMFMl8QS0b8gLtb
	 iqSYm0NjTfxQtj8xPjo/SF04bYWHXuxMLz6zcRXbibfD+C5ZZdje23EweHa/h4fGd4
	 lPRXZVHWUPt+g==
Date: Fri, 10 Jul 2026 22:33:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alFWqYWKJkQQxtJ6@devuan>
References: <alEAgbFxQi9oHME3@devuan>
 <xnse5q90jp.fsf@greed.delorie.com>
 <alFL4juvzxVkx25G@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dcwsl3eai5lbbqxu"
Content-Disposition: inline
In-Reply-To: <alFL4juvzxVkx25G@devuan>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dj@redhat.com,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5737-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65F0373E6E7


--dcwsl3eai5lbbqxu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alFWqYWKJkQQxtJ6@devuan>
References: <alEAgbFxQi9oHME3@devuan>
 <xnse5q90jp.fsf@greed.delorie.com>
 <alFL4juvzxVkx25G@devuan>
MIME-Version: 1.0
In-Reply-To: <alFL4juvzxVkx25G@devuan>

Hi DJ,

On 2026-07-10T22:07:00+0200, Alejandro Colomar wrote:
> > I looked for ld.so.conf.5 but didn't see one (which kinda surprised me,
> > but a lot of ldconfig isn't documented either in the man pages or in the
> > glibc manual) so went with "what was there".  I have a slight preference
> > for "get this change in quickly" as glibc is releasing with the new
> > funcionality soon(ish) but if you want me to split these two out, I can
> > do that too.  Or do it later.
>=20
> I would very much prefer to split these out.
>=20
> An incomplete ld.so.conf.5 page would be fine; we don't need to make it
> perfect.  But the separate manual page would help keep this
> documentation reasonably organized.
>=20
> I can help to get this quickly in.

I have added a small ld.so.conf(5) manual page (already pushed to
master).  This will allow you to add stuff there.  If you want to add
a tunables.conf(5) manual page, you can have a look at the ld.so.conf(5)
page.


Cheers,
Alex


--=20
<https://www.alejandro-colomar.es>

--dcwsl3eai5lbbqxu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpRVwUACgkQ64mZXMKQ
wql91xAAh8Xyw2Y3l8/MBsaVkBvzy8vPUPP+MUMbkAb+ADjauOZh/9bzKSeX5w+n
ka1fWLb7eu1kEQhAowDvUYsl7snw5e1AJ5LDPOiZAqfij7GG9eUE6AClv6SnVLu7
F9syLau4SCMfugoiVege57OMhk0ZMi2F0bDH9OTeqnW/y4KVxA6uQbWQ+6UobtHT
Tr3WltqsWpGweqEMRESfwkhSazNLXrD6SwXgXLHGz2PCgorCwqqSXWAam6x+vCHx
gZwgX/9MjhoebJPbqrDxipRlrAcxOxnaZySmeJBiajrhV8UKz67uvYyLdZ3syAlu
sDAjgOjv5UTP1H0rpNE1sJdfGTMHSqW7atohioFS42PcHCqwBnHa9xvdHX2hpmrK
JTw7OmvrchPB+GwUd4dIWOptj9KU2Ogc8NcOZJpmMDilJIdw1ohJXepizCKQeNvu
3CEYpekyT8o8hbPl8yassTYF6QzRyfcJ+ZC0Kq65NsR7o0JSjppV4Hfiz2woEG5s
04FP2PgOn2dCkGAjjRllVVw1T1B195RbvJzmu5gOlDUX6D3hM6opS4jcqN8ffPkA
4XRlS+1xz+82Iy+WayGUsBIXqKwJx4NtzZTC9hTDzQibFbPoD1Eqc0e1V27JLOaq
xBaw0l2neZXP4UVER5qQkrT2c5bNPnlkIcXBNHarvhkAVWmjVR0=
=snmD
-----END PGP SIGNATURE-----

--dcwsl3eai5lbbqxu--

