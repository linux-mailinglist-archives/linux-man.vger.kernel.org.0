Return-Path: <linux-man+bounces-5282-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OZbyDprPv2kq8wMAu9opvQ
	(envelope-from <linux-man+bounces-5282-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Mar 2026 12:16:42 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FDF2E8E6F
	for <lists+linux-man@lfdr.de>; Sun, 22 Mar 2026 12:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 777B8300C5AD
	for <lists+linux-man@lfdr.de>; Sun, 22 Mar 2026 11:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD2C12BE644;
	Sun, 22 Mar 2026 11:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=sicherha.de header.i=@sicherha.de header.b="pB3+CRo9"
X-Original-To: linux-man@vger.kernel.org
Received: from kiste.sicherha.de (kiste.sicherha.de [46.4.36.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377F8175A80
	for <linux-man@vger.kernel.org>; Sun, 22 Mar 2026 11:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.4.36.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774178198; cv=none; b=ovqk35F6s0EK7o6ghM8gLRHIhwXBkNP1T3BBdpcBY7URrWaP/eGuVNzX6UPrRv67bThtXvYs9Ehnkqcxn7qL0nXFLsMQjfChOp0vmk706nzKh08UN9WMkCR5/Tyuc/psl94Q8JXUhUnVHqTrDJxNdwIAGAyQjNkf7cxgO2lOksk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774178198; c=relaxed/simple;
	bh=tKs+K3b6SBypRYsnkrqsEIFvMHFrEh8RHYhKvPoPTdM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=o0YX6XBAOSC5GTl90bSO2fT8JYHF3yumaTCkA9d28Dn+6ESmhWDbrpqa7jwEXxE1rvXHzUUiEUlDjXjCtdaS05JISInr+ypJakd8joPzO6qg496BjVQi/WZ9DaSyv6f7r411+ElHcZkmN5k28wpeqQbgZPfBm2eWCCQbhEkn/wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sicherha.de; spf=pass smtp.mailfrom=sicherha.de; dkim=pass (4096-bit key) header.d=sicherha.de header.i=@sicherha.de header.b=pB3+CRo9; arc=none smtp.client-ip=46.4.36.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sicherha.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sicherha.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sicherha.de; h=
	content-type:content-type:mime-version:message-id:date:date
	:subject:subject:from:from; s=dkim20200822; t=1774177749; x=
	1775041750; bh=tKs+K3b6SBypRYsnkrqsEIFvMHFrEh8RHYhKvPoPTdM=; b=p
	B3+CRo9fcMA+6WdU3p6gaLenBkMPUfXYiK3GwwKM06+2e5AM7qczJvOW8Vv5p+XM
	bLV4tB7Qy7e1OdqJyubqY34/hxTeDx533FX3N8M+t/O3ps96sA3yCPRnyQQalhp7
	dO0ghNfy2V1ULhRNjouPUTvf8cHPRuyiZFw8w0ekht+xYE5c7uY4Nc37yHljt4gb
	txCc4KAK2Cx5Ku4bcBZjIfV0K1D6bp8nMs6o0FlRXzClCrxA2joFClgI03f9D24+
	7g29RuepDpnl/gxiI6hPbHAwf5+fv3t6ulH57n7vFYDLW4SqW2YLngCti+wA7KRD
	BHsdw9LQ9VDqBGchZVUkxofOKjhvDf9WM8HBJhkGNhosabnbYoxh+HtnIz4wb5+h
	SgTFwlddeU1+Gj+oOpvmjeRtp9q9LvSheVRnN9IqqoTHBrgOXHzRM8DO7vpjLPEp
	9UjbW9Ah9PHv7gBHXPOgbhDyyULJFt40vEZPAbmzPaFzjbZULQ1bVMJw2d/TvFYY
	SJvBG4+QDIRFvgbvwO5rLRQ3ykOOTxIxjWMYBfAAADZWGM5QgaNYooUQlN0T1rEP
	lkiKXTamqlwP+hqiNnbG1XI73oDxmGd3m1VjJtQkr0tr+QnkwxJKEXQhoobl2D2Q
	OGDmAjw7cyYwAbcBLbp5V+XYVC/Pxb6LbHWGRdCXwo=
From: Christoph Erhardt <fedora@sicherha.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject:
 [PATCH] man/man3/pthread_cond_init.3: Fix name of mutex unlock function
Date: Sun, 22 Mar 2026 12:09:09 +0100
Message-ID: <7245006.9J7NaK4W3v@framework>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart22461411.4csPzL39Zc";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sicherha.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MIME_GOOD(-0.20)[multipart/signed,multipart/mixed,text/plain,text/x-patch];
	R_DKIM_ALLOW(-0.20)[sicherha.de:s=dkim20200822];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5282-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sicherha.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fedora@sicherha.de,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 89FDF2E8E6F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart22461411.4csPzL39Zc
Content-Type: multipart/mixed; boundary="nextPart10027068.eNJFYEL58v";
 protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Christoph Erhardt <fedora@sicherha.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Sun, 22 Mar 2026 12:09:09 +0100
Message-ID: <7245006.9J7NaK4W3v@framework>
MIME-Version: 1.0

This is a multi-part message in MIME format.

--nextPart10027068.eNJFYEL58v
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dear maintainers,

please find attached a small patch for the `pthread_cond_init.3` man page that 
fixes a typo in a function name.

Best regards,
Christoph
--nextPart10027068.eNJFYEL58v
Content-Disposition: attachment;
 filename="0001-man-man3-pthread_cond_init.3-Fix-name-of-mutex-unloc.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="utf-8";
 name="0001-man-man3-pthread_cond_init.3-Fix-name-of-mutex-unloc.patch"

From b3d0b98ff055fb8bf2482430582ef1344e5b34dc Mon Sep 17 00:00:00 2001
From: Christoph Erhardt <fedora@sicherha.de>
Date: Wed, 18 Mar 2026 10:37:39 +0100
Subject: [PATCH] man/man3/pthread_cond_init.3: Fix name of mutex unlock
 function

The typo has existed since this man page was introduced with commit
31b1e42d557400b04c92701d8a37b518fb429462.

Signed-off-by: Christoph Erhardt <fedora@sicherha.de>
---
 man/man3/pthread_cond_init.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 88600b3a5..3aac94c3d 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -91,7 +91,7 @@ Nothing happens if no threads are waiting on
 atomically unlocks the
 .I mutex
 (as per
-.BR pthread_unlock_mutex ())
+.BR pthread_mutex_unlock ())
 and waits for the condition variable
 .I cond
 to be signaled.
-- 
2.53.0


--nextPart10027068.eNJFYEL58v--

--nextPart22461411.4csPzL39Zc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwp5/nkNlccrQ2UKH4yzDBS9Gs8IFAmm/zdUACgkQ4yzDBS9G
s8L41Q//THvu6dsfA1MD3mhsfGV/oEW/WKqCV7342BoX6EPHvTU0cZplxt0yllQQ
cNr97ADMm9iJ6LHD0pyJnt61IPlG6NM/LmMVlls4PPqPLIzh/db8sQArWPeGrOmd
0sxa1JYV/Vkodam94vMkOkE2p4DZkoXnN/c9BzNCwHLXY8ixm5+ThsmHmhowgXqn
/jFjtA7rtiuP01hIBmcktN43ATr2yKDP339roWwWxnpDFQhWTO5JvdNk3deAd1X4
UUP4FQKr7viYkq2CvM5YCyfc5px00wluYirRnbbOBLAQzTP3oDNTwZyTCGzVDxwX
mXL23pGB1tMLYXh76Ncq8pOj8Lkm6M90Lw1SDJc6cBT0xooqoWZVmEMQ8FftQgsO
pK7iKgs90M7jVAh+QSj8EKY5GKmdc5fa3KEgBXFuUvnQq/Q77LIpGyGuTUxAuSUJ
GPF4vZOdZMdOsDJ0tJOYVfeINL1jroRiHa3P7ulido1FkxBNAF3CGAm/ds+zqnTy
BpqFnuAg70Nq6MppCF5lfJXncsWgexM8pZCvSQclcHwAg1DtG28YrGKN8Trefhov
GwCP5YqCspOCcJRck9ZUeqn5RhsEcNbRxSPVNn5q5PL971hIx04y6Ui1/Hm5PcbL
hlINnm5zc2RE9bKQdQl8J4qkK/Z5Yy0gadmdS6JhUivg6sj7bfs=
=1RvM
-----END PGP SIGNATURE-----

--nextPart22461411.4csPzL39Zc--




