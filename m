Return-Path: <linux-man+bounces-5454-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNiVKOX59GnmGgIAu9opvQ
	(envelope-from <linux-man+bounces-5454-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 01 May 2026 21:07:17 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCA34AF0AD
	for <lists+linux-man@lfdr.de>; Fri, 01 May 2026 21:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 311213010177
	for <lists+linux-man@lfdr.de>; Fri,  1 May 2026 19:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0B4359A7E;
	Fri,  1 May 2026 19:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Z4fKUavl";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="RO730pmd"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1B029B764
	for <linux-man@vger.kernel.org>; Fri,  1 May 2026 19:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777662413; cv=none; b=LvwN8bwkvNY1HsQrqmCLEPcdPcbVOhIXuwC28iYYwcWHnIb1UZT6jQ2+RsKetkg83UUMfTU9hEtD5vCNAWI30aB4NxuTU9QY0EMuGMVfEKDlnyQEyqMcdw6iK4uB2ea4gXURgRO/RdX5NtN9B3zOh0sPLTY7THgwvZVfH/AKKpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777662413; c=relaxed/simple;
	bh=z6QcZp3UBgbxuAq04TRVKwaj24VBgn2sqBU39ZhOPZE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WOaAtwnv7ucWpxP5lydr5u7SDlkk24/++dW8AYaHbj8W2aTq8kWhUqqGr7svDbZys53zbq6xHJbi6sXBx77Bg2/9eJId7FnVSDFVvNPgM/9LXe8L+9jL2R1mPIU+QqAIcqyuOVpAD4avsUhvDuQpMkJFsiB9QAscEZtkzI0FLUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Z4fKUavl; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=RO730pmd; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777662411;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OpwajQJkijZobZsWTt39O3Cgh+PRAgN6Cg8DcRrV3fM=;
	b=Z4fKUavlhcNmEVCTmz2KGu9tt4gu311OWxKybabdeBAOu92Th/hpRabG7VM4A9DrQDg8vE
	8OpDtfk5/MSNAxtl9kN0dQZ7Mwj5SddEKTmq/DWMGCbWYXSLbJLGB+NrTxEq/bvNZv83Aw
	W6CORIVKHM/NF1ZEHq5Rqo7sV9vY0yE=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-407-SDi8uae7NFOJgljMm-9_mg-1; Fri, 01 May 2026 15:06:50 -0400
X-MC-Unique: SDi8uae7NFOJgljMm-9_mg-1
X-Mimecast-MFC-AGG-ID: SDi8uae7NFOJgljMm-9_mg_1777662409
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d5d1c2289so51566221cf.2
        for <linux-man@vger.kernel.org>; Fri, 01 May 2026 12:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1777662409; x=1778267209; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OpwajQJkijZobZsWTt39O3Cgh+PRAgN6Cg8DcRrV3fM=;
        b=RO730pmdntDfaGfG+3ifehr84ec9yNbao9lzDuOGCNxiLS8PkM92+LUMKG8JvPkG6F
         smDhiNZH/yTem7YgYZxSQ8Y3ZqCoLcxQ3Pvkdkqf/cJdfpKsiCFfhgC7+elGRccnaWJV
         4lqT9qNZ+GpETZTvHGda+1tgYK/3fAQbWXWPnOiupYglHiCiGCHFwDMRxhhayL6m3mus
         LaG/SFrLVl8/TfLiPLE9xzpcC4onlOGMQCuYBN71cRMXM13q+ZGIxf36eiXnUc4YsZCs
         ajLziv0yog6liOVEiQNK0W4vDjPQciFW7GJYYohJ4ffxMCcWTPifwViF9i7ONsqI/n2k
         OjDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777662409; x=1778267209;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OpwajQJkijZobZsWTt39O3Cgh+PRAgN6Cg8DcRrV3fM=;
        b=MIUzEUgNRa9OgrRv3ZoOui+v7Btpf1QeqtApq4AIOrXi/+ivCCni/S25J1p3LIFPf3
         e9noJRxd1h6v/gXfg5Py3al11ftvnM8oHKPSQhtgaWUGCUzRWpmmPecz4NX9i6kFeUCc
         lM4cxTSEvmljnKcP9a4iqeQigs2SRaNsU/k2zA+qubr+cimfimFzxeeQEUiqhu7puRDU
         CJWrxdsCZwAViH8Bvf2PmgRenjFJ1a2AU0xL7OvhK4uBEJnBn7f7SBEyWhBFNirwTdHL
         AHLvAenisH9BS457GMDqA2aXYjYt4ezITp75iDl0tyorJOvqkyZ9+k6owDT+4Ci7O2UM
         TTzQ==
X-Gm-Message-State: AOJu0YylJW3VMk4s8FEg+0iUtmVlIqt4Oor9qvQgrx3j3UcnG56zeoyw
	Cx7bDllMcPpdbR6CZaiPCWAUEWdKfR1+HhLktwxF2pKU7cJiEWw+e6POjRYMy31p6PycjaaFU7n
	qZGQ8Eq77NlzSaqQ/i2JW45ZBmpVaYcPljEVWl1c2Z9fxkhcdkbHuSDR0MnmaZPPxhc+uzg==
X-Gm-Gg: AeBDietS7zgFVWYVC2dSftcvknZ4RYl6R26hRsR5VWgUNq6EVDl0vDGD43PMTLiQ2FR
	pPfVtVFh10pyrdSGtC/DlOL3yoDhCUBgWKw08bwiQO0H8JU9VhqUVx889KEIrWZcwXjRkrjsMqE
	7PTGi8pCkOzjNAq4miW45FXiqhVv2SWSRVWujUpQX2gy5AndRbvxFA7GdgqlgA9ykpUCvjxVwCc
	f9Cs5yUdIqqSyMmNMCGFtJTzFcJymiOxz4Nlj03VGm3a0PAjwN8h5eOM8G31LVwcdUZXCPPMQF4
	7e4rHHCLcj5Zcae9xAZnwNaslaeDEfsCAPF5z2vmHOmdQLbLJH2KekQCyzX6h0R8jSkJ//60PYd
	ujr0p8YujG+ZDZyuFr3T+dBf4QZXslsyvpLffjznE6515MEqB1ht1BM+a3+Ve/1bc
X-Received: by 2002:ac8:57c9:0:b0:50f:b17d:7e53 with SMTP id d75a77b69052e-5104bf6baeamr7146771cf.47.1777662409394;
        Fri, 01 May 2026 12:06:49 -0700 (PDT)
X-Received: by 2002:ac8:57c9:0:b0:50f:b17d:7e53 with SMTP id d75a77b69052e-5104bf6baeamr7146021cf.47.1777662408646;
        Fri, 01 May 2026 12:06:48 -0700 (PDT)
Received: from pfrankli-thinkpadp16vgen1.rmtusma.csb ([2601:189:4702:48e0:7c65:14b:9590:9d04])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-510408e2112sm21608521cf.5.2026.05.01.12.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 12:06:48 -0700 (PDT)
From: Patsy Griffin <patsy@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Carlos O'Donell <carlos@redhat.com>,
	Patsy Griffin <patsy@redhat.com>
Subject: [PATCH] man/man5/core.5: Update compression format for systemd-coredump
Date: Fri,  1 May 2026 15:06:09 -0400
Message-ID: <20260501190609.3604026-1-patsy@redhat.com>
X-Mailer: git-send-email 2.51.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1BCA34AF0AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5454-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[patsy@redhat.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

As of version 246, systemd-coredump defaults to zstd compression
for core dumps, rather than lz4.

Signed-off-by: Patsy Griffin <patsy@redhat.com>
---
 man/man5/core.5 | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/man/man5/core.5 b/man/man5/core.5
index 4da5819b6..83c49d42d 100644
--- a/man/man5/core.5
+++ b/man/man5/core.5
@@ -515,9 +515,14 @@ program:
 In this case, core dumps will be placed in the location configured for
 .BR systemd\-coredump (8),
 typically as
-.BR lz4 (1)
-compressed files in the directory
+.BR zstd (1)
+compressed files
+ending in ".zst"
+.\" Since Systemd 246:
+.\" commit ef5924aa313d1892bb491c870ba3c429454dfc76
+in the directory
 .IR /var/lib/systemd/coredump/ .
+Compression on or off is configurable via coredump.conf(5).
 One can list the core dumps that have been recorded by
 .BR systemd\-coredump (8)
 using
-- 
2.51.1


