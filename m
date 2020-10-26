Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B9912999B9
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 23:35:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389515AbgJZWe7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 18:34:59 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:43650 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389469AbgJZWe7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 18:34:59 -0400
Received: by mail-wr1-f68.google.com with SMTP id g12so14745953wrp.10
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 15:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SCWQ+nxt/86GjEjCAjk3xPo908gwANyGXvjK4K9tNUY=;
        b=Av35VLUfZqS0QGH/OH25WcpFsw+qKqDQp193khXI7QCrk6FoDucirXwH6OLosT1wOz
         GlVuum7fhtZQOPBBtfETxQdOGJgpQodCQCDISslPI5SukQIeW2/SGf07mdoK/wxfO2ZU
         iV39xi+amV0k8zOORSkr/bloO8EcExyH1rEcCgbBgDZfggS53bVFTPJyrU1l21uUi+dO
         qdQ5MebREyBHN20clnfEpP3zf7Hz3RbxJGVUDew1EgdrkiP/U8S7DqeAFD7JnY9tE5mn
         vCUdJfyNnjDiwBDEasog/xXvZGdGfEVIUKdb7xLO2pqt8L3jwI51+WwxN46ER6IHhTuy
         XZlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SCWQ+nxt/86GjEjCAjk3xPo908gwANyGXvjK4K9tNUY=;
        b=dnNgU3xFXmjXAkL1b0XiJSkFb31XD3pAihJ5M2So4gzFV/BdsBJG1iqwNa6n++hsZz
         p4TjjD/QLPMZbXbA8Fai50B4KSvqBpxGKdvezvJA7ssBiLoWyU8uB/vSs9A6qUfcAWZt
         NU5CQyErE8LDy0C79usDCDiRRjxo+HwEctroFewFaJ34y1+XicbqCHXhwRcNXDBvI5C9
         SbK0dwMVA3OszPMay94ZGpVDkicWEJjqXpOGjc2QQxH+5LKcUZDKoX5oaSDYvKLOcHEK
         3PhWELZtgG16nsh606abwEl4ywUVPa4v25kbjZS8Wf5zFRYLjbfyOzb2MLQ4AUabp039
         MBUw==
X-Gm-Message-State: AOAM532hiTD+QZFHplDhwCggM6+F3iWAulBa8qmPDu9JmEeSd0P9il4o
        lnAxwX6z32+o881vWOLisc03/yRErWk=
X-Google-Smtp-Source: ABdhPJwV2MSN1mupaIvkO7caj3OaAOzdqdJjrqWmqaJaJXX/IWwbPAIRAMc7z4gIHbviZk3Mm56IFw==
X-Received: by 2002:a5d:554b:: with SMTP id g11mr20373528wrw.370.1603751698436;
        Mon, 26 Oct 2020 15:34:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q10sm24108607wrp.83.2020.10.26.15.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 15:34:57 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] system_data_types.7: srcfix
Date:   Mon, 26 Oct 2020 23:34:50 +0100
Message-Id: <20201026223450.28183-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove comment specifying the layout of the page.

The page has grown enough to document the layout by itself.
Anything that is not clear enough in the current layout
should follow documented conventions.

This comment is not needed anymore.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 4930aac8b..7eba87cde 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -28,28 +28,6 @@
 .SH NAME
 system_data_types \- overview of system data types
 .SH DESCRIPTION
-.\" Layout:
-.\"	A list of type names (the struct/union keyword will be omitted).
-.\"	Each entry will have the following parts:
-.\"		* Include (see NOTES)
-.\"
-.\"		* Definition (no "Definition" header)
-.\"			Only struct/union types will have definition;
-.\"			typedefs will remain opaque.
-.\"
-.\"		* Description (no "Description" header)
-.\"			A few lines describing the type.
-.\"
-.\"		* Versions (optional)
-.\"
-.\"		* Conforming to (see NOTES)
-.\"			Format: CXY and later; POSIX.1-XXXX and later.
-.\"
-.\"		* Notes (optional)
-.\"
-.\"		* Bugs (if any)
-.\"
-.\"		* See also
 .\"------------------------------------- aiocb ------------------------/
 .TP
 .I aiocb
-- 
2.28.0

