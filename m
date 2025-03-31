Return-Path: <linux-man+bounces-2694-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE19CA76257
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6C3B167EC2
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F26B1DE2DF;
	Mon, 31 Mar 2025 08:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O8dUKQFu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2D61CAA87
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743409687; cv=none; b=UdpTSb0MgZnOBnfwO8E9pjvYlvyf4XIDZ8S5Mfzas1KhKMQtaK/8LIR+VVGXiH8eBp9QloErmMGrAGR3FeUaSFqWYBzF2yqRt4FDSJBbky7oy4Nume3vBjXD4AA9aHi47tj8Tqupv/OXr6QIgvPKVVMKGCf4b9BHFf8y0/6LnP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743409687; c=relaxed/simple;
	bh=Mcn8HmETSPHz6jnAPEQx9XYIHJGTshzs/AIQAvuq1Io=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=merScxeSGSh54Vti7m+os9OM2789ivB3Tf5kRT0UxA6+NyfKIpXKhs+sDlpShiHaoKfZ/Kq11GzQmVhst77pmP+xkac72lIs6No/TXW6XyL5YaX6nVv4j4FSq5x4Qc/6VqacbESUGtB0mGMLhzptU9kcjfCWZMzd8yJLffIgOV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O8dUKQFu; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e61da95244so7793025a12.2
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 01:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743409684; x=1744014484; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dVPgKjzHo6+Ai0m13cpzq/P86SV9TJzv2obIhU5Y8K4=;
        b=O8dUKQFufMsrxIyt1D7nNEb+QNIvdeqLvX46Fk2nsmkhR/L/KZ4h2WZ6HczhE+107H
         BJiDRaPA3cSVJvGrA/EqpGHKbf8xd7KC4AaMiDjYLnEG8grfBecmApjwicr/7/Y6l05s
         xPRx2ulQswbu46D7lH8cFyQAjlq3p5DuWsOpYqNuCKc/F/Y4aR40PDZfMC0tMwVrru5o
         qhOTcnlvqvb/ulR1AotW7pICypD9LWa11+Flw7HdtCo+OoUZpOGvlVSNAyfmat/o/MU4
         H+OCwvQpwsliO2NHvlBZLvPSZZKc9Ywpp7CdUjeV3wVaO5WJTLayeaWuAKsZL0dDYouP
         Haow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743409684; x=1744014484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVPgKjzHo6+Ai0m13cpzq/P86SV9TJzv2obIhU5Y8K4=;
        b=b6TveueARbNjxvbpD9lHoQuBXcorLyucd3UPSjPAMIoGsp0PUrg9ZMjJiS1y2Z3w1w
         6IMLQWAcMzJ2yV6EcsDRIhFoGyQ2ULcYeMIpwIfAYSQE6HL0OoOB8xV38wzhonAHf4Fr
         naElCU7Wokwbe5ftaWBM+coioKVWehcwKC1oy5hABd//n/Z/x1fkbOArPztb0W5R7nL+
         2UijLEDHmG0jyMPWPK+j4og8IgrAWu4wJmej6tr+51qioJNFquTMeZxNyI0wAgygt4SO
         Cp1Ul9QQaairCrD4p4lJnhi+PFGWl+FB+cSbNdYJilUu2H4KT6QB3CPuj1tOYIunXcxT
         ZqYA==
X-Forwarded-Encrypted: i=1; AJvYcCVoOBEmkM2+fJ0QLXX9ZthTxqIQpjsilV7lVFVSzifu9PjJNT6LQalduAV4u4VM3/vzMR6aYEg98VE=@vger.kernel.org
X-Gm-Message-State: AOJu0YxOqVmkuuTOSJSplX/4FkpZaNFJoE3fsjWh8ItaO91hldNAXHSS
	0p/WMD6k45L7qoa6iGRFAiu9APi5i4psg5a/J9EObBZvh8c1V0TC
X-Gm-Gg: ASbGnctQuC0qpHcRVWcY8PmHVSVRa8PLhDXQkkE7UXOpkbiOlb6doi6J4fkmnuqOJ2q
	nZpZC/jpmIPGn33BDb2Q4bnTl/POGfn327TU6WDUKyg+8QjEj2ku3qRJ40Xr8MAxuhXCan7TAJW
	Jo4oZFbMgWUMiZ8FQTMZiNQTItBiolQQjmI7su9fXWVMicRWYF/mU8qdDWKaHx5ZcyxAA/UZPae
	jZbnjTblISK+Pww7gpy2S4suauAzQmrNo/0fQ2HZn6gq1sAN61rXJjHNV6nQOSh4LtH5D53EHdT
	nFYx2geTQY9ksG6OmDrDK/FB9KmUAUz1nBBYAtHWYiO3iib/P3B2MldEQyBGCnLeWELUCHqJtLa
	z1Rv/j3j7PQkrD8Nqi5ZrFkLpeNKCJWUQ1NdnAn58JAEA9MISCCZi
X-Google-Smtp-Source: AGHT+IFbrp6eU1gZjrQcgWzq9Neyzpe3E2f/jvfhx7adD2x9gtkSLhAQpss6z3noO0+zDQJszd4XHA==
X-Received: by 2002:a05:6402:274e:b0:5ed:764f:dd73 with SMTP id 4fb4d7f45d1cf-5edfdafb4damr6633179a12.20.1743409683504;
        Mon, 31 Mar 2025 01:28:03 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16ef7a7sm5468722a12.36.2025.03.31.01.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 01:28:03 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 1/3] fanotify.7: wfix
Date: Mon, 31 Mar 2025 10:27:57 +0200
Message-Id: <20250331082759.1424401-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the introduction of the FAN_AUDIT response flag,
the response field of fanotify_response is no longer an enum
it is now a bitmask, so fix the wording around FAN_ALLOW and
FAN_DENY.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man/man7/fanotify.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index a5ddf1df0..ad864b762 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -769,7 +769,7 @@ This is the file descriptor from the structure
 .TP
 .I response
 This field indicates whether or not the permission is to be granted.
-Its value must be either
+Its value must contain either the flag
 .B FAN_ALLOW
 to allow the file operation or
 .B FAN_DENY
-- 
2.34.1


