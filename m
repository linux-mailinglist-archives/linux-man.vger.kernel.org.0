Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57C95240021
	for <lists+linux-man@lfdr.de>; Sun,  9 Aug 2020 23:22:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726321AbgHIVWg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Aug 2020 17:22:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726307AbgHIVWg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Aug 2020 17:22:36 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D064C061756
        for <linux-man@vger.kernel.org>; Sun,  9 Aug 2020 14:22:35 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 079LMSVq012132
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 9 Aug 2020 21:22:28 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 079LMSVq012132
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 079LMS62027433;
        Sun, 9 Aug 2020 21:22:28 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 079LMSFc027432;
        Sun, 9 Aug 2020 21:22:28 GMT
Date:   Sun, 9 Aug 2020 21:22:28 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
Subject: [PATCH] glob.7: tfix, change \(\`a to \(`a
Message-ID: <20200809212228.GA27376@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Correct the character name of "agrave".

Output from "mandoc -T lint glob.7":

mandoc: glob.7:206:14: WARNING: invalid escape sequence: \(\`

###

[ "test-groff" is a developmental version of "groff" ]

Output from "test-groff -b -mandoc -T utf8 -rF0 -t -w w -z"

troff: backtrace: file '<glob.7>':206
troff: <glob.7>:206: error: '\`' is not allowed in an escape name
troff: backtrace: file '<glob.7>':206
troff: <glob.7>:206: warning: can't find special character ''

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man7/glob.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/glob.7 b/man7/glob.7
index 4bafda49e..6b163920b 100644
--- a/man7/glob.7
+++ b/man7/glob.7
@@ -203,7 +203,7 @@ where the string between "\fI[=\fP" and "\fI=]\fP" is any collating
 element from its equivalence class, as defined for the
 current locale.
 For example, "\fI[[=a=]]\fP" might be equivalent
-to "\fI[a\('a\(\`a\(:a\(^a]\fP", that is,
+to "\fI[a\('a\(`a\(:a\(^a]\fP", that is,
 to "\fI[a[.a-acute.][.a-grave.][.a-umlaut.][.a-circumflex.]]\fP".
 .SH SEE ALSO
 .BR sh (1),
-- 
2.28.0
