Return-Path: <linux-man+bounces-2585-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1113BA574E1
	for <lists+linux-man@lfdr.de>; Fri,  7 Mar 2025 23:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3977F7A85E8
	for <lists+linux-man@lfdr.de>; Fri,  7 Mar 2025 22:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC9DE241CA5;
	Fri,  7 Mar 2025 22:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=buffet.re header.i=@buffet.re header.b="coeqTfhI"
X-Original-To: linux-man@vger.kernel.org
Received: from mx1.buffet.re (mx1.buffet.re [51.83.41.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A43823FC68
	for <linux-man@vger.kernel.org>; Fri,  7 Mar 2025 22:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.83.41.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741386519; cv=none; b=fHD+mFUeCj3pvWhb6M8Liej17yNj7lLpouNuzUg71t5PTdEuOlA/zvME7hTuEsKVgbrjTwQciaJ4jbp+Gz2MCztSIcgHDPQ7QyhzqyP83mSE0Iv6k8xFfJ1LC/igRoo70EqvngKkwEi8sP2McNibri5PpSD6lFcU6EF/uYPZBAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741386519; c=relaxed/simple;
	bh=rOIjxKyS4MjvjKrBkXfeo9Xed+akfX1JoAf9dTcqDq8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Tc6KSCmtO3jhuSoLw5d4v3V/U/tCza9M9X3v/b/t2/Pl7wibgBeDN72mfwbKpFP5og3f0PNYStuvmDLC1TgtsABmoiIQlhN/f84kB+bpoFjmaP01csgp1WUR4vtXVcbMgQb+zbi9CJmSHC0qQXn3YfZht9oQdBSXCAh698u87sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=buffet.re; spf=pass smtp.mailfrom=buffet.re; dkim=pass (2048-bit key) header.d=buffet.re header.i=@buffet.re header.b=coeqTfhI; arc=none smtp.client-ip=51.83.41.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=buffet.re
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=buffet.re
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=buffet.re; s=mx1;
	t=1741385936; bh=rOIjxKyS4MjvjKrBkXfeo9Xed+akfX1JoAf9dTcqDq8=;
	h=From:To:Cc:Subject:Date:From;
	b=coeqTfhIcJJ3KTEUM5ByYzHGQ47LeHi7dqfnzl5xoJU0zKUOLkCzAF9TCFvy2XMk1
	 FhGn/ft0v/ZWRnh5U4uicNHfMvGWdyLshuSOnBmeAOcR06nNDfzzc31EM6KKri+1tn
	 8jgzgNjTl9KZvpy9RRIbnZnEzBpEPNy4ddB1zDbII8zUxvvQ59K4J/dBdvFI3DLBMP
	 KrAgnZ+ltUR353UEF6hNZmaAvAFSUKlScD6fx02Fz60YzsbG3b0yYFuJjLvxu9H8gL
	 k7exRaC4atT/L67w5I+HDOdJQHScHDoKE6hXdpkrp17hkBgn0tMzgbUNNHHHclkzgE
	 NuUBJt2bD3uEA==
Received: from localhost.localdomain (unknown [10.0.1.3])
	by mx1.buffet.re (Postfix) with ESMTPSA id 6494C125329;
	Fri,  7 Mar 2025 23:18:56 +0100 (CET)
From: Matthieu Buffet <matthieu@buffet.re>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Matthieu Buffet <matthieu@buffet.re>
Subject: [PATCH] man/man7/ip.7 Document capabilities to use IP_TRANSPARENT
Date: Fri,  7 Mar 2025 23:22:44 +0100
Message-Id: <20250307222244.597006-1-matthieu@buffet.re>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

CAP_NET_ADMIN has been overkill to use setsockopt(IP_TRANSPARENT)
since a discussion on LKML[1] and a patch[2] in 2011. All that is
left to do is to let devs know they don't need CAP_NET_ADMIN.

[1] <https://lore.kernel.org/netdev/20111020.182214.629562655202957174.davem@davemloft.net/T/>
[2] linux.git 6cc7a765c2987f03ba278dac03c7cc759ee198e7
    ("IP_TRANSPARENT requires CAP_NET_ADMIN - why?")

Signed-off-by: Matthieu Buffet <matthieu@buffet.re>
---
 man/man7/ip.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/man7/ip.7 b/man/man7/ip.7
index e75aa7ca40a4..00e5274c552a 100644
--- a/man/man7/ip.7
+++ b/man/man7/ip.7
@@ -1088,6 +1088,8 @@ socket option).
 Enabling this socket option requires superuser privileges
 (the
 .B CAP_NET_ADMIN
+or
+.B CAP_NET_RAW
 capability).
 .IP
 TProxy redirection with the iptables TPROXY target also requires that

base-commit: 64199c5bf76806f13a78b9fd5792ccfcb28a5551
-- 
2.39.5


