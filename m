Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B11A7296A6B
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 09:42:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S374503AbgJWHmS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 03:42:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S374460AbgJWHmR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 03:42:17 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6E27C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 00:42:16 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id b8so698105wrn.0
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 00:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x4CeHpr+kPJ+Mbk1esUocOjlE77sFtcg22Igf3wfkZ8=;
        b=by3ScJacslna9xl5T1H/Xnc70/4+J5FGo8FIFBGss/PMmPdfnxOH3L2A1wZGgX4dyv
         ztqU3H4GNYqYajgWHyynqJ6UyH9S4S01SHV8RHChTC9bxgD+SoWT040fYd5+PBgJj9k9
         3meVkWPZb5UssiFBd18WEitVTSNJW47COB2ngQzwyt3KxJP8ZGc8ApmxrwPC5SkqFc8T
         RxrZ31Oy1WijqiZK6UYh/4faU9vQP0rgUf3q1JEgHbk83TbLZ5xdIN4vFr7eSVHUMAL+
         CmZZZ3rk3tvth5lP01MiccNR9HvJjhLVMGaBSQDS3ThxMV50gqsq3Hv1rolEcYkxJZBe
         HITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x4CeHpr+kPJ+Mbk1esUocOjlE77sFtcg22Igf3wfkZ8=;
        b=C1nuOWgRtG/PcDmEZHWPYgfijm0SnytAviGTQuqprqrNm3YJm35DAY+CAC+rOVN8nn
         4XMn54pCU2coRazUfFTVxSqwZSd0ojUZhpdAKfNu77jngh7M9bp97V9V0cu5Q3Ew91a4
         xXP3D8oXN3uZ+gCeNRYpX1LxGXhTUSeRuX1G+uZsl+FF889wVUiJN3zAtxU2fKv0YeQ/
         Dqf4e7vlnAg42gzUZua4A038LShNtwOZwioBj9Tgp+rjsBTyetK0e72uyCMSU5j+wpQV
         d7PniWYCkYHGDva6fpFko++jvUpFqr2Yv8MbUKScI/gZ7eGiW6DRrRS2Zi9/EPB/8v44
         P95w==
X-Gm-Message-State: AOAM533pV/4lEI/AD+xvkk1KHD/1p5APlpsOVv5d1+1rKyANpOWsrKv2
        ruAcTzk0Z3HEfAhCPPXFEKw=
X-Google-Smtp-Source: ABdhPJwCl5EXOkt7iQ/j+alJss5wSMVpBZAAGI5xE+go7stxZaB7hv2lvk3Idk6pVhJEpbVppo7QUw==
X-Received: by 2002:adf:9f09:: with SMTP id l9mr1113823wrf.355.1603438934568;
        Fri, 23 Oct 2020 00:42:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id z191sm1634343wme.30.2020.10.23.00.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 00:42:13 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] slist.3: tfix
Date:   Fri, 23 Oct 2020 09:40:42 +0200
Message-Id: <20201023074041.68893-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I missed one of these it seems.

Regards,

A

 man3/slist.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/slist.3 b/man3/slist.3
index b54c05da3..c0182f804 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -99,7 +99,7 @@ named
 .IR NAME .
 The argument
 .IR HEADNAME
-is the name of a user defined structure that must be declared
+is the name of a user-defined structure that must be declared
 using the macro
 .BR SLIST_HEAD ().
 .PP
-- 
2.28.0

