Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1903B3E3995
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231247AbhHHImE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbhHHImE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:04 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6DE8C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:45 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id c9so17070994wri.8
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fShiKrAJWeQoSu6nzJ9HS6A8CxQWmdPhnrCiaHEdaX8=;
        b=RZK4zsvLkZy0QGYUHGMK6eRcvrJOoZ/TRUIYEfrTxe6Vk/c59i6/eJjzhTzqhYF7cN
         S1QbPZa7I1PACM0SQxbQSwUei4sMdfPtedNf5MF3kuQzyxzlf2rz+kvJWI4lK60eJRKC
         bkLoa7MR1UJTa+eSEAD2SapxXfKDFWmMIvi/SkBVjLGZXSEysOPF90tKLKVNHHNdFLbH
         osow5XVZe4OvV3kgkuLQIVk5hUNti2Zzbk2dDlaq6FwB9SapgQNQMAnr5mlYlnVU4DoE
         A5qw3pV7PZUBvBXO6uEQe2FCXg9nLQhWpfZxTKc6xTZZ7s95G/qwUAshw6RJe0kNS3EX
         WtOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fShiKrAJWeQoSu6nzJ9HS6A8CxQWmdPhnrCiaHEdaX8=;
        b=OaI7ZLva0X24Ve5kqEW23H0nrqjQ09fuUQZx7QFUoz3jFpli56B8458f99BYTCkUUI
         gRrXHVRhPNFJkYF3caVTUhFGZ9MxnnxB1r2YgVxIlWzJew+8NHWotp0+HfcICvSez8lk
         3Sr3ttdhCs9TgtrJqD5z1aAvibXGIMCXGd3wVwFeOsd2A66U/ylbA6VmVqoqRFpUniGt
         e5WSSLUoPCOa/XV/mPshxknHIjZGdryRq4HSbWXjSp3S25s0zjJUajtIMQNfAGuvuI25
         Vb2TM8l5DzsfUZerKkzgYI779JopsrqRccBSRyFgAfDugpUQREKll7f/zTR7jwqpWCzr
         4g3Q==
X-Gm-Message-State: AOAM533zG42J6rFzYDOd6SXnVFfSFty6WpCrs16sbw1lVvJF2eDqpcYI
        cF9ve874E4YYWAQiBkHWu5o=
X-Google-Smtp-Source: ABdhPJxf+orDKgboymU8fudhpFwAPKUcmP9ZC2Cs2bSUjjJSYhoBgSZ2VLjBVrmWwt7lyMEXsQInWg==
X-Received: by 2002:a05:6000:1086:: with SMTP id y6mr447891wrw.406.1628412104354;
        Sun, 08 Aug 2021 01:41:44 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 01/23] pipe.7: also mention writev(2) in atomicity section
Date:   Sun,  8 Aug 2021 10:41:11 +0200
Message-Id: <20210808084133.734274-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: наб <nabijaczleweli@nabijaczleweli.xyz>

writev(2) notes that buffers don't interleave with other process'
(a reasonable question to ask), but points to pipe(7) for an exception.
pipe(7) did /not/ mention "writev", "iov", "scat", or "gath", which are,
in order, reasonable search terms: this was confusing at best and
alarming at worst

By mentioning writev(2) in the heading, we clearly note that this sort
of interleaving behaviour matches write(2)'s and isn't a concern

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/pipe.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man7/pipe.7 b/man7/pipe.7
index c3210320c..29f6cf6cb 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -246,6 +246,8 @@ limits; see BUGS.
 .SS PIPE_BUF
 POSIX.1 says that
 .BR write (2)s
+and
+.BR writev (2)s
 of less than
 .B PIPE_BUF
 bytes must be atomic: the output data is written to the pipe as a
-- 
2.32.0

