Return-Path: <linux-man+bounces-5685-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NHcaNjqMRWpLBwsAu9opvQ
	(envelope-from <linux-man+bounces-5685-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 23:52:58 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7161A6F1F89
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 23:52:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bvezEgKY;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5685-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5685-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 732E0300C307
	for <lists+linux-man@lfdr.de>; Wed,  1 Jul 2026 21:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D753C061D;
	Wed,  1 Jul 2026 21:52:55 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252A3BED38
	for <linux-man@vger.kernel.org>; Wed,  1 Jul 2026 21:52:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782942775; cv=none; b=nF/L9I6JtaU5LX1H80eeeJP1geIdQejzgTGvFK3mSoVovfq6RKw3Kv4Beedl0i843tC415+br/uXbLlKAOR5RR56TJuzoLYH3bU6oM2Q/M3pesj3rYuzknabIa2IMqjyCyxrX+tb+RXDfOlgN+tCyEfplCZluISA9rAps1iFins=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782942775; c=relaxed/simple;
	bh=AMfakiCZYr1sb+l4EzGBi3ncIsJRG7eOVbIpAVO0uDk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VBb3/6lTchofPGdPYqDAcYjt20NsPY66rHN69sz304vkeu8Yk9skcsTwQgtdegtGe9y3l8sOARVYUD4kIbM0bhwHk0Uvp5ohxQYydMlHedz+oTX0l9wTlJhyaLE8TrOw9Tljx5ZWI0F9U4z/Fv3uCzlLTiFuHAjTo9CzDx50fe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvezEgKY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96F3C2BCB8
	for <linux-man@vger.kernel.org>; Wed,  1 Jul 2026 21:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782942774;
	bh=AMfakiCZYr1sb+l4EzGBi3ncIsJRG7eOVbIpAVO0uDk=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=bvezEgKYIfB6hDdFA4rQBAWokihzAH4p0Ex5sKCvRQEY3abveTrVLXlPwlzcF0Gdi
	 SQSmxTgy8GLmYtvlv5/0VslFK7MzCnulRimEnSW5gb/DzSeH3xK6GuhLdFMeBVKDG1
	 mww4RXna9lAUbAg0YlyzBEPB1VLPFsjIFNJgnD8qMxh/8+vTTNm0Al7nklBuDPYtDp
	 bI2+ki16N9mQClxYz9u3fCSsS5E1o+N7B6O9Znflq/zsI27ZZKUonQKvgPUZkRsAi+
	 cRjqdPWwFet/XAbcI3EAle1Hk4wghI2YDBDcjT7DVLzdQzVQJlZcbfVUhiqW7X/i/H
	 uMgSBWIaTZnuA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B97C1C53BC5; Wed,  1 Jul 2026 21:52:54 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: =?UTF-8?B?W0J1ZyAyMjE3MTJdIFJFQURNRS5kL2RlcHMgaW1wbGllcyB0aGF0?=
 =?UTF-8?B?IHRoZXJlIGlzIGEgRGViaWFuIHBhY2thZ2UgbmFtZWQgY2hlY2twYXRjaCwg?=
 =?UTF-8?B?YnV0IHRoZXJlIGlzbuKAmXQ=?=
Date: Wed, 01 Jul 2026 21:52:54 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-221712-11311-kMPnLnTcpF@https.bugzilla.kernel.org/>
In-Reply-To: <bug-221712-11311@https.bugzilla.kernel.org/>
References: <bug-221712-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5685-lists,linux-man=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7161A6F1F89

https://bugzilla.kernel.org/show_bug.cgi?id=3D221712

--- Comment #2 from Alejandro Colomar (alx@kernel.org) ---
On 2026-07-01T21:20:36+0200, Alejandro Colomar wrote:
> On 2026-07-01T17:36:24+0000, bugzilla-daemon@kernel.org wrote:
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D221712
> >=20
> >             Bug ID: 221712
> >            Summary: README.d/deps implies that there is a Debian package
> >                     named checkpatch, but there isn=E2=80=99t
> >            Product: Documentation
> >            Version: unspecified
> >           Hardware: All
> >                 OS: Linux
> >             Status: NEW
> >           Severity: normal
> >           Priority: P3
> >          Component: man-pages
> >           Assignee: documentation_man-pages@kernel-bugs.osdl.org
> >           Reporter: jason@jasonyundt.email
> >         Regression: No
> >=20
> > README.d/deps says:
> >=20
> > > Description
> > >         There are different kinds of software dependencies on which t=
his
> > >         project depends.  For maintaining the health of this project,
> > >         the health of those dependencies is also essential.  The
> > >         following lists dependencies as <debian-package>/<binary>.
> >=20
> > That same file goes on to say:
> >=20
> > >         Build
> > >                 To build the project, there are many dependencies, so=
me
> > >                 of which are strictly necessary, and others which
> > >                 improve the quality (such as linters).
> > >=20
> > >                 This list can be generated by the build system itself.
> > >                 Run the following command to print this list:
> > >=20
> > >                         $ make -R help-list-build-depends
> >=20
> > When I run =E2=80=9Cmake -R help-list-build-depends=E2=80=9D, all of th=
e items on the list
> do
> > indeed appear be written as <debian-package>/<binary> except for one. O=
ne
> of
> > the items on the list is =E2=80=9Ccheckpatch/checkpatch=E2=80=9D. There=
 is no Debian
> package
> > that=E2=80=99s named checkpatch (see
> <https://packages.debian.org/trixie/checkpatch>).
>=20
> Yup; I've been wanting to package that for a long time, but never found
> the time.  I'll try to dedicate some time to it soon.

I've decided to entirely drop the lint-c-checkpatch target, and thus the
dependency.  The problem is solved.  :)

Cheers,
Alex

>=20
> Thanks!
>=20
>=20
> Cheers,
> Alex
>=20
> >=20
> > --=20
> > You may reply to this email to add a comment.
> >=20
> > You are receiving this mail because:
> > You are watching the assignee of the bug.
>=20
> --=20
> <https://www.alejandro-colomar.es>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

