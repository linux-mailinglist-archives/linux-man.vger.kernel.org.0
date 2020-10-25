Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B08FD2983D2
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 23:08:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1419133AbgJYWIq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 18:08:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1419132AbgJYWIq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 18:08:46 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 255ECC061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 15:08:46 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id w23so8783168wmi.4
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 15:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dvcodz5T4JJwJgMoLsK1IsQbs0DNfqUskPRti4GRtws=;
        b=dsrvF27HK+j3EP6QVboNn35Cv+muA2bDoI0NhYdKE5GsnE8rqkYWnfZ9Uc+bw2Mwzm
         Sl0H5Un1eLsKkW8H7Pgfyvabeyoq7RPpjoyUzi0/FxTucuotNnPGBjqD5AhSwiDCoj51
         vDVbwIs6bQb7kXRxbq4tTugH9Y3XEq/+72hFDrOfAtyvjR1tIp7D2EENVi5uwzX+ND1h
         IgYHPJqqrZiyNTMEKhGPavuEJ+zOA+Dy/GFappwqq6x4aQgRmSk5s45P8c45AFvZcOs/
         sYKAH1CRLCNHXaBfCcWGfFGlCB6Dmb3Iry2QEqSdniB7zVC6Ui8om2izgM6iIfqx3JeR
         FLUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dvcodz5T4JJwJgMoLsK1IsQbs0DNfqUskPRti4GRtws=;
        b=evb0olG+5BR6IMBisSMJUSOqx+I6UL6SHZP/Fom2U95y2gE3E3LJy2EjLWKG71BSA7
         69ZTlmSBFSY2vLqNu4mMG906MYjCtWVUJrMxILQV59egzrbVXmUqiJ+1C4SdfQpTfllJ
         BUDSB5uho9fljfuas4/CaeOEzG0rnWIcTJ4z2frmzPxuaVnL01U609rRGg/i1o4IAMd8
         ess+C6yjCz+U2ptBPeCUnISvcyoVn1fl2glbj4RYOIf7XjhAQ1NiRBR+nlCZqRuju3/B
         rqhqnPOTuqX+tTILLvfed0rhEn5ejiVDwkhnClsIxaOxHhAGOwhtS/kh8wo0a7pAQ1eQ
         pjPA==
X-Gm-Message-State: AOAM5321QskboyYnvgYpYEO1zx0s8ztKyPr6yTHx0wrHbbNC3Z0bJpol
        IwJHWiNfziglo0q19ZQ4lj0=
X-Google-Smtp-Source: ABdhPJxiwg6WPHQpsk3WjW3MZW9Bc9nV01UKvoWyPeQ0C6cJpm6Ke5Ih3+zEzfmYMbb54Kg8OrahwQ==
X-Received: by 2002:a1c:a145:: with SMTP id k66mr8289630wme.177.1603663724832;
        Sun, 25 Oct 2020 15:08:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id e7sm18760961wrm.6.2020.10.25.15.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 15:08:44 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] stailq.3: SEE ALSO: Add insque(3), queue(7)
Date:   Sun, 25 Oct 2020 23:08:26 +0100
Message-Id: <20201025220825.10124-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/stailq.3 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man3/stailq.3 b/man3/stailq.3
index b937e0958..7686048c2 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -391,3 +391,5 @@ main(void)
 }
 .EE
 .SH SEE ALSO
+.BR insque (3),
+.BR queue (7)
-- 
2.28.0

