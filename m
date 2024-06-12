Return-Path: <linux-man+bounces-1163-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A61905D08
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 22:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B960F1C21D64
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 20:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D9E54BE7;
	Wed, 12 Jun 2024 20:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZOHIBcjj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC86043144
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 20:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718225138; cv=none; b=mXBDeu5dNL7mpbh6PxCoWS6VCdKgohEJUsCMjRf+BmULUf8GNLD4SfnNgzmsMs1aks+tLpW8MByI1HqhRXNzqxPc1++zUPWv+C0OxrDQNyQM7WoIg571pTFKkZkKlM2Eo2IANiqX1RLWoBuRKsUtb3rwPGVLYBpL3bcbp3EoEiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718225138; c=relaxed/simple;
	bh=Ge/19s9cU/ztBv9Bjlq/piDvr/bJ7gkl1eiuaneuMpc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WWbH9hZH7wOuL8QBIDX62/cMiundlJMOwiK1iXXHENlWTE8+kyIh9UP24FTw7cBunanmg4YseB1B4WcBNVLnUKi+ctSfT/tDxHTPTwB3sCt+freOmOv/ScG1QbAFiO/U7VOiy88S8Z2zVviptcJAAx/ipVUiX1Z7eWeTAeADw44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZOHIBcjj; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1f8507aac31so1697165ad.3
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 13:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718225136; x=1718829936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aVz+cE8lioJb8jRrXp8kXQ50O3PONOzjx0TB5jV346g=;
        b=ZOHIBcjjqvXvpqR052NBkaAE4+CbE6O9Uyw0Us8oD4Cnilld/Uj9kRyzgmQFu5VX+p
         RLjr/IxP94+3nwpKdLBtgcYJc94HA12GAswWBpH9e024nVFIEozbZG2KQFml+DXG4DRM
         ZsmT4+/5YVzFWu+tgeI5C5t8RCcUKNqlXsuzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718225136; x=1718829936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aVz+cE8lioJb8jRrXp8kXQ50O3PONOzjx0TB5jV346g=;
        b=vesirqTdMS9hV5XiWTi+2Xcq9I3IazTc5E95wgv7aJWZBN0Biify8u2/K6uC9FL2OV
         cG4lKgYnMGvYveorKEt1zLVMDzLUpje6h6Lk1C+hrtwADyQNRvJcZU10PjB5jlMnJrou
         df/ryuKFs6ObYqP8aoDIlYdcYtParGY7WpIp3up2nBVEvMqJ8W7NhohD8uiCHSsC15Bp
         OdTEXuGfL2U7jG3qbw8GoZd/GU4BeqiTb+AdzJHodCgeADyRQkWAaGroVy6zDXItWMru
         zERtUuF1/6rKO6OYev/hIY2JcHUUQP8WzHvGmgWfuGNmQEJLTEU0qFOhYndZrEGnTGA6
         7jWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcoixnS4M9a0/55cdXW50T6BTa4coXi1ve9OnA1NyJPg5Y4c2FOoOOq7rcRBpn/pvZldy72vu9F5hYeLENvhgaxAdmeTnpicjL
X-Gm-Message-State: AOJu0YzdDG2AAsuQ7oXItJVU+lQb2YCHvg1una31r/nxFUkqc1oDo9Us
	bZcq2XRGqKsH8OpM2TW73qJLqV4DctBLPRdxVIGuDsMszqCPTNnNBB5wqBZnXYfK/h5ZY8FDgx0
	=
X-Google-Smtp-Source: AGHT+IE/r3NN+cnTy0G1ISOfyBjlwvVwEx1oee2jWy2Abgg+6y66/InmABTKzGpxR+LoNl9JgTUxcA==
X-Received: by 2002:a17:903:2450:b0:1f6:5013:7842 with SMTP id d9443c01a7336-1f83b5f76b1mr39381985ad.27.1718225135915;
        Wed, 12 Jun 2024 13:45:35 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:90ba:9f8:1a32:b765])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f6bd778159sm125911195ad.116.2024.06.12.13.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jun 2024 13:45:35 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Brian Norris <briannorris@chromium.org>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] sched_setattr: Break EINVAL into separate blocks
Date: Wed, 12 Jun 2024 13:44:52 -0700
Message-ID: <20240612204504.2651521-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current EINVAL description has a complex boolean expression, and I'm
planning to add one more condition to it. Let's separate it into
different EINVAL descriptions to make it easier to read. Tweak the
punctuation a bit too while I'm at it.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
v2:
 * split out from patch 2 and reworked

 man/man2/sched_setattr.2 | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 5d7061bd6e3a..0c866a786748 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -349,16 +349,21 @@ .SH ERRORS
 .TP
 .B EINVAL
 .I attr.sched_policy
-is not one of the recognized policies;
+is not one of the recognized policies.
+.TP
+.B EINVAL
 .I attr.sched_flags
 contains a flag other than
-.BR SCHED_FLAG_RESET_ON_FORK ;
-or
+.BR SCHED_FLAG_RESET_ON_FORK .
+.TP
+.B EINVAL
 .I attr.sched_priority
-is invalid; or
+is invalid.
+.TP
+.B EINVAL
 .I attr.sched_policy
 is
-.B SCHED_DEADLINE
+.BR SCHED_DEADLINE ,
 and the deadline scheduling parameters in
 .I attr
 are invalid.
-- 
2.45.2.505.gda0bf45e8d-goog


