Return-Path: <linux-man+bounces-5016-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HsPD7DPfmn2ewIAu9opvQ
	(envelope-from <linux-man+bounces-5016-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 01 Feb 2026 04:59:44 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E4CC4E25
	for <lists+linux-man@lfdr.de>; Sun, 01 Feb 2026 04:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FFB5300E702
	for <lists+linux-man@lfdr.de>; Sun,  1 Feb 2026 03:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 638122C21F0;
	Sun,  1 Feb 2026 03:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIhk1QBA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782E1A08A3
	for <linux-man@vger.kernel.org>; Sun,  1 Feb 2026 03:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769918381; cv=none; b=kKWV+CoLHD2IidijXolx7LA1xLJyEuqJkAlrDzVEQfAAHQkF/8Vo5LU6lvAdymgSZgtxtYqtpkLYvJha3WC9rxNS3qsmvetWupWihpIwEiQERVWTQtDJEbHTkGam6lFXxbOp8VLGaDeGa/EhyTj+UojjrfWMjYhjvCDUuRt4C9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769918381; c=relaxed/simple;
	bh=S8iHfDfkqrxkzKg/ico4WdVjaVJZAkcQog0grutruFw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=cb+gH0YEImgpoTkb3ieU50vAHZscRvf3/HQ1OHDGz8xuEOW3jqPgbofieM/vK+ziR2MjBn/+iFfs0rxXdV3g+GE7xCmngoEOovU73PiMVyhvAA6oXFn0I5fXkmfACjJSRDtVAuJJuT7Y/b31+fm03x2VB/Yp9TCsPdSvSrZpmts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIhk1QBA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AB2C4CEF7;
	Sun,  1 Feb 2026 03:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769918380;
	bh=S8iHfDfkqrxkzKg/ico4WdVjaVJZAkcQog0grutruFw=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=JIhk1QBAaDeG5rqYq8fRLhfvBeuMNJK+YxpSBe6EwTMyuwH86jIq7YXckrZznt+1z
	 oISGZhGMDapH9qm1Nn5VV8l7EApeRphcqboCsm7uBCgo3GoEeGvetUghceoET4pHCI
	 tYMc0aolqIzhLpobS/Lhjc//zWUcdRaeDjgyJsFFqdKmRyxDUM95H/W6N2oIHOI8No
	 caSWUI6wNFJduQ+h1xEqq2N0q7WJtZULEBgtu4kqL+ddVBtsIFDqds3Dy5vKwx0j0b
	 wlzZToFA8YCtPw8LDGUZ8MAsRo3A6p7tFNbidSlrOMA3xVBHDY5hL9+z+Sw3Vdd1uU
	 V6Vk2TZ0JI0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8EEE7C705;
	Sun,  1 Feb 2026 03:59:40 +0000 (UTC)
From: Chen Linxuan via B4 Relay <devnull+me.black-desk.cn@kernel.org>
Date: Sun, 01 Feb 2026 11:59:33 +0800
Subject: [PATCH v2] man/man2/mount.2: add ENOSPC
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260201-add-enospc-for-mount-v2-1-43c990199cc6@black-desk.cn>
X-B4-Tracking: v=1; b=H4sIAKTPfmkC/4WNSw7CIBRFt9K8sc/wsbVx5D5MBxQellShgUo0D
 XsXuwGH5yT33A0SRUcJLs0GkbJLLvgK4tCAnpS/EzpTGQQTHeOSoTIGyYe0aLQh4jO8/IqSFKf
 +rGxHBHW6RLLuvWdvQ+XJpTXEz/6S+c/+CWaOHPt2PLWWaZKmv44PpWc0lOaj9jCUUr7DXddYv
 AAAAA==
X-Change-ID: 20260130-add-enospc-for-mount-3ea1e87af6ee
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, CAI Qian <caiqian@redhat.com>, 
 "Eric W. Biederman" <ebiederm@xmission.com>, 
 Chen Linxuan <me@black-desk.cn>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1518; i=me@black-desk.cn;
 h=from:subject:message-id;
 bh=+y9EMiP/IH2Uz/tYjScMx2l0NpB9p+FLiJPVbwBeQPA=;
 b=owEBbQKS/ZANAwAKAXYe5hQ5ma6LAcsmYgBpfs+qAM9+rQU25/ggPGYEUhhG0+GMkgWWKhKGO
 itrryCzqPiJAjMEAAEKAB0WIQTO1VElAk6xdvy0ZVp2HuYUOZmuiwUCaX7PqgAKCRB2HuYUOZmu
 i22bD/0Ywlg0oLZP2athUs3SlIk2x9fXvxfRlqjmHJHN+W2y7JjrwlPoht4Xk89Ke0diUsYypC0
 eCopvR7C07AQup1XYjtaBwV26L7qICk+sdNOc7hon0PWf26JXPIlQickCcX3MPXxv+ruebFtRTj
 Zq5G8q5uitF9u+GTyo1K92VVDEA17ucJd0NFB+RkaVeQFKp8+JvYcZXhzKTXPEXfGoY4nK3Rn+A
 gp9d1gTZquvfk7kCXp43WmFMR44//eAffYOeZJAQkEomC2SCSWtUlOx8y4EUqCMuglONpdTndoW
 0Dhc/MXsWEE148Z5349fJ0cPvUWK9rstfIJv2svqG4SFH/UkD+ksiexLaz76fE+RZh6Mh02Gi7V
 bbc38cqtAMfmruMM8oZfYt2lz9JfzuH0VdGL14bxZoxuomrNZP/ByHswwAYFmuhS2FTH6pkVTYp
 2rynB2Ty8rSXpsplbK/5MmB8iO8zyagx1QQLctaQLk3yTQ29eihQfX/pOvPcNJqmcfBfOIGcvew
 3muIAuFdpZymsL0WIryARSdJIQSH8XFNSTRrnugnCPPaF4WP6sq/oPjjP9a/UVJfetbV981VI25
 UaJaeFKPzDqxkwgM1kIp8vbnVjt813/71kNPCzoLHsM0vFTCvxeLhVRN/g3CdQla13agGHl8fyK
 hQ2ndlFYcV14r/Q==
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
	TAGGED_FROM(0.00)[bounces-5016-lists,linux-man=lfdr.de,me.black-desk.cn];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[me@black-desk.cn];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,linux-man@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,black-desk.cn:replyto,black-desk.cn:email,black-desk.cn:mid]
