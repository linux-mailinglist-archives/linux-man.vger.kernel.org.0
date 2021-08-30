Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 950DA3FB488
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 13:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235387AbhH3L1e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 07:27:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:58258 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232579AbhH3L1d (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 30 Aug 2021 07:27:33 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A54161102;
        Mon, 30 Aug 2021 11:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630322800;
        bh=Q82nFS6sOzbiqjXZLRHyQ1X8z8oG6JS6VICZD93yVXE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=dDiTatl6dKjAs9/oVY3fjKowQjTaVpByhzeE18VnsPEGZy62+5tUhj5Luj4aXbhZM
         BlyTRyOhrt6aZCyBoS/No+18u5jiSVGIDxEwi8j9eIBN2Z53M2kpWF7HO7z0sg6eP0
         cbL7uzYD7ubDecgEyYdHfFEueZ0tNVt92bpM4rDG/AAf+Ge6rRKeSxs4IKqpKH2diR
         q74y9mk8Hqb9Jp1vJl1P6a6dXZb50tZHBamJ2w/6dYfqQ2VNl3htp18e15g0dHabEQ
         AuXkxZiRPYsm3747ll+RJSvGAqtWz9owmo1a0RQLb2DtK2j4+vJ8mBmOUJ6LRe6Mez
         yMEquONhQZhQQ==
Received: by pali.im (Postfix)
        id B85087B8; Mon, 30 Aug 2021 13:26:37 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] termios.3: Clarify zero argument for cfsetispeed()
Date:   Mon, 30 Aug 2021 13:25:52 +0200
Message-Id: <20210830112552.18476-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <5dc2196a-9a2a-1b2e-e6ee-3539a62aad82@gmail.com>
References: <5dc2196a-9a2a-1b2e-e6ee-3539a62aad82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Zero in this case refers to literal constant 0 and not symbolic constant B0.

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index c96a5c15ec87..f888c15d754c 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -1017,7 +1017,11 @@ which must be specified as one of the
 .BI B nnn
 constants listed above for
 .BR cfsetospeed ().
-If the input baud rate is set to zero, the input baud rate will be
+If the input baud rate is set to literal constant
+.B 0
+(not the symbolic constant
+.BR B0 ),
+the input baud rate will be
 equal to the output baud rate.
 .PP
 .BR cfsetspeed ()
-- 
2.20.1

