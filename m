Return-Path: <linux-man+bounces-5593-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DrEaCeVAFGpGLQcAu9opvQ
	(envelope-from <linux-man+bounces-5593-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:30:29 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6867C5CA84B
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD7C73031AD4
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 12:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC13D382363;
	Mon, 25 May 2026 12:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="OUORhpsx";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="QkGPupTq"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24745382293
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 12:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712120; cv=none; b=DouN5HWGEi4Ui1JK83pK1R+HatwNLA2W7Mv9iAyxYGfO+YSv4iAp/xVrVAIBbqeqzmyETOnu27WfuruBtbS4IGf1M4y0Kk8hkUE9Zqj1iOueAtXLrXv7i6lrxq3NYDgoq3fQe995IOgpZtLNh+MB8NZuFst+YcfOG3uOwE8tXsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712120; c=relaxed/simple;
	bh=EPzv9v3wyWjUbd2+1TMjRfY/0OIVt0Jjh64XIsidrSg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ufMrLOda39QXooWXhxjwa6gHrQlowbE6LEa/F+gqV+BzJCASXmv/pBNaX6NTUKCjQH4Y9/pZYehnwiZsN9+S3F1Amwxdks0urn+OmZMIqOAl8gzbBlsXKhKKqqIO+Zqi2JZwS2zs26uvW9qEiqWNNssX/04rAFBwm6fY+YukxrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=OUORhpsx; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=QkGPupTq; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 4B4CE7A0074;
	Mon, 25 May 2026 08:28:38 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Mon, 25 May 2026 08:28:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779712118; x=
	1779798518; bh=4UCI883UKV5IeLX9V5yH4tQjyj41+l3U0FlaIxMEuE8=; b=O
	UORhpsx9c5QRCKxvNKVe9AJO9eY37joflDQn0sDBokaiVip1EDe0YRHDmdzD0Wxp
	PZOvMIGzyCi9jPvRPdgawR5SmgxlNu2Lo1V8cPMi/IJWAdbAEtGh3VdPHf/Fuohy
	O18rkqmkiilC6UBsc913DI7ET1s+8lfPHEl6FLOVwsqe5QDaC6m8ihTsdMLlb559
	Kug7LvKoDxWErrIvTxOMd1WUXwva55UFGSEfMi97wRMkGBZRAmeU5hETpBBYHJsJ
	E+omoeKg53Il6WkT65z4von8VkAYL4rPoVxvFlG5kMlk1a0JOyTKC0nATF+/G8GS
	hg8Iwv3eiJxfH8A4SipbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779712118; x=1779798518; bh=4
	UCI883UKV5IeLX9V5yH4tQjyj41+l3U0FlaIxMEuE8=; b=QkGPupTqMoGsrAR3q
	Q6n6zyRbTeTzt175NV4moLusP6A3Dxn5ZbP2fj6RSGw2w3LdgL05Tg/RUyrzOkl+
	0hwE3fyX8JXCwZ1TFpWjLGjKfesWHrLh0532QdZRoYj36ZBchfpyzd0WHXQqrbJu
	OLYVhrCkNCehH/HzVykSQVygsZxXpgogdcwZlxVqqLp/UaoK6TFq1d4ug0vwBoNr
	KHRftxH+SU+TBEwdOKJZ7OqHPgol+boxqVVwbqdti874l4E7SY3URGzgtiXhwhBI
	ciXXqOQiTLASqMH8Pz2rv5LU1WDVT4SeV7cgsGnI6qDxoY/GlasxI0nSUmT3Vg87
	ymf9g==
X-ME-Sender: <xms:dkAUakcr9_I-DF1u9QyBV2DIiyENay99FqcHqneOnRVkOo0ZXEmK0w>
    <xme:dkAUaiweX3PY-hhzpgx88QZH5W2lT22gbFCxpAvHkeYgdORlQeSYxzT1ql1KXU1V-
    PFiMQqYNUUYUISOshGxiIC_ou4TgHliGy0Gb-geQybj5ZO6Z9tDyyQ>
X-ME-Received: <xmr:dkAUap-Z0QDNUwLd5l0hoT7m01WYgpQwseiGqb-EzaykZe3YJniKJuk_z7q2uw>
X-ME-Proxy-Cause: dmFkZTFmLVSfYhEWaVm8N1lz0MjOBghKLhOnNQasw0tsXAFLPpbR/4+mrCYwWk/E423Vc2
    6B1s9iPuQgs3hGAiq/KhPqohuBMRIerNkWvsfuc3WkOHbHUNY5UmaGor5ig336hIeD+vak
    qB6bs2DTG0sfepDSzSArpLeFa7+n1qOspSUGgNQVB9KbSSFSgvHhLwD2o5NL2Su7Xc1htX
    UOwFpxHBdUGOki2ZYo2cYxe64jTF4NfawVkw4Ja9Vghy7E0XBO4BxqVYRhKiY6uJ4G3d/o
    hkvinoVmY3c44Mzh6S5sf4JfJ6aY+LIcesX0uapyNnoENtY2BlNnzIGDNJPpi4n9s/a/UL
    dSpsWW/8nBXvFgGBrz6dLhQdKkoLtHbkplQJ6QQvbRgWfvpQWMISKc4eJdXhEWnSNaD0/3
    qtnSolhNUM8DScWHAVBc1parFGL9kCBHiO3SS8pHbjbGbQS62UBRafqY6MYtQoYyGZb8oM
    GjdrK1QlAmH/I2HPhb/GmEqAcimdAH2bPWfWD0Ya+vu4Do6ylmgsnpjmLt+jn/zLncKLuV
    lS2sZZ/p65JWGhe3ZVGL2H2466am4kUvfJzKrmeLL2PjTO7MjOU6SDf7GsF99j1MgubNh7
    nLbVVjQ4E/N/qk1vbYOihCdadMSMNIbGjt5+uvZaj0PMKv3C6sZg1CIJvMCg
X-ME-Proxy: <xmx:dkAUagxETFrRe9-kD2cc4kmPpmBOelImsO-r-b-9GTga6gPor2le5w>
    <xmx:dkAUahqZyXYtPVUMspMYf1_c6Sy1NQ1KtqqaYxR3l7OAWQpLIEh4Cg>
    <xmx:dkAUapoDXjw8HxSaiEm4-IXvta81PujczTUfA_vAmU0HzGQpK3lSgA>
    <xmx:dkAUapBN_JwBcRVSeM18txP3KtJqnG-d3voBKieNF6Djnj4sCHF5qg>
    <xmx:dkAUarpVB9kKlgw2AV5JGm0vQzg8Z_XO4CEBmU0Fj_NC9VDIAaRnDUk7>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 25 May 2026 08:28:37 -0400 (EDT)
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
Subject: [PATCH man-pages v1 6/6] ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT and UFFDIO_SET_MODE
Date: Mon, 25 May 2026 13:28:16 +0100
Message-ID: <20260525122816.1956804-7-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260525122816.1956804-1-kirill@shutemov.name>
References: <20260525122816.1956804-1-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5593-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 6867C5CA84B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the two new ioctls introduced in Linux 7.2 to the list of
operations supported on a userfaultfd file descriptor.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
---
 man/man2/ioctl_userfaultfd.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
index 37553cd7a88f..fb57fe222979 100644
--- a/man/man2/ioctl_userfaultfd.2
+++ b/man/man2/ioctl_userfaultfd.2
@@ -76,9 +76,13 @@ events.
 .TQ
 .BR UFFDIO_WRITEPROTECT (2const)
 .TQ
+.BR UFFDIO_RWPROTECT (2const)
+.TQ
 .BR UFFDIO_CONTINUE (2const)
 .TQ
 .BR UFFDIO_POISON (2const)
+.TQ
+.BR UFFDIO_SET_MODE (2const)
 .SH RETURN VALUE
 On success,
 0 is returned.
-- 
2.54.0


