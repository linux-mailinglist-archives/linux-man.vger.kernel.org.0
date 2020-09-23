Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15421275883
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 15:17:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726498AbgIWNRy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 09:17:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbgIWNRy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 09:17:54 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E49CC0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:17:54 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id t10so3438wrv.1
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fVImbFenIXvvRSIyy9qms7t9U5BPRZMAL44UUGmYoWI=;
        b=UzcfOXtPS8HAKxk4gmzK65cUIFXoETNDTKPqYpZCbWwsg9zorJp8jYhB+3pTbOg++k
         187rp7mWsYi2ZNVREeB4kIHl7kNy2QRM/SSvBNMczBjnhYEWhHWlOpZs0dgAUG841aj7
         rbVZa9d/YM7Weu4GQTfBWddolUSyiU3TSqc2HmPSDgMSE476EH6yyFCwsjRRQ5XjSjWl
         SV4NkQYzuzsbx1OkmwVdf7okhoStLufPf/1kKwnH3wlHws3Fi5Aa0PuqTPYFrnCbGETo
         /KT5g3wx8mXCH6f4+pQTEaoQ6vu/xibKWSAagnLnUwXlSKL9ZsaRsecjxmniNWwxu5LH
         8Xzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fVImbFenIXvvRSIyy9qms7t9U5BPRZMAL44UUGmYoWI=;
        b=P8ILI+cu2zDEKXgkeXbQ9u/Usq/BVvX/VsoD8nmwqvyECWx9HWyr/NWJN/0G/nytTn
         0SRIQuVmcVryNf6Mc4/P2IxEE8WxVCG/T9HgTuzoy2vl3vsqGwS0u0sq7J0gmj8qvgNA
         BTDGyVNUw7u0rkShul2XsFgXEqf7DLBeWBKHDJQSbbxUp8CbvmzuErEDYCWvYlxdqbvh
         HLYUZ/VO+l1HPBukTBLmJ/1t3xGoFbSzhYJmt9oy7d1O7t+G5hOEYodVLNm4Ueb33a6l
         7Y0Cvq8IFYcwstiV8+da33Hb98O987jLs8dlzqXZPO5Bj6uQ0w8P62pAJZ0xTiOHMxfT
         dYuA==
X-Gm-Message-State: AOAM532xZDcMcHwh4DJjqmlvsFi60PrcH0/eDoPtF6BYQwZjRGw/FkGK
        ZOs7J9KWZhWhnviATKt0zVI=
X-Google-Smtp-Source: ABdhPJxhI85y4IQNkqLXVQ/DN8RSPc/BE4As7DmT1WroGPOMgRcl1UB8OPoyRK3gWUi6GVnV8IS/UA==
X-Received: by 2002:a5d:6283:: with SMTP id k3mr831884wru.191.1600867071304;
        Wed, 23 Sep 2020 06:17:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id a15sm32441361wrn.3.2020.09.23.06.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2020 06:17:50 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2 2/2] fexcept_t.3: New link to system_data_types(7)
Date:   Wed, 23 Sep 2020 15:17:07 +0200
Message-Id: <20200923131706.21393-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922153822.33728-2-colomar.6.4.3@gmail.com>
References: <20200922153822.33728-2-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/fexcept_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/fexcept_t.3

diff --git a/man3/fexcept_t.3 b/man3/fexcept_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/fexcept_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

