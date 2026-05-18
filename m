Return-Path: <linux-man+bounces-5542-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMvzCJiTCmrL3gQAu9opvQ
	(envelope-from <linux-man+bounces-5542-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 06:20:40 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9D15659ED
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 06:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FDA23016537
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 04:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B16437FF41;
	Mon, 18 May 2026 04:20:37 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFBD376BC2
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779078037; cv=none; b=p+bHCs8J7IaRJTGhvJU0/PG9igkBOithFmjJuk+qfgqNRrtGA359VpCjn+1lv0CMOfTCz8UP5smiC9Dl39xvtZ1Yn0Y+z20L/8/VFJfqdg4Jf4xDWBw0nSZpCPdIizdlwYll6F+kibYggPD4x9f93hIed53xoLlE+kels4nVrBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779078037; c=relaxed/simple;
	bh=Lf1VH1HLgoIZLhKO45NQQ0kBQODcD5Ndfm65OtQM9+g=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=dYk+IGFHv+F1G8Cp8EOELFLGO/+x0JCyXgJq0O/HNVVGNVZZpmpyNyFwmxoj6A7AN3FkaE/7LZPXTPEx5PLHCrmxQWKyHFHrHsY4mjulffQDGwdUEiLxbnKI/af3dkT0KM8Fe8LnF3854OyW0Vlc+ibG5TlDcWPG+xuPc9q8bl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=disroot.org; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E7A262707D;
	Mon, 18 May 2026 06:20:31 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tc4ms2BepyIg; Mon, 18 May 2026 06:20:31 +0200 (CEST)
Date: Mon, 18 May 2026 05:20:27 +0100
From: funsafemath <funsafemath@proton.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/seccomp_unotify.2: wfix
Message-ID: <agqTcfOqY8Jq06Ff@nix-mail>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1173;
 i=funsafemath@proton.me; h=from:subject;
 bh=k3L2VFzMBQ5exngDtEkmh8eHMNP065y4LNMT4e1eUpQ=;
 b=owGbwMvMwCV2QvA6L+scLT/G02pJDFlck75wPLfoZuT9t64yUHP6iswlGdG6jlPCy7c9bFr7+
 eMpmQVyHaUsDGJcDLJiiiwSC+/4Sumqf7b/nKoKM4eVCWQIAxenAExELoeRYcvT2b+j8rYxTDsV
 03N2v+RpY73bS49m92a/j+w5XiEpos3IsIrnkPCi+8e3aGsEKb0OyZLvCGI4/2rLfh/pRplt7le
 5mAA=
X-Developer-Key: i=funsafemath@proton.me; a=openpgp;
 fpr=B07EE98D22F23DFB077429C0DF66F4774CE714D5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qqtyldpianwnowfz"
Content-Disposition: inline
X-Rspamd-Queue-Id: 7E9D15659ED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[proton.me : SPF not aligned (strict), No valid DKIM,quarantine];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5542-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funsafemath@proton.me,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,proton.me:email]
X-Rspamd-Action: no action


--qqtyldpianwnowfz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] man/man2/seccomp_unotify.2: wfix
MIME-Version: 1.0

There are two documented flags, but the sentence states there is only one.

Signed-off-by: funsafemath <funsafemath@proton.me>
---
 man/man2/seccomp_unotify.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
index a5c1a4423..0b4fc7239 100644
--- a/man/man2/seccomp_unotify.2
+++ b/man/man2/seccomp_unotify.2
@@ -716,22 +716,22 @@ .SS SECCOMP_IOCTL_NOTIF_ADDFD
 .in
 .P
 The fields in this structure are as follows:
 .TP
 .I id
 This field should be set to the notification ID
 (cookie value) that was obtained via
 .BR SECCOMP_IOCTL_NOTIF_RECV .
 .TP
 .I flags
-This field is a bit mask of flags that modify the behavior of the operatio=
n.
-Currently, only one flag is supported:
+This field is a bit mask of flags that modify the behavior of the operatio=
n,
+as described below:
 .RS
 .TP
 .B SECCOMP_ADDFD_FLAG_SETFD
 When allocating the file descriptor in the target,
 use the file descriptor number specified in the
 .I newfd
 field.
 .TP
 .BR SECCOMP_ADDFD_FLAG_SEND " (since Linux 5.14)"
 .\" commit 0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c
--=20
2.52.0


--qqtyldpianwnowfz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQYodxNGi0n8z/zZSXIEdcNBZwqTgUCagqTigAKCRDIEdcNBZwq
TsX1AQCOPJt7YMckOlHsHRib0Oxg2suhe0BOuAz5jhflEvq0twEAk7olH3a8blzS
P/6Hu8tvSnx33uA71/NOHICJDg2+UgE=
=y3TJ
-----END PGP SIGNATURE-----

--qqtyldpianwnowfz--

