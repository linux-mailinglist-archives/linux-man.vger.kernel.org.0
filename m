Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A640E374D2
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2019 15:08:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726092AbfFFNID (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Jun 2019 09:08:03 -0400
Received: from gm-smtp5.centrum.cz ([46.255.225.105]:45965 "EHLO
        gm-smtp5.centrum.cz" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726040AbfFFNID (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Jun 2019 09:08:03 -0400
X-Greylist: delayed 470 seconds by postgrey-1.27 at vger.kernel.org; Thu, 06 Jun 2019 09:08:03 EDT
Received: by gm-smtp5.centrum.cz (Postfix, from userid 65534)
        id 37F5684000EA; Thu,  6 Jun 2019 15:00:12 +0200 (CEST)
Received: from atlantis (unknown [185.33.138.174])
        by gm-smtp5.centrum.cz (Postfix) with ESMTPX id E8F0C84000E3;
        Thu,  6 Jun 2019 15:00:11 +0200 (CEST)
Date:   Thu, 6 Jun 2019 15:02:45 +0200
From:   Petr =?utf-8?B?VmFuxJtr?= <arkamar@atlas.cz>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] syscalls.2: tfix
Message-ID: <20190606130245.GA21162@atlantis>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Petr Vaněk <arkamar@atlas.cz>
---
 man2/syscalls.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 1c0723941..be10ba4ea 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -174,7 +174,7 @@ l l l.
 \fBarc_gettls\fP(2)	3.9	ARC only
 \fBarc_settls\fP(2)	3.9	ARC only
 .\" 91e040a79df73d371f70792f30380d4e44805250
-\fBarc_usr_cmpxchg\fP(2)	4.9	ARC onlt
+\fBarc_usr_cmpxchg\fP(2)	4.9	ARC only
 .\" x86: 79170fda313ed5be2394f87aa2a00d597f8ed4a1
 \fBarch_prctl\fP(2)	2.6	x86_64, x86 since 4.12
 .\" 9674cdc74d63f346870943ef966a034f8c71ee57
-- 
2.21.0


