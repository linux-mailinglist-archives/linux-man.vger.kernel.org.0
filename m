Return-Path: <linux-man+bounces-4450-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EAFCCD496
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 19:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F362A300E178
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 18:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2149630CDAB;
	Thu, 18 Dec 2025 18:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b="YDKZ+GRb";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="nD31AYW2"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b6-smtp.messagingengine.com (fhigh-b6-smtp.messagingengine.com [202.12.124.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B18301026;
	Thu, 18 Dec 2025 18:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084202; cv=none; b=XSFDytTHKH/c1IqyEtBaNmxtaFZeJIIHUvEuKW0xCYBzjDHh3oNwwI+q+oL+r8zVdCaKzwRiv7MPeZUAT+7Q0wMDONx1ovvA3TGKcaG2j6i1tGqMwEMpxiGs6+coBuTSp/8Rmy3JEHu2PPzoZOfK0ZaFPYnG8yJXFg/aWIxgKy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084202; c=relaxed/simple;
	bh=MYDns1bWsdKBN6BLGCUUCrhm48+lQ8wYXyWftYPrFQw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mBMPh2u4mowTZKJ2YGjagmxT40teIEndBVRp8dmkZAuvMiMN5F4RgR+kIrHg/cPUsiPbi6SUosHZUOdDCpPY4uEQYv5SQ9lQRITbZtIFL7bjUjPyGiCNBNCmVZbxXKzHA/XUgO+10w/jNmsPpXa1J36M7PsN18cqySWLcndn4C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is; spf=pass smtp.mailfrom=alyssa.is; dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b=YDKZ+GRb; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=nD31AYW2; arc=none smtp.client-ip=202.12.124.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alyssa.is
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id A40957A007C;
	Thu, 18 Dec 2025 13:56:38 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Thu, 18 Dec 2025 13:56:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm3; t=1766084198; x=1766170598; bh=qXc2kEnUqVBs0sS7R27Ay
	Hw6BXGydL4BD/S4wVan/pE=; b=YDKZ+GRbytEzwGMx5NI2tx+mcy/qxypeBtmu+
	DtN8hU2Ybuk2FYTgcPM1gwfluIKM6PVJ98mmFudEChj5YC7vyBFKCkV2xTYacNPf
	f+tiSQ1U/SBn7yP4qFSV/BG2M+xxS3qN7LVhlHpIPFRkuqzgV6Wv4ysBG/cO9knO
	UXERnUIrnIjURqk4oj6hr/wMj9vyd+ov19QaFVwBIg2sxQO6jec3DQD8S+S5TVje
	klJSJY2/5kNZoOxkAjvHyZS38fWwfjc7uWPj30jaWHE4TGpMxpSJZ7CaPdpdEiAu
	wH6E2Z2AUOaTvCZYxZTxxx2+KaLjfcFqXPf1YZmyLJ/WOyh9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1766084198; x=1766170598; bh=qXc2kEnUqVBs0sS7R27AyHw6BXGydL4BD/S
	4wVan/pE=; b=nD31AYW2PmLaew5flrNcRgNMSznTl12N/llkz1kfvFWsWMgyKzm
	Sw+itEDu7vaDHepx2jgAHVrBMM4/TzOLjMw6Ds/KCPjjWe/+EiDXp9bhHPCuTUSP
	hSADH+ByESrVR8zUnfALW/K6BcA8CnrRi4niyleWpCP6NN31CBm1jd/6EGCeEuty
	nLW/7vBDbhEEd+lptV91YEwUq/6/rRd9AH5K02GwHJcQ/s9Hyp9PSAtHQuvzZd7Y
	b9X5UZq7LdXKCcnzBxrWLBLog1ZombOry8xtFvSixLXcML5fBCj+Nj6zf+MEQoxf
	sB/kvriv0/Q/YpHi3P/fTZBzXXXoG+NgqnQ==
X-ME-Sender: <xms:Zk5EaW1le2n6tf4yn2dqffoul1omGGW1BsrQmC2_MlKPV7lGADYxJA>
    <xme:Zk5EaZjTx97Uj-mDpsLzDbQFwUSz75FedygPuPaEq5iwNiUg8ntKc6mbAZ8UFP2s3
    peT7GcTJdooFPSBiSXrkbu0lXXADzoxmp3lqub2BlnEfcJCpn7TAKA>
X-ME-Received: <xmr:Zk5EafmjVgx5Hf_14ZHl3u7K5h3zuo_V6DZvtUIkg4Ck2c4sYDUqlcv0aEza3Fqvvk9lX7dVeLadhFXoJeSRHZySNuTzEFbmyJiHsw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdegiedvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetlhihshhsrgcutfho
    shhsuceohhhisegrlhihshhsrgdrihhsqeenucggtffrrghtthgvrhhnpeehkefgtdevte
    dtkeduudeguefgudejheeugfelgeettdfhffduhfehudfhudeuhfenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhihesrghlhihsshgrrdhish
    dpnhgspghrtghpthhtohepledpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuggr
    vhgvmhesuggrvhgvmhhlohhfthdrnhgvthdprhgtphhtthhopegvughumhgriigvthesgh
    hoohhglhgvrdgtohhmpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghp
    thhtohephhhorhhmsheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhusggrsehkvg
    hrnhgvlhdrohhrghdprhgtphhtthhopehprggsvghnihesrhgvughhrghtrdgtohhmpdhr
    tghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpd
    hrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgt
    phhtthhopehnvghtuggvvhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:Zk5EafZtjafkIYVipOuRaRtN3BpAICSr4Um0X9xpQ3dStwXOVBVE4g>
    <xmx:Zk5EaaEOcY7ANSbFyBMsTeZHzCWSmt81-fVL1z84Nsbe32l1FsbQOw>
    <xmx:Zk5EaebhKIQCnp85EJ6xVfXR_Fv4Uu_BKRV2dXNe-N64dPY2L3K02Q>
    <xmx:Zk5EaeyqghCsTaaPS8MQn7_UAmIN-P-3Vh088vUUOVkhXacngEaYEg>
    <xmx:Zk5EaVHoQO-HAc73B9VaLe_35wcJwJfljF20jOc-ljqly8fTz4idRBxh>
Feedback-ID: i12284293:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Dec 2025 13:56:37 -0500 (EST)
Received: by fw12.qyliss.net (Postfix, from userid 1000)
	id 14FEF7CD84A3; Thu, 18 Dec 2025 19:56:35 +0100 (CET)
From: Alyssa Ross <hi@alyssa.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] man/man7/rtnetlink.7: document ifi_change
Date: Thu, 18 Dec 2025 19:54:52 +0100
Message-ID: <20251218185452.88205-1-hi@alyssa.is>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This hasn't been "reserved for future use" since Linux 2.6.22 (commit
83b496e928db ("[RTNETLINK]: Allow changing of subsets of netdevice
flags in rtnl_setlink")), and it's used by iproute2.

Signed-off-by: Alyssa Ross <hi@alyssa.is>
---
 man/man7/rtnetlink.7 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
index 56cb79bca..6e873dc71 100644
--- a/man/man7/rtnetlink.7
+++ b/man/man7/rtnetlink.7
@@ -83,7 +83,9 @@ is the unique interface index
 message, thus creating a link with the given
 .IR ifindex );
 .I ifi_change
-is reserved for future use and should be always set to 0xFFFFFFFF.
+is a mask specifying which bits of
+.I ifi_flags
+should be applied to the device.
 .TS
 tab(:);
 c s s

base-commit: 46950a0845de91c422efe6c639091ace42cb92f8
-- 
2.51.0


