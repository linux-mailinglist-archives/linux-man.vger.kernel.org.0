Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C21B831D958
	for <lists+linux-man@lfdr.de>; Wed, 17 Feb 2021 13:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231336AbhBQMYO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Feb 2021 07:24:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232198AbhBQMYM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Feb 2021 07:24:12 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B72FC061574
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 04:23:30 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id 7so17263044wrz.0
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 04:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HCAfkNiJABGRtL6pA275o74GCm26Hcb0eyDdjEELWmA=;
        b=auLlACblFQ+KMNJF5QDG9B2hDTiVEXrbkC/6sbkV9QAO5UaFtcHTyoemsN5qoTuA3i
         /fi2kT2SBZ6IYAbBb0NIoE3IV0J/sVGFanAO4AAFNAZf5KCbu2vsGA9yJnda9GegQT3V
         OLi6VqyAbjYRuZ/Spmo3MYFmaXm6F6z4w0QjJcoYffDC6RMg4UQyWbvr0VaqxgovZnm9
         pi1Lwsy/8rWaBM7rI72zdRWAk7uqCMj/+db0is7G+RBsIjf/aBh6XmIRnKsLvEfHrtEX
         XWFD5jWfRDmPWZurohVS5uhEDydmDKRgHTQ0Xx7i4AseTsDcyFj8/sb5JKGa6KAdMlih
         sRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HCAfkNiJABGRtL6pA275o74GCm26Hcb0eyDdjEELWmA=;
        b=kik9jtAuo3248O/vNeYKVDRouWO8OOcae9d+GKpvPf6nh2oDIM0aWsSXBzGxsIhO5E
         LKMGQsOWH+zfO37I6dVX38SgdcFy7JayVnkdkgjfKXkP9iBqqWXGD8UCVLLyxa2uj1RN
         /Y82+uqJRqtFOrtROuaUw3HTkgNq64qpmYLtfn+Uy1mX376CNwMFdY/ZYlZptXIxxeNL
         ktTfYxVAxjzgyuLO8LYOIGnGt3gB1sSISCtH20wpD2Qp65pSOC+rZOfUX1p/gp1bck8A
         AyYh0MjTqJo1p0ueQdVOpuNdcwBcp73n3hP7PihnLOEY+obR38Bx8NvUaVKWQ7W2dalk
         aXlQ==
X-Gm-Message-State: AOAM533bEf2Nc/qz2ErjQDlNm8hCELTKBZQPCiGXcKNe9buvC//jcBuF
        921JCUhR8KlhdYmrL28FWqoGTYY3Yzs=
X-Google-Smtp-Source: ABdhPJxDRGNnRO9NWoAA24Zz9lq9U73x0HxDQE24yP/1tcNKN8Lm74HPY5Fhey5906mEL2FrqCY0hA==
X-Received: by 2002:a5d:4ad0:: with SMTP id y16mr28971457wrs.399.1613564609049;
        Wed, 17 Feb 2021 04:23:29 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id h12sm5046446wru.18.2021.02.17.04.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 04:23:28 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v2] strerror.3: VERSIONS: Document that strerrorname_np() and strerrordesc_np() functions first appeared on glibc 2.32
Date:   Wed, 17 Feb 2021 13:23:11 +0100
Message-Id: <20210217122310.107318-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210217095231.27727-1-alx.manpages@gmail.com>
References: <20210217095231.27727-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strerror.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man3/strerror.3 b/man3/strerror.3
index 5dfe76f69..e1724a102 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -235,6 +235,12 @@ Insufficient storage was supplied to contain the error description string.
 The
 .BR strerror_l ()
 function first appeared in glibc 2.6.
+.PP
+The
+.BR strerrorname_np ()
+and
+.BR strerrordesc_np ()
+functions first appeared in glibc 2.32.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.30.0

