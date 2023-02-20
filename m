Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F24C69D0EE
	for <lists+linux-man@lfdr.de>; Mon, 20 Feb 2023 16:50:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231265AbjBTPue (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Feb 2023 10:50:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229869AbjBTPud (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Feb 2023 10:50:33 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ED8B1EFD9
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 07:50:32 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id bg37-20020a05600c3ca500b003e21e018039so2235004wmb.3
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 07:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/TN5gqu22tPu2fpR6mIVAUOgn339s6FX7mb9yRGcQR8=;
        b=KXyxZrtCIp7bTRX17gY31SqhWkqKGK49XRKf5fOUwF7N7QJPTMJEGiSoisUeEeEac0
         b4tF6awMlhh9I2nqBMaVcwgIHcJSk5m7bQsT5tc0tuCAvgBTYXCqt9y5opCq+u9L/s45
         oryXlZRhrWAlElKKgbF3DghP9W0tf993ReoIkoBDUahDzQM3GX0vS1TAceIPd7fg9BTz
         BL9lJYBMoE5shXW6VuDOE0asGVMHXrnY2IMT7Bbi0ewgcNn9KT1yfHx9VpFmaQcE3B01
         WyLzqDULBWdSc6gr2o+jkinkwuXOrfk2hbQlkM372K7bK7Ju/fX/kx8syLSqkDXf0jz0
         Xz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/TN5gqu22tPu2fpR6mIVAUOgn339s6FX7mb9yRGcQR8=;
        b=QSdG8HL7N8DgMVpq4+5TH8jJcEbHg6aZGvC3FIxiF2tCd/EAoNFi3YgV0fec9KxUbq
         T8dPE7C9wpd64oo3pO4qRpqwklHecHKvggYamHcOibP6FtGYXqil2XhWwCRsEEY0meFu
         QHuKLI72tukwTbk1YlE0F9LHKN3wtvYyJnmeusmjGvHpXA/4Thtr8DJEtm+PRSne9Dom
         2gtZSoySAU5cRqzIru5/qcg5xmup5e7y/9GQuhuOobf9MFNWka73PmCjdjY7/D7tjck0
         VLlESA/pkfGiElZQvnJuGjP4ygFJ/eZANZf2V1en0Wrwtrv1zYFgtCpM7HHXmLXHvYAC
         BNBQ==
X-Gm-Message-State: AO0yUKUe+kwsz5mM6eWiyis/9zs98wmSuktJu1wXUS59Fm2x6mAXv6TW
        QXD6Cr/VBINw1nuW0FMDaWCRkYSjkjHUng==
X-Google-Smtp-Source: AK7set9quhdIZRBOnCJJC5wszTNuS/gJMXkRhdwa/yhYc5noZtMISKGctgnGK/fZe+5ZBZl3cXTmXA==
X-Received: by 2002:a05:600c:4e08:b0:3dc:5240:53b6 with SMTP id b8-20020a05600c4e0800b003dc524053b6mr1313453wmq.6.1676908230838;
        Mon, 20 Feb 2023 07:50:30 -0800 (PST)
Received: from T14s-004530 ([185.213.253.252])
        by smtp.gmail.com with ESMTPSA id u8-20020a05600c00c800b003e2243cfe15sm11204937wmm.39.2023.02.20.07.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 07:50:30 -0800 (PST)
Date:   Mon, 20 Feb 2023 17:50:28 +0200
From:   Guy Shefy <guyshefyb@gmail.com>
To:     alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process group
Message-ID: <Y/OWxEajSbwD8UsL@T14s-004530>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Guy Shefy <guyshefyb@gmail.com>
---
 man2/setpgid.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/setpgid.2 b/man2/setpgid.2
index 52c5bd5fc..0b0182eb9 100644
--- a/man2/setpgid.2
+++ b/man2/setpgid.2
@@ -214,6 +214,11 @@ a session leader
 .RB ( setpgid (),
 .BR setpgrp ()).
 .TP
+.B EPERM
+The target process group does not exists.
+.RB ( setpgid (),
+.BR setpgrp ()).
+.TP
 .B ESRCH
 For
 .BR getpgid ():
-- 
2.34.1

