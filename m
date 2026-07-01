Return-Path: <linux-man+bounces-5683-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yFYrLCNQRWrK+QoAu9opvQ
	(envelope-from <linux-man+bounces-5683-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 19:36:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC306F063F
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 19:36:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Pyr5tELV;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5683-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5683-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFB3C3012E98
	for <lists+linux-man@lfdr.de>; Wed,  1 Jul 2026 17:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77ED63815E8;
	Wed,  1 Jul 2026 17:36:25 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38970495517
	for <linux-man@vger.kernel.org>; Wed,  1 Jul 2026 17:36:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782927385; cv=none; b=Qe53UznVBAel6+l4irM+I5gIo8FDs5vnuua65OpE0VNaEXd/95Y0bg9Uaiv+8q2LSq7SinKAffdEmOq8TBcmhrWfHgdfKTjoRr24/ylKgVshyobCnUqbqdeMw21s509ujjt1seNhLmytmGf57/r4jeDY4chPyIQjOYnO4fceUBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782927385; c=relaxed/simple;
	bh=41/N8Iy61/Nvm+OOrAPEsLuA0OYAhIWfvHfym0lazyU=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=YsyECP+l+n9RK5sBz3VjKF0xecj3y1zqox3DllOyQ5oFdSDKnwuvmNyQtC/uppj4yh8z1kgk6kT27eKgrC8vl3QWIQrkWVBXn/Dtn58+GAmPmkfsHMx2oJNk8wO58Q6DHHQVe6cLWoaZo92uIrCKIbFv6RZ/KEPeZ7KiX8zulrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pyr5tELV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C456FC2BCF5
	for <linux-man@vger.kernel.org>; Wed,  1 Jul 2026 17:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782927384;
	bh=41/N8Iy61/Nvm+OOrAPEsLuA0OYAhIWfvHfym0lazyU=;
	h=From:To:Subject:Date:From;
	b=Pyr5tELVzqVMseVS0Q3RYMbOGZV0gZdtMl2LEcWV51HHf4NwqGOIHR5CU8agpZUjt
	 +zJTxFx3Z0nmo0h4m6yoPSy0fUSDmIl8YPXbRVfHx3aYjTP7806P+mHmLK1c1KUd4u
	 NEkSN2H4p1x4LEslm3x269w465Vd8Jxk2xv8aJPWLAtS4bhwujQo9u6/pGe0ve0M9M
	 FwT9rVah0GEeWAvG301a22V7WXnyT3q2ypBsis3gQ0Tdlq7eMrKkzrAYrQB4N/ytQw
	 K9lwOJPmmYQ6jc5YZBK6ITGyJiAks5gvuH2R+NtNF5cLQArO9Iymkq9JZKtBg6OHOV
	 GvXNmd/auKsQg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B25B5C53BC5; Wed,  1 Jul 2026 17:36:24 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: =?UTF-8?B?W0J1ZyAyMjE3MTJdIE5ldzogUkVBRE1FLmQvZGVwcyBpbXBsaWVz?=
 =?UTF-8?B?IHRoYXQgdGhlcmUgaXMgYSBEZWJpYW4gcGFja2FnZSBuYW1lZCBjaGVja3Bh?=
 =?UTF-8?B?dGNoLCBidXQgdGhlcmUgaXNu4oCZdA==?=
Date: Wed, 01 Jul 2026 17:36:24 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: jason@jasonyundt.email
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-221712-11311@https.bugzilla.kernel.org/>
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
	TAGGED_FROM(0.00)[bounces-5683-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,jasonyundt.email:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CC306F063F

https://bugzilla.kernel.org/show_bug.cgi?id=3D221712

            Bug ID: 221712
           Summary: README.d/deps implies that there is a Debian package
                    named checkpatch, but there isn=E2=80=99t
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: jason@jasonyundt.email
        Regression: No

README.d/deps says:

> Description
>         There are different kinds of software dependencies on which this
>         project depends.  For maintaining the health of this project,
>         the health of those dependencies is also essential.  The
>         following lists dependencies as <debian-package>/<binary>.

That same file goes on to say:

>         Build
>                 To build the project, there are many dependencies, some
>                 of which are strictly necessary, and others which
>                 improve the quality (such as linters).
>=20
>                 This list can be generated by the build system itself.
>                 Run the following command to print this list:
>=20
>                         $ make -R help-list-build-depends

When I run =E2=80=9Cmake -R help-list-build-depends=E2=80=9D, all of the it=
ems on the list do
indeed appear be written as <debian-package>/<binary> except for one. One of
the items on the list is =E2=80=9Ccheckpatch/checkpatch=E2=80=9D. There is =
no Debian package
that=E2=80=99s named checkpatch (see <https://packages.debian.org/trixie/ch=
eckpatch>).

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

