Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 335D33E39A1
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231335AbhHHImQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbhHHImQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:16 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D38AC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:57 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id e25-20020a05600c4b99b0290253418ba0fbso9218897wmp.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LyH5Q9ccIar7jHXW3YimaCuk/XrY5a+NRVaNaMXUeDo=;
        b=GUGnB3bSFpiSjQzBrNVaVQNKFfhtIKhT8rvSSHIg9yP170XUMm+ikQekNKSy3lXr4O
         DkSsVxgY8vhk+uy2wj+9Lcu6mK1gZ38+vud5Ba+4rxDLWFpe1B/R+loE+jZLi5N2cdbL
         8NXZj230Ev1uo/zaIDUrg+H+F8VnrHGfCPn1V260J56jGT6RAu2idwo0/FKPnJIvLR85
         +qy1akJKxwGNpqgGQkeNbLn1JfxjjSI8ggaEcxT7s+lwKMESk4NRMa1Xfm5hyYdhSIzx
         U+328CqVp8doePG36WTcqG/gZBt2ZmUy5IOlz2ImrxfqVWAQsH63xxJuHIMGnXXI31qd
         gQbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LyH5Q9ccIar7jHXW3YimaCuk/XrY5a+NRVaNaMXUeDo=;
        b=rVgMcgaqMBqg2zbxD7R052fxaKGJw0dOP+U2AOlMHVyWioFyBcqMIiB3lbiln3jPwu
         ghoAo6pDTs5nP/NxAolRdGJAfqEhbaHyqBCSeUQo1H/Ls6SAcHKYL/33VVQubLzsi5mP
         LLA3LZ858kKhHr65S+7Qo6miVrb0jwL0TsQh4W77IT6m1cfU30XnukGpMqeQWycLCmmn
         hrv7LKflPN6tAXXyar0pcSgd56c6GbclgfDTyZYqjStxbdcd8iNAriSXewnAEZyaZf3N
         CcrzyCQTA6nip7l8MnSLNV97Hbxr9o5qivHZksW0CqMXhKrKSOnKoGxyR4agFb+3Kg6s
         ETHw==
X-Gm-Message-State: AOAM532lYaoazDNGIhSA0lNUrHtuqnDV7B3MolHJyYc2rz9IiiLeRcrX
        JsHoxtpdQjLxKqSn+VKARPQ=
X-Google-Smtp-Source: ABdhPJyRG9TscJ7knvTo7K8nS82XNg7ZPWYCX6/cl5Ikry8ReRHAdekyVWVD56IJ9lNfW7fgQxR+bw==
X-Received: by 2002:a7b:c4d6:: with SMTP id g22mr6514815wmk.172.1628412116277;
        Sun, 08 Aug 2021 01:41:56 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 13/23] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2
Date:   Sun,  8 Aug 2021 10:41:23 +0200
Message-Id: <20210808084133.734274-14-alx.manpages@gmail.com>
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
 man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 46294e63f..967b5c4c7 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -77,6 +77,35 @@ The following four ioctls are just like
 .BR TCSETSW ,
 .BR TCSETSF ,
 except that they take a
+.I "struct termios2\ *"
+instead of a
+.IR "struct termios\ *" .
+If struct member
+.B c_cflag
+contains
+.B BOTHER
+then baudrate is stored in struct members
+.B c_ispeed
+and
+.B c_ospeed
+as integer values.
+These ioctls are not supported on all architectures.
+.RS
+.TS
+lb l.
+TCGETS2	\fBstruct termios2 *\fPargp
+TCSETS2	\fBconst struct termios2 *\fPargp
+TCSETSW2	\fBconst struct termios2 *\fPargp
+TCSETSF2	\fBconst struct termios2 *\fPargp
+.TE
+.RE
+.PP
+The following four ioctls are just like
+.BR TCGETS ,
+.BR TCSETS ,
+.BR TCSETSW ,
+.BR TCSETSF ,
+except that they take a
 .I "struct termio\ *"
 instead of a
 .IR "struct termios\ *" .
-- 
2.32.0

