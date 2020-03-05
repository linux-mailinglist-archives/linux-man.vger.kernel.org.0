Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CFEE17B0BE
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2020 22:35:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726080AbgCEVfW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Mar 2020 16:35:22 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:45482 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725991AbgCEVfW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Mar 2020 16:35:22 -0500
Received: by mail-wr1-f67.google.com with SMTP id v2so8807267wrp.12
        for <linux-man@vger.kernel.org>; Thu, 05 Mar 2020 13:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sYUt/IC2si6psKgtZ8ob7X/NEcp3yqPQSfHqJWHJXoU=;
        b=DwWn6sKfJ77qESdl5lkoR9ZAcTdkrfemwmlszMrPv9nPPCfCXll4DndkGSst5AMw7y
         wzI9Q6yOqf7fmQXPkrC95/N/u47BIruBg9Ih2+ZKYXTRn2VjZwiGK3pZmkEtbVjLARe2
         pYU24ceLcAWAUM4+NjmiuAmwSaAm6o50PoEhHuo4ZPUCM8yvygWMQyQFxCdIHPBZtTtu
         VtwYxVnBI8tzJn79BeVHVcdll/+jOFf4PPBcAxx5kHnznZXl1+etCeCyEaC2aMVMHF9q
         9kDT3QroCr0STnFDOntASL0No7HnqsqZaOLx/Dko7IrxcsxbH+CmQTrON7JwjT5ZeoWn
         PMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sYUt/IC2si6psKgtZ8ob7X/NEcp3yqPQSfHqJWHJXoU=;
        b=QybPWUC08bixWZAsUUJKJNz2eEBUTc22XkPGz9j97VREZXHNkrn8pGe3pR2Ey85Yvi
         TrlDHYbIYddnoHgeTTJidKBadWy1QxbI4gCtdTqRHhSsJDrXltLPM1oHDxVB7gCiqYV9
         B+RxEzcQUneKrrXFRhvK0sZ9SnLIYIXC4Ont4yry5Uu980jpiSbCbgKv1nHc24Z25wxp
         7+FFU53m6W25I4kvaoO3r3etzQotRRaSAyEvgTSyLnN2zkS83NrLXyqfGZzvGFLxXz61
         nJ36FyK7KOiYCq81HO9gEx3rXVW7mJhPagwyX3spnJtpeh3YRPErnJ6mHjzeWvl9rbID
         dBYg==
X-Gm-Message-State: ANhLgQ2mw/Y7fHLvW4F8YZEq0MGC0tjQc7rwEMNv0Rv/wpDI/BuSTuZL
        oZqv8t0IvVrLMSKN91hkLZM=
X-Google-Smtp-Source: ADFU+vsv7foJdWt9nDSqXjjH130WxaHbWDNo/O4yzJfY8HCL/dzk1vwgDIxZmVedNDy40+N4dFF9Cg==
X-Received: by 2002:a5d:4b82:: with SMTP id b2mr882467wrt.102.1583444119679;
        Thu, 05 Mar 2020 13:35:19 -0800 (PST)
Received: from localhost.localdomain (public-gprs389870.centertel.pl. [37.47.154.47])
        by smtp.googlemail.com with ESMTPSA id n11sm12576022wrw.11.2020.03.05.13.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 13:35:19 -0800 (PST)
From:   =?UTF-8?q?Krzysztof=20Ma=C5=82ysa?= <varqox@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Krzysztof=20Ma=C5=82ysa?= <varqox@gmail.com>
Subject: [PATCH] clone.2: tfix
Date:   Thu,  5 Mar 2020 22:35:37 +0100
Message-Id: <20200305213537.35763-1-varqox@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix clone3() syscall description for CLONE_PARENT_SETTID: kernel uses
cl_args.parent_tid instead of the specified cl_args.child_tid.

Signed-off-by: Krzysztof Małysa <varqox@gmail.com>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index f9920ee66..39cec4c86 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -765,7 +765,7 @@ Store the child thread ID at the location pointed to by
 .I parent_tid
 .RB ( clone ())
 or
-.I cl_args.child_tid
+.I cl_args.parent_tid
 .RB ( clone3 ())
 in the parent's memory.
 (In Linux 2.5.32-2.5.48 there was a flag
-- 
2.25.1

