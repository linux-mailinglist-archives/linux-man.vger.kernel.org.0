Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 917A01B7B06
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2020 18:03:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727808AbgDXQDB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Apr 2020 12:03:01 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:41395 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726698AbgDXQDA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Apr 2020 12:03:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1587744179;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=zJzPNUngGD2xd79wizsK0tXbEQyYj58cn6ohtlWQ5Lk=;
        b=Wg2GJZi0apW/4Cj8YeKNhZyao4wfc2/J1Jmn/hP+cMT7y/Bz9EI2uExCOVl6lxuLUlTFk3
        nksxEu9uhzYBAUpB/hoEwT1SFgeZs857Q5NzVjASl9ZAalHC5v8Br7p7Dp1sz4lUWJHohV
        iFjkMm9F4EIfJXRXp+YvfxmSz6IRFr8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-BwZgBPp0PWaS5T3xXFz_ag-1; Fri, 24 Apr 2020 12:02:58 -0400
X-MC-Unique: BwZgBPp0PWaS5T3xXFz_ag-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CF0F80B70A
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 16:02:57 +0000 (UTC)
Received: from nevermore.foobar.lan (unknown [10.74.9.127])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E71F56318
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 16:02:56 +0000 (UTC)
Date:   Fri, 24 Apr 2020 21:32:52 +0530
From:   Achilles Gaikwad <agaikwad@redhat.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] xattr.7: Add attr(1) as relevant page to SEE ALSO
Message-ID: <20200424160252.GA1127582@nevermore.foobar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The page of attr(1) is relevant to xattrs, therefore add it to the
SEE ALSO section making it relevant.

attr(1) command works for other filesystems as well.

Signed-off-by: Achilles Gaikwad <agaikwad@redhat.com>
---
 man7/xattr.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/xattr.7 b/man7/xattr.7
index 031919c4b..706dfa344 100644
--- a/man7/xattr.7
+++ b/man7/xattr.7
@@ -189,6 +189,7 @@ This page was formerly named
 .BR getfattr (1),
 .BR setfattr (1),
 .BR getxattr (2),
+.BR attr (1),
 .BR ioctl_iflags (2),
 .BR listxattr (2),
 .BR removexattr (2),
-- 
2.24.1

