Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0523532B539
	for <lists+linux-man@lfdr.de>; Wed,  3 Mar 2021 07:31:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355143AbhCCGZg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 01:25:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238981AbhCBRik (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Mar 2021 12:38:40 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D7DBC061A32
        for <linux-man@vger.kernel.org>; Tue,  2 Mar 2021 09:20:36 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id q20so14248664pfu.8
        for <linux-man@vger.kernel.org>; Tue, 02 Mar 2021 09:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cilium-io.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4OQ4Fa3XDb0vqLtsUsGhKWRVVUdgFV/a7640/4sVzCI=;
        b=VEn+KrqTLvXG4lYjWiPEl63hjQynBvGUaNH9btc9bqSkGLG/SAwpdWRGUsHJLQmmyr
         5/AnNoFDms5Nd4h39i4ird96IfTOdmVttHfudZZ6jJP6oY3ipvAab/lfXqN0Z/bJvUJZ
         TOAjHzM5LXPGwEz91/2sx9pWdQuJ6LrwlhH5czJwLZY3ysSYB8hgkqf57Fmrr1IEnAoy
         5rjTpDWxJi8LfpPz5/D4eOzdm4/nICzedFqu2mMK86GUPRcR+WosqRM2XRNc797Z5tAZ
         bsSss/XNt6HY/Jq+UwhxhR/Tp1GaQ6X7aNoiEtE026hQCaStKvzbWYCErMP/15MezB0D
         m5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4OQ4Fa3XDb0vqLtsUsGhKWRVVUdgFV/a7640/4sVzCI=;
        b=g+h06Hr91kos4llJuSFrI3ALbAPn5eeZ8i5L0dNSUFNpwEdH3P5RdoE0gAJWJmMZLu
         FcPGRJvCN1OA3euq+yvQMTXlYMhaq1+AGehdgRAP87V/EB3fpXw566d/2SUluwOmG+MW
         rwbAgVHmtFLSN2dybV1egyxwH0uq7E4hHfmF8wcTMMF+u3U/x9hqrfzqzxPLpNSA2Huu
         YND3aXBsbtSCSc7YCsCBTlPQLTPMtkISPXdUda9gUi7GHUyt62RIzlZ3D/XD6w4JE8uO
         2Ncq3Q48dfPC4XUw6kKr6WUalveOe2LcDOXKzsDHMpzinM0ek1s8BbLtylrSNG2KkTON
         uWVQ==
X-Gm-Message-State: AOAM531IvnNW5HRChcL45XPdt6XZSfiNZX5Y/6RBypeR84FuH6jMGiIt
        Nh7l17FKE2aKZ7ajZHWyxWCLLw==
X-Google-Smtp-Source: ABdhPJxA2lvb0g3CuazPgmOebM0zd3D5/1CGdNrCBlzqn02l1xdSIJobPdOgKhL6LIUuS3t1rZO3AQ==
X-Received: by 2002:a63:505d:: with SMTP id q29mr18501814pgl.218.1614705636133;
        Tue, 02 Mar 2021 09:20:36 -0800 (PST)
Received: from localhost.localdomain (c-73-93-5-123.hsd1.ca.comcast.net. [73.93.5.123])
        by smtp.gmail.com with ESMTPSA id b15sm20073923pgg.85.2021.03.02.09.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 09:20:35 -0800 (PST)
From:   Joe Stringer <joe@cilium.io>
To:     bpf@vger.kernel.org
Cc:     daniel@iogearbox.net, ast@kernel.org, linux-doc@vger.kernel.org,
        linux-man@vger.kernel.org,
        =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
        Quentin Monnet <quentin@isovalent.com>
Subject: [PATCHv2 bpf-next 03/15] bpf: Document BPF_F_LOCK in syscall commands
Date:   Tue,  2 Mar 2021 09:19:35 -0800
Message-Id: <20210302171947.2268128-4-joe@cilium.io>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210302171947.2268128-1-joe@cilium.io>
References: <20210302171947.2268128-1-joe@cilium.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document the meaning of the BPF_F_LOCK flag for the map lookup/update
descriptions. Based on commit 96049f3afd50 ("bpf: introduce BPF_F_LOCK
flag").

Acked-by: Toke Høiland-Jørgensen <toke@redhat.com>
Reviewed-by: Quentin Monnet <quentin@isovalent.com>
Signed-off-by: Joe Stringer <joe@cilium.io>
---
CC: Alexei Starovoitov <ast@kernel.org>
---
 include/uapi/linux/bpf.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index 052bbfe65f77..eb9f059f0569 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -123,6 +123,14 @@ union bpf_iter_link_info {
  *		Look up an element with a given *key* in the map referred to
  *		by the file descriptor *map_fd*.
  *
+ *		The *flags* argument may be specified as one of the
+ *		following:
+ *
+ *		**BPF_F_LOCK**
+ *			Look up the value of a spin-locked map without
+ *			returning the lock. This must be specified if the
+ *			elements contain a spinlock.
+ *
  *	Return
  *		Returns zero on success. On error, -1 is returned and *errno*
  *		is set appropriately.
@@ -140,6 +148,8 @@ union bpf_iter_link_info {
  *			Create a new element only if it did not exist.
  *		**BPF_EXIST**
  *			Update an existing element.
+ *		**BPF_F_LOCK**
+ *			Update a spin_lock-ed map element.
  *
  *	Return
  *		Returns zero on success. On error, -1 is returned and *errno*
-- 
2.27.0

