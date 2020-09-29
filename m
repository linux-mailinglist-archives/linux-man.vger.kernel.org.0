Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FA4A27C26A
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727468AbgI2Kb3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kb3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:29 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A59DC0613D0
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:29 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so4792724wrt.3
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ze1EQU7rz+6V04YbtGDiq+H0ZLqPaiEHjn9Y7yqZRdE=;
        b=Hi80NeX/PftIV/XrWtMkuFvOLuli9qhYEL7gmfEoJNt3K1QTlGFafukvoY+JinMZxu
         Vj1sWLOo+k7NixnXQsWv0Q/6u2+/k49o7FIfPaw5P4vb7UE2EISzDPTDM629NUtrKxQq
         C36jaEFcWs2C1Ni+N6K8YnmFNL47lkvOM2FfnEjEYXuToQ1xOChv9a7zc17JMnr5ms/9
         pwCGEHGnmDgr5j+S2JsS3LPNxAbDIMwFIWIhlk+Mv1lYrPlrW5siXc6GaqeLnfJ+edBd
         mTB9PzEMcA0FpzV+kP+PkU0o9MLGNEDexMUEZZ5I42xzQJ4j0h3zNaK3aTqVquknyBdD
         7HtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ze1EQU7rz+6V04YbtGDiq+H0ZLqPaiEHjn9Y7yqZRdE=;
        b=spNv0CYXk0KbYLHVCQqrp1Pk1vpvhPozNCcTw8PbXg+Yjmj2pccOfElyYbXRCbWW9+
         DMNw/v3dNQXMmBrFdHZMAijvOO+nb7nqaMNeR5JDlJPB4ajWrrhgg9YT4CvupGWXRaVq
         u7FJL7psj5Hevcu9xIs5Nn2fTbDz2gI3XJpFHCx4P6/bdYM3QM3KW9r3bHwHyloT0q4u
         KGUYRQUzrUA0t7WaqdYlNKp2i1SUsBZ0TjHvEfwAd5PydU/Q90DJDCBx3xD4NXoYv5gF
         Pps2rlPR+zfz05tae3aKybpIvhB+roMwoo4NelLxSQlV3g92Q4qwbdzfXb5pZPSpqfCH
         ZmuA==
X-Gm-Message-State: AOAM533DlnhDmRT8G9qcK6lBdh4fJzwGtB83RLjiEwoyv/m8hgM/hnno
        kNvTyWc0l7oT18IcWdvOSEU=
X-Google-Smtp-Source: ABdhPJz+lMYn0gv7R+5NP0FWeYMfO5WC+n0nZIbT1oneFToYBPD4hPNY0tN9WSSNRPb6yLjjzlSj/w==
X-Received: by 2002:adf:aadb:: with SMTP id i27mr3441695wrc.258.1601375487680;
        Tue, 29 Sep 2020 03:31:27 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:27 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 2/8] intmax_t.3: New link to system_data_types(7)
Date:   Tue, 29 Sep 2020 12:30:24 +0200
Message-Id: <20200929103028.56566-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/intmax_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/intmax_t.3

diff --git a/man3/intmax_t.3 b/man3/intmax_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/intmax_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

