Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B89731DBA17
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2020 18:48:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726697AbgETQsJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 May 2020 12:48:09 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:24231 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726548AbgETQsJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 May 2020 12:48:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1589993288;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=TC7ptB+OfU3gcmm0Qtui5VRR3jSXdWplUqU/JDDnQM4=;
        b=UsSUQLo/CaY5EOVxwPre7zEQQnpnflFOTPrC230Ck6xNUdUm5tWhpcyTUMDXOJ1cj93gIB
        JnPFMHNK4W45Y2o/eKvmhVCpqHvLoQs3LLPBzCTwHuuT+kuHoGCBty8rdiiUtCGpSJ1Z24
        sWW+SI+iFqaFLHFKCjf5HH0RFhBof0c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-QEjQc18lOOyifLH8fQjAuQ-1; Wed, 20 May 2020 12:48:05 -0400
X-MC-Unique: QEjQc18lOOyifLH8fQjAuQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3E2F1B18BC1;
        Wed, 20 May 2020 16:48:04 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-191.ams2.redhat.com [10.36.113.191])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D3755C1D0;
        Wed, 20 May 2020 16:48:04 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
Subject: [PATCH] ldconfig.8: Mention new default for --format in glibc 2.32
Date:   Wed, 20 May 2020 18:48:02 +0200
Message-ID: <87a722a6yl.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This reflects glibc commit cad64f778aced84efdaa04ae64f8737b86f063ab
("ldconfig: Default to the new format for ld.so.cache").

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man8/ldconfig.8 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index eb9c86dae..e184478a7 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -125,8 +125,12 @@ Cache format to use:
 .IR old ,
 .IR new ,
 or
-.IR compat
-(default).
+.IR compat .
+Since glibc 2.32, the default is
+.IR new .
+.\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
+Before that, it was
+.IR both .
 .TP
 .BI "\-C " cache
 Use

