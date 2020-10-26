Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5290299971
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 23:16:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392613AbgJZWQj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 18:16:39 -0400
Received: from mail-wm1-f45.google.com ([209.85.128.45]:54974 "EHLO
        mail-wm1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392335AbgJZWQj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 18:16:39 -0400
Received: by mail-wm1-f45.google.com with SMTP id w23so12086157wmi.4
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 15:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HNYgWDj3uPVw+N6PfZLOEXWiGJAFdYpjlBzk2//9VXE=;
        b=Q7BL+AMHWjQOm6qzDQfSHeMKCTDUFZU8W6ada5KRUuT5oOLNhtLoMFHCXNh6ibrkG5
         lSucumLvFJfiugwa2nN9mYP43Psua0ukos+cra/W70Rs8Yjy7EJgL+9OjWv6audPLL9H
         3weB5xiSNPke0msgEdtByLpaM2+zQwRXaq+f9kW7KpOsfBiIOZyE2cO16gwJxHcAztg0
         IcNCtwUm7l/O69Fz+Mmp1yHTJUUeg2yGgU+oyUWnR4GxP8tHYErmiGsk+J7mJ6VxB/Sn
         GLOGDx3u0Vcvv+Uh1ot5XaaMSO25gZzW2FQdhQZQpnNP7s5cK6txW0YAxGdjaBKCYBwC
         VYOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HNYgWDj3uPVw+N6PfZLOEXWiGJAFdYpjlBzk2//9VXE=;
        b=VWW3fNJvJXUTiv7vgSmo2SsgMjIoiPIHQ5/X78X65GbC3uee+wAlR3sTVax6DD++vD
         G8xyKAdDvkEydr8EDFL6vA3cvFLNuqipVaRzyw28hIZivStExPQyLJS3rTdCiGLLgPhW
         J2GPqDStFg3mED2J/Z4Sql63V4yDQRkKxbHD+7gq5+FOZiV2Epju8LBVziYSQASLCixZ
         yaw3Ufl7KT/LR6795LI0bmenqj1vJ02cQVCZbW3D3EkGLzqEZUcUgVAaobcMHOM19lbF
         +KvFPy23zzn8Z9RKUsRDYP2sFnCr+Sznp4ZN7sRXLLt3CV1hSzfQuNbn1hNsrZpOBs9F
         WMFA==
X-Gm-Message-State: AOAM5308nWBRhxFiwmjlXKC6+p5NYi2qvt7q7FgChGUp7DEnhoBHstJE
        d+opCYMX3IUnFq/9i0f1iXE=
X-Google-Smtp-Source: ABdhPJxu/IOhx+sDrXlNEXU60Yu6jjMf3V91inbxHvQ+Jffz9V2565EJH1ZkilbH+u9yu2TZ4bZBmw==
X-Received: by 2002:a7b:cc85:: with SMTP id p5mr17729649wma.24.1603750597363;
        Mon, 26 Oct 2020 15:16:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id j9sm24875492wrp.59.2020.10.26.15.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 15:16:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org, jg@jguk.org
Subject: [PATCH v2 2/2] error_t: New link to system_data_types(7)
Date:   Mon, 26 Oct 2020 23:16:22 +0100
Message-Id: <20201026221622.24879-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201026221622.24879-1-colomar.6.4.3@gmail.com>
References: <20201026221622.24879-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/error_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/error_t.3

diff --git a/man3/error_t.3 b/man3/error_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/error_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

