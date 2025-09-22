Return-Path: <linux-man+bounces-3946-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C5DB93258
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 21:53:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C4E57B3BF1
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 19:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B6B22F1FDA;
	Mon, 22 Sep 2025 19:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hypodyne.net header.i=@hypodyne.net header.b="JFTLQSlQ";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="WSdjcxzU"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a6-smtp.messagingengine.com (fout-a6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68CA2E765E
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758570776; cv=none; b=UEbuCwK5yMdzOPAlkSRQnZvXxW+FcRi8dkLBK+ksArSxmccd5GWCR2AHUk6ZYRoUkw/194+Yba+WFSHzdWf1oo/aNQL9wzjvKJXLoZg/Hzye1kQeiX8SqLxtBcX/3dlb27lHnScvB98b2YFMz8edV35K6G6yfTRv3YK7FkTzZrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758570776; c=relaxed/simple;
	bh=m50LLab5z5KR/VuaXaW45MhNiJx6mrEPVjQFQzhlw/4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hgPxiB+lkZrcNALFU8T8YtKzbGltiTbbXZYfJLJVrsiZED2K6S5xT5/WWOdGsOTNyawgJY5wiNT8AOEaKbrWNYbZE1uXYev2tWnV4i7HymqxO2S9rSYY7LHtrPHJhSM+m7pJpQL+0AVR9K4dAVlYTHfiACVDVcHyOlEjupmpAOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hypodyne.net; spf=pass smtp.mailfrom=hypodyne.net; dkim=pass (2048-bit key) header.d=hypodyne.net header.i=@hypodyne.net header.b=JFTLQSlQ; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=WSdjcxzU; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hypodyne.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hypodyne.net
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id CCBFEEC02C2;
	Mon, 22 Sep 2025 15:52:52 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Mon, 22 Sep 2025 15:52:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hypodyne.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1758570772; x=1758657172; bh=WxG4IaZU241WYzH1559ZI
	ct7AUHIttDUtPFNz5OlLiI=; b=JFTLQSlQoDmf26hWpz5VnBvjTF4Nf0WNBscwh
	MK3P+vk6ZM37sAiI8qj7JrXzlia9Yq7zLY7pT6K+XuFzmc1eWDcRrngPLgRblxqe
	a8nPxa0BAJC04HV8ntrAwn4JvelC3dMHLnTgn43kDr0EozJwtMvLb/FQt54EfiIQ
	RpkQY1zU285SgVWMUgykPG1bCC772N+qvk4KU0ZIMeiaqutMTlqSnP25Xcl+pAFX
	+UJwKTgGsH9SK5gSpeqTl5eKQ5LF9z4ZCX5HeiP9eXjCt7+aUwCBbmizyspDkKtW
	xiCg+I6/Zo6mpB2P59TVzeiRHUTLxF0rBxY2RZF5XWTzUdB2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758570772; x=1758657172; bh=WxG4IaZU241WYzH1559ZIct7AUHIttDUtPF
	Nz5OlLiI=; b=WSdjcxzUPHQ/gjsULjgVyd4JA1J9V4uzvYmKzeoojg9GxGdV9Z4
	LSCm9r5v/IoBkmyowjJEIVYX298sZ3SLBlqilp9qnbJkEREdTBhVyB12ChvXJcaW
	PGhrrXD+6OC+0Y/v+DPuDThtOZKJSmLAaKM2+47LuotOgrTSe92aGOJ0G6hxJPto
	IOX0Ac3o4ltuT57PAxO8dFeZuMRC76//HFAVVshAvA64LcGmMUQBij1EYvLt45Um
	oacj3PEbMCaj5s79B/2ZS56UxC7ZzVXItqToS6Lx9+t3V134RvfNcdHgjvL7emJy
	60q88FnKB8x9L6Qm1EYDzULv1zGhXzncbMg==
X-ME-Sender: <xms:FKnRaMILDzxbXXnKDAintT0AetHlnc3qiUXCIiqSoNdHuIdmF3KQCw>
    <xme:FKnRaDlFotvjEY9gkc50ARK7-jawIjsDwsRLPUtzr90ALkGU3ZDX6Kk7d74bX_Jyu
    WgpFl7v83fObq-hK6hOwlFuxzLFY4bZmlnvDlq1-ZnY5U1fw4ZYFg>
X-ME-Received: <xmr:FKnRaKG3UsHjAm1lebgOOkg0Mlxp0zKXlQgsa7ToUx2GZQb2NyHXI2AhRZ-YHUlXQNEpK8qn2g-CFEMqtJdIaj9XnuilfKdN-mpoJRRpZWTiLulu>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehkeejgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
    enucfhrhhomhepvehougihucfjrghrrhhishcuoehgihhtsehhhihpohguhihnvgdrnhgv
    theqnecuggftrfgrthhtvghrnheptdekgfekueefhfejleeihfeufeeileehueeigeekie
    etkeffhfetffetteeggfeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehm
    rghilhhfrhhomhepghhitheshhihphhougihnhgvrdhnvghtpdhnsggprhgtphhtthhope
    efpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhr
    ghdprhgtphhtthhopehgihhtsehhhihpohguhihnvgdrnhgvthdprhgtphhtthhopehlih
    hnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:FKnRaDFZaXDHvY_PwrgXH5KeCRjvNuuhS3nIXjJ0RgDu9zHu0MpS6A>
    <xmx:FKnRaHN7iqTQ1oKM9YMC0uDavfSpOGIK6yXVwlpSZzm8B1ofRHlhSQ>
    <xmx:FKnRaCFjdQzhXgJ3Uyb5cwaP0YsJZp6JgetVJcnaww_hbkoKdOnVAQ>
    <xmx:FKnRaOPkSTPbdMSA6-sn3aMuAWtRGDFVRhSvM1_-vTcM3wsWX1ZnAA>
    <xmx:FKnRaGVcd6MRyMLaWSt6UiUy7YedTkpoMbJblD0EU8YLGeiqn8_WehJa>
Feedback-ID: i437146c8:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Sep 2025 15:52:52 -0400 (EDT)
From: Cody Harris <git@hypodyne.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Cody Harris <git@hypodyne.net>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man2/getsockopt.2: tfix
Date: Mon, 22 Sep 2025 15:52:25 -0400
Message-ID: <3589b9717dacf9e21bea9317da0840ad9095d7f1.1758570745.git.git@hypodyne.net>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man/man2/getsockopt.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/getsockopt.2 b/man/man2/getsockopt.2
index 27a088d1c..f37b87d20 100644
--- a/man/man2/getsockopt.2
+++ b/man/man2/getsockopt.2
@@ -13,7 +13,7 @@ .SH SYNOPSIS
 .nf
 .B #include <sys/socket.h>
 .P
-.BR "int getsockopt(" "socklen *restrict optlen;"
+.BR "int getsockopt(" "socklen_t *restrict optlen;"
 .BI "               int " sockfd ", int " level ", int " optname ,
 .BI "               void " optval "[_Nullable restrict *" optlen ],
 .BI "               socklen_t *restrict " optlen );
-- 
2.51.0


