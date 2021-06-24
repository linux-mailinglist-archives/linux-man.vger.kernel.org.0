Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E381D3B372C
	for <lists+linux-man@lfdr.de>; Thu, 24 Jun 2021 21:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232841AbhFXTo1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Jun 2021 15:44:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232178AbhFXTo0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Jun 2021 15:44:26 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10054C061574
        for <linux-man@vger.kernel.org>; Thu, 24 Jun 2021 12:42:06 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id d16so7801981ejm.7
        for <linux-man@vger.kernel.org>; Thu, 24 Jun 2021 12:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PwyMKOnoZFdb9ROx5ypLqlEoFqhjvHmPCFQOrjkNmoo=;
        b=Z7t1e9XFDWfu/qq6ydlWUB+3MWeT5p0B0eh7q+vqxN4Xw1AH6hWh3mYJLMcy1fCV6x
         3crPtA79R0UrEkzvlrd8cCBEVFG43N0V8Tn0ngJe2E0VYGiPhV9TASj/WUjVZSKA9pau
         qckNNSIWyihRh/IrFAbTfOYwczQuNqLXGgfrzfJI3DxPSshKEkYp/VQreJmVbCHJpcuT
         wUUjlrOZlvu4SfLzfo/z3Yn9QsiTZWLAiJ7Zt9FpAkZKuRI5/amBZj6QgIl4ncn4TpCX
         V6m0YxlpSlDV+x6db3MeBqhOfN+EOS/trIfWFCv8iXCZ28Q+tlJTVOeagujESa+fF+yP
         RpsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PwyMKOnoZFdb9ROx5ypLqlEoFqhjvHmPCFQOrjkNmoo=;
        b=dmFV4QwMTheEADG1f5/xGxhwR7uVsDJtR/Fhm6cJlzF5gTtQUjFVAYSaR+INl1w2Nk
         uvgAfmQtmeLRSozt8pVkDNUT7Un7lqSi1WyIUfbYV0xpjjkLrVs9+wFCmYbM0/UdCNcR
         VLLA13W+Cn5jvij6ehKKt5PaXIKnYzcty8yJrVcVWCqheV6H63/8hS64hMjwgrzyrNbv
         J2U0SevozloO5Mg9QAgqjXSubBzo9gKSCsYFegT6iUqmmSZGwT7vBBD4lNfLqItDhcO1
         fKHGFCkykiqI+kBc6HA41zWNZfQfT/GfwK6royP2rYlHz6/pZkq6Q66qg+viEQyir3oI
         NYIQ==
X-Gm-Message-State: AOAM532F1+elDX8S6G+I2eMYyPjR06yPOJgflcVbWrU0YQdR24JkHDSa
        P0Coyf5L1blHilJc1J3fvI++/fIQ47s=
X-Google-Smtp-Source: ABdhPJzdv1FIaIlI0Rf4S114PvO2yOjDQP/UA6BHf9Gh7fuFaD/1GGcyjyS2vRuaj0TYlZUkaqF4tQ==
X-Received: by 2002:a17:906:a281:: with SMTP id i1mr6746074ejz.307.1624563724384;
        Thu, 24 Jun 2021 12:42:04 -0700 (PDT)
Received: from localhost ([185.112.167.54])
        by smtp.gmail.com with ESMTPSA id d6sm2526816edq.37.2021.06.24.12.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 12:42:03 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] path_resolution.7: tfix
Date:   Thu, 24 Jun 2021 21:42:02 +0200
Message-Id: <20210624194202.713112-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.32.0.rc1.27.g991a26804f1e
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man7/path_resolution.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
index 0901ed7c8a98..f24837ef9ce5 100644
--- a/man7/path_resolution.7
+++ b/man7/path_resolution.7
@@ -63,7 +63,7 @@ argument).
 The current working directory is inherited from the parent, and can
 be changed by use of the
 .BR chdir (2)
-system call.)
+system call.
 .PP
 Pathnames starting with a \(aq/\(aq character are called absolute pathnames.
 Pathnames not starting with a \(aq/\(aq are called relative pathnames.

base-commit: 33248cfe50ebb8762208e7ef3264676dad71b016
-- 
2.32.0.rc1.27.g991a26804f1e

