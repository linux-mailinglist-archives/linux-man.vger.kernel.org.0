Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A21D7DBA32
	for <lists+linux-man@lfdr.de>; Mon, 30 Oct 2023 13:58:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232531AbjJ3M6p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Oct 2023 08:58:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232291AbjJ3M6o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Oct 2023 08:58:44 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15C20A6
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 05:58:39 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5079f6efd64so6172293e87.2
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 05:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ionos.com; s=google; t=1698670717; x=1699275517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k3AslZWI43c571uJERZAfvLX0xyb6iN2dWPalhv064o=;
        b=gVBEadpYrPf+OCxflEwTMuDWtlzyTXFOwBkVY5Z9m6zA85/cytquD+86c7pfxGXrBV
         YdpFS6rrh8TU1UK6F8Smbm+NzZTJgYUCZI+z9G6EssT7nM15w2cz2kixrsRGshRbi0Sw
         mC6n0ExDAQYChssh20RwE5l7P7bOnkeqjLO9kcTcCw7N20BPIKUMuPqdOlt31DAcaSGa
         2SdUtsMYk0UDp3Y6xgukb5a0Mm49nMbq+VSwWRW3y611y9drbK1sgWXKk3+PrTsfOScQ
         l8hXQDa/uNHoWTS0LgCQt6RhHu6EqLu+faZDCwtRBt2pHpTmV27UAEBx6nDiieOGeBoP
         FkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698670717; x=1699275517;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k3AslZWI43c571uJERZAfvLX0xyb6iN2dWPalhv064o=;
        b=DqkrHtFM8hIE2pL5hIHyn1o+l37bZ+ljp19M2Czu4GESR5w0oFkYkSYbRDcx8WYAkj
         oCi9IN9QU80/V/O3X4XnaKBJdCI4dh1koKnT7cKv74AS+bkV+O9/PWV4wVv3hFSzhIeo
         Q3AG5+2okV6yJimi2eAGP6GqMS01KSI7T0e4n/hJekOHemLWTw5477tu5M2G38Urf8bb
         MEJtWf8RiyM5mEYCWGyyFU3bFTmqf/+l5Pq7eErBAmS3ZSqw9+4I7rY068mchkHJTMoV
         AnbbnIHjck3bTSbwSgErPh0HrRhTIbhajq+Wf+w9KBK9goZNNahTWrF+Mlmm2PYfDUj4
         WeEQ==
X-Gm-Message-State: AOJu0YzTJfX294ZvIPf4futujMd+lK1+e7bKZQju4xtR9d55/jnMYN3S
        VrAVjejSY3g9tjZVblMbxvnGZQXXnvqEoFWY/gc=
X-Google-Smtp-Source: AGHT+IFt/3IG5bFdJfAs127m6ZtM8RlwANVTj+pMqKV4DLvHiFruSJTrFdNCDeP237FhShrjjeiCXQ==
X-Received: by 2002:a05:6512:28f:b0:507:b17a:709e with SMTP id j15-20020a056512028f00b00507b17a709emr7144677lfp.1.1698670717206;
        Mon, 30 Oct 2023 05:58:37 -0700 (PDT)
Received: from heron.intern.cm-ag (p200300dc6f0b6500529a4cfffe3dd983.dip0.t-ipconnect.de. [2003:dc:6f0b:6500:529a:4cff:fe3d:d983])
        by smtp.gmail.com with ESMTPSA id cn28-20020a0564020cbc00b0054354da96e5sm239769edb.55.2023.10.30.05.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 05:58:36 -0700 (PDT)
From:   Max Kellermann <max.kellermann@ionos.com>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org,
        Max Kellermann <max.kellermann@ionos.com>
Subject: [PATCH] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does not affect SIG_IGN
Date:   Mon, 30 Oct 2023 13:58:35 +0100
Message-Id: <20231030125835.568711-1-max.kellermann@ionos.com>
X-Mailer: git-send-email 2.39.2
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

Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
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

