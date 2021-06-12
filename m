Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FD1A3A4D8A
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbhFLI3v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:29:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLI3v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:29:51 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E3ECC061574
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:27:52 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id c9so8446936wrt.5
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tyxXzjNk6O9USgppTJtLEqym+m4rXB1KYuwLgG4lKJg=;
        b=AaMnxilCDj5Ks3u/T6eLKCwcI6P6x6bx3kegEkkmHONr7xGoKOCj6MNc2IqfXdk3W7
         tDi1dol7uA5ebItw7lovvzvyCHGqWMBo0Gfubg3h9NzI2DtadSk5bMYEKG/ux675J3Sh
         7WrbBwTWSD7uwYQ+ttYeooCew77vKTMXakLtEnYD7fK48XFeWK3lbv4u7zqFwv8lnhlr
         RFi0VlZ6otsohMmuWVwNvgWSIbtdHstazndniLkZBKSpfD5CxLEGpBmXqnX8HwSnWXwp
         np1TiljpH8shUfoG45gpVdxNhDVcTY7X/RdK6D860dPHd89rBaeFjgY6x3eyGBOSGncW
         WlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tyxXzjNk6O9USgppTJtLEqym+m4rXB1KYuwLgG4lKJg=;
        b=ZDxqWUaRRoK6EYDH7l1va9Q7BItNU5coxNStoepunz/Hkbmtqr+IbO3yD27jeXhFtC
         pVH1ghq1/umJukM+pZP4Bo/CxGoZEMnNLd4x9cUYGFxgBDfriF7/0dPbiQIf7VM1TGKu
         HqVA7WuyOWgFwTeiuJLinQfGsnUVLKwzt//vRypdxGTCOAvK26rJMyKh68dRgVUDSWA+
         EqO4RJmv7z5Hx9PsJDL8IF9nmcFq6dWWst+J7oDlBbAzwx70tW7sYxxrJc3DJPRlsmy+
         saEnc2k6vHg6j1PNMTnB1EnGUyXW9KTp9Hzbn58KM/q2ECFN9Z1U9HjeLQlELKDV6pG8
         degA==
X-Gm-Message-State: AOAM533fh9pOJ9vIx2NHxaS7A/U85qZBE1fU6QtsXM/gqRM8cfgRoUmH
        znHX1aJFK/IvhuMIogSaHF8=
X-Google-Smtp-Source: ABdhPJyIMVCeaABvV3p+wO+yRQ7pjGlnGTjuUFIzfVoTSUrgGQFKzJYt9yBFR3BPAJyjCA5ngGstHw==
X-Received: by 2002:a5d:58c1:: with SMTP id o1mr8034545wrf.420.1623486470713;
        Sat, 12 Jun 2021 01:27:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g17sm9864035wrp.61.2021.06.12.01.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:27:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     thomasavoss <thomasavoss@protonmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 2/3] ferror.3: tfix
Date:   Sat, 12 Jun 2021 10:27:40 +0200
Message-Id: <20210612082741.12211-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612082741.12211-1-alx.manpages@gmail.com>
References: <20210612082741.12211-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: thomasavoss <thomasavoss@protonmail.com>

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ferror.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ferror.3 b/man3/ferror.3
index 41fd9a3b0..cb63e24fc 100644
--- a/man3/ferror.3
+++ b/man3/ferror.3
@@ -85,7 +85,7 @@ function returns nonzero if the end-of-file indicator is set for
 otherwise, it returns zero.
 .PP
 The
-.BR feof ()
+.BR ferror ()
 function returns nonzero if the error indicator is set for
 .IR stream ;
 otherwise, it returns zero.
-- 
2.32.0