X-Rspamd-Queue-Id: 80E4CC4E25
X-Rspamd-Action: no action

From: Chen Linxuan <me@black-desk.cn>

After linux commit d29216842a85 ("mnt: Add a per mount namespace limit
on the number of mounts"), mount(2) might return ENOSPC.

Signed-off-by: Chen Linxuan <me@black-desk.cn>
---
Changes in v2:
- Apply changes suggested by Alejandro:
  - Correct the sign-off line;
  - Use semantic newlines.
- Link to v1: https://lore.kernel.org/r/20260130-add-enospc-for-mount-v1-1-85b45f0ce3d8@black-desk.cn
---
 man/man2/mount.2 | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/man/man2/mount.2 b/man/man2/mount.2
index d5a68cb836b2..35fef946a6d6 100644
--- a/man/man2/mount.2
+++ b/man/man2/mount.2
@@ -793,6 +793,21 @@ A pathname was empty or had a nonexistent component.
 .B ENOMEM
 The kernel could not allocate a free page to copy filenames or data into.
 .TP
+.B ENOSPC
+Number of mounts will exceed the limit after this syscall
+in some mount namespaces.
+This limit is controlled by
+.IR /proc/sys/fs/mount-max ,
+see
+.BR proc_sys_fs (5)
+for details of this limit.
+Note that this limit applies
+both to the mount namespace where the mount operation occurs
+and to any mount namespaces to which the mount will propagate.
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



