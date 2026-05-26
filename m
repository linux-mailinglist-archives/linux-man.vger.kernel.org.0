Return-Path: <linux-man+bounces-5605-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI8bDZukFWqJXAcAu9opvQ
	(envelope-from <linux-man+bounces-5605-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:48:11 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BDB5D6D37
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5CFE13018D6D
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 13:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3013BB111;
	Tue, 26 May 2026 13:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="Lh/i0Wjy";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="oTrMbCiD"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-c3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C163B6BE8
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 13:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802938; cv=none; b=HKqx7pvWaIaNDLh76brOk9XZ6Nqb4f5QX+9jJR5rrlDbJ+ldijLF5VSjUerFR8PW+p2J1qazy9KtyMwr1XuBUGMKz1o91MGMd4vJx1V+hAHtXFPwdt5QRrsvliW2qGh8Py7oI27b+flns+eRmmk/QiRDhq3/ahsoW1qNtGYJed8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802938; c=relaxed/simple;
	bh=PsuonDua0d0sMHe4y95wTefM+RDiaVT0hImG1aE2Wzg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n5L3sBRN7tOWXfrwDUaVlWUC3wV25eIhPAsLSZ8nfwJ8RbI8Cx1O35JCIZejn/IPHKZFgx45/e2eqoxQo3EZQFXJeHNgsyeI8aq/eiSxjF9Jufotw92x83DkAMazCt1r/aT5tsccv14ZAD+bNdYHVHiG8zzJ7eIqAwYNaiElJPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=Lh/i0Wjy; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=oTrMbCiD; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id DFFFE1D0010D;
	Tue, 26 May 2026 09:42:15 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Tue, 26 May 2026 09:42:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779802935; x=
	1779889335; bh=SMns0AizgHQecg/gLnkzXQPS/ehy7uDzfl4bVIRi2lc=; b=L
	h/i0WjyzFlu40Q8wYOpg3Vaielw//6njUGliCGMZkg546NsVchLAC0+NP/y8oi/d
	okYuItEBelB10VzcLW9XZ09vohNvVt51H4rO/NsWZo+A5I3vDr6/7+e0oiHwjuNT
	pylCSSUunOJQ43pznfGRwv+4MTnsWGbEalDBaIhW90ETdaFHq6MDm84AFhb5v8GF
	V1N8Vy1WL1Gq36+2FLmQFUJHiKzleJVjAfmwK/EOTB9ju93HdiIDxqMKYSv1X/Gv
	vP4tsLtj4qWE5BJ3+YDXB3mCYvylGoSNNmTjXYPZTT9F1hHu+xXw+VWSIwhrSV9v
	NQcn2lUFtwf82hzoGCq5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779802935; x=1779889335; bh=S
	Mns0AizgHQecg/gLnkzXQPS/ehy7uDzfl4bVIRi2lc=; b=oTrMbCiDXwaM81642
	AFjh9bkhiS17EDqd1OrjeR/LQq1EkdpUCiFoBdJ9XeVPFjkHCtUQBU5efjitfXcH
	isqC9QTWBG13h9738TiM/s3rm5QjcOUEvnAZcOOwBR/O2Qb4UhDyB6HDiUeR2R59
	o1B9xLtw5S2N6WmsUSebZr4sP9t/rogq44v2KneNesodSTk995nOOV3iyfEWrPDJ
	175/pa3DIl7t/e1lzZZEB3WGHnzHDh/Bd+/aMmcfuyeI4wG5QRr+C6fUU4PKwFip
	znF5dx17sRfvKBaCUwXFVt8W5Hemmr4YtV/tRhuL6XXU+tYgV76cf2H38U7wj4j9
	2ul9A==
X-ME-Sender: <xms:N6MVajqOL9J7cXq4I5xjqYb9N0BqSoOFseRC1zEwbAqlDm6M9Fm6Ig>
    <xme:N6MVaqORSxmfZ7rkeS3xHVEZYZMHpZV3jtoO1gU56fzL2cJEgu-4Ica2Y29ZI_HvI
    U_OVrF8BPoACdkW3T3s-nud99_5rINOzFHz7r4k7ykI6Gjv9AIh3PY>
X-ME-Received: <xmr:N6MVakqt77mUVxs310CvPo27C9pw9XwT8ZPl9RTsERQ7kKbBYBjH6k86L8QasA>
X-ME-Proxy-Cause: dmFkZTFxd05FKSwjYK98sxjZfnEaguNgmbkO96E9/sUnrZGjGgye4wZmt/Ic6rtJdcHZIW
    3//FyXDnAPZWcDl/2m+5C5IsDZPk+GLuu2B8rI+uRVdcLjBSQaOOZLOa+wj1oQtkVV8Bhp
    WtmpanqdGSitjyrzT2b6Pkutw5p5iBbq4Ria8BSGQgx/cneWSFK1H5BjkBZc7xkAcAMQ+/
    Rv2g5eDEYnTPqdUCqfDdBxWdlbC/8jofdT6MpQF8/jX84rElnpbBbagNC4dRH4Bg8YdXPs
    U1r7XWojbr+m14NCpvSu3BQS5JVzG4ZMz6Z/lJcP/h1EeFr3j6rrld2ilI9JN6jONfrTDi
    KrlLfJIw7gUDHRWBa0ywlK/ws5yCGvvStEctD0yhIr0Hpbwwdocsu+rSRnrEjFS3T+q6sa
    FMGe+0pbTC1xm4xfvRr96mn0kBb60ajO+D/23+1g39fr+/TDyumsdyITPd0F6lJV263eii
    6qqCIavRlJ2JkYv2N+F10A4tQtq9TBZvaGvFWh81ZWXbmskdLa4dHm1VIncwP7KnwKu1T7
    N+g7GYFxvy4aaQqaURRtALRvYbDhI9aXt2Oe4AD9/0n29MVeJFCjdn3jBv4kuUJ/0XfHft
    NoEuOA7aJfFXHSLcl9DsnZRZwfJ3vRcS2h7//reVQBNqOG1d94BpxpYUOPEg
X-ME-Proxy: <xmx:N6MVattFap3vAGzNJHX-0vbtg5pLs22qkr4DlI3jmTng40GLWQXaCg>
    <xmx:N6MVaj1YBC01Mr9A9RQrj3gLy07zOLzNyoBpiEog_hsvI55Hr6SP-w>
    <xmx:N6MVaoHXXilLZI7IsPxaclRMO3ghz4HQVG0v_WC-CVvUZ_HCPwSlIw>
    <xmx:N6MVausQrO-OkAn1GQjGEoD9FbvU8NNkIL1HsY5F0KEcRx0KL0t2UA>
    <xmx:N6MVaiVw_Pk2C_dkTNxlGS6MG0mukw6ihq7OfdOPWYyIC5OmYbKgwrM8>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 May 2026 09:42:15 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	Kiryl Shutsemau <kirill@shutemov.name>,
	Kiryl Shutsemau <kas@kernel.org>
Subject: [PATCH v2 5/6] UFFDIO_REGISTER.2const: Document UFFDIO_REGISTER_MODE_RWP and 1 << _UFFDIO_RWPROTECT
Date: Tue, 26 May 2026 14:41:48 +0100
Message-ID: <20260526134149.2831720-6-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260526134149.2831720-1-kirill@shutemov.name>
References: <20260526134149.2831720-1-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5605-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim]
X-Rspamd-Queue-Id: D3BDB5D6D37
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the new registration mode bit introduced in Linux 7.2:

  UFFDIO_REGISTER_MODE_RWP   Track every access (read or write) to a
                             present page in the registered range.
                             Cannot be combined with
                             UFFDIO_REGISTER_MODE_WP; both modes share
                             the same per-PTE marker bit. Anonymous,
                             shmem, and hugetlbfs ranges are
                             compatible.

