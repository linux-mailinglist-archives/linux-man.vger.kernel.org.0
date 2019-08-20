Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 75B299605D
	for <lists+linux-man@lfdr.de>; Tue, 20 Aug 2019 15:41:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729992AbfHTNkN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Aug 2019 09:40:13 -0400
Received: from joooj.vinc17.net ([155.133.131.76]:56140 "EHLO joooj.vinc17.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728248AbfHTNkN (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 20 Aug 2019 09:40:13 -0400
X-Greylist: delayed 307 seconds by postgrey-1.27 at vger.kernel.org; Tue, 20 Aug 2019 09:40:13 EDT
Received: from smtp-zira.vinc17.net (2a02-8429-80cd-3101-328d-99ff-fe25-ad3f.rev.sfr.net [IPv6:2a02:8429:80cd:3101:328d:99ff:fe25:ad3f])
        by joooj.vinc17.net (Postfix) with ESMTPSA id 68A7E9C;
        Tue, 20 Aug 2019 15:35:04 +0200 (CEST)
Received: by zira.vinc17.org (Postfix, from userid 1000)
        id 0E653C20167; Tue, 20 Aug 2019 15:35:04 +0200 (CEST)
Date:   Tue, 20 Aug 2019 15:35:04 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] printf.3: Add detail on the first digit with the %e format
Message-ID: <20190820133504.GA30665@zira.vinc17.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/1.12.1+33 (6a74e24e) vl-117499 (2019-06-23)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This requirement on the first digit with the %e format comes from
the ISO C standard. It ensures that all the digits in the output are
significant and forbids output with a precision less than requested.

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man3/printf.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index fb40b7077..66ad6af02 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -658,7 +658,8 @@ The
 .I double
 argument is rounded and converted in the style
 .RB [\-]d \&. ddd e \(+-dd
-where there is one digit before the decimal-point character and the number
+where there is one digit (which is nonzero if the argument is nonzero)
+before the decimal-point character and the number
 of digits after it is equal to the precision; if the precision is missing,
 it is taken as 6; if the precision is zero, no decimal-point character
 appears.
-- 
2.23.0.rc1
