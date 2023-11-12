Return-Path: <linux-man+bounces-57-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4467E9362
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 00:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30CA82809C9
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 23:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CCC1BDE3;
	Sun, 12 Nov 2023 23:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="QC1xnr2r"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAEE1BDD8
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 23:52:28 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DF061FD6
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 659B93C011BED
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:27 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id Jp-YfFgn3VDV; Sun, 12 Nov 2023 15:52:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 2FDCB3C011BEC;
	Sun, 12 Nov 2023 15:52:27 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 2FDCB3C011BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699833147;
	bh=d5Mpw3dH1DeSPaMa0nifSc6IXbAFSYIKidV3dk3ezmc=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=QC1xnr2rBD6LEKJjnsMOSUJjZA0FRyC/qcPIDZsglAbi1XkwzAxPkWCp+W7inyWBg
	 vbb1T9JDy/7OZaagyOzestHrdDh/pYQpNy2PeQsd4/+Hlw+eBRTq7FSDki5e9BSmM4
	 irmA49a7FuUvatnxf8UYooNLdf0mAZVjNnpslBOkASxjGiVb6WAZ+r54RRjKXT8gOi
	 wRtt8efxQrCTXxU2NmHj4gpNhodnQsBCvPlArwJdTgFe09Uj1rA6vF9F/ek7mPgADn
	 dldR/reK+dqO0fbFMQrXEunF3vk1DascVMiif7OQ0cDAyLlGu1MLKvZPf2TXAu08KI
	 8x+A3+NqIrgLw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 4p_3UD0oUR1b; Sun, 12 Nov 2023 15:52:27 -0800 (PST)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 1537B3C011BEB;
	Sun, 12 Nov 2023 15:52:27 -0800 (PST)
From: Paul Eggert <eggert@cs.ucla.edu>
To: linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 1/4] * Remove man3/stpecpyx.3; no longer present.
Date: Sun, 12 Nov 2023 15:52:05 -0800
Message-ID: <20231112235218.80195-2-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231112235218.80195-1-eggert@cs.ucla.edu>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 man3/stpecpyx.3 | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 man3/stpecpyx.3

diff --git a/man3/stpecpyx.3 b/man3/stpecpyx.3
deleted file mode 100644
index beb850746..000000000
--- a/man3/stpecpyx.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/string_copying.7
--=20
2.41.0


