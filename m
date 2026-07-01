Return-Path: <linux-man+bounces-5684-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wSTVJqdoRWr0/QoAu9opvQ
	(envelope-from <linux-man+bounces-5684-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 21:21:11 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E499E6F0CD7
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 21:21:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Z+CuXtDg;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5684-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5684-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2320F3024A5A
	for <lists+linux-man@lfdr.de>; Wed,  1 Jul 2026 19:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F3903DA5AC;
	Wed,  1 Jul 2026 19:20:38 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317323D7D8D
	for <linux-man@vger.kernel.org>; Wed,  1 Jul 2026 19:20:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782933638; cv=none; b=kFSGufS02YCsxI/uQWLzTZ5o9c1Olr6nKDggVCAlRebip2C+2RwydLnQnM6eF5NWIX9KJ8gprlIpR8siWB2JgA2zt+aHtXO7C/bYPBmqTI+CVc7zGhWnEQeuVxb94QKbXmynHjU3vXtKQB4upY0cYjSkcVQFkIC8NrShfgKXZjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782933638; c=relaxed/simple;
	bh=hres2H9GY84/1mRiOlf3CGEcrRcHdvqE+DDawpK3UM4=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FOiCi1/lem8DtXADuVbNhzCb3ccfT3/3moeKmt3SZGpQbpR4Qnwp2gZ+ufSb1Qsbc9lL83qAscWQgnf51rWsldCeVpfjqkj8fDW9/BgfKfX66s18tU67l1K4O/6IYrHFqoDmKxtpvm/18xBBVKLYscmpTR03EqDRzfITAiUlVWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+CuXtDg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC132C2BCF4
	for <linux-man@vger.kernel.org>; Wed,  1 Jul 2026 19:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782933637;
	bh=hres2H9GY84/1mRiOlf3CGEcrRcHdvqE+DDawpK3UM4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Z+CuXtDghMI5NsVwtVQxji8H3TFP3Mjll16lbvxqHCHYo09pqH9fxUXD2xxpNgjQL
	 /6iBf2Ybw0FykkAWDN3+l9q1e5nzo2pteEnO/siQzms/ULwenJr1NQXJAsgNmeSLVK
	 SC1yf1rCFqNCC4SSPWIh7kOL6XA7wq6YuSpwbysWQsAJmEsBwPc7fKyK3fdFQ7LJC2
	 iKqouJifejWOOpBU+dCP+TXEFIWrb8TrSu1wxHWLxnouKnzsvNFaOfWYfLP3xJdjNy
	 782v4RjSJaVes9YRe261/d+YUHiR6idPnelqeOBqcjNMt4+gloTgFMQRMC9UoPq1wu
	 7LiHR3nCnvDFQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id CAE2DC53BBF; Wed,  1 Jul 2026 19:20:37 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: =?UTF-8?B?W0J1ZyAyMjE3MTJdIFJFQURNRS5kL2RlcHMgaW1wbGllcyB0aGF0?=
 =?UTF-8?B?IHRoZXJlIGlzIGEgRGViaWFuIHBhY2thZ2UgbmFtZWQgY2hlY2twYXRjaCwg?=
 =?UTF-8?B?YnV0IHRoZXJlIGlzbuKAmXQ=?=
Date: Wed, 01 Jul 2026 19:20:37 +0000
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
Message-ID: <bug-221712-11311-KyQroSvTn3@https.bugzilla.kernel.org/>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5684-lists,linux-man=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E499E6F0CD7

https://bugzilla.kernel.org/show_bug.cgi?id=3D221712

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
On 2026-07-01T17:36:24+0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D221712
>=20
>             Bug ID: 221712
>            Summary: README.d/deps implies that there is a Debian package
>                     named checkpatch, but there isn=E2=80=99t
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: jason@jasonyundt.email
>         Regression: No
>=20
> README.d/deps says:
>=20
> > Description
> >         There are different kinds of software dependencies on which this
> >         project depends.  For maintaining the health of this project,
> >         the health of those dependencies is also essential.  The
> >         following lists dependencies as <debian-package>/<binary>.
>=20
> That same file goes on to say:
>=20
> >         Build
> >                 To build the project, there are many dependencies, some
> >                 of which are strictly necessary, and others which
> >                 improve the quality (such as linters).
> >=20
> >                 This list can be generated by the build system itself.
> >                 Run the following command to print this list:
> >=20
> >                         $ make -R help-list-build-depends
>=20
> When I run =E2=80=9Cmake -R help-list-build-depends=E2=80=9D, all of the =
items on the list do
> indeed appear be written as <debian-package>/<binary> except for one. One=
 of
> the items on the list is =E2=80=9Ccheckpatch/checkpatch=E2=80=9D. There i=
s no Debian package
> that=E2=80=99s named checkpatch (see
> <https://packages.debian.org/trixie/checkpatch>).

Yup; I've been wanting to package that for a long time, but never found
the time.  I'll try to dedicate some time to it soon.

Thanks!


Cheers,
Alex

>=20
> --=20
> You may reply to this email to add a comment.
>=20
> You are receiving this mail because:
> You are watching the assignee of the bug.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

