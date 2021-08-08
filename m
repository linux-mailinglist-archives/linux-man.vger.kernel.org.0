Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 544853E39A2
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231357AbhHHImS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbhHHImR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:17 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7558BC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:58 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id f5so1314472wrm.13
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IaI41ltTFIQpZn4l7UJ/ZRx5ZofWiXKHIlCi75BHzpE=;
        b=blLcHX9fVmqdNcv0eAooIWxHA+a5Ka9iVjUzt74EIm1a1w/RUCv8FvNYmEscicjwQY
         846VTCE6PzU/DPYyOrm9VgjXfGGMOPm0mDPL1S0ldDFCnUthUZhmONZdhQn3pa4XcrfR
         ORHtZcQ7UGLVPpJ1bhCbmfPjuhaD0Ojez5Zm0nZUFEJu77fNJhVFYBvoLr3J1cddqhOg
         xxIueYo3+oBNaFCkVBroRU8zjFlEVP01cEvyYrTIbIe6VlaHFL6mdSDdujLpuGfv+1jh
         s1paqtHCstjZwBY315vlGFSUVoghWD+v1WRBcHnV3SsEel8UeOM5ZMQQqWL6pa2Mah0U
         +63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IaI41ltTFIQpZn4l7UJ/ZRx5ZofWiXKHIlCi75BHzpE=;
        b=NhA1X8P2cHzacnfrzQcjndDzuNnaYT2ogeIPbSKFvbgFzkU1vAOCtkJ4P+oJbe6DJu
         EsqWn1eYWee1hK73FhAGklfbfhQft0WO79PBpYsiNXafPzVjTptmLytsVUJvAezXPuSy
         EC2MR2rUJXypBtyLX0MKjMeT6dBr6CEmqAKc1C40Ghy8AE/nBmT5rBn/zJc+PE4cDpJK
         EPg873dLJq+ILAYYfqxlmTBCUBu8ZCfnYTQHmzGkDSPdzKGU6tGkW7doeLmhH9pe5t/b
         zjFGae0XQT+pX29ZkR/wQlBHp9CdzecVJn+sFzo0lModPzJxWyo7WZV4ueZWSti4Acss
         MBVA==
X-Gm-Message-State: AOAM5334X2WpkG5EZ6B4Y5zfNWfDP6D3WLN7ziVGalovYqirkAmhkoXE
        /a+W4R2XB57PqpUu5VqEYubJEqDMVH0=
X-Google-Smtp-Source: ABdhPJwHblwt31s72Wc+Lgkp0knbSPM8TvOKMwUkisbTadpEDLOYbdZ7+s4D2ZzjP/ak73L0HsuaKQ==
X-Received: by 2002:a5d:4b41:: with SMTP id w1mr18684026wrs.367.1628412117171;
        Sun, 08 Aug 2021 01:41:57 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 14/23] ioctl_tty.2: Update DTR example
Date:   Sun,  8 Aug 2021 10:41:24 +0200
Message-Id: <20210808084133.734274-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

Do not include unused (and incompatible) header file termios.h and include
required header files for puts() and close() functions.

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_tty.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 967b5c4c7..519e4606f 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -730,7 +730,8 @@ Insufficient permission.
 Check the condition of DTR on the serial port.
 .PP
 .EX
-#include <termios.h>
+#include <stdio.h>
+#include <unistd.h>
 #include <fcntl.h>
 #include <sys/ioctl.h>
 
-- 
2.32.0

