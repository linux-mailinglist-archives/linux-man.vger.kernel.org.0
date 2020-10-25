Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8FD629810B
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414878AbgJYJh1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414875AbgJYJhZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:25 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59B08C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:25 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id c194so8246193wme.2
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZviR5ABzeaglht3JlFCOD8lTjS1yxlmpQ0ICm7ozI3s=;
        b=R6qw5muTVcnm6U3/W2Heww1jMIGHrT93C3c0ScFyLRJzdFlDd/1DFYFinQF73RhFLs
         tBNLhk/R8KcOhWAQEyelhtQHNFHNT2I28A+o9OBuGZ2rNvgoVW+pHhrIQ+udId/Exfbs
         Ob7iPmns5nYTVtkfZf/AG2Ku0E4f5rkIQsor7BPVaplJBE03J5imxJxBMGXHCoUWKuvF
         j4KCeQyVjmufVpjj+KD6IAZJVn9s7KcPHSfhOedxHcrKowrccvrnxNlJVX/NDklK4uwS
         x9bRYUWxbYd4u3mj54ZpPxLaldCtjeOUbEYwfZhTW8eBbj+3ghNKsJbA8NSowHCESho8
         yGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZviR5ABzeaglht3JlFCOD8lTjS1yxlmpQ0ICm7ozI3s=;
        b=Kn2ianD6XhL5rhB3CADtqgKfycY0393JsVeDfcFk6kR5CxcKJ/bQzrFnO+bHGCfCNE
         qQQt1zv0dGi/xi3QWWATvkBXR+3uwR8DHkm4UfPK+Y2iKtyhkxXVnqvUd2feippobjyX
         mHvZJhq72SDPY6ikFrtXP/ZDccybrQjN2flCgt/tZxn99b+pFjfcBijI9/Ae/w2PLDEn
         zVHs8eX2+ADWfv4BxPvVov/4HGnzyYnfWDlbCSrof29VnLA0rHDHuCxyJYHwT+QAN78K
         o50xA48IwD10U99IxcrqpfGnjvWqYDygr+Dchfwm+2hNbDbPl/S4rJqYfflIYaT5WyaP
         PSPA==
X-Gm-Message-State: AOAM530TQmCzfBfYK0nUPgFb6wYAVlAMoBtneH+UqM2rrbesCu9j61Lb
        p9CtclATCdSK52cV8T9K0cY=
X-Google-Smtp-Source: ABdhPJw5sGdF+iQuljQzjxHpM604uyRdYNMy9MLm4tIh90pRvYaVYbJ1GdTFswA3lZXYLxq6nFPgyg==
X-Received: by 2002:a7b:c113:: with SMTP id w19mr11323220wmi.25.1603618644197;
        Sun, 25 Oct 2020 02:37:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/10] queue.3: SEE ALSO: Add tailq(3)
Date:   Sun, 25 Oct 2020 10:36:52 +0100
Message-Id: <20201025093651.4616-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
References: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/queue.3 b/man3/queue.3
index 4c597e123..1c9a6f573 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -182,4 +182,5 @@ functions first appeared in
 .Xr list 3
 .Xr slist 3
 .Xr stailq 3
+.Xr tailq 3
 .\" .Xr tree 3
-- 
2.28.0

