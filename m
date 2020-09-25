Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E7502781A2
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727431AbgIYHdB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727063AbgIYHc6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:32:58 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD19FC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:32:57 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e11so1250757wme.0
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yN9x8EhWEnF4EyHwyRFk2ByRb8YJhofqc5biSFBWk0g=;
        b=ZQeSyZzZGse5QsEkvJgrH2K/v/M1wXPHLvlAzS1vErAwiw6TgN4TxXHhI94/CtQ9HF
         HkCkcyW9gOoQRJvGQfsCCWuVzNnG2MWKVCP2fEIepQLpfwD0s6gb5b1/3tC87+1cIx0q
         2L0aCoINApzfdDcraGh41FVzzuIz0+8Q3mPeJlDqrZ3eITQChVJ4kFo1B0QhS7lIqEWq
         bfkWzdftB5yatAH9POS7k7e5UZZKcL66klerVw14GoW9JNTya/3nfXaRFJqQ/w5Mvy1Y
         RaQ4C4f07DWvP6QW+Pvvd75tudMftlzFgG0pYYgChTVwsl7D1HntQ4BBwzbVwX0H7x85
         A+Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yN9x8EhWEnF4EyHwyRFk2ByRb8YJhofqc5biSFBWk0g=;
        b=U16kVPvOkCRBkP771RS8VXTPtTllKxvx/u7OunCJHe3kwBurAW41nJfYZmzu89qafk
         RqjSZ7eiX5dVrTi6FwLFD6sPSDe+ww+HlHPtE4xpPemdsA8xIYsrqHe+e2PM8/tsMkxP
         aUL5q7Z5bySZH+NCD+I2mQNS8qwoJ1WvjD000dZtR1RPiNyXIu2y2P4/vpW+te9Ksbi7
         aZ93JAG2yWoJe2FMC/bll3sw2fZRok5teI1rO0eeZgAPfwSbFI5D6c35LhQhf74XE/L1
         qTPO/X3SZSuITJtXg18uM/9AgAEwHUPflL0AK0TiG21Om6dxXBtZIeaNPeJWgt7hD2/q
         AHIA==
X-Gm-Message-State: AOAM5339vHKugU/20BX5bE0lYQL3KsmnNgIfXEqTdYlMNGDsiAC9YAo5
        aTHhzJaKAVmdBtTk5mdTb8E=
X-Google-Smtp-Source: ABdhPJzhBEC6NZmetp6cMfBAG/T1l1j73IDTaBVJfmMxNpfrBw8BBFZAIQgCTK1k0tPFKhZzBZdjKA==
X-Received: by 2002:a1c:4d12:: with SMTP id o18mr1680943wmh.177.1601019176389;
        Fri, 25 Sep 2020 00:32:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:32:55 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 01/10] system_data_types.7: ffix
Date:   Fri, 25 Sep 2020 09:31:32 +0200
Message-Id: <20200925073140.173394-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index f40b1373f..095a20f6d 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -219,7 +219,7 @@ typedef struct {
 .EE
 .IP
 It is the type of the value returned by the
-.I imaxdiv (3)
+.BR imaxdiv (3)
 function.
 .IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-- 
2.28.0

