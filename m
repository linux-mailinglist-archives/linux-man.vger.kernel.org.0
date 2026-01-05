Return-Path: <linux-man+bounces-4638-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D38CDCF50E2
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 18:45:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D766330263C9
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 17:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A28E733E37A;
	Mon,  5 Jan 2026 17:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="pj5knU7K"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6FE33D504
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 17:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635056; cv=none; b=esFR6+5T2C0DxeH8Lrep8+ueD1x1OwB8Cwblxw4EUUSrSuAF6qq787V3pXuZ/UNgrCwX2RjgKpZEwustNd8sTMEmmTY2ZwOg3HSz5u7YQss5VhZ0SjSODgV0In7GAOlLEUaoKpQu20qgi/dA2Ri94Gp2iw24JxYUKQctmVranLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635056; c=relaxed/simple;
	bh=gQ5OV5JzE9vJ2bzvE9ARITmkaS3sAQ4gLPlxtyUCDNs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QfVYeKaJtplxdt1VhwpQPhzk/X02j0IrYaRm0sZYBcpBWWjdo9anj96+RfdNPkkOSaUTjNEpKB3K2lmrxjWz4yw7cKl28itAWbbquix6UqETW2xZYhWsChFqADWD9YMHjXEPtZdjs6RCLs/YRN389axtAKVTpxMYtYsEu+P5lZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=pj5knU7K; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=qbMFsMLzQT6kMm3wCUCkCsJFc8ZGuRMc1z/hbYF9zjE=; b=pj5knU7KxkHQETiv
	E7Kz5FN26HNpAD7WO4hoZkNanq1ZbfclH9CZBUzuWgxglZeYV0SHBccz1DWHYHzAexcCI+uGY6Ndg
	jv0N11tG1b27wIt9zSZJfFEEv7INs0MOzNoDS3d2dGbw/5C0ozDfBCEeexg2Y7coXJZLnnONOZxO3
	fv2suQgIv0xZ5hab4w3XFr+iCw+yL4TGnzPHS+lOR5+vzB2gePjpAEc51wxO0eZ8x4O35vUCGWYwq
	QpU1L3LB6YOuLer66hFdIwcB7aFC1ig6fcuyj90AAv4JnADHwyaoIKl5FM8BHJsKFcWrWflXeQ2ts
	HOXd87OO/HtEnTsdPg==;
Received: from localhost ([127.0.0.1] helo=dalek)
	by mx.treblig.org with esmtp (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcock-0000000CVbT-1GyG;
	Mon, 05 Jan 2026 17:44:10 +0000
From: dg@treblig.org
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: [PATCH v4] man/man5/gai.conf: Document glibc label additions
Date: Mon,  5 Jan 2026 17:44:01 +0000
Message-ID: <20260105174401.222443-1-dg@treblig.org>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. David Alan Gilbert" <dave@treblig.org>

Glibc includes some extra entries in its default label table
as listed in the gai.conf it distributes:
   https://sourceware.org/git/?p=glibc.git;a=blob;f=posix/gai.conf

Update the EXAMPLES to include the spec default and the version glibc
actually uses.

Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
---
v4
  Close the .in
 man/man5/gai.conf.5 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
index ef330995d..b602acc7c 100644
--- a/man/man5/gai.conf.5
+++ b/man/man5/gai.conf.5
@@ -88,6 +88,23 @@ .SH EXAMPLES
 precedence ::ffff:0:0/96  10
 .EE
 .in
+.P
+Glibc includes some extra rules in the label table for site-local addresses,
+ULA,
+and Teredo tunnels.
+Its default label table is:
+.in +4n
+.EX
+label ::1/128        0
+label ::/0           1
+label 2002::/16      2
+label ::/96          3
+label ::ffff:0:0/96  4
+label fec0::/10      5
+label fc00::/7       6
+label 2001:0::/32    7
+.EE
+.in
 .\" .SH AUTHOR
 .\" Ulrich Drepper <drepper@redhat.com>
 .\"
-- 
2.52.0


