Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE722A69E4
	for <lists+linux-man@lfdr.de>; Wed,  4 Nov 2020 17:35:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729382AbgKDQfa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Nov 2020 11:35:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725896AbgKDQfa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Nov 2020 11:35:30 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8654EC0613D3
        for <linux-man@vger.kernel.org>; Wed,  4 Nov 2020 08:35:29 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id x7so22760659wrl.3
        for <linux-man@vger.kernel.org>; Wed, 04 Nov 2020 08:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LssclLN5TRuNYcYXum3bb6ont1afHdo+Hw6+p0WzVwU=;
        b=jtNnh3Qpy6Gar3Pgb2/H0UFeQLNYilGB/q98ZEV9NTKXKU9fbMKrEgCMuyQlmakfu9
         1L7PnqmqC1Nh/o4i7NMe+lFTaMDI+U4ean55wAn8KJhtkCsftDOwSKFVfGWcx2kzutRQ
         Efk0o+pvcwGEcj0yPyHN/6zXva70Y6gvW9fi/ccddN6a9fm1CGvJX6ZsNfJzQxlFlGMy
         rNU2aXh4YrIZ71a/PZfSjos7lh4M4Ls1174hAuslmuT+O0TYZlTEhossZokl2DPGv2tg
         pfmUrLPiRFv/BoEztIhoZjPZZDQrU16dmRrVrnTQpUehrTdyx9xmhkIE22O4y8HCVt0X
         SGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LssclLN5TRuNYcYXum3bb6ont1afHdo+Hw6+p0WzVwU=;
        b=OS6lTXXzvGfwOqW1+GULQXVEf8FdKj1NUhQDxnBEAhEVPnVQL7vGuYtns/ESz+A+Kq
         9UBCLVEo8WjcIkjFr066QXCzBEBWiB+kZ1VvPnr56Wb68zmQgcybF3sFXol0+1kshLJZ
         /ho/CQrIaivb5pYpptgZUnhr5O+m5Cgn4Zp3AX4MfJTqyNcgheuIHSpvt81BqrfZeZFf
         bt4XDeq/yRPgsNWy7MS8gLSRalYk1AMp09t4XFDb6jwPczwmGrk0k0XRXFOHC2lGjFgP
         BUPfmls+9UcTrc9fQoereEqwEgIuR0YOv7B6Q8FvogtJRsZcjqWujWODEMQvEag3UiyA
         S3Lg==
X-Gm-Message-State: AOAM530WkNt5Y7KodwxYxRbE++B28LL9tyCWMViNDiQ1VKO7OvZa+hrU
        YSHcrvFddK5a+1OF9NMl7rI=
X-Google-Smtp-Source: ABdhPJzJA0hZr2DMDoSbeedS2CBoGgqB1U3eOa/8nYfU2UoU6G03mN4R79n3wWK/y+Ak3tPm0MYQFQ==
X-Received: by 2002:adf:dd89:: with SMTP id x9mr32981279wrl.284.1604507728358;
        Wed, 04 Nov 2020 08:35:28 -0800 (PST)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id x10sm3336751wrp.62.2020.11.04.08.35.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 08:35:27 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] strerror.3: tfix
Date:   Wed,  4 Nov 2020 17:35:10 +0100
Message-Id: <20201104163509.5795-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/strerror.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strerror.3 b/man3/strerror.3
index 1b95014ee..72b4d3994 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -252,7 +252,7 @@ T{
 T}	Thread safety	MT-Unsafe race:strerror
 T{
 .BR strerrorname_np (),
-.BR strerrordesc ()
+.BR strerrordesc_np ()
 T}	Thread safety	MT-Safe
 T{
 .BR strerror_r (),
-- 
2.28.0

