Return-Path: <linux-man+bounces-4964-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBWCKeaDeGnnqgEAu9opvQ
	(envelope-from <linux-man+bounces-4964-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 10:22:46 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7C591A35
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 10:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92F7D3050D6B
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 09:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B4292D8793;
	Tue, 27 Jan 2026 09:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="OsExwjsQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C52B22E3E9
	for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 09:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505640; cv=none; b=cTlmJJOrJH9pJfUQuyHTNzObL0BAoI9Z3vokWyQ/v/+MBg/53AEZjpL/flQ8IrG2Q1PhqXfiEziBLNIaR7W4rT1oDfuZ0Q8TKRGlAvzP/tixsee/z/6ojzBrevZsn+jKy5KnwpH4qbvCvXxckSxYKALgDq0qkXS6qSg/9UHVyR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505640; c=relaxed/simple;
	bh=4gNxB8okcQooL/azI+8uz/m69HgttMV18bjWglK+CJY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cPS6PCbVMyjO56+9pIPew5+Nbx2hoWjPckD1LJo5ls5yYlMYmcoFrrqatJ+BePYwEZkeyYuywUqt/Jm890yp4T/UbRTjEiO5GHqD1DzUl+R3y0jcPQToqySnjxPwleUFWMnkh8EUVdw+ONm4Wq6gAx92JHIeUgMAb75PZHxmv9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=OsExwjsQ; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769505636; x=1769764836;
	bh=GFgexlAKtuRLz8iI/staYNsr1aI81YFjXAhT5J6yNBo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=OsExwjsQHUIyqwl8XYJXqIhIw/ADUZ9HuV3SI7qU03NfCW3QlWmC/ZA8PiWmwbMDK
	 /uZTZnMmdyX5JKnKiRXzGYxtOnVe9OgPphVQb+xPQbBjPTMZmGOMGZfCEQ5tNsURvX
	 n8UMxJI3maBx2WzA2fJEJskdIqxW5gjTQT4WI0rQpiPDjHuI1WqZXqZDaPfa57z/9K
	 oWwwg6wYdIaqhmV/nRSQnk5sq9Adr03LsB8OM6d3CWWl4LPze90swRyaeypQVX33iI
	 dI27SAlSDiJQdF74RkGPohww5621yz+M85fjs+fqtnM1a0plcNrlFIjkB2iMi3PObB
	 pgt+aNhq5v6lQ==
Date: Tue, 27 Jan 2026 09:20:31 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [RFC PATCH v1 1/2] src/bin/sman: Add script
Message-ID: <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769497513.git.sethmcmail@pm.me>
References: <cover.1769497513.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 578d83ca5853ac2e79938453adcb77116bf43e19
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ed675e319b472d295d05b4c8c65fefba949ebaab78df796934267c702551886f"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4964-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 1B7C591A35
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ed675e319b472d295d05b4c8c65fefba949ebaab78df796934267c702551886f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [RFC PATCH v1 1/2] src/bin/sman: Add script
Date: Tue, 27 Jan 2026 19:20:17 +1000
Message-ID: <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769497513.git.sethmcmail@pm.me>
References: <cover.1769497513.git.sethmcmail@pm.me>
MIME-Version: 1.0

Add a new bash script 'sman', which displays only select sections of a
given man page.  For example, the SYNOPSIS of stat(2), or the STANDARDS
and BUGS of printf(3).  Similar to mansect(1), except it displays the
rendered man page rather than the associated source code.

It can parse a formatted man page, displaying the specified sections
with bold and italic text if MAN_KEEP_FORMATTING is set.  Which makes it
more useful than manually isolating the wanted page sections with awk(1)
or sed(1), which may remove the formatting.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 src/bin/sman | 54 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100755 src/bin/sman

diff --git a/src/bin/sman b/src/bin/sman
new file mode 100755
index 000000000000..8bc239d16e96
--- /dev/null
+++ b/src/bin/sman
@@ -0,0 +1,54 @@
+#!/bin/bash
+#
+# Copyright, the authors of the Linux man-pages project
+# SPDX-License-Identifier: GPL-3.0-or-later
+
+name=3D"$(basename "$0")"
+
+# fail [error message]
+fail() {
+	(($# >=3D 1)) && echo "$name: $1"
+	echo "Usage: $name [man section] <man page> <page section>..."
+	exit $#
+}
+
+(($# =3D=3D 0)) && fail
+(($# < 2)) && fail "Too few arguments."
+
+[[ $(which man) ]] || fail "Failed to find man(1)."
+[[ $(which sed) ]] || fail "Failed to find sed(1)."
+
+[[ $MAN_KEEP_FORMATTING ]] && export MAN_KEEP_FORMATTING=3D1
+[[ $MANWIDTH ]] && export MANWIDTH
+
+# There are currently no man pages whose name starts with a digit.  So
+# its fair to assume that if the first arg starts with a digit, it's
+# referring to a man section.
+if [[ $1 =3D [0-9]* ]]
+then
+	msect=3D"$1"
+	shift 1
+fi
+
+mpage=3D"$1"
+shift 1
+(($# =3D=3D 0)) && fail "No page sections specified."
+
+# Check man page exists before getting the same "No manual Entry" error
+# for each user-specified page section.
+man -w $msect "$mpage" > /dev/null || fail "Failed to find $mpage."
+
+for psect
+do
+	# If MAN_KEEP_FORMATTING is set, the section headers should be
+	# in bold.  So wrap regex in the corresponding ANSI escape codes
+	# in this case.
+	man $msect "$mpage" |
+	if [[ $MAN_KEEP_FORMATTING ]]
+	then
+		sed -En $'/^\e\[1m'"${psect^^}"$'\e\[0?m$/,/^\e\[1m[A-Z][A-Z ]*\e\[0?m$/=
p'
+	else
+		sed -En '/^'"${psect^^}"'$/,/^[A-Z][A-Z ]*$/p'
+	fi |
+	sed '$d' # Remove trailing section headers.
+done
--=20
2.47.3


--------ed675e319b472d295d05b4c8c65fefba949ebaab78df796934267c702551886f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml4g18JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmftDJCuO5jZm1U6SliitIjAFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAA7SAP9iNnKChxpu+/blr6iVR4sQ0nbaaYw4KrNk/q9O
ihmj+AD/bQVWBi4uZbg0h0rWpShKPUY3qTt0zZB5nZ6Mx6vbtAg=
=tfXm
-----END PGP SIGNATURE-----


--------ed675e319b472d295d05b4c8c65fefba949ebaab78df796934267c702551886f--


