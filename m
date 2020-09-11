Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10B3B267672
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725882AbgIKXPg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725849AbgIKXOv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:51 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A364C061799
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:43 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id g4so12946260wrs.5
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jcabBd4Ax7T6/rv18Mtt3Ppom0InBZMS89sgauGSYXU=;
        b=Iy5wmYYlojrHJkv0lO3ixcq1TimRD8rqQGlnmmpMYv4MOnXvZXPj26HoOkVts7Pcx+
         g4sJK6yH/AJT27kA2zD2i/S0/OnIfQ2gP4YtUXr/fjeJZCoQEshGvBm3Qh9czaSscBsC
         epUt3ELXLWlAmhkVRDtJCe/YXUrAZuNScUuzyVYFVF0SpjDYqFk1YX6k/Ligf/9z51a+
         Tm5DA7bTx9BL3u9xSnoxESCxISmeb6c41cN1N/skbxi4tr8q9GXYqISjoBqxpGT+cHjE
         2YBty0P2/L3vxdeyk6csNBjBUzM2DD7Xm2rRiT2+fowu555YUXuLYTR4ZIvJ1H4IubAf
         P8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jcabBd4Ax7T6/rv18Mtt3Ppom0InBZMS89sgauGSYXU=;
        b=Sbg962CgummEEe0puiGInGhuEC1v/IhoSiyi28ikhsQkp9vTv7SnshWXmjJhz5Gw+e
         wTEs5ugrphvXI4XEZB6MGq5lTQtHqkiugO/1zJLmJLqHSVxM2fSfj/whRoFkCra4KvY0
         IConz76l4B+5BX45diw6ejIc0y+yh4tcDlddURtbXi3H8pSPfB5TDCjlgJUBMkHUg4h7
         bUVb8sl2AoP/VVRD22EFbdvjxTl1S/tCkcLFCr/BLUNf1NOMvhmJtAXwvv+idAbPk4Ro
         qGoXILcLg1twaoQlAGsvzFW7lg60z6JiT33w1DIbdRj0lYufzPlcHm02VQz1V3dEXca1
         8Sgg==
X-Gm-Message-State: AOAM531ZpJf3gdNMWi76Mgu7NmorTIOfZnuPnV0eGBOEoVrFZUgNL4Fm
        6LmG1VinBBuO4ZLswkWs08A=
X-Google-Smtp-Source: ABdhPJxa8oLNgJxiczqCpOFX1cXvHKbSlC2xKm5sl+R6blChjzbbO9o+hJKbg3D1o+2dFB2qfvQBCg==
X-Received: by 2002:adf:eb04:: with SMTP id s4mr4571002wrn.81.1599866081302;
        Fri, 11 Sep 2020 16:14:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 09/12] open_by_handle_at.2: Use "%u" rather than "%d" when printing 'unsigned int' values
Date:   Sat, 12 Sep 2020 01:14:09 +0200
Message-Id: <20200911231411.28406-10-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/open_by_handle_at.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
index fb8940696..53c8c7968 100644
--- a/man2/open_by_handle_at.2
+++ b/man2/open_by_handle_at.2
@@ -600,7 +600,7 @@ main(int argc, char *argv[])
        for later reuse by t_open_by_handle_at.c */
 
     printf("%d\en", mount_id);
-    printf("%d %d   ", fhp\->handle_bytes, fhp\->handle_type);
+    printf("%u %d   ", fhp\->handle_bytes, fhp\->handle_type);
     for (int j = 0; j < fhp\->handle_bytes; j++)
         printf(" %02x", fhp\->f_handle[j]);
     printf("\en");
-- 
2.28.0

