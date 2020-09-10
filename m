Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 913C026525F
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:16:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725372AbgIJVQQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728069AbgIJVPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:15:12 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D089C0617AB;
        Thu, 10 Sep 2020 14:14:34 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id z9so2109550wmk.1;
        Thu, 10 Sep 2020 14:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mvkPmOXLQSLv5XAp3JONwaRYHZOFFUic4NLYdLc4uNs=;
        b=du3O/2JVG8SFJp5JMXYvJdmuknTXpXVdWRRUTg/MZOViXvQxlEkd7BjkwYp3Tf28oL
         lNb3G8BSJchXUSlfnAhy6gSrzybPkDjMl3wnn53tXvgF1s8J38a2ebrM3ekfTdgQlIYi
         zLesdtnEVbmbHKP47ikF5N+rrrYmCBHBE36rVGBfamXLEAZWhcsIGs1OPKKm8a5kxMNd
         En8ZOkRAIVrZw9waw78R5uhdeHJ9/9pBBAec2tlxr0ammylzPyIQiFQGXL9jLTt3MZoD
         OacPE/scygOEiHlAi8Z4fVl+dapqqTSeo4ALEpIq6SppJ0aLHaynpfOMi4gbI/wtLhO3
         gCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mvkPmOXLQSLv5XAp3JONwaRYHZOFFUic4NLYdLc4uNs=;
        b=tGCEspVnq6WNvmUk2S6yhLhjESeZJIEtllUbidpBF2g8nHSd19Rj8t6OJ4OqXIHIaQ
         eMJiX1Kx+HGmXbEazP6hyDqtH2Nla85UGkRH8nzD5cFJjEme3JFZf6FU6l9qTVmFtMeT
         nV3hB87vZhP3udlAxM+MtNlZRJhpeLYzhq+xEDiYKkqjo3tWJoom+iPtIMTZSKZZxq4N
         Ex/LEX989oZLBJgOXgI64RdW1kgbTDpiWIHVBxrrzj5smcFzXApY7/rcdQD0ZkV92c/5
         yjv/qKnOBTVUSE9eRq7/1YBg8lroMkSHNk3IYSA+L09LnwelCTmjEYYnaJgHE7g7pHrB
         ZZiA==
X-Gm-Message-State: AOAM5332HW6x79oQuo1Uj9IkMFh6oV+lipr0ZzK/jS23iYLAW7VeBOk+
        BW79akQyFu/yfSiQkV+Xi3SgzSybNFksbA==
X-Google-Smtp-Source: ABdhPJzVJB3IcxOggoNitnAwtPEfW6L+8Rk7aPgB9VqmKJdKM7SGXQKRyODnlONdhOi45NEOsJuM4A==
X-Received: by 2002:a05:600c:228e:: with SMTP id 14mr2029106wmf.17.1599772471739;
        Thu, 10 Sep 2020 14:14:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 20/24] loop.4: ffix
Date:   Thu, 10 Sep 2020 23:13:41 +0200
Message-Id: <20200910211344.3562-21-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man4/loop.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/loop.4 b/man4/loop.4
index 73b23871d..1b5d05666 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -227,7 +227,7 @@ in
 .IR loop_config.info.lo_flags ;
 and
 .IP *
-Explicitly request read-only mode by setting
+explicitly request read-only mode by setting
 .BR LO_FLAGS_READ_ONLY
 in
 .IR loop_config.info.lo_flags .
-- 
2.28.0

