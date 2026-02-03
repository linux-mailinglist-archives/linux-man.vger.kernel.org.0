Return-Path: <linux-man+bounces-5024-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CVxLUdagmlhSwMAu9opvQ
	(envelope-from <linux-man+bounces-5024-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 21:27:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33444DE7CC
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 21:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 10D3A3033276
	for <lists+linux-man@lfdr.de>; Tue,  3 Feb 2026 20:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CFC36E466;
	Tue,  3 Feb 2026 20:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzl2/udT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1DB36D516;
	Tue,  3 Feb 2026 20:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770150468; cv=none; b=pj6GmsYJpqd2VL1TKohdUmNy05jwd8orlpPja9fMxky1cOuDQ2/BDarHzSRkVjtEbsphUqioKW9UZIWMpYZm/5NbT3dIQ7NOEDkdy+D7xlOjsaBE3dyMlSapQf45NE5xbC7JNESDoKwreGUlPt5OWzP2iQ4ZHVSjhfhPyw9mkJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770150468; c=relaxed/simple;
	bh=6OsBdxQODrn04NwJWl4huUhSCW8tP4Rt3kI0ZcQ+9HA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bKqpJXP9IpLv/o5/5JwarmM4HvOFwl7Y91gsShQYBRAe11K0A4Y1/ZDggxx/YtWrKVrsQJMgWswnHz3lOCjOMak/VtK2Qo1+FstAsP6YYLF8BXgsy+DRk5PSWZOboAlRLNoYhw5tZSIEzOM13rprebVrIexw4RSVbXSUtqjI8es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzl2/udT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1F0CC116D0;
	Tue,  3 Feb 2026 20:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770150468;
	bh=6OsBdxQODrn04NwJWl4huUhSCW8tP4Rt3kI0ZcQ+9HA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fzl2/udTaKsiQEd8GMwlEAWzHXrcjx2ggVW6j0kNWheTxg8LoN6xJMOTc1NZXZ8lT
	 sXn2g03aLtHhvoqHBphNg89+O47KjOVro/cdZy4GgFxmJ0ALylyOYOgmG3r3GaQJ/9
	 R8zVNQZ4BNM+ESi3AuKcS6tKX86jgTmYAfZwPHv4Ti9/t8f1Odoljvqu+2wDJYg4KK
	 jl+2NkZzeA9Xd1VFNA5UUE9a/hE2mhMk9QTodVeTTjQIcx4spf3pmet8Mhj52UkmPG
	 Ij3xS9uqgxTyggeV5EgLhnYeRfJ9FJ13sfOR8tgCO8bypZF3t44LQCLnDhOoO3kS8F
	 aVxZVfT3YEm3g==
Date: Tue, 3 Feb 2026 21:27:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	David Howells <dhowells@redhat.com>, Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>, 
	Xiu Jianfeng <xiujianfeng@huawei.com>, linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYJZ31jO5ZE1Z6Xp@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aYJSDDwK1T9xxca1@mbp.qyliss.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mg2i3vktgjonbmr3"
Content-Disposition: inline
In-Reply-To: <aYJSDDwK1T9xxca1@mbp.qyliss.net>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmx.de,redhat.com,oss.cyber.gouv.fr,huawei.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-5024-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,archlinux.org:url,alyssa.is:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 33444DE7CC
X-Rspamd-Action: no action


--mg2i3vktgjonbmr3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	David Howells <dhowells@redhat.com>, Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>, 
	Xiu Jianfeng <xiujianfeng@huawei.com>, linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYJZ31jO5ZE1Z6Xp@devuan>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aYJSDDwK1T9xxca1@mbp.qyliss.net>
MIME-Version: 1.0
In-Reply-To: <aYJSDDwK1T9xxca1@mbp.qyliss.net>

Hi Alyssa,

On 2026-02-03T20:53:33+0100, Alyssa Ross wrote:
> On Tue, Feb 03, 2026 at 08:50:01PM +0100, Alyssa Ross wrote:
> > This is true for Fedora, where this page was sourced from, but I don't
> > believe it has ever been true for the mainline kernel, because Linus
> > rejected it.
> >
> > Link: https://bbs.archlinux.org/viewtopic.php?pid=3D2088704#p2088704
> > Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByqO=
zzMufBoovXVnfPw@mail.gmail.com/
> > Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel L=
ockdown feature")

I've now CCed you in an email documenting the format we use for these.
It should be:

Fixes: bb509e6fcbae (2020-10-16; "kernel_lockdown.7: New page documenting t=
he Kernel Lockdown feature")

I'll amend that myself.

> > Signed-off-by: Alyssa Ross <hi@alyssa.is>
>=20
> Just noticed there's a long-open bug for this as well, so additionally:
>=20
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=3D213577

Thanks!  I'll keep the patch for a few days, in case anyone wants to
comment.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--mg2i3vktgjonbmr3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmCWkAACgkQ64mZXMKQ
wqkuhxAAsXvExNIPM/FgAa8Ye39Wh0QZlIdKWhDuwn/Pcwfxf81CZLk5G3SoQdG/
wAUpbMX/9bwWIxaLOQV7CM6377s8l6KLomrXKJJO11flple9UknyYQ70gW1Pm6/X
ekuKX/mbDNNL2BJBOEeLCeFIa+oJ9D0VAz4pkXZR9sNXlkcaT4nX+4nzbFRcwN5g
RDLsyEpcGIfnA8DKWSJWGnClN2hLilvPrdfHo3QY8156LgvpWCvLVw9OKRFH+Mxc
PxmTSRSqugxtww/0AqBMYIQxhXApa80kM7TqmSwrW0K/N7m4Yp9kmYaN4g9Rsgs8
LkhidBvi1GOdaKUOwvF03rCx/0YayWnTWhFzZa0zIVS3Krpi2TTAbP8Z8gG0evH2
9gHm+PeDuNrFQyChEB3HwX1DwoHkUyPUfBbiAF1iq32avQheFCrqutCeGe6DY7G6
EWD7KPz8rXUtSIDkjC57MejQ4UayuUyXugotsgA5CWiGawG7VIT9e5RXtx/CsRB9
zir+O83VgjNQ7MkRItszpGyRC3uEyLtgmEr/yEKkR6oBZ+uSup9TRNc5hiRIgpkH
Gnp2SeX5Pz9NZVFxLWf0VN9OZm0ZiGzoXc0e90zw1rgLxVnTvR2GXaE7mxqAW/pv
il4AdVtVhZpq0ypmXzw3WFHkiU68A27ILsbWPLPVZhagyV86Wr0=
=j9+F
-----END PGP SIGNATURE-----

--mg2i3vktgjonbmr3--

