Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 921DB116B92
	for <lists+linux-man@lfdr.de>; Mon,  9 Dec 2019 11:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727283AbfLIK4t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Dec 2019 05:56:49 -0500
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:28939 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726377AbfLIK4t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Dec 2019 05:56:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1575889008;
        h=from:from:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:  content-transfer-encoding:content-transfer-encoding;
        bh=pR6A5MjUyMD+6YHkIs1xroPX4+GlLCtJJAd5B3ZToSc=;
        b=X0Iq0sunJIUt/otpa2e5UFGgOP7bdadiUVvfaBgwlPIHy6thXd3lXdbV205o2CnQ9Ebc5h
        5l60p4qbSYzsg9x5oSZB/w8kWWMcavZNazPpzzT337qa3ERBX+MwzNcDv1s+iLhXKqknkN
        VeGyS43VVT2LBi7yTle3qg+llXMIruM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-r1kw4R_LMDSi-XbrZPO_zw-1; Mon, 09 Dec 2019 05:56:45 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2435F107ACC4;
        Mon,  9 Dec 2019 10:56:44 +0000 (UTC)
Received: from unused-4-132.brq.redhat.com (unknown [10.43.2.16])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 7642F5C21B;
        Mon,  9 Dec 2019 10:56:43 +0000 (UTC)
Message-ID: <4c44701f852aba14f40f4b815e8ed0e080c00bea.camel@redhat.com>
Subject: [PATCH] copy_file_range.2: tfix
From:   Nikola =?ISO-8859-1?Q?Forr=F3?= <nforro@redhat.com>
Reply-To: nforro@redhat.com
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Mon, 09 Dec 2019 11:56:41 +0100
Organization: Red Hat
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: r1kw4R_LMDSi-XbrZPO_zw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Nikola Forr=C3=B3 <nforro@redhat.com>
---
 man2/copy_file_range.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
index 9ed0cc31a..4173b84a2 100644
--- a/man2/copy_file_range.2
+++ b/man2/copy_file_range.2
@@ -84,7 +84,7 @@ allowed to overlap.
 The
 .I flags
 argument is provided to allow for future extensions
-and currently must be to 0.
+and currently must be set to 0.
 .SH RETURN VALUE
 Upon successful completion,
 .BR copy_file_range ()
--=20
2.21.0


