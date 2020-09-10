Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7D626525E
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727800AbgIJVP7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:15:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728077AbgIJVPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:15:12 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B817C0617B9;
        Thu, 10 Sep 2020 14:14:38 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id c19so2696836wmd.1;
        Thu, 10 Sep 2020 14:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gqjbEQ+JeLk9q1JnfATQ7HDINLif+TFuce7/ySYMVUw=;
        b=r7Hhw5pK13gbq+j9zlfRVbSPt5nuEHSI2HsW1G3gee4gpU/+brOMrgStnitQQeuFJM
         FkhMwtO57Ab5+okqlXO8W0nhmwRtpXNBZj6J7ANxpU+cmq8EskHCJ/EnGAv/T0VC5tJS
         yXfLkdpNB8rVovQ7IrvA5xN9GF4T+7gcx7jQ1KUTUI2RLvCq5uC80EnGwnQYTvLQ77lz
         qkpqj1UnB5uspLCGk318paFoXfRaQzDM4CQ71RWnN4icoocNFXjCM9vNVB+Db5VLyDrV
         BJ5zbLMa7YICiIJ5Opcoq5wNSLLmc5zMZBF8rUjvq/KEbPuivBUJJ0rPwgELdTADaWLt
         c7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gqjbEQ+JeLk9q1JnfATQ7HDINLif+TFuce7/ySYMVUw=;
        b=kEi5HWlsSUHqpDGOM7ZPm2ZJVK5pXcSkC5n9eg5CBpAUwXqTF9RzS7ewocViQJ1H8a
         b3z5rpMF4SnIzkJI/IinzHaS/n5CfgzMwh3Am1vXGsZE/3KzLsX1NunW6vuMZIIxLR2S
         IM9LZG39AP+ph3y4j9V8PvXOAz7MvGYI6fLvL2RFz0n+PZJzsw5NqT8jDD35m9UV2pO6
         KOkG810SfyTmr6XZGPJ+IAAW11eJlUi7sczxGMJgOaU0wLVMab6xw57KBrCb37wMbGVS
         YRy59CSd19TsoEoDbK5h06L/yVu0r8q90loyaNbj7JSNeEEcS/A/OJJvX6e/DhqpAKlc
         usdA==
X-Gm-Message-State: AOAM533rBeaoG/1D40ZPUo4Z5a+BHatI5mvD2uE+7oJ+YcjsPE06cVNa
        fNSiozdPkO+bI4kTZlnMoErDP3KUnGaoGA==
X-Google-Smtp-Source: ABdhPJxHGbplOCq5jecEPOZxBdgiWprOth8QXrm8mch/AOOOTx9KgrikTnPnDiZVlvo7tVGaHpQ76A==
X-Received: by 2002:a7b:c2aa:: with SMTP id c10mr1952809wmk.86.1599772475861;
        Thu, 10 Sep 2020 14:14:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 24/24] bpf.2: Add missing headers
Date:   Thu, 10 Sep 2020 23:13:45 +0200
Message-Id: <20200910211344.3562-25-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I added some headers to reduce the number of warnings.
I found the needed headers by using grep, but maybe some of them
shouldn't be included directly.

The example still has many problems to compile.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/bpf.2 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man2/bpf.2 b/man2/bpf.2
index b45acde76..d26d6a43d 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -981,6 +981,18 @@ ioctl(event_fd, PERF_EVENT_IOC_SET_BPF, prog_fd);
  * 3. attach prog_fd to raw socket via setsockopt()
  * 4. print number of received TCP/UDP packets every second
  */
+#include <assert.h>
+#include <errno.h>
+#include <stddef.h>
+#include <stdio.h>
+#include <string.h>
+#include <sys/socket.h>
+#include <unistd.h>
+#include <linux/bpf.h>
+#include <linux/if_ether.h>
+#include <linux/in.h>
+#include <linux/ip.h>
+
 int
 main(int argc, char **argv)
 {
-- 
2.28.0

