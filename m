Return-Path: <linux-man+bounces-4405-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8ECCBB1F7
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 18:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA8F4303FA61
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 17:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB052E8B61;
	Sat, 13 Dec 2025 17:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b="RLbVcwtg";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="f0lF5TNw"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a5-smtp.messagingengine.com (fout-a5-smtp.messagingengine.com [103.168.172.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD1A2D8768;
	Sat, 13 Dec 2025 17:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765648775; cv=none; b=jVgbXm70Jwe47U9fMyLdgZr/VBGUOLyuisvPUQGHMUizXrxTMw4jvZHs2y9OOuNry1jmqS0PZb2lZPqkNuwQFH/u5sixnjHQqpw17jA59JpIf8IiOWp85GqNsBl8CrcS3T5XAjdydzSXYtECPvH8Tw52X09zZ4Q/ISystAzvPZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765648775; c=relaxed/simple;
	bh=Vi9jdHU+LSRv5Apu+UpOCFQl37eNpEL8yrjP6ZjhR9c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b4W5LM2nm1mxs8i5XLxMrqOAN5PwtEfwIfXtNdabeCxc242KFbVOhAIylosS3OY5omIHiULP/v6IHhU27e6R4ssl6kU4fvDgeuwGJZx4G4YG3Eud8PJqlIPGwbEc5HtDHj261oiIl1819kdGFycT8KHTTZq4VVXblYowDPwGOsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is; spf=pass smtp.mailfrom=alyssa.is; dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b=RLbVcwtg; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=f0lF5TNw; arc=none smtp.client-ip=103.168.172.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alyssa.is
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id 52A5BEC0642;
	Sat, 13 Dec 2025 12:59:31 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Sat, 13 Dec 2025 12:59:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm3; t=1765648771; x=1765735171; bh=WP+iQmdhoKNvheKpRHHn1
	EX4BGbfqKdNTQVWAKYtuzE=; b=RLbVcwtgMXZS3WvXy+YRhO/0Gy2pk4KRZPBC6
	JJjI8X1Y+fcwfAM4HZ/o98u1kkWeligIoX71U2tYLfczcQIoXDGHd26Jx1xPVVR8
	z0nrUcUyzsq60jGK4ZvB3dDj8EsDrQ/E08jMIR/eygE1D2OsY5TzjYy/ow5PNjIT
	J1YSUzl18QX742fNBCby+T9tn0Hyj9yJHdWNsngFJduaiW8v9+7br6L8r76IMqIS
	jDynk6lav9opOdnitHl/EkTUKQt+EdbmxtWs//aSfb+YQhbFpf2s32Sxx1QPRDMM
	VWES2sI4ugogoBV4rHk3P0B/238eBi1YFaYE+PJu/WYT2IT0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1765648771; x=1765735171; bh=WP+iQmdhoKNvheKpRHHn1EX4BGbfqKdNTQV
	WAKYtuzE=; b=f0lF5TNwy84esT69PRt8tJvw294SKxUI1nhQloa41b7xmbHr8UE
	3ShU/zgrTxs+0fHFkA2g7LeMAUkLnygyt2s+cRQ6JQ7cz4d77lyQADx3wYO+Jlbn
	qnHVzQMgGZHoHlrgRcPJvOSn1FTiI7dzfF6uQjlOVJhr7ZhsnMAVSsFD1QTUYddX
	2Tj+XNkGivTRIW+i+NP9RVWBtwSNMi4XUVTdvu2A5yupWDMjkttf9/lJVB6rrLNT
	G7d8exA9sQ/yItiEneYUlEAE3oBpB9/kypvSNzRvmPnRq+6AqiSKv4N1/2OiOTHk
	G2YJ3ppFFQ160FZQ6HwpSPCFmd/fkZiVvcA==
X-ME-Sender: <xms:gqk9aa7LI-4dn97U5libpbwdiR9Y4F10IZWHQSkeegiSOor3JIsCcA>
    <xme:gqk9aXlOFS5IqvQpKCUWLzKlVYvgpDlaQux3Jm0SAx9M0YueX-lWW_Y47wTb39xMt
    kW88Cvzv9aW67OJBVVspOJ53evn7zO8UmmwBzAURtDo2S6XZBVyOeQ>
X-ME-Received: <xmr:gqk9aTR64lEW9A_I_x5x6FBWYXtFeJyP1N5mAZiX9zmUPl6RWdv5HGD7VxhGx1lPTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdefudejvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetlhihshhsrgcutfho
    shhsuceohhhisegrlhihshhsrgdrihhsqeenucggtffrrghtthgvrhhnpeehkefgtdevte
    dtkeduudeguefgudejheeugfelgeettdfhffduhfehudfhudeuhfenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhihesrghlhihsshgrrdhish
    dpnhgspghrtghpthhtohephedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprghl
    gieskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepsghrrghunhgvrheskhgvrhhnvghlrd
    horhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghl
    rdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdroh
    hrghdprhgtphhtthhopehvihhrohesiigvnhhivhdrlhhinhhugidrohhrghdruhhk
X-ME-Proxy: <xmx:gqk9aeEvFvsw_V_QipGi5bnG3LdzyZ9Rf91qwMmv9jZupucvKuxCfA>
    <xmx:gqk9aQFYWH87LM5rFYXT1FlWjciEkJISuicQ5Ndt8kopSxIqvunu9A>
    <xmx:gqk9aUR9yiVirwwxvx-D-jdpnq_RBtMa81plnbML2cpsrn-xGqtekA>
    <xmx:gqk9aZLkeoRut5RlXsZMcMPHo2Ra3ixawvaCWGtaSDqpcuE9Q7lXBg>
    <xmx:g6k9abzdE_X58_5ppVXdvYJIOlPw7tidJ-TfnYVG_ObXku0GxGj3__jB>
Feedback-ID: i12284293:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Dec 2025 12:59:30 -0500 (EST)
Received: by fw12.qyliss.net (Postfix, from userid 1000)
	id 207BD78CC187; Sat, 13 Dec 2025 18:59:14 +0100 (CET)
From: Alyssa Ross <hi@alyssa.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: Christian Brauner <brauner@kernel.org>,
	Al Viro <viro@zeniv.linux.org.uk>,
	linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man2/setns.2: clarify type of nsfs fd required
Date: Sat, 13 Dec 2025 18:58:53 +0100
Message-ID: <20251213175853.555517-1-hi@alyssa.is>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I was surprised to discover than an O_PATH file descriptor was
insufficient.  Since the mode of nsfs files is always 0444, tell
callers to always a file descriptor opened for reading.

Signed-off-by: Alyssa Ross <hi@alyssa.is>
---
 man/man2/setns.2 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/man2/setns.2 b/man/man2/setns.2
index ea6a9c054..ed4937280 100644
--- a/man/man2/setns.2
+++ b/man/man2/setns.2
@@ -23,7 +23,7 @@ The
 .I fd
 argument is one of the following:
 .IP \[bu] 3
-a file descriptor referring to one of the magic links in a
+a file descriptor opened for reading one of the magic links in a
 .IR /proc/ pid /ns/
 directory (or a bind mount to such a link);
 .IP \[bu]
@@ -265,6 +265,12 @@ is set to indicate the error.
 .I fd
 is not a valid file descriptor.
 .TP
+.B EBADF
+.I fd
+is an
+.B O_PATH
+file descriptor.
+.TP
 .B EINVAL
 .I fd
 refers to a namespace whose type does not match that specified in

base-commit: 46950a0845de91c422efe6c639091ace42cb92f8
-- 
2.51.0


