Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C2B81BE2BD
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2020 17:30:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726940AbgD2Pa0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Apr 2020 11:30:26 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:34542 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726937AbgD2PaZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Apr 2020 11:30:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1588174224;
        h=from:from:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:  content-transfer-encoding:content-transfer-encoding;
        bh=pyVihXpc0fRxDAIThwYrUg/Y2na6NSmKhtuGpVqZ2Qc=;
        b=GstKxl8CiuNLpIKMlNUHfkAFqaWu+tLTi0jcX4OtG+tm6xZQf1SVTAFcZ395ZqIhqTEsCO
        IzpjhaASa85HwpxqcoD1diHYU31r9a+Vf9jANTPSkTWHefrFxQlWh4Fd3k9yQ9qMRUt+XA
        aqZlp5Tvw911DXiYgJHvfPXNjT2s/5Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-r4IeNxRCOPKIURQ95CgeSA-1; Wed, 29 Apr 2020 11:30:22 -0400
X-MC-Unique: r4IeNxRCOPKIURQ95CgeSA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A90C219057BE;
        Wed, 29 Apr 2020 15:30:21 +0000 (UTC)
Received: from unused-4-132.brq.redhat.com (unknown [10.40.192.31])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E3FC6510E9;
        Wed, 29 Apr 2020 15:30:20 +0000 (UTC)
Message-ID: <c3c73e5e62c5981f3e21de0febe3d651bc95a6d8.camel@redhat.com>
Subject: [PATCH] execve.2: clarify signal sent to the process on late failure
From:   Nikola =?ISO-8859-1?Q?Forr=F3?= <nforro@redhat.com>
Reply-To: nforro@redhat.com
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Wed, 29 Apr 2020 17:30:19 +0200
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Nikola Forr=C3=B3 <nforro@redhat.com>
---
 man2/execve.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man2/execve.2 b/man2/execve.2
index ab5843840..109c0d57d 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -640,7 +640,10 @@ failure may occur past the point of no return:
 the original executable image has been torn down,
 but the new image could not be completely built.
 In such cases, the kernel kills the process with a
-.BR SIGKILL
+.\" commit 19d860a140beac48a1377f179e693abe86a9dac9
+.BR SIGSEGV
+.RB ( SIGKILL
+until Linux 3.17)
 signal.
 .\"
 .SS Interpreter scripts
--=20
2.26.2


