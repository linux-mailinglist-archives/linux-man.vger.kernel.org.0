Return-Path: <linux-man+bounces-5014-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mF3eHFxofGk/MQIAu9opvQ
	(envelope-from <linux-man+bounces-5014-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 30 Jan 2026 09:14:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE13DB8371
	for <lists+linux-man@lfdr.de>; Fri, 30 Jan 2026 09:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A70B30125E9
	for <lists+linux-man@lfdr.de>; Fri, 30 Jan 2026 08:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E764A34FF4F;
	Fri, 30 Jan 2026 08:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVEEsd9H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAB032BF55
	for <linux-man@vger.kernel.org>; Fri, 30 Jan 2026 08:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769760848; cv=none; b=AuJFcxaKjpt+zeJFkWAJ2l7m6l4dGAVrBAlzwLAijAoiDPAca0e9vLPlZ0TgdNW2Cfv6Q2Z9q4YXIccPJdmst0wxOEhIMwt0w7dAevWWYEgo7PTD31WOcqbTRTKHnXZWjv2D8HkaWOYZohOSVwXZEe5DFeiIiRYLyS3bagw/5ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769760848; c=relaxed/simple;
	bh=tz/V/1sKNz2Z1r3cWmTXk3KOlhJCBmwlr+OUbLYzUCI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=reO46SIYh75NUmPHEXEnxTxzewGgo2ZwVSJxF0xYyZxxuI56QlzNrJS1LDvY4XK1SvUtkjTJkR7s7viDbCIs60SIC0MIxz13RX8DgjYPade8d/4pOTKl+p9LCD4pmeR34HGbWskyydT+AtglfIAswJz/FBMjOtMJez822gvfGjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVEEsd9H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3598AC4CEF7;
	Fri, 30 Jan 2026 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769760848;
	bh=tz/V/1sKNz2Z1r3cWmTXk3KOlhJCBmwlr+OUbLYzUCI=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=bVEEsd9HKC858IkvS0G3MgL6gAC1vauVmrh/a+AztS+/SXWwP0AmZymtCdAzPDMyb
	 Trciz97qhwVIEaIUFWuNlSjZ8/UsUbxYIbnIA22drrGat02dyAtADRXNnGQpXzbuhh
	 S/HbhpKfUMEfCcDQh3CoeKKTQ4dZRRzUxu9p6VLjp4fIvOfm+bE52PqeQSqO4dLB4U
	 pBW3nfu5xEURq/aiauEqbrp5MrlYm+1NSgVcly/NOCNPJ37mp4hcNjuJVUvfCgrJ2W
	 UbwpNyJheK/T7sLA1S+cJWSG6uo7sqMHSJ32K67KjGOzqZJOPQFoljNv49ERo2E5r3
	 wLDwraZd/XiTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C5F8D49C72;
	Fri, 30 Jan 2026 08:14:08 +0000 (UTC)
From: Chen Linxuan via B4 Relay <devnull+me.black-desk.cn@kernel.org>
Date: Fri, 30 Jan 2026 16:13:54 +0800
Subject: [PATCH] man/man2/mount.2: add ENOSPC
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-add-enospc-for-mount-v1-1-85b45f0ce3d8@black-desk.cn>
X-B4-Tracking: v=1; b=H4sIAEFofGkC/x3MQQqAIBBG4avErBvQgoquEi1Ef2sWaWhFEN09a
 fkt3nsoIwkyjdVDCZdkiaFA1xXZ1YQFLK6YGtV0SreKjXOMEPNu2cfEWzzDwS2MxtAb3wFU0j3
 By/1vp/l9Px602yxmAAAA
X-Change-ID: 20260130-add-enospc-for-mount-3ea1e87af6ee
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Chen Linxuan <me@black-desk.cn>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1292; i=me@black-desk.cn;
 h=from:subject:message-id;
 bh=gU7ecDZdL4z/t81TZk6YVlIf5YQB18mJInOHzXd6oCo=;
 b=owEBbQKS/ZANAwAKAXYe5hQ5ma6LAcsmYgBpfGhJaR9a2Zdtyxo3XabGCwTBJzaFOROnzgrO7
 roAuB9xtEOJAjMEAAEKAB0WIQTO1VElAk6xdvy0ZVp2HuYUOZmuiwUCaXxoSQAKCRB2HuYUOZmu
 i3xUD/0eNVOOxAnydEiSMHqGLvweF+aImUsLO8cUSz8XGI22U53n7gdXlygL6+2qsG9r5UZL3XK
 IzpkLboj6W3POelztTOxTR0HAUaUiCrkPeW3Gc3wbmI27AxnQmgYHRHrq5+q0Cpey5e0u95Dhj7
 ZOBFE+NQ3bTUWifJC+BnAGhSQb8ku3HWOQJb6/CcdG5LWQ5qJJpq/xpeUK3d0x1slF/Z0E0/8j1
 rSQJB4DRIrkaePC/8IQW8DU9LJrduCdwFIJYOKwbqfhMT7l96qpaCnH+Cdt1C4WJ0ieJrYMapPH
 k3x7rbBusQ46JCGUYGkS38CxwAE26g2HLGYLY2R6uY7DCwBNRi8au7Cb0wXyDdBeUSpQ79qoTy0
 OmswfYAsNZmSHqkAN9txLek2nWoEDVAqY5pX6Rd2op/6bHpfiHeL4k4XupfGBlQH/9p3i6q5sxZ
 1o98w4DEgkmuS2U9P2cA3LkBi6jQ7H5vEYddlo0RXHKgAQ9/wlWaym2pABzRR9eu1fPe8DCJaV5
 tpREozdGATgj9+zQdOSvcJs3Tv8t4vcDGF78VJye+Flc8y79Sf2T/zTFVgKNHAvWbSRwgRluYye
 LFM4uCtHbbOJvQOp2uWKlPzVp6U2RQpiutYZ/jA73EaYwPBOKX8JQz+BzwjdWbU58o0P/Lvltn3
 7vsdwtsduR61stw==
X-Developer-Key: i=me@black-desk.cn; a=openpgp;
 fpr=D818ACDD385CAE92D4BAC01A6269794D24791D21
X-Endpoint-Received: by B4 Relay for me@black-desk.cn/default with
 auth_id=573
X-Original-From: Chen Linxuan <me@black-desk.cn>
Reply-To: me@black-desk.cn
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5014-lists,linux-man=lfdr.de,me.black-desk.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	HAS_REPLYTO(0.00)[me@black-desk.cn];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CE13DB8371
X-Rspamd-Action: no action

From: Chen Linxuan <me@black-desk.cn>

After linux commit d29216842a85 ("mnt: Add a per mount namespace limit
on the number of mounts"), mount(2) might return ENOSPC.

---
Signed-off-by: Chen Linxuan <me@black-desk.cn>
---
 man/man2/mount.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man/man2/mount.2 b/man/man2/mount.2
index d5a68cb836b2..bebd3c1792ba 100644
--- a/man/man2/mount.2
+++ b/man/man2/mount.2
@@ -793,6 +793,19 @@ A pathname was empty or had a nonexistent component.
 .B ENOMEM
 The kernel could not allocate a free page to copy filenames or data into.
 .TP
+.B ENOSPC
+Number of mounts will exceed the limit after this syscall in some mount
+namespaces. This limit is controlled by
+.IR /proc/sys/fs/mount-max ,
+see
+.BR proc_sys_fs (5)
+for details of this limit.
+Note that this limit applies both to the mount namespace where the mount
+operation occurs and to any mount namespaces to which the mount will propagate.
+See
+.BR mount_namespaces (7)
+for details for mount namespace and mount propagation.
+.TP
 .B ENOTBLK
 .I source
 is not a block device (and a device was required).

---
base-commit: 6754bd1a126ed1e9b7d9c2bc1d221681f5182bb3
change-id: 20260130-add-enospc-for-mount-3ea1e87af6ee

Best regards,
-- 
Chen Linxuan <me@black-desk.cn>



