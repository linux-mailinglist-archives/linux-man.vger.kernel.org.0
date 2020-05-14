Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F22311D3910
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2020 20:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726128AbgENSXy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 May 2020 14:23:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726075AbgENSXy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 May 2020 14:23:54 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C0CCC061A0C
        for <linux-man@vger.kernel.org>; Thu, 14 May 2020 11:23:52 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id z72so24493405wmc.2
        for <linux-man@vger.kernel.org>; Thu, 14 May 2020 11:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=slamecka.cz; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h9kqazH2RQU8YuA9Xecgkv259OK6GUmCeWzCO7h8NFA=;
        b=QZT8bkCJNNg9FgvT3S366SLLA9KUgznkFXj3R3vv5WEdGeWt0Xj4FLMzXntFk6FNLh
         5oZ6f6H69q9jonWiypbOGtLhf/JWlNZ59TVY+nybhritgnj+MS48BwAzHSpgPn7n1OMG
         9185yOndE08QxZftny/E/Fa8S+ort/+yjPKIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h9kqazH2RQU8YuA9Xecgkv259OK6GUmCeWzCO7h8NFA=;
        b=KtsmKuRORuayMw15mjvaVwNydrMGQwirLOMQZrGig5fSEl2AET3e2HNKz2ylOoJxlH
         awg9j5OthFMupieM/pbiw/ALC2ga58ZLTwlieJgc6W47gIxOuxd2u/xxHZz4gkXS+5Yb
         rpNe2s1pMo2j9oPly5SW+3st2N6Gb53zcVxXh1u+GtgqW2kWhbivW0Qq12lK7iD5+ahM
         bBC9zUA8rJfuNE9VFufERV1wbTQkIzuBN7cOGyoayipN378kkjfrUUfvLThikQ0PfQi9
         iOcgYvZwBqXNkAHNE7pFAKq0tfjsRQ4gKmSMNnBBokB1SMFA0N+ErkmodKbvl5CA741c
         jPGA==
X-Gm-Message-State: AGi0PuYEQ3oYtsddx+tOiQOBbLtpbNHpuJfWcdV0MXCq+psahgKMEOnw
        /b4bolZLhAjHM6kl/AeHUaJR9FkMPFgi5DdM
X-Google-Smtp-Source: APiQypIE/zTPprhHcutLGuSkpvTPn7Z+lopry3p+6aWJ+hc1lxNjISCMirL44Fe0Ce7+yqO0AHdKQg==
X-Received: by 2002:a1c:9a45:: with SMTP id c66mr25009060wme.133.1589480631030;
        Thu, 14 May 2020 11:23:51 -0700 (PDT)
Received: from ondra-nuc.lan (host-92-19-76-113.as13285.net. [92.19.76.113])
        by smtp.gmail.com with ESMTPSA id a10sm7343848wmf.46.2020.05.14.11.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2020 11:23:50 -0700 (PDT)
From:   Ondrej Slamecka <ondrej@slamecka.cz>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Ondrej Slamecka <ondrej@slamecka.cz>
Subject: [PATCH] ip.7: tfix
Date:   Thu, 14 May 2020 19:23:48 +0100
Message-Id: <20200514182348.361147-1-ondrej@slamecka.cz>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man7/ip.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/ip.7 b/man7/ip.7
index 8076101d8..06f47715e 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -352,7 +352,7 @@ The
 structure is similar to
 .I ip_mreqn
 described under
-.BR IP_ADD_MEMBERSIP .
+.BR IP_ADD_MEMBERSHIP .
 The
 .I imr_multiaddr
 field contains the address of the multicast group the application
-- 
2.26.2

