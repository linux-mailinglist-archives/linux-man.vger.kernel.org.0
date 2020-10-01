Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4569F27FD1C
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731131AbgJAKQq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731917AbgJAKQq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:46 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4921C0613E2
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:44 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id m6so5017582wrn.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A7vrJkGz1PZwgZH2gPjfuq7HUZLvIkKM55jJJlia4wg=;
        b=PMwzZ+UTYdaa8bVMugoS1bHO3867eV9m2z0rT9LJqsf5zsIv1zs6mr7nSs90iZtKBw
         YTaSY2Ez9jZN4PnnkQVHs1PLXXtCylsIl/jNnP38P8WxXchepzK1GMOCx773u7xaTlo6
         OJHnzeyl3lyA5vBbwY29hYVCv0uCqpFZClbLqmkxB+ZzyZs39e7d9ZaIUAdJeR/F1bMJ
         n4zBw/yHs2eS4Acr5M0eYuahoLD0u4ekydsgZ3o6RlThpnyge9xvUjYg/tdVyrl6sUa7
         eScgTwvFcxxnPARW+O207dzFMpZWHebxSq83R6k/a+EmiVRjE1rtGjI/68RQNlzeWGZ4
         fmoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A7vrJkGz1PZwgZH2gPjfuq7HUZLvIkKM55jJJlia4wg=;
        b=jGXWkcrtYpV6QAYDgUwXRaJ7S2PMfidKhkZ5MtCrJK46qGfRB/PQk5WlIZOfZ8CwQl
         zEDTjAqXUV6T1YAnyZduRt9pyDtDs9NfBuOXlfXC/PlXGFPtW4463kUAblvDJ5THSrAh
         qGH6eybTQQnKPb6idPMkChfBM3dmO+mU/7uT1uvXNiMcoJN+VYyz7776hhEdmWLdans8
         XyGN69YO/nixVnVmTt5/5yp/9E2CGFmuy0cAvBeSYYvNRalCTS5Nn5hgzoliT9PVzneT
         hwpNVAtYCAlWovshKvHkB1ihGbIbKiSarig2jufCBAkdTAaHI31X+w3uTXfDD7v+fhgi
         WaDw==
X-Gm-Message-State: AOAM532/RnT50/AGurgtQAxLvMO2shFwtm10kSeRj8coBsDX2rIgCz8f
        nMpRyRsDhLseqNBPn9mm11I=
X-Google-Smtp-Source: ABdhPJwXVJltFNbQgrtZGPOMwMWCfn2h73XopeUiH55iywKwHqb8ccqdp2U8UvL/S0rhkYZN4EL08A==
X-Received: by 2002:adf:ea44:: with SMTP id j4mr7997520wrn.368.1601547403641;
        Thu, 01 Oct 2020 03:16:43 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:43 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 14/16] intptr_t.3: New link to system_data_types(7)
Date:   Thu,  1 Oct 2020 12:15:58 +0200
Message-Id: <20201001101559.77163-15-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/intptr_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/intptr_t.3

diff --git a/man3/intptr_t.3 b/man3/intptr_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/intptr_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

