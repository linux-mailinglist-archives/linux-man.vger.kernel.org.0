Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ADDF6152760
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2020 09:08:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727937AbgBEIId (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Feb 2020 03:08:33 -0500
Received: from vmicros1.altlinux.org ([194.107.17.57]:43816 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727068AbgBEIIc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Feb 2020 03:08:32 -0500
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 89BEB72CCEF;
        Wed,  5 Feb 2020 11:08:30 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 7C9537CCE2F; Wed,  5 Feb 2020 11:08:30 +0300 (MSK)
Date:   Wed, 5 Feb 2020 11:08:30 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: [PATCH] cmsg.3: ffix
Message-ID: <20200205080830.GA3117@altlinux.org>
References: <20191217143609.GA23014@brightrain.aerifal.cx>
 <CAK8P3a2Rv4uEW4acMm_byZQdsH8yNgfuy9qcmT6tmuPrQxvcHA@mail.gmail.com>
 <20191217204751.GI1666@brightrain.aerifal.cx>
 <CAKgNAkhJ3j=v255UPJBeYs4erDOWpinxo0T1dqx_Fdh1MC=7-A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkhJ3j=v255UPJBeYs4erDOWpinxo0T1dqx_Fdh1MC=7-A@mail.gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
---
 man3/cmsg.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/cmsg.3 b/man3/cmsg.3
index 9dd4c9c10..4ff4691ae 100644
--- a/man3/cmsg.3
+++ b/man3/cmsg.3
@@ -192,7 +192,7 @@ for (cmsg = CMSG_FIRSTHDR(&msgh); cmsg != NULL;
         cmsg = CMSG_NXTHDR(&msgh, cmsg)) {
     if (cmsg\->cmsg_level == IPPROTO_IP
             && cmsg\->cmsg_type == IP_TTL) {
-	memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
+        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
         break;
     }
 }
-- 
ldv
