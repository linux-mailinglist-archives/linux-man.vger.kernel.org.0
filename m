Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26BE329BB93
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:30:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1808740AbgJ0QVb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:21:31 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:38463 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1808739AbgJ0QV2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:21:28 -0400
Received: by mail-wr1-f67.google.com with SMTP id n18so2601879wrs.5
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=17DUny1EaXH/dk0oM5RWgu5gWSmUBV7yjRcr0/VUTBc=;
        b=Ao3DtYDut9c/VJQUzubYnoQ4WWsTIewa6uXhFBoCqqKXVy0e1tMkzyHHQ4Jeqwx/Ri
         p8/mSa1CX488DkaN0PD4YrF+VcJudWMGqC+B6SQOcbxF/Oyy2GibVVizx1UKEhekLP4s
         mDwzY8b1bYY5WLD9z1Fq4N7thILYLeSfjeCB+ZxnWEDz+4Cs69qGzIpawGGWy1SA41sp
         aTIt/5KSf5NPsjO5WvEIrL8CPg84FmvyXp0hxS3UyPJRzyhMRALkp0l+m01pCEYefpZM
         GdDGG5bUwh9xUWMShe449wMy+rHT/GdOKe1FFqKJwxE0hjSU5ALoyqBJH41AyoYh21At
         F9aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=17DUny1EaXH/dk0oM5RWgu5gWSmUBV7yjRcr0/VUTBc=;
        b=fF4CodYfF+jCA3n7infQLrYFE6TJybaGpqkQXR5EDjVP1Lk+fzOKOnzMyLvzgi3j+v
         JjQZl36cB/6D/kxwmKuZXPwGKv/fw1Fhy6xiqeAH3tI+dZ220yXgA/Lgr6/kMmAMMR0N
         Kn4xB41DuFhHwQ9a6Tg3CxKmjQVk+ECaDJSyZXKgjXW+dzzqHCyH2t5jMGq5OWfZ4IO3
         aVfnbwOSyQX6ed7M4IsODWrTiJPmDkvBzsA0FhA3FokZhHIyuyZECbB5jNf9cGTw8yU7
         O7+46JTrhE482u93MU9r/iZq27KKQUDDclwoLxoaIHNjA39YkAA6hczZFl3s1yS4+KCG
         FGIQ==
X-Gm-Message-State: AOAM533lZy8VWZevcMU92c+L7G7+mnyFShuIxFqZdu4mIQv5qo43kv13
        vI0KN0rMiUEfH0FqoLNXfGI=
X-Google-Smtp-Source: ABdhPJxE+Io19lAVMJjAQyIkr/+kx8stw0hxNeP80+fN+uv4iCwupVRM5EoRW/J3N6tuKZWJrLwCGw==
X-Received: by 2002:a05:6000:108:: with SMTP id o8mr3755426wrx.256.1603815686950;
        Tue, 27 Oct 2020 09:21:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u5sm3108839wru.63.2020.10.27.09.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 09:21:26 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 4/6] loff_t.3: New link to system_data_types(7)
Date:   Tue, 27 Oct 2020 17:21:12 +0100
Message-Id: <20201027162114.47521-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
References: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/loff_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/loff_t.3

diff --git a/man3/loff_t.3 b/man3/loff_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/loff_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

