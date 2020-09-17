Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E53B426D972
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:47:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726630AbgIQKqa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:46:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726720AbgIQKop (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:44:45 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5806EC061797
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:24 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so1511472wrm.9
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gy9zGRHRw7nVj9gYlClP/j4vOyMh5+2tFyAHU9SPLe0=;
        b=pOGl7mGB5rMlybIm3yN65QGpkZgvRsiWIv0ZypYqpbmpOi4P0FNMl3mESkOd5nR41w
         un0Rb647W6m3jFlp7ObhA6CP7VsQbyez0q1/P+1gVN8DD7a5I45JMjnqSvnC0LsZByHy
         5f3eXPSAM+nbmmib/cUdKdGZK6uhplH3Af33d98g8tzEgT2Yn/A9rNMPQKpLQ0iTX/MN
         /+6vDM/Z1zSosz1OIpxpvbqYyIXjcQT7FXzv7PgnKAZ6evMDCXymNHZIfDuJDLrgO1Df
         xxt5hAtORqUFt34ahELL4pCFq/iUVkueV35Vo0VqsSdoyUahrqCxsDi+vN1UdzRa23Df
         C76g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gy9zGRHRw7nVj9gYlClP/j4vOyMh5+2tFyAHU9SPLe0=;
        b=SyQQ5zosEg1StU3nTLUtcJWSe19VmePzaRmNv2LNTpn4hALZPF8E2VguNYeqYrJCxz
         Qca78iUNOW3XmvRJAYkGbkC27uVf+I3aeCnrvWspuHyr9g1OXgFUrurBM9NbpM4jMYfP
         v4YsqVYmUfnyiDcmO6DEHvjyqXFAcBweceN3LBi6tub03Ym2Vez1ARfctffU+jSxJ0Pn
         hEmh7c3jDrR+nUX4v1on9zY+fZrxLuHsFckOw1hz96zLHzgT+x8NUdjZVQYY0kc91QuP
         oEilfmfDCKnHXJwa1sO/mDbuuMGmiyu+ise6ip+bdBH6cCNf1i/QpmZYFxUuJYVg3nLt
         Nb4A==
X-Gm-Message-State: AOAM531m5pA93N1Ri06Sxmvs2DXOxceOCBvvEF9uNySIOtDWBLiHr2rH
        gcE2XEe0DNviG0Ggi/36UvQ=
X-Google-Smtp-Source: ABdhPJzfDvcZV3uVkGTjXhrekpaKm4UUNRyGx1OIGfS6KHBAN0TFUNEsCly+395aQswJ+yx9vCKi9w==
X-Received: by 2002:a5d:6a47:: with SMTP id t7mr31041040wrw.75.1600339463012;
        Thu, 17 Sep 2020 03:44:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm42807186wrb.70.2020.09.17.03.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 03:44:22 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v7 6/8] timer_t.3: Add link page
Date:   Thu, 17 Sep 2020 12:43:04 +0200
Message-Id: <20200917104305.12270-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/timer_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/timer_t.3

diff --git a/man3/timer_t.3 b/man3/timer_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/timer_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

