Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16BDA16A0F2
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2020 10:00:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727170AbgBXJAf convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 24 Feb 2020 04:00:35 -0500
Received: from us-smtp-2.mimecast.com ([207.211.31.81]:50251 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726744AbgBXJAf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Feb 2020 04:00:35 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-4lJuPVlZNW6hOIE_bOeLyA-1; Mon, 24 Feb 2020 04:00:30 -0500
X-MC-Unique: 4lJuPVlZNW6hOIE_bOeLyA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9046E804905;
        Mon, 24 Feb 2020 09:00:29 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-33.ams2.redhat.com [10.36.112.33])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id ACE919184D;
        Mon, 24 Feb 2020 09:00:28 +0000 (UTC)
Date:   Mon, 24 Feb 2020 10:00:26 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strftime.3: tfix
Message-ID: <20200224090026.GA32691@asgard.redhat.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fixes: 13e5f960f353 "strftime.3: Minor tweaks to Eugene Syromyatnikov's patch"
Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man3/strftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strftime.3 b/man3/strftime.3
index 7e2ea8b..c6ed25a 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -406,7 +406,7 @@ The year as a decimal number without a century (range 00 to 99).
 (The
 .B %Ey
 conversion specification corresponds to the year since the beginning of the era
-denoted the by
+denoted by the
 .B %EC
 conversion specification.)
 (Calculated from
-- 
2.1.4

