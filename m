Return-Path: <linux-man+bounces-1175-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8C0907DAE
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 22:53:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71B861C21D38
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 20:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF24213B5AC;
	Thu, 13 Jun 2024 20:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iNxnfOHS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E0B1877
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 20:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718312017; cv=none; b=eOT3CTYMJWhCJoa3nmEJWGjYZXwhUTOm123AVdBupvT0Vv4ZwjPwIlBtSK8nlYIgAQOQrQNPTrB17tqPHk9c8K1XZOeZuklbrj/I4PpkO7ruuQHCdmWVO3Xphqwvtia5DCynKZ93qzNbL2cIbYhE2O/512Vd/FMjkzseCx3FSzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718312017; c=relaxed/simple;
	bh=lYoJwa3BEq+NjqdZODFBljEuhdu9VB1iQ1oL22WhbEo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QPGJXcIKxJfngEJaUmJhH4O56we/vLTzMgTkWEau35IDRmnM+bVBG4q5HVZ41hhYYJpe6JzuiUdY0/f5TtDyWc1U1j5SN2QGiBSJOKAuZtfkVlQCg7nEAPT8sZP6ZeLRZuMOnE1fNF1QN4bNKwclVMZwFfjkiuB3xg16SduVv34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iNxnfOHS; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1f6f38b1ab0so12213935ad.1
        for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 13:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718312016; x=1718916816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F2qvDiHD2RsE/A30d5xtyowbDIfpC4jWbjgJ7mm/nKY=;
        b=iNxnfOHSt54dMqrbcPAjsLLycMeoAy1q8Y2fbuJqjMSnhezoChu2llOEtrOKB4FruI
         SlhN1EI1amb9Pbj8qedLILED0+M71dPcrFV3OJHZ96usKGWk8F/LrY9yKeQsFIkF4rIr
         9FnmWJtxzAh4+A+vWFDH3f5Sj6U0P3uOPT4zE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718312016; x=1718916816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2qvDiHD2RsE/A30d5xtyowbDIfpC4jWbjgJ7mm/nKY=;
        b=vbgChsOXNjZZ/AjvO0Bl47EkxPtEZmkpGYqj6+C2HAP7i/PPDMI/SrcH4aqcom5W7Q
         dWGohFCkAkbgkPF83vWw3rkz3fq9XAafqkZ340nFrGL+JcpHoaj1W66hv8pmc5k1fvoJ
         j/qJsIFA5inRPHuVVakaBNfgBRdMcNLE65hl9s1hiIHdxDo4UuOu1/Xp7ZqN76LooDGQ
         2ZBDZhjZQ0IQhMDoteTBhCSg6YwEB+ply8fEzd30ETJ+XpfS6nbKF3hX64H4H4zAjNPw
         pxpZVCejLf7tjz4qy7lmqC3X+/JIChWE5pW1gdy2SyMYp0SWINsE+xi8qSnKyiOME1LC
         6/qQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyIthIL4ZwPUa8isMQ2DxDzyyftqd50QgRSB9gHYAFHRQnL6PaMDzuOYhK51KnWkARjo2EedMYmS2eYBsn0WoGVU7B/EMw/R5E
X-Gm-Message-State: AOJu0YzxjIBUeuSkFQYNNpO22VXbtU1hElpXRR1EgERAEDp5HgGu2lGe
	aHjJsq033EVnfJ2L4ofVH3DpmzGNef2M1u8KTMErFFooBId1x67w7HCiSpcjQA==
X-Google-Smtp-Source: AGHT+IFIyLsZq++DU7r4z5U8zb/riBx9Fzx6UZU7g5IziW/wfY166wyMoS8hfEoSeGVzRlRl4sJyBQ==
X-Received: by 2002:a17:903:188:b0:1f7:1a02:3736 with SMTP id d9443c01a7336-1f8629febd9mr7849045ad.55.1718312015660;
        Thu, 13 Jun 2024 13:53:35 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:947f:f59:5791:7be1])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f855f4e896sm18445875ad.292.2024.06.13.13.53.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 13:53:35 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G . Branden Robinson" <g.branden.robinson@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	linux-man@vger.kernel.org
Subject: [PATCH] man-pages.7: Correct escaping of \~ advice
Date: Thu, 13 Jun 2024 13:53:27 -0700
Message-ID: <20240613205329.3240669-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.45.2.627.g7a2c4fd464-goog
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

\e[ti] renders as \[ti] -- using \[ti] in a man page will produce a
literal tilde (~), not a nonbreaking space.

The intention here is to recommend \~, which produces a nonbreaking
space, so we need some more escaping.

Apply bold formatting too, which I believe is in accordance with the
advice in this section.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
 man/man7/man-pages.7 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
index c7251d1340a5..007b9e7a2fc5 100644
--- a/man/man7/man-pages.7
+++ b/man/man7/man-pages.7
@@ -725,7 +725,8 @@ .SS Formatting conventions (general)
 in italic format, for example,
 .IR "man 7 man-pages" .
 In this case, it may be worth using nonbreaking spaces
-(\e[ti]) at suitable places in the command.
+.RB ( \[rs]\[ti] )
+at suitable places in the command.
 Command options should be written in italics (e.g.,
 .IR \-l ).
 .P
-- 
2.45.2.627.g7a2c4fd464-goog


