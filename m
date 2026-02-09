Return-Path: <linux-man+bounces-5077-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6A0aLFpzimknKgAAu9opvQ
	(envelope-from <linux-man+bounces-5077-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 00:52:58 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 164D211578E
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 00:52:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFEF2301D951
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 23:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A5E632B99C;
	Mon,  9 Feb 2026 23:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cftYrK4e"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE46F32B98A
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 23:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770681176; cv=none; b=pBDMwZn7RPTKlF/JLCiiI21WMrinvkJ//sOHCTTR7NIm13J38BslHWlTRPGNyjl96GSW1JmQWt/JNWIriJDWV1/8OragTQzVjMAjaC8O2kbdqFCcg2/a5Dq7aWgDdcUU8ZEwev9I1svwamW3PBZ3CXDfXo2UKvDAB9dG6534pJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770681176; c=relaxed/simple;
	bh=HaBPjMAl2E2rKNKkzRGa0m065YBTNz2L8RKEzg5JBes=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kH8rSYE1VEIhBPQQRDHT37Ifz9zNVuv0EqloQ8tpwH0o0l3w0pZ2RdsvivNL2xy8LSnCgx2LCESlB68Q2FoA/inwmN5MmHQnQaUTRaAdgwpWLgqAQYCWWIVuMWlLtwyM8RTUwIPyzF8MAx1zwKfR0/o+joaFCJOaMwnpA2IFK9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cftYrK4e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DDC8C19422;
	Mon,  9 Feb 2026 23:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770681175;
	bh=HaBPjMAl2E2rKNKkzRGa0m065YBTNz2L8RKEzg5JBes=;
	h=Date:From:To:Subject:From;
	b=cftYrK4eQTp0bVvaiM6H9hUHyj5/OSp5RIGoM8kwYXaNJoTeyDGMTUhcohrrXd6j5
	 PlbOGrEmLDm3VOO0cSUgPe7n1msaxZzyDzw9qstUAWp+1UkzaKInMFENizAu9jDYe+
	 6UMY16l/5ywsqL6piWialqzQGSsnmdusvhcka0oqhupDZRyWPJJ1CPyCRFx8Lj8U8n
	 2ru+8IgI1sxoDKOIN+bp07YsvhO3VkhBc/vAJpaP0PGN8Ghxr/Qm9jX13VRprvCTaW
	 6lg19vlUE8pKbzCm5tg8B4kFqNd2t64MLXK8GMOBIZ6DMhAnc3E92fOZ7C7bFl1oQ1
	 q556BLknBiuiA==
Date: Tue, 10 Feb 2026 00:52:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Second year of sponsorship
Message-ID: <aYprOnLo5WSP8Ljh@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2dohc2hlwlhdotxc"
Content-Disposition: inline
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5077-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url,opensource.google:url,lwn.net:url]
X-Rspamd-Queue-Id: 164D211578E
X-Rspamd-Action: no action


--2dohc2hlwlhdotxc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Second year of sponsorship
Message-ID: <aYprOnLo5WSP8Ljh@devuan>
MIME-Version: 1.0

Hi!

A few days ago, we signed the contract for the second year of
sponsorship of the project, for the period 2025-11..2026-10.

Some links to context, in case anyone wasn't aware of this:
<https://lwn.net/Articles/989215/>
<https://lwn.net/Articles/997193/>
<https://www.linux.com/news/celebrating-the-second-year-of-linux-man-pages-=
maintenance-sponsorship/?hss_channel=3Dlcp-208777>

We've lost a couple of sponsors this time, which means we're below what
would be okay for a sustainable amount.  However, I understand the
global situation is how it is, and agreed to continue for this period.
But the cost of living rises, so for having a sustainable project we
need more companies (or foundations --cough, LF, cough--) joining the
sponsorship of the project.

Anyway, I'd like to thank the two sponsors that helped me through last
year which couldn't continue this year.  Your help was very much
appreciated!

And of course, I'd also like to thank the three sponsors that continue
this year!  Your help was and is very much appreciated!

	$ cat SPONSORS;
	Google               <https://opensource.google/>
	Hudson River Trading <https://www.hudsonrivertrading.com/>
	Meta                 <https://www.meta.com/>

Now that the EU is interested in tech sovereignty, it might be
interested in funding projects that it needs, which might help this and
other projects.  <https://lwn.net/Articles/1053107/>.  In order to help
people know which projects they depend upon --possibly unknowingly--,
I've documented all the dependencies of this project (this might help
anyone needing to produce an SBOM).  See the file <README.d/deps> in
the git repository.  You can find it here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/README.d/=
deps>
I know for a fact that more than one of those projects would benefit of
some funding.

In the following days, I'll publish a new release of the manual pages.
This one is going to be huge.  :)

I've been too overloaded in the past few weeks with quite a few things,
including renewing the contract, a meeting of the C Committee (and its
preparation), and preparing this release.  Sorry if I didn't respond.
I hope you'll enjoy the new release!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--2dohc2hlwlhdotxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmKc0wACgkQ64mZXMKQ
wqnwhQ//YbsySaswL5jOo3xk8DN7s309s/P/vileinzSftMSql0kH4Pl1btG63Cq
eEzICw6SYSW2boh7PgoPSLKiM8/YkOcoVNqs5Ciq5hwv+B3+PpmzWCvBt0sXq7oY
GNX7JZoLDwPyfqKBgraJjaGBXPORR4pkBNRYRdagoXzxhMwM/Phu1/vl8ZVY3kpV
qSj47o0SzD28cWX46pDHEnqp7U3FtMVjps/nqSMYb3KUT4XvjB9kwynAOYJsM/hf
4x5Jz1WqfLA8n/SwG06bFrMNY4XCPOeHjZ3qe4OUgnlVMZUmW7aa/+ShWbFGQuch
fXGgnKD2VaPksOzM0ae7VRAz7C2BnyqKOXuKNXfxPLaS2FdPQlb+ys1c3eoHiaLa
c8qtxk2RncJpztlMDwQ0NCMSRN7W1/UK53nQNx8DDUanoaf0/Lj6NO6UjhU3pTpt
xZYipVZtO0vttBXVNFSyW9carRE7AQb6CapfaP07szAU2G0IP763JoU1rYiyblyY
V6xjGLu7MnL0b/0tdSEZBSyinmP8vh0hrbIB1yjf8d53mY7y3O/RO7bx5l9M7DOC
WvNKYp7QkFpr/N+Y2tGrHgKo5zo6pELL3CLDDJUHaRblob9+dNx6LfNhWtaCl2Hq
vrUIAWJuL1rplFmQaNNaVSCgTjtKszRXDydFEpeVX98nIF/gGFE=
=GalR
-----END PGP SIGNATURE-----

--2dohc2hlwlhdotxc--

