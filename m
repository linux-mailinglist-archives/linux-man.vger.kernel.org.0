Return-Path: <linux-man+bounces-4117-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7805BBDB694
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30D9D54675F
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 21:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8978730C361;
	Tue, 14 Oct 2025 21:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6RZV+WF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491F2270553
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 21:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760477249; cv=none; b=o5kPFDjBoXV3swr1JC2Ow02BHPU/aCnx4du9ABpjL3Z00SGD9dLogaV+LadIEzHieA7SIsDWM+TWfPd3iKs57DkyEA/133TTRIRaQHNcXF4JbFKSSfdofC35VmEy+1jstYakr8AwpMXgYRI+6xNSip/84/iktYIAaQ7n7CJn1d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760477249; c=relaxed/simple;
	bh=0vQw9U3J2I5Dxr+MlC+OhQOcpXvUsWvshMnHjoQANkg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=afNSU80sthrjFTCq2DzycmDzkJ+lx1/K7PlnyXv1QO0JcyC/ZZvk7EZsMwFP1inIWjz+6NQ/45EggOjMVZ91S1jWUAjUYUHM3izNaYgiMLwKheUpcggCU4DTmf+98IrsuQ3QIwtQo7IhgBci35716ARnf7oS+0ZY3FKH4oGRw4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6RZV+WF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 249DEC4CEE7;
	Tue, 14 Oct 2025 21:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760477248;
	bh=0vQw9U3J2I5Dxr+MlC+OhQOcpXvUsWvshMnHjoQANkg=;
	h=Date:From:To:Cc:Subject:From;
	b=u6RZV+WFqmO0kxDadVSN48yfdcQzHfntTZw8k5wbfPM2Iae+/lMC/tdTu1kA+4oca
	 hNaBczEub3NafwIDJBXIH02HiRJLR2aMfOttxkaeBnn3o+p58xY7BVgkg+fVzkrF9x
	 SXgOlH8WVpl+3Y3R0k5hqS9olNE+Ui3pqQyVB5svTOdGdynNb6q4xyvm3MEmlEU02x
	 cym3atduKAr/Mnq9lOU/bUhlohn9xuHn5cx/xBHZeVQwzeVWVRd7bSi0LWuialBlL2
	 ueYLgunqmQOTesJnoBtGEwqRLFUmvPMme6FAO5IkvKZRaYgDgDmuGrLadWUdw45NGI
	 0I+GeU6GHSMQw==
Date: Tue, 14 Oct 2025 23:27:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for contributing
Message-ID: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

I've already been DDoSed in my own home server by AI crawlers (which is
the reason I decided to move the HTTPS server to port 80, just to break
links and stop the madness.  I could install Anubis, but I'll resist for
some time.

So far, I haven't noticed any contributors using AI.  Probably, the
combination of relatively few people contributing documentation,
combined with still working on a mailing list, has helped us avoid the
wave of AI contributions.

However, it's better to take preventive measures.  AI is entirely banned
in this project.  The guidelines are clear and concise.


Have a lovely night!
Alex


 CONTRIBUTING.d/ai | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 CONTRIBUTING.d/ai

diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
new file mode 100644
index 000000000..1e211a4de
--- /dev/null
+++ b/CONTRIBUTING.d/ai
@@ -0,0 +1,5 @@
+Name
+	AI - using artificial intelligence for contributing
+
+Description
+	Any use of AI for contributing to this project is unacceptable.
-- 
2.51.0


