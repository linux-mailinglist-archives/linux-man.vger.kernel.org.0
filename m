Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66B3A260641
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 23:28:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbgIGV2o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 17:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727071AbgIGV1z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 17:27:55 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90D83C061575
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 14:27:54 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e11so13057760wme.0
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 14:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W0tERGF26UHstLQaT3YGqbzzz4dDh/hDeACQdwTLIlU=;
        b=V/TvpnmPnPKO2nqRg/852hRiY/yYdPwc18AvkyviAYHrZf+Q+kDz95i2rzsXlagsTh
         2Jbp6f/XGw9L6tQvCn7Thbpi3khp9uWpCLnMnsUZ1JGpSZQy2mqQXlGoVYQ1crFGTh6u
         BzmpbMaTVEa8kCddydI/e4nSMc7EZsfih+TEpukHCFWp+cB+mRhJoqsmFgTW7vMKUpSK
         cP1kFnJcDIbwUnrVgYu1Ngteu7/63U3LGW0MkiweVyzbb/5N3U7EXI8BvT37MDC7jzGL
         oL2IJrnEbKeJZfzhFCJoSBHBAkjVUlCTQBw/u7l5CQVFFxv5LQh2gTTI/61jueycePqJ
         3FNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W0tERGF26UHstLQaT3YGqbzzz4dDh/hDeACQdwTLIlU=;
        b=np6h3RRuwBqI9+miqvh8j+O4NpFaJ8RTRxETOWyOSoKpC0u6mGZqawP5/hvUmrfali
         b9VuR28VQBJbCWT105jyMZ9a6Z4ozJs2i5CbjewxPObMilNZboaJmST17aB2hmiOh701
         ihjrSpYgKs1hBZ8iaXScSBTmkpsOfd49xRmrAB7SkjMSoxLUZ4b8Lp8MFZf/68QS+BZ7
         1VPuztJgj83C+Am/VHzCmYxSjS8/DUeFS773rtC6HpzbBZ+4KIMc8hUJiIRb0nSbvDxu
         ez7XRHgH1o8mfe05wJbxdy+nyqEiGZZLCb8F0AwoNZS6i6psHE7g3V5NYHI6gjGA5/KT
         LZpw==
X-Gm-Message-State: AOAM532MZLA3uOej9v9GO5FFGaz0lwgVj9IvtVAHbLuvbJVEbutS4s62
        +s+YrHn55YqquHfeU1oXnCSwA2xBIyuCHw==
X-Google-Smtp-Source: ABdhPJw76VzZ0/3FEoUcYhoLC/47H/7xS3YACpxFI0pqxa7dC3iVtWqwLwY55UFsPt7CrcUPf0mMzw==
X-Received: by 2002:a1c:9950:: with SMTP id b77mr1193556wme.5.1599514072479;
        Mon, 07 Sep 2020 14:27:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id j10sm30565739wrn.2.2020.09.07.14.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 14:27:51 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] bsearch.3: Declare variables with different types in different lines
Date:   Mon,  7 Sep 2020 23:27:42 +0200
Message-Id: <20200907212742.5980-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/bsearch.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/bsearch.3 b/man3/bsearch.3
index 9d4f76da5..c429e4ac1 100644
--- a/man3/bsearch.3
+++ b/man3/bsearch.3
@@ -124,7 +124,9 @@ main(int argc, char **argv)
 {
     qsort(months, nr_of_months, sizeof(months[0]), compmi);
     for (int i = 1; i < argc; i++) {
-        struct mi key, *res;
+        struct mi key;
+        struct mi *res;
+
         key.name = argv[i];
         res = bsearch(&key, months, nr_of_months,
                       sizeof(months[0]), compmi);
-- 
2.28.0

