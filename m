Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF8D4297F5E
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762264AbgJXWPM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:15:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762060AbgJXWPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:15:12 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A54C0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:15:12 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id w23so5680210wmi.4
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+b5pWCl2R92f8wrKHrfw/B1zR6ZTR0apK//YqocK3OU=;
        b=qyx7JrHxpbp+7w4/4Od9VVeCSkS8ZDBuRcH2Sh+STzRZunM7a5KtI/X4NYxc/p7zg4
         CdDPA+G7JlqLMJRDKibNFNlAIPBYxx3tbELfOKqUVs4Yb0ly/eALyBjoVjHsIb/jLads
         BnmBm9DMCAb2gYMnMunJ8h5rdLEwylT2AFtF1DN+C+kvRJnUnvbFyQ9clFdr/bPwbEls
         ffXrAMYil/v5MsSTMIZQqf3D5NV/Qo1XhpIqbvPX/ApcF9V7aHV+f2GMzppM5niycGKx
         COLyaqYaTv3CrDOZfP/qpKpFfwt+4NOR4OHDq4YrZzuv/RMbLtxhnkQQrjRd1n1pXstg
         PN5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+b5pWCl2R92f8wrKHrfw/B1zR6ZTR0apK//YqocK3OU=;
        b=NySMw0+MwfJ/6qdP1p/q7Vws0uvx05HsUNaZwyBtBC4hYDhgKe9elQef3hRYLgIqKx
         OoVDS3IPwLOwJ+5NG3Z5g9jg2Otja7tQ3fFgcuXTmagXnpKZoBtaE3Z5QAW3HeCna8lJ
         7+8rtwEFKjXyQpT7vC4eYKjZcEPvi3Hi4HAdMZ5s3ICfQlvc5ptB+SDgoyh0YVh5rNDg
         mJ509eT74bPpEO20MDsuIxxEoqKvjSsxWd/58NTkbI/Xg7tQvvk0iFVcA3lToe+wWaF6
         eupActnS4RnM5OS3cg4dxI0q/DigoSFjbd5qwC0Jge1HIa55EHyPrwvutWN20mESgNdC
         if+Q==
X-Gm-Message-State: AOAM531FzDVadYOOAZndpjg5ID9D0mnf/jqwCe/3aznY4BFC9FLd736K
        RKa7L8xRUu8y8SOoJpX9ptg=
X-Google-Smtp-Source: ABdhPJxTGHZX4JOcvfT3XI3JP4ew0gycr7TVjkvbK2JDfIFTkVnkxOhIV4nmnvce8kanRUv0tR5bVA==
X-Received: by 2002:a1c:2dc4:: with SMTP id t187mr8586837wmt.53.1603577710956;
        Sat, 24 Oct 2020 15:15:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q5sm15382035wrs.54.2020.10.24.15.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:15:09 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] circleq.3: ffix
Date:   Sun, 25 Oct 2020 00:14:59 +0200
Message-Id: <20201024221458.6075-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/circleq.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/circleq.3 b/man3/circleq.3
index 33215be77..54df3fa20 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -96,6 +96,7 @@ CIRCLEQ_REMOVE
 .BI "CIRCLEQ_ENTRY *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .PP
 .BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.fi
 .SH DESCRIPTION
 These macros define and operate on doubly-linked circular queues.
 .PP
-- 
2.28.0

