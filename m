Return-Path: <linux-man+bounces-2695-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 959D9A76258
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 489781687DA
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4907C1DF248;
	Mon, 31 Mar 2025 08:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k62Vy8ft"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EE71DE2C6
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743409688; cv=none; b=Sh8vP32qaA0kGFsuqjtR7lvV55LQGieEM7iriAThjiEjbQfWymwWPELQbBkuKEHBB8moDjzV6vVr4keqZoHpiXNTMPIUI5xwSM4Yd2tDPK43WnjVFd7GCUY+bwZ6Ts+IScxUPHwqzeKZMsxLEr2ndGOxvcUhFTZxAtq6SbUdp74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743409688; c=relaxed/simple;
	bh=I9ORdEWCPOBkW3+g196tXJyImVLi+j3FDIeThk7rfrM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FD2CQqvj4Zj/Y8p67Q+oT3/aleRVtLr8ZvTUs7ti7sMFWudM8P2fIckSQYsH26BPPmdOwyFtH9YxwNW/UF1ANGyKvvnmDyMSHCPgZg4dt5IdaLFJ7plqr1DX4+GO8q7CoPthjgvnFO7gNTH/gsQ26qljx5tMp5Cfl8L5IEywiic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k62Vy8ft; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso3379435a12.0
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 01:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743409685; x=1744014485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=feYaPQwqYdpKA9gg3PhWULykoIeSpXTkAwxNbqaJ8Vg=;
        b=k62Vy8ftOVw+xlmp5hc3CP7bHsnipbLDxuR2ZsU2nk0tLm4EAlDfIT7Kn5qtd6u0kr
         a+nrR/hK4x64maiO66rxGZRFPZFyrN8+ta0kiy7jgWmeYmHQ261QAbER3N+inFMFydMH
         gg3x+q6lwi2kmk92WBvRgjnrVtJz5qC+EQsub32FAEwr0n6e6TQOYDN4gzEO7RfG/MuI
         o1ExkuTOFH/NYyWzkHpECK9HjQ0dIbMVLKI00rJa8AJ0KPwhc0dqNBUN14WdFP5qFc68
         vcerl71yarxiLTvr2HQ6FgePZMPD6VFP2GhZv0fNlwy35oss+1fHoeHyZFJ+AgpWK8TF
         OqBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743409685; x=1744014485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=feYaPQwqYdpKA9gg3PhWULykoIeSpXTkAwxNbqaJ8Vg=;
        b=gkAC5pCO1NeUxuvqUr040kKmUbBbn3UKgtA0GeVt3VrNW9+Doe/ljGREtIVq4XibxL
         vUTFBfm8cJ2mVW0XDkRRrb+r/mh7gDlHkUQoBr8ziqroL9k5eCGe7KTolXE9c/jIQiS+
         0/EIh9ATXsfXQVjkxtBetE1wXLE8YPwU66cbnVmCFFBhFWSX1/gJ9c/lpZML+FhJQ009
         NVeEmXEWuDtnCC/96ZEd21daQcYLUMWufehV9uzfAShn8xnfRxTR+vOwdgvl7bz9J/5Q
         TOlP7AQsPzSyc6B6HrVBgSTM/pxuV8tL41cbEdtiMSdBSGdrv5a7nENC8+++RjVRXg7B
         Vgow==
X-Forwarded-Encrypted: i=1; AJvYcCVifvEu4sSUyRv1lYR5OS8Bl7Pcck1p4WS63v74+Bz7LfBtDStRhdLc/FNHGI1nJZ3TlAziIwYLpiU=@vger.kernel.org
X-Gm-Message-State: AOJu0YxaVYLGrPsd3WL5HhdIQt9ohCu+w6pFgWPAxqvjYSVSU8/iMrrN
	eFZRw7XNhxtyM+VFyty836b0NxAj8R0K0JbVDkYU6WsR2xJjw9xk
X-Gm-Gg: ASbGncvcBtBx4vpeu3IJZvvrRz9GXMF4OtxZ5W6MKcPK9i+M472/YcZqKq+3NOa85KC
	m6PeL7bHwdx0NWgbcZk4koNsvPQYXLyXZaixrSnZ+ZSQ15mLYfSliciVm0wtyA7P7JeJsj0UyK2
	KzCQDzdbXafNgdlljBpDvxz4G/HCtCqK9aznJnF7kaJC9wdxX9Y4tA7QuhW4NPLohyauJilvHnc
	4gLwvX5LlLYSlmenM2P1AV35XWszHds57i6q9A3Rs89tsLWAvS63uNoKOzSl2MEuoTy1v4E+wA8
	Udiux1u5+pcMuYDVVD3JKcEpHKHEJTo++ZbuwzhWTmwnnupchlGBZPMTmXE3Bbm23b6zQXhmWHq
	zCFWvN6Xpksriuw3wRmB6VjRmyFYUcVE5H1C1XUoiFg==
X-Google-Smtp-Source: AGHT+IF0badPdEivSKgSI3TLG9z1uvqWeJ+6YtLyKEJsHbzRCQkqhnjVfyhGz9wfawPXrP6XAizxJg==
X-Received: by 2002:a17:907:a08a:b0:ac3:cff:80f1 with SMTP id a640c23a62f3a-ac738c880d3mr701819166b.54.1743409684195;
        Mon, 31 Mar 2025 01:28:04 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16ef7a7sm5468722a12.36.2025.03.31.01.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 01:28:03 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 2/3] fanotify.7: Document FAN_RESPONSE_INFO_AUDIT_RULE
Date: Mon, 31 Mar 2025 10:27:58 +0200
Message-Id: <20250331082759.1424401-2-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250331082759.1424401-1-amir73il@gmail.com>
References: <20250331082759.1424401-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document FAN_RESPONSE_INFO_AUDIT_RULE extended response info record
that was added in v6.3.

Cc: Jan Kara <jack@suse.cz>
Cc: Richard Guy Briggs <rgb@redhat.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man/man7/fanotify.7 | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index ad864b762..863578bd7 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -787,6 +787,49 @@ flag can be set in the
 field.
 In that case, the audit subsystem will log information about the access
 decision to the audit logs.
+.P
+Since Linux 6.3,
+.\" commit 70529a199574c15a40f46b14256633b02ba10ca2
+the
+.B FAN_INFO
+flag can be set in the
+.I .response
+field.
+It indicates that an extra variable-length response record follows the
+.I fanotify_response
+structure.
+Extra response records start with a common header:
+.P
+.in +4n
+.EX
+struct fanotify_response_info_header {
+    __u8 type;
+    __u8 pad;
+    __u16 len;
+};
+.EE
+.in
+.P
+The value of
+.I .type
+determines the format of the extra response record.
+In case the value of
+.I .type
+is
+.BR FAN_RESPONSE_INFO_AUDIT_RULE ,
+the following response record is expected
+with extra details for the audit log:
+.P
+.in +4n
+.EX
+struct fanotify_response_info_audit_rule {
+    struct fanotify_response_info_header hdr;
+    __u32 rule_number;
+    __u32 subj_trust;
+    __u32 obj_trust;
+};
+.EE
+.in
 .\"
 .SS Monitoring filesystems for errors
 A single
-- 
2.34.1


