Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92B5B3E39A5
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231364AbhHHImV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbhHHImU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:20 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B8F5C0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:42:01 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id n12so7050588wrr.2
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dY9pk2CjjdiylZMMcbf1kNekQgUo4HP/pTbO6z6C3OM=;
        b=WSyMf9EzUGdN2G1NBPhPXUMzirW1+LGOrmLea5xczZM68ieATWo6QQSwgFm0SFAzOs
         ctj86y2pdSs/g487OwTz226Bh3xYaY5DJS5yPgt38k2qka/xEAh/0boguC+Hp2dz+U5O
         /VU7yS38dQcqMINHheDSEVT8s1rY/CwRurR+y4u77BKlFZiMxeSwFbE6cNHtSEB6NZ8k
         bbHx2xWqhBvJTRvLvTeBImzn75O2tHvH67IkEQ1ZWNuugyIOu/D2PRLqx0l9iVsCiawl
         TcuDpNCrLTevBvqa8rIfHymOCaDuatyjrkEIo7paNTlEAYbBRNyE8KC4mJgAAWtEDxbN
         L8BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dY9pk2CjjdiylZMMcbf1kNekQgUo4HP/pTbO6z6C3OM=;
        b=UcV+5U7oOpOG9m/G4GIeFynD/ECB2XWzKuYGyyR7IGhq5a+izk1oQ/+VnfkLyWTSw9
         NRBaeM9UAoZvc3W4har4g6Pu6HpAGkQkKXZDrK8+In1Cz1PpGAHllG7t7R1A4xZlaAt5
         crnTeBsrkOx+yO5UW0nsw3tTr7aFwvKOiMN9HVVRPq1TaPrcP2bsP2TJFNtt8ByNDS9l
         yQvG2s/TL++eBtgmWSY3z5v4qaFOVoiD+/+LOkqKIvjV4A0SIjLKycYOy2ynklWXl95O
         sePTdQEM+w4rqxkV2hH3TNFUX/YxZevc9J7ZoRab7XWGqE06IUY3wfNOqYeMirZWuQ5P
         kHjg==
X-Gm-Message-State: AOAM5312QQF2Hele78z7r88qWmT0UNI2TaV6kdsVcsfY+5M4/9TxksB1
        xc50JVHWY0uMAn+PqVKYfNaLiIuepJI=
X-Google-Smtp-Source: ABdhPJzzHJh0tkrdWDNROwi9EO/ZjKsmIJvc5ugiXpGBNmfuk3QW5FCW/gyCXLt6oCz6Bje7v4tzww==
X-Received: by 2002:a5d:6d03:: with SMTP id e3mr18917937wrq.153.1628412120084;
        Sun, 08 Aug 2021 01:42:00 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 17/23] termios.3: ffix
Date:   Sun,  8 Aug 2021 10:41:27 +0200
Message-Id: <20210808084133.734274-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Format variable parts of words referring to a group of identifiers in italics,
following groff_man(7) recommendations.

Also srcfix surrounding uses of \f escape sequences to use macros

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/termios.3 | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/man3/termios.3 b/man3/termios.3
index 7023025e7..4fbd34a52 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -960,28 +960,38 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 .ft P
 .fi
 .PP
-The zero baud rate, \fBB0\fP,
+The zero baud rate,
+.BR B0 ,
 is used to terminate the connection.
 If B0 is specified, the modem control lines shall no longer be asserted.
 Normally, this will disconnect the line.
-\fBCBAUDEX\fP is a mask
+.B CBAUDEX
+is a mask
 for the speeds beyond those defined in POSIX.1 (57600 and above).
-Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
+Thus,
+.BR B57600 " & " CBAUDEX
+is nonzero.
 .PP
 Setting the baud rate to a value other than those defined by
-.B Bnnn
+.BI B nnn
 constants is possible via the
 .B TCSETS2
 ioctl; see
 .BR ioctl_tty (2).
 .PP
 .BR cfgetispeed ()
-returns the input baud rate stored in the \fItermios\fP structure.
+returns the input baud rate stored in the
+.I termios
+structure.
 .PP
 .BR cfsetispeed ()
-sets the input baud rate stored in the \fItermios\fP structure to
+sets the input baud rate stored in the
+.I termios
+structure to
 .IR speed ,
-which must be specified as one of the \fBBnnn\fP constants listed above for
+which must be specified as one of the
+.BI B nnn
+constants listed above for
 .BR cfsetospeed ().
 If the input baud rate is set to zero, the input baud rate will be
 equal to the output baud rate.
-- 
2.32.0

