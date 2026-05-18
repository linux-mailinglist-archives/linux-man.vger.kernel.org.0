Return-Path: <linux-man+bounces-5543-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eUIkAZepCmoK5gQAu9opvQ
	(envelope-from <linux-man+bounces-5543-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 07:54:31 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FBC566772
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 07:54:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2B28300F9F5
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 05:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98827380FD4;
	Mon, 18 May 2026 05:51:08 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716543DA7CA
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 05:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779083465; cv=none; b=ARb00vtlC4KYk9bhYGENi3mX/ecfqRs6Fff7q2MX55Bam54/lkYqJLThnsJA3/ccRUvG9uURGXqQxOTEx7RM2voQ0u04tuxdixBHLUhukOi/uTyb8L9dkGTLZW+Sn6In/fGHm+HppqYuNeXWqN/RKnwdbh0tOs/apM+zpMNC3dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779083465; c=relaxed/simple;
	bh=8ezwosqfreL+dwXd+rndGKo9xks52ZgMJWdDr8Dzw8k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=mfIaRkvl6Q1gUp4ZSM9lgWmjMzeKjck+G1rRFB4/ApwrZCaQnnC0W8khp/bPJGkyb83huWzB8A3sUdD0ZG+7fsrWmEVDRadbmLfKpCt636nnqhE8LjK/43IsrKqHfs8yWasEdWODcxq7d6dsHL2XHTd+NUa5CSApmqzBASKbgOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=disroot.org; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4B8D42756F;
	Mon, 18 May 2026 07:50:56 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wdnxBDz-5nro; Mon, 18 May 2026 07:50:55 +0200 (CEST)
Date: Mon, 18 May 2026 06:50:47 +0100
From: funsafemath <funsafemath@proton.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/seccomp_unotify.2: Document
 SECCOMP_IOCTL_NOTIF_SET_FLAGS and SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP
Message-ID: <agqooRyZy65sjFtl@nix-mail>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2319;
 i=funsafemath@proton.me; h=from:subject;
 bh=j8lHGvALPQVAHTN6LQdcZG7ASTMpjs9S72ca6JInTsQ=;
 b=owGbwMvMwCV2QvA6L+scLT/G02pJDFlcy3vlqiZf4Nat++d8zz3J4qNg/4Hk7hnfeg85xB86F
 cq34LV3RykLgxgXg6yYIovEwju+Urrqn+0/p6rCzGFlAhnCwMUpABOpXcDIcL1l7paY5FuPAht6
 DDT7ekU80+9HbZ+/9pxHwNETDJWXNjL8Zp2zPlzfjH3SKp6HEldFA3LinHz/c/gY5D1K1V37siC
 GBwA=
X-Developer-Key: i=funsafemath@proton.me; a=openpgp;
 fpr=B07EE98D22F23DFB077429C0DF66F4774CE714D5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h6h7v5srgvqqfxbp"
Content-Disposition: inline
X-Rspamd-Queue-Id: 55FBC566772
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[proton.me : SPF not aligned (strict), No valid DKIM,quarantine];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5543-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funsafemath@proton.me,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--h6h7v5srgvqqfxbp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] man/man2/seccomp_unotify.2: Document
 SECCOMP_IOCTL_NOTIF_SET_FLAGS and SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP
MIME-Version: 1.0

Document the SECCOMP_IOCTL_NOTIF_SET_FLAGS ioctl(2) operation and its only =
flag,
SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP, which advises the scheduler to move the
supervisor to the CPU on which the target process is executing for faster
context switches.

<https://lore.kernel.org/r/20230308073201.3102738-5-avagin@google.com>

Signed-off-by: funsafemath <funsafemath@proton.me>
---
 man/man2/seccomp_unotify.2 | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
index a5c1a4423..70b2996a9 100644
--- a/man/man2/seccomp_unotify.2
+++ b/man/man2/seccomp_unotify.2
@@ -27,6 +27,7 @@ .SH SYNOPSIS
 .BI "int ioctl(int " fd ", SECCOMP_IOCTL_NOTIF_ID_VALID, __u64 *" id );
 .BI "int ioctl(int " fd ", SECCOMP_IOCTL_NOTIF_ADDFD,"
 .BI "          struct seccomp_notif_addfd *" addfd );
+.BI "int ioctl(int " fd ", SECCOMP_IOCTL_NOTIF_SET_FLAGS, unsigned long " =
flags );
 .fi
 .SH DESCRIPTION
 This page describes the user-space notification mechanism provided by the
@@ -881,6 +882,41 @@ .SS SECCOMP_IOCTL_NOTIF_ADDFD
 ioctl(notifyFd, SECCOMP_IOCTL_NOTIF_SEND, resp);
 .in
 .EE
+.\"
+.SS SECCOMP_IOCTL_NOTIF_SET_FLAGS
+The
+.B SECCOMP_IOCTL_NOTIF_SET_FLAGS
+operation (available since Linux 6.6)
+\." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b
+is used to modify the behavior of the seccomp user-space notification mech=
anism.
+.P
+The third
+.BR ioctl (2)
+argument,
+.IR flags ,
+is a bit mask that includes zero or more of the following flags:
+.RS
+.TP
+.BR SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP " (since Linux 6.6)"
+\." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b
+Advise the scheduler to move the supervisor to the current CPU.
+.IP
+In workflows where the target and supervisor wait for each other
+(do not execute in parallel),
+this flag makes the context switches a few times faster.
+.RE
+.P
+On success,
+this operation returns 0;
+on failure, \-1 is returned, and
+.I errno
+is set to indicate the error.
+This operation can fail with the following errors:
+.TP
+.B EINVAL
+An invalid value was specified in the
+.I flags
+argument.
 .SH NOTES
 One example use case for the user-space notification
 mechanism is to allow a container manager
--=20
2.52.0


--h6h7v5srgvqqfxbp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQYodxNGi0n8z/zZSXIEdcNBZwqTgUCagqotAAKCRDIEdcNBZwq
TpsCAQCFfmtEJpzXjFNiIUMDw6UVOsbERejdiIGyHI0ruUc5bQD/V0JXrycz5BFU
wbU7CRqDdNICtC9totHO1O6MGT4+UQ4=
=ih4v
-----END PGP SIGNATURE-----

--h6h7v5srgvqqfxbp--

