Return-Path: <linux-man+bounces-5606-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHcsDZukFWprWwcAu9opvQ
	(envelope-from <linux-man+bounces-5606-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:48:11 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0844E5D6D38
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:48:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9C5BC306C528
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 13:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760983B637A;
	Tue, 26 May 2026 13:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="YIQmmr13";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="R3GHLvlf"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-c5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0229435E926
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 13:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802940; cv=none; b=UuRxB6t4XMW+6Q6qjUIBONWWiTm2ZqT9MswGJ0NPxjDz71Oarl35oRFhx9z6EZ9M3wb5nfL5YqIqWc8BzyZRq3E/kfmvJWfVyjgQ9MErV1YfJ9PGYa0/T2ZzeRbQR2HPPk1XNTILq09LKkHoKCZwh0I3GvbQFxIJiSl4GRU/fmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802940; c=relaxed/simple;
	bh=UiyLem44vD/n02kEHxBsocDkvBDrZ5LT2XbCidUZDUg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SOBW48twXD3oWDl4hexWOLuBZ5aSS+pVQK3ddGyU/QfdWVod2u3ur6wGYCaLeUTMnLnc7Rf4qdacyzj514O8NXmjbninKdsDOt2pxxEJwMFJatobp96rGc4D63Ih4txxU1MdLHbzKVTH+FMmm5Hog7goCbBkjwIsb6o0DcEVk8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=YIQmmr13; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=R3GHLvlf; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfhigh.stl.internal (Postfix) with ESMTP id F1AD17A019A;
	Tue, 26 May 2026 09:42:17 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Tue, 26 May 2026 09:42:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779802937; x=
	1779889337; bh=OsLKk5eRpVociv1P2fTeir82WaP3/zQBawR3LPNnDkI=; b=Y
	IQmmr13Hi9/pjqmknecTwQJKj59QkHj7t1OoXmaUnalQfeTRBIgkNjWKBoadt0ze
	/R12tJimcQ9xtGcwfzmM40FD1Sxx5YRBtUlUcJKHLZGqIBFn0SC7G6UJyZ2fzTwJ
	dSZRFCXwndTwGZ0ilpMAJU5ElWPTD8FVL9ulvesMniLLYv2OF3qPNz9MnEIXWBk3
	AZBm0+p/cFPmv/qF4/vvLEupbQqP9WV5aKH7m5bGdp4GFEbS5u5XDdyhffD3chgY
	rQ+OBF9F7KxAEwcZ3qbYD/cCZgW/YHI5vbJ+n4i0n7919T0wEDrhlFZ1WnTjkTLV
	hltPNAkYNJDOHcXaR4ReQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779802937; x=1779889337; bh=O
	sLKk5eRpVociv1P2fTeir82WaP3/zQBawR3LPNnDkI=; b=R3GHLvlflq76XMCTh
	q0LXzq0OmDWbi2Rpy9GzljygXcEXa/XveQN3cw4i1py+1ana2AsjvdLuRdm4ZV81
	uqGQlj8WNr2iPMirZ7pBn6VWDDNdAH1h4riN1oZhC/yyFm48HRO6Sp+0gD/c0/S1
	ZkybZNVhbGIJovAXY5OThQYt7m3EicjJ3ju3dfN6MPBp81+B/TYpiHwp4mZGhBJX
	sRjdrRVRsv990tFXwi3T706InN3+FyRwGIYWBS0kC973Kwnl56lZv5FVC52yxtUw
	KFKOO5mgFHJdhe1B4J5fUoYgFlrhFILU4LhWvU4TMnMIMRgIny+BHZLL1XEbExcD
	RNuIg==
X-ME-Sender: <xms:OaMValgE4_Ps9oSFciMh3YJh-cVRRJIVhDgiZMt5xclGa_uiH2WvGw>
    <xme:OaMVamnQe5aCIx6iiBjAYqJDk113Cg74IdM5wmP-y66VIytkkpRNU521p8nvhxLf0
    H9Fc1tOvG-Y8RVHbT6EtcVLR9AHCD7Ooyy30s6RHZ9DiydfRUmJrco>
X-ME-Received: <xmr:OaMVaphLaPIm1nlqOcSP6Zo6-dvSMvI6S1QPBMVcVCNNA6LOrNuJuBJQsd7pWQ>
X-ME-Proxy-Cause: dmFkZTFebpdVMuqqHqVmfQKbOAMdw1OrzoDFkw5F0KVVLQLdoATDDnETM3ABKU3fZFbAhq
    ivOhGd3F/GKCWFsC7lb7jcb0TzZ20tAuRRzd8pH4seIyyjwZAbFlVBqhpwenTXNiZciUKq
    AZ3ulPZCjI4GxskBu4nz/NuCT5ViOZjnnSKr/tYs/pWVzmL7Aev6dKAksR9KQEKxM/++4t
    MQ+8SDodptaskec3qEvFLnIaT2T6Qk4vA6SzpmOWsrh0KQNy/pTpXcQxOR39FDTmPN6QI5
    NqOCLpoU4Hzex+wBXhNOecuxefna5LLr/C9ZF4FT25jcytpvdxwmSYAleisYq0gnvSm8jC
    aoMggufi4UvnBhKquplPRidR9TDBQ+LXMYzHQ7GqVh5XhlWxynUaOhrXQcydURspnuosn3
    G3b3xIZEkZ6nX/ERgwj7pIShyLLLIRGokTBbKiRQhObndwvLB0/OMeljz8nmC6ziXN5OSG
    LD+OjpVO3l4ChsMIors5Elzuw6hQamb0imrgPaZqZfqGlARcln4gWQLEPV3G00p5dhFG8p
    ZSiSRSEG1V1fGL00w4rp7xu9Eybz2DKtQvs925kM8elugplDlfCr/EP5KSVOWQVw7gIrMY
    bOgYIr9XSyq5HXKDxHLnjCPHMzZDGBEAadHOwYNAHoMtOAh4GZQ9aHLtFW+A
X-ME-Proxy: <xmx:OaMVahHB55r8vDvsvFbAj_XeakDetu8PjO8ziM4igqIvEWCDkgFZxA>
    <xmx:OaMVajtS7EHrcToNhmTeNt2zs2LmMsE8PN5pO-fM1Lnf_JnJGXsGZg>
    <xmx:OaMVaqd85jRrFbpKP4v6Unbn7xHQ_XQXjNZ7Lp8Xa51WzNe4CPbHuA>
    <xmx:OaMVahmG1emroFfprchsNxJ1BqME6uXSFINY7AYSLQOrM4fcXSSXpg>
    <xmx:OaMVavM5esFq5C3V3s9BotPk8qFcAZa9jnErnCuTuS1c6bAekfWQaM4k>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 May 2026 09:42:17 -0400 (EDT)
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
Subject: [PATCH v2 6/6] ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT and UFFDIO_SET_MODE
Date: Tue, 26 May 2026 14:41:49 +0100
Message-ID: <20260526134149.2831720-7-kirill@shutemov.name>
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
	TAGGED_FROM(0.00)[bounces-5606-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 0844E5D6D38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the two new ioctls introduced in Linux 7.2 to the list of
operations supported on a userfaultfd file descriptor.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 man/man2/ioctl_userfaultfd.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
index 37553cd7a88f..fb57fe222979 100644
--- a/man/man2/ioctl_userfaultfd.2
+++ b/man/man2/ioctl_userfaultfd.2
@@ -76,9 +76,13 @@ .SH DESCRIPTION
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


