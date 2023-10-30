Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A59A77DBDCE
	for <lists+linux-man@lfdr.de>; Mon, 30 Oct 2023 17:27:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233858AbjJ3Q1p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Oct 2023 12:27:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233811AbjJ3Q1m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Oct 2023 12:27:42 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFD329E
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 09:27:39 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9c773ac9b15so701894566b.2
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 09:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ionos.com; s=google; t=1698683258; x=1699288058; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wMYhcbNUPZrqFa238Nlej/IQqydwvOKfVbUZUGYH/Jk=;
        b=UARTn0dLFn6Jo7q2Troh4yj/3mKLzoUZTN0pp7jeW+ZpSWtmjnW4mv2xudds58p1vC
         inG2t0maTPryhrie8a1fJZSje3+McYoWaDDNlacsvqcX7uTOe7zPf3003fHQEEcrc6hw
         y9Lp8naD1sOlFBUMj65BNCIPZq+2mOjR3/+N//rSQQHe9I+gtoSrkqicfGnJzdkTgqxl
         tWsTBCftTQosM7ZUbSZKi9BG3eNM0FRlk3mqpEOWUZLjwUVszXP1I3P+94Q1cjp4UKSu
         dIK7OwHVCMigLdoBKsTxYr4yRs9r7IOxVwvGF77Mrggn1vCpeoOBLNNyqzxVoxYp9+jD
         +f0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698683258; x=1699288058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wMYhcbNUPZrqFa238Nlej/IQqydwvOKfVbUZUGYH/Jk=;
        b=XXB07vY3TEiMs4UU8boYhaEnBGvYOQEKvj/nyDf2SdryhEjXPsztodBVEGSmztSYt6
         m2lOwl113NLefxm/6femFBZPoF1TBN/Yz++Kxc02tG2TwiK5xgzdGAuRplKoinzf1lf8
         kLp7rNBlO93RyJCrUv7RQpocZLmwPAT2Kv+InZv+857RqiicwIaMb7EIkQMMMDeMxHmg
         JADzrQHH2ibQje58dIUIfOuM6eEej/OKnyoL5bd4uc0vL9Wiy9gLoCt46qMQXiUZGXu+
         JJy1DoQhP3vedVjgaNK9XTYP9zhjrRJfu7OC1+OHq27fStP82PnA4m1YJ+uSa9g33c6l
         2K5Q==
X-Gm-Message-State: AOJu0Yzms5ahw5/dlhAXDC/hZc/5BwOs1UL7flAmkRjcb6yAugCryZN7
        d5kIq0CJ6rTDqd0J4ZvtBYJVxHMRasb45bizBEo=
X-Google-Smtp-Source: AGHT+IGtxbolg74ousuF46UjK3myketTCNWlRVHqNg/rsS6GZNGNjHMuk8rvW4rXNcyKbjJruVTxag==
X-Received: by 2002:a17:907:25c6:b0:9be:71ab:fb5e with SMTP id ae6-20020a17090725c600b009be71abfb5emr8366429ejc.22.1698683258249;
        Mon, 30 Oct 2023 09:27:38 -0700 (PDT)
Received: from heron.intern.cm-ag (p200300dc6f0b6500529a4cfffe3dd983.dip0.t-ipconnect.de. [2003:dc:6f0b:6500:529a:4cff:fe3d:d983])
        by smtp.gmail.com with ESMTPSA id kg20-20020a17090776f400b009b97aa5a3aesm6234211ejc.34.2023.10.30.09.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 09:27:37 -0700 (PDT)
From:   Max Kellermann <max.kellermann@ionos.com>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org,
        Max Kellermann <max.kellermann@ionos.com>
Subject: [PATCH v2] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does not affect SIG_IGN
Date:   Mon, 30 Oct 2023 17:27:33 +0100
Message-Id: <20231030162733.598572-1-max.kellermann@ionos.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <ZT_YHozq7Pu_t9Nq@debian>
References: <ZT_YHozq7Pu_t9Nq@debian>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The old wording was ambiguous, but it is important to know that
signals that were set to SIG_IGN will not be restored to SIG_DFL.

This behavior was documented in the kernel commit that introduced the
feature:

 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b612e5df4587c934bd056bf05f4a1deca4de4f75

Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
---
v1 -> v2: added link to kernel commit
---
 man2/clone.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 4a75b557b..deb4bdb5b 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -455,7 +455,8 @@ flag is also employed.)
 By default, signal dispositions in the child thread are the same as
 in the parent.
 If this flag is specified,
-then all signals that are handled in the parent
+then all signals that are handled in the parent (and not set to
+.BR SIG_IGN )
 are reset to their default dispositions
 .RB ( SIG_DFL )
 in the child.
-- 
2.39.2

