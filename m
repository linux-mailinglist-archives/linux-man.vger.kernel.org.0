Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D141F2DA6A8
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 04:14:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728104AbgLODNv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Dec 2020 22:13:51 -0500
Received: from smtp.zlima12.com ([107.172.191.159]:46468 "EHLO
        smtp.zlima12.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728092AbgLODNV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Dec 2020 22:13:21 -0500
X-Greylist: delayed 505 seconds by postgrey-1.27 at vger.kernel.org; Mon, 14 Dec 2020 22:13:20 EST
Date:   Mon, 14 Dec 2020 22:03:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zlima12.com; s=dkim;
        t=1608001446; bh=WyrTmL7UHFMstkNd++btdXByzpJEUuzMIwoS9HhqF5c=;
        h=Date:From:To:Cc:Subject;
        b=kPp0xJYG5UEQmnJEBZrtxyEFEFe3345gaTnRm3axr6gUCXkNn2sjTiH0h4ChGLQs1
         1DIw8jijEUNSZoIaoJWQlHjtLIvfj6lTuvPoZg8C4DB3Zgyq3Dm4/fVssQ/t2O3byv
         /8GT7MjmdYKnAvf8wG/vvZa5wKJ3WBqVLZblw/Gh7SmNFLFTBxv6lsvaAEaFy8oIUE
         TfTKXM1IUPru7h9d+lrld/1UdjqiWzA89pNBEm9u3c2lT7geqXtJCvpUXnzCuuOtRw
         9phz2qhP5RyjG2N097G/Axwj4uIopkO/E84bPux9LfOkYlqE1c42jnMTDghtwZoEDi
         BJPSMTnJZpZmw==
From:   "John A. Leuenhagen" <john@zlima12.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strtol.3: tfix
Message-ID: <20201215030359.bwevjq5ovqnncuan@Lima-1.maple.zlima12.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: John A. Leuenhagen <john@zlima12.com>
---
 man3/strtol.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 549138726..26b62664a 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -198,7 +198,7 @@ and then determine if an error occurred by checking whether
 has a nonzero value after the call.
 .PP
 According to POSIX.1,
-in locales other than the "C" and "POSIX",
+in locales other than "C" and "POSIX",
 these functions may accept other,
 implementation-defined numeric strings.
 .PP
-- 
2.26.2