Also document the matching argp->ioctls bit, 1 << _UFFDIO_RWPROTECT,
which the kernel reports only when the range was registered with
UFFDIO_REGISTER_MODE_RWP (which itself requires UFFD_FEATURE_RWP to
have been negotiated).

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 man/man2const/UFFDIO_REGISTER.2const | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/man/man2const/UFFDIO_REGISTER.2const b/man/man2const/UFFDIO_REGISTER.2const
index 50064c954b81..ded57cf301ad 100644
--- a/man/man2const/UFFDIO_REGISTER.2const
+++ b/man/man2const/UFFDIO_REGISTER.2const
@@ -72,6 +72,20 @@ .SH DESCRIPTION
 only hugetlbfs ranges are compatible.
 Since Linux 5.14,
 compatibility with shmem ranges was added.
+.TP
+.BR UFFDIO_REGISTER_MODE_RWP " (since Linux 7.2)"
+Track page faults on read-write-protected pages.
+Every access
+(read or write)
+to a page present within the registered range
+generates a notification
+once the range has been protected with
+.BR UFFDIO_RWPROTECT (2const).
+This mode cannot be combined with
+.BR UFFDIO_REGISTER_MODE_WP ;
+attempting to do so fails with
+.BR EINVAL .
+Anonymous, shmem, and hugetlbfs ranges are compatible.
 .P
 If the operation is successful, the kernel modifies the
 .I argp->ioctls
@@ -109,6 +123,16 @@ .SH DESCRIPTION
 The
 .B UFFDIO_POISON
 operation is supported.
+.TP
+.BR "1 << _UFFDIO_RWPROTECT" " (since Linux 7.2)"
+The
+.B UFFDIO_RWPROTECT
+operation is supported.
+This bit is reported only when the range was registered with
+.B UFFDIO_REGISTER_MODE_RWP
+(which itself requires
+.B UFFD_FEATURE_RWP
+to have been negotiated).
 .SH RETURN VALUE
 On success,
 0 is returned.
-- 
2.54.0


