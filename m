Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA4F93E39A3
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231359AbhHHImT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbhHHImS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:18 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56657C0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:59 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id n12so7050497wrr.2
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ChPYXd7ZlExXA9MKFM+IpJ+blOM78/D0rqdEVdNcd9U=;
        b=bUycJJFqET6447oJGzK7DmLqs2egbFgGuadmLZ+xRwLqj44PdgvB1PG3sW/2CF2fVS
         252NdPfTLsvBMubtJgmzSej1AGk6cGIEaj2jI8tiH18oOPwKXmtWEsa2jGvulT97/5Ii
         dH9KyX6VPoT7ir/A9BJOGudHinIKTSiEPdAonsh+4kxpQmIIFzqeYKcIkmvHJ6z2itTB
         TFxxVUalpaNfsMKyl7aROG5473mmu6gKLyXwzLNQJgKpiNKWhKnGjyECr3dhL1mtZkN5
         9UXZP7yaJdD0O6QKehOYS46umukpYu+0AunDs6b5Vi3NSktKifTMSHtl9GUFFBxnpAnc
         iAkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ChPYXd7ZlExXA9MKFM+IpJ+blOM78/D0rqdEVdNcd9U=;
        b=LZinFpu3TghZSvO/yPb4kGUCHFl+IP6mKMCTB/+O8oyNctoABJL8s7fmeGWZ51SawC
         LY3U7VTy1LvOtl2iXSGkX4xviCiYQXOYrJQn+VU/4qGcp58cCE+925S54Q1ZGwcDVr+p
         k52KNjHsZpf1KcdxisbdUzjnkR38Z+OB9uUfJ8H52zCxT2TAGdGCIJW28V3jNhernEnD
         AWnlbFpbZaH98As/WyT+NUMuQgEYKZuZE6B5Bt9Qhq4ZgmMUKE3QoJnb43cV99cEb6OH
         DryNBFRhCirfs35qq6KmLDQVg4J6bWxtD6lz7BTtWy0PstdQn8mDLl8iF1DW4TZf6dXn
         kIxQ==
X-Gm-Message-State: AOAM530e4StQO8cY2sk1tPi9BWcqhYpwpK7XR5zpszcF+I31VRFJJjZ6
        bbd2ueF/GbWZGkup5AypfmLhC64XoC8=
X-Google-Smtp-Source: ABdhPJwFr3eFJCvJfNVp2m0Z9bw/HZYT5c3k1zC1ZqED++wC7kC+FEhk6pnSsjZ2T6baRB+nGg/YJA==
X-Received: by 2002:adf:fb44:: with SMTP id c4mr18360332wrs.179.1628412118003;
        Sun, 08 Aug 2021 01:41:58 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 15/23] termios.3: Add information how to set baud rate to any other value
Date:   Sun,  8 Aug 2021 10:41:25 +0200
Message-Id: <20210808084133.734274-16-alx.manpages@gmail.com>
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

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/termios.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index b7cdec507..7023025e7 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -968,6 +968,13 @@ Normally, this will disconnect the line.
 for the speeds beyond those defined in POSIX.1 (57600 and above).
 Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
 .PP
+Setting the baud rate to a value other than those defined by
+.B Bnnn
+constants is possible via the
+.B TCSETS2
+ioctl; see
+.BR ioctl_tty (2).
+.PP
 .BR cfgetispeed ()
 returns the input baud rate stored in the \fItermios\fP structure.
 .PP
-- 
2.32.0

