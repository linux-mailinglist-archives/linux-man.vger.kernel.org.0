Return-Path: <linux-man+bounces-3475-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 878F5B2AE99
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 18:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49240561EE9
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 16:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397DF342CBA;
	Mon, 18 Aug 2025 16:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="aYuTX64D"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C937B342CB3
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 16:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755536218; cv=none; b=remlnkbWxoVmhSjzOQG6NcSrYjZ1FyT3srhDhc0YyrYA48q9QlvatD2LaCMfXPA0pBLXUwWLKk+2/bUwlUEVwarv8Su1Q7TdoIECxcHJb+JRx5+DoAye+B4jc9NP1Odjs1k16W4jac5cHRKBl4qyTEp1Ci+9RwE0EfQodGpMXoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755536218; c=relaxed/simple;
	bh=q4DaZOLJKA1seN5isoZsz2tYW9b74M33t5sFnbNpmUc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SzhWNwcNofO5HxcVr0DMGw/j2OqOe7H3yEwFjg6MDKZIK0kpyjgVtuKPIV38NqMnZnv8Pog/FCfEzaJU71yV0FSdUtZAsc1YwYUHviQXvucq+eBGQdPJZ/sN1OOrvvAI5Y+dHb20KqM6Z2io7JYLZ1ymc9akMGRMDxEq4ohPFCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=aYuTX64D; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=4ysOFTdrIR9pu8AlCgOtij6yA5wz6OvqH2OfsVHHr64=; b=aYuTX64DseIvEND6
	a/TO7DHufNYcIi7BVuVErbMiWznctSaSaJ4BjUAbzf51yo5hgsoiys+jnqCc/AeWlUf2ClVLvyPuq
	J9EbambE4P+wUc8QkUNyai9lmpIuJ7+slPK+jsCOlnnvMhtoJ0DQL6KupOHuo0HDujfu12oQCFlmg
	P3P1rbWcYDGPPsd3Ht7LHrQZ5YIc/piteA90tSS6qvgV6reQ1jSeaaAVkyPaTsli7FEJ8qTEKOICo
	5fIydsu7liauGw3aX8nG/eC8fkXT+JblFVXbr8vcXHU+OEVm++SFWM40RIcQYrlT2mXeYIQs+7E6O
	H0142A226mIdBh+kIg==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <dave@treblig.org>)
	id 1uo3A5-004eHL-2x;
	Mon, 18 Aug 2025 16:56:45 +0000
From: dave@treblig.org
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	"Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH] man/man3/strftime.3: Check parameter
Date: Mon, 18 Aug 2025 17:56:35 +0100
Message-ID: <20250818165636.44122-1-dave@treblig.org>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

The strftime example requires a format paramter.  If you don't
pass one it crashes.
Check for the parameter.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
 man/man3/strftime.3 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
index 4a3f805bb..3c1108b36 100644
--- a/man/man3/strftime.3
+++ b/man/man3/strftime.3
@@ -739,6 +739,11 @@ .SS Program source
     char outstr[200];
     time_t t;
     struct tm *tmp;
+\&
+    if (argc != 2) {
+        fprintf(stderr,"%s: format-string\[rs]n", argv[0]);
+        exit(EXIT_FAILURE);
+    }
 \&
     t = time(NULL);
     tmp = localtime(&t);
-- 
2.50.1


