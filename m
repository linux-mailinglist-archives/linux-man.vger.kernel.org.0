Return-Path: <linux-man+bounces-728-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D51B689DBDE
	for <lists+linux-man@lfdr.de>; Tue,  9 Apr 2024 16:13:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70E031F23C10
	for <lists+linux-man@lfdr.de>; Tue,  9 Apr 2024 14:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1D2912F5AE;
	Tue,  9 Apr 2024 14:13:02 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [49.12.208.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162D312F5AF
	for <linux-man@vger.kernel.org>; Tue,  9 Apr 2024 14:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=49.12.208.134
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712671982; cv=none; b=WZ/L4kL/W0R6y5CnPnsjSLUgYZUTUYfPntYFNEboiVsU9QrQ6PDLuaVo0YCYT++PeYi5AjxdxEQZ77UXNSVDR0c1eA2FJjYqzkyVEAI4e7mkKNvAVvY4rBCBth3WDqyE2F8loZ4LUOuajXA0oUZdxjD+DdyiaN0UHK5McZ2h/GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712671982; c=relaxed/simple;
	bh=ELH2KcsXAkICkafTZz5BH0MvBrVfYpFQjoOhaJNfVz0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hpfTgrsu/rBwx5EpXPpwiRv0dO8qcU9PnmCQM+mI/2oGz1indYjv9is/UybE/cuWSH4Kfyj0OgU8GcHl4vXXLVSABnUEcDA0NIwlx36UpY64A+xY6smJOpHXUDU/TfUpCn8infQ8XDXPSxyDjtEW/B1wAKkNeQm4qKxV0hjtDsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar; spf=pass smtp.mailfrom=sdfg.com.ar; arc=none smtp.client-ip=49.12.208.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdfg.com.ar
Received: from localhost.localdomain
	by sdfg.com.ar (chasquid) with ESMTPSA
	tls TLS_AES_128_GCM_SHA256
	(over submission, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
	; Tue, 09 Apr 2024 14:10:59 +0000
From: Rodrigo Campos <rodrigo@sdfg.com.ar>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Rodrigo Campos <rodrigo@sdfg.com.ar>
Subject: [PATCH] mount_setattr.2: Update supported file-systems
Date: Tue,  9 Apr 2024 15:10:46 +0100
Message-ID: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Let's update the list with the last file-systems that added support.

You can easily verify this by "git grep FS_ALLOW_IDMAP" on the given Linux
version to see that the fs is listed and then checkout the previous Linux
version to see that it is not listed, therefore it was added in that version.

Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
---

I've took the liberty of adding hugetlbfs that was merged in Linux 6.9-rc1 but there is still no
final release of 6.9. Please feel free to drop that if you prefer to wait for the final release to
include it.


Best,
Rodrigo

---
 man2/mount_setattr.2 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 3b70dcd97..f4bbc088b 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -667,6 +667,18 @@ Currently, the following filesystems support ID-mapped mounts:
 .IP \[bu]
 .B overlayfs
 (ID-mapped lower and upper layers supported since Linux 5.19)
+.IP \[bu]
+.B squashfs
+(since Linux 6.2)
+.IP \[bu]
+.B tmpfs
+(since Linux 6.3)
+.IP \[bu]
+.B cephfs
+(since Linux 6.7)
+.IP \[bu]
+.B hugetlbfs
+(since Linux 6.9)
 .PD
 .RE
 .IP \[bu]
-- 
2.43.0


