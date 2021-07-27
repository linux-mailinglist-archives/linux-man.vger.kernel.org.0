Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 773883D81EA
	for <lists+linux-man@lfdr.de>; Tue, 27 Jul 2021 23:38:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231364AbhG0Vis (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Jul 2021 17:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231339AbhG0Vis (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Jul 2021 17:38:48 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3ED9C061757
        for <linux-man@vger.kernel.org>; Tue, 27 Jul 2021 14:38:46 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n28-20020a05600c3b9cb02902552e60df56so292220wms.0
        for <linux-man@vger.kernel.org>; Tue, 27 Jul 2021 14:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qasad+gxkJ6OgZjxjLY7EPkGpnOToq4wu03QWc03kVI=;
        b=ZaVY4cfEEtvFtPuY10uyX11cofg+a2ovDv+PoEYiwHrTL5d3oAe4pDD3ufzyTjcIjq
         XM8P5aGM6TG/f9MACvPIcMLy5G68BR3mz/KFVT01k1tqTaIMaRyAzYYsiGIe19G3ogrO
         I+wykRRy2gek3MKHHx07Ssvc0+TFY7ru90lDkyayIjmJboacNzDdjjD9mOxs6t2svGsV
         Jp/MkdHsTORPptBlhd4mscQX2vBvf7JJPJ7sNYAAgzG5Z14dZoJ94eaYltuIGrhazRDC
         huUPbFhk1mDRDocPG0muw1145CVpsRMwvPiy5Uac95toSGF9yzN8890tIt3fKhkij2+2
         BDLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qasad+gxkJ6OgZjxjLY7EPkGpnOToq4wu03QWc03kVI=;
        b=INx9OWtbkNYnn1FQ1wNodwV7oGoAzY7awEt56SZFFT1XSymBfmEg4lGKEZidpIHCPG
         CmLOTKQTSEsYVpvKqN9uaBwwTHjs53VA/8oSItP833nnzsA/u1mxC1Ceo6kt4EurRpEe
         DrKgLEy6EzSU8TuaCl6LY4rzL2QnHxOn0fXORSyEYx59iX2S9tKlcNpv/xi0cobnQBAp
         fHMlzTZb/47p8gpHo5bgOKaoGIQpezXy7IPVaAiEQAKYxfyh8X0CU3/+4LX1p4tPOibn
         +9XkR+SwyToAJXHmOR1YwXon4RTC3RxeAKFRwkmc5PAhIet05ieSUF6+0lvZR6YEoiDv
         +5JQ==
X-Gm-Message-State: AOAM532LDKzPqZYwohINWQoW+J0xM3bCzP5yKXsZGzFm4CLbNAtCij6K
        fNMdbYedNMYT8A1/aUTXipZhLWJI62c=
X-Google-Smtp-Source: ABdhPJzyCVRJMqxDTjoy6IixqRZj8ufxbI5BJVK64WSS+IiVnCd0T5/QB1oE/B9RG/8uJcNfa4+WCA==
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr3028726wmg.35.1627421924990;
        Tue, 27 Jul 2021 14:38:44 -0700 (PDT)
Received: from localhost ([185.112.167.41])
        by smtp.gmail.com with ESMTPSA id e6sm5464373wrg.18.2021.07.27.14.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:38:44 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] unix.7: tfix
Date:   Tue, 27 Jul 2021 23:38:43 +0200
Message-Id: <20210727213843.974146-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man7/unix.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/unix.7 b/man7/unix.7
index fc2834fe4051..6d30b25cd476 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -819,7 +819,7 @@ reference to it is closed.
 To pass file descriptors or credentials over a
 .BR SOCK_STREAM
 socket, you must
-to send or receive at least one byte of nonancillary data in the same
+send or receive at least one byte of nonancillary data in the same
 .BR sendmsg (2)
 or
 .BR recvmsg (2)

base-commit: fbe71b1b79e72be3b9afc44b5d479e7fd84b598a
-- 
2.32.0

