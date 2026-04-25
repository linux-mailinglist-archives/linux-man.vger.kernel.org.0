Return-Path: <linux-man+bounces-5400-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNXRC3jE7GkUcgAAu9opvQ
	(envelope-from <linux-man+bounces-5400-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 15:41:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F98446683D
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 15:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A23F300D951
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 13:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967D217AE11;
	Sat, 25 Apr 2026 13:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="s2X5WU1A"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BC230F806
	for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 13:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777124468; cv=none; b=LWOEh44EvKBFxp1D/9iGPbYFnkUiAvg46HfTZTILvQUsDOEjwQbo9T7YpqbxZepc16oXgFNOBxJ33VTa/BfPIsXqidshHIpWumAs+vqk480R5Q2HtFjj2cFk/gWPZ9Iv6YgSbdUfaPpjKSDTDc4A4OsVMvCcjc3nBqHtB1Q8qf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777124468; c=relaxed/simple;
	bh=QtqAHdFPr/0/tubTb11roVCw9AUmDWWt0eV8U8GxpoE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K5sPXrfCm74b5GQFQLesINNtGpBHbMS7VXTNlf50AlXHt/HMjN0a7ao4I+piWnv3rPbE+CmCVGUHUN35oaP3IainRbl4eTncg35vDMu7HlglyU3lxbyOvEWYeTt93BKLttr0Yqtxh9P7AEOqcAcTRa0FSFI4U7IHuNLY6gW3pSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=s2X5WU1A; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-83178c0f29cso1824854b3a.0
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 06:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777124466; x=1777729266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WuqB5jGJoBv1/KO7jqrXABR+pLmPDCrnuU+dEqRrHw=;
        b=s2X5WU1Aq42NbSmVMAYu/X9GX9EeN33kCize/CCT4Xn+0K+DX8anSjSZhiFRj4DLNZ
         /rwp7s0muOrvlIvOfZqTo4Hk/yDPrLBvoCZ9bG4jp06mbzD7lGWoACgutpaCPbSb/En4
         OsUiW+83WYgwKpa5VJQt+8gB3ZveunhHqY8c/H2ME6RoeyD4k+9/7WICmST8d/1GwYW0
         f1SSCZHQj2s3n2KK7FTwrMB4ufZ3Z9Ft8fMx7OH6QpQaDS4XA0IY/d3dmB//TYv6xMJ4
         obU9ou6E8gP4Kh9dN9RaUbxhjOXCZwWQPOaQixTA5xKZXU471NlrH3Lb7MKywHkfyuaK
         Hhag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777124466; x=1777729266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/WuqB5jGJoBv1/KO7jqrXABR+pLmPDCrnuU+dEqRrHw=;
        b=sHVDoaD0hNUd/QN4RTGsIptUzoAfAiJgD3o3TSEJSbMz1SwUWe1CosKzakepknCZ0J
         5Tfmqx7A3pTpCdJ+Q6GGmUZdFK4xIbLTW4fTHR44BCu29VUjqHl6vrEbRYjdh2jjOh1H
         f1rhYdYZciPpNrU76GNmZeKXlePvE46AdLkpam6cO8P4AqxS4nr7Htq7bAMcbPgqL9XD
         SeV+gc4gA1j6W8r9b50vStIdJOD+KIbP9mftu0vJkxBQuKkOakUM9XxMFs5TRBACwz0/
         zrTiTsgw2TCoHNZJhl0tdbCMPaJ5qA6P0qzJW/S8TWmVME+MPOXKWXyl8YTDnqlDqewv
         2sVQ==
X-Gm-Message-State: AOJu0Ywg7y7iAYaqDi4aESbBMV8E/HYfWXnA9vn8JlwIDNAJnT/lc9gV
	1IZQfd/6bDvedD4PYrfYXwD2O4TdxXwDM6Dx3KOtSn3a2cuxG68wBA4+HJcSbIsJ92E=
X-Gm-Gg: AeBDieuIOggqY9vHhk51CwxUG9PjePR+dGyCQZ2CDDCp1yaPKXtEbgtSfWL1eeeH3QY
	qBw044bvpqCTfqoaGRsCrykNBFwQKGlpvc4ojAvDNUBVrwi+qC4YNqBsCWDpQ+5UkKffp+jNb68
	TZCY0V4kTb6TxvcMlfX5GqYagA82c7rTKHSA3UbZ5vO4U22JBT4ilu7NTS0Pf4xslOlOzE7srCr
	SENhkj/TD8zh4bL4QJfk7o/zKapztT5mH65hhEQlJvn4bTyzxOmgwPfWKfrchIqOFzqA3jyKivA
	pkf7BRu2lqc9cT2fv85UUIE1GM++tHqnhuS03qHzautTHW0RSYGlsJ87PCNHHXC+oyfZ6vjDi8R
	JuYiYumNRVr7gAIcVGcVrLJBz1+l8LnDoh/piOSCV+L9YteWWKOHMqq4Q+1NTrUGTmgOmJzvHbv
	vmnr9hDe+GYXuiNdjykWS5xdFYuw2URbSxMMCYxrM72GcJ/jtht5mNHZXOlufNF0ZIwg==
X-Received: by 2002:aa7:88d3:0:b0:82c:eafa:8863 with SMTP id d2e1a72fcca58-82f8c9501a8mr35878670b3a.49.1777124466374;
        Sat, 25 Apr 2026 06:41:06 -0700 (PDT)
Received: from toolbx ([103.103.35.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f8ec0566dsm26839467b3a.57.2026.04.25.06.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 06:41:06 -0700 (PDT)
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
To: linux-man@vger.kernel.org
Cc: alx@kernel.org,
	brauner@kernel.org,
	jlayton@kernel.org
Subject: [PATCH 1/1] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Date: Sat, 25 Apr 2026 19:39:28 +0600
Message-ID: <20260425134048.62616-2-dorjoychy111@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260425134048.62616-1-dorjoychy111@gmail.com>
References: <20260425134048.62616-1-dorjoychy111@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6F98446683D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5400-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
---
 man/man2/openat2.2 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
index f0770f3a0..42ebf22ea 100644
--- a/man/man2/openat2.2
+++ b/man/man2/openat2.2
@@ -133,6 +133,19 @@ argument,
 .BR openat2 ()
 returns an error if unknown or conflicting flags are specified in
 .IR how.flags .
+.IP
+.BR openat2 ()
+also supports the below additional flags:
+.RS
+.TP
+.BR OPENAT2_REGULAR " (since Linux 7.2)"
+Only open the file specified by
+.I path
+if it is a regular file. If it is not a regular file,
+.BR openat2 ()
+fails with the error
+.BR EFTYPE .
+.RE
 .TP
 .I mode
 This field specifies the
@@ -471,6 +484,12 @@ and an escape from the root during path resolution was detected.
 contains
 .BR RESOLVE_NO_XDEV ,
 and a path component crosses a mount point.
+.TP
+.B EFTYPE
+.I how.flags
+contains
+.BR OPENAT2_REGULAR
+flag and the path is not a regular file.
 .SH STANDARDS
 Linux.
 .SH HISTORY
-- 
2.53.0


