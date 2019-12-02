Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85FFC10F195
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2019 21:32:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727501AbfLBUcS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Dec 2019 15:32:18 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:21576 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726673AbfLBUcS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Dec 2019 15:32:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1575318736;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=vUrGE/y2GAVUMdC3HFrIyK0p1d4PcznkA8dtEjUo1Dc=;
        b=cYzxxlpETdLoyrVnQNzYLEooJ/tLaxVjTkL0/LgAWVCZxf3S5U84vCLZWKjEGnSRFpuTFJ
        eAFmIhneDGsYJU3NwIwBtE76reCWeV6RtCjxbWniiUA+YMY/FpM7apJ0bn9Xx6urol5Y7A
        dCiHkI9y8PekXFzjHNiASW/sJPVoYVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-nktp2cbrM26pgWbO36OhWw-1; Mon, 02 Dec 2019 15:32:13 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97FD51856A62;
        Mon,  2 Dec 2019 20:32:12 +0000 (UTC)
Received: from greed.delorie.com (ovpn-118-0.phx2.redhat.com [10.3.118.0])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 516695C298;
        Mon,  2 Dec 2019 20:32:12 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.14.7/8.14.7) with ESMTP id xB2KWASi031365;
        Mon, 2 Dec 2019 15:32:10 -0500
Date:   Mon, 02 Dec 2019 15:32:10 -0500
Message-Id: <xna78awjsl.fsf@greed.delorie.com>
From:   DJ Delorie <dj@redhat.com>
To:     mtk.manpages@gmail.com
CC:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [patch] ldconfig.8: Document file filter and symlink pattern expectations
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: nktp2cbrM26pgWbO36OhWw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Information gleaned from comments in glibc's elf/ldconfig.c

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 4f799962c..15585243c 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -93,6 +93,28 @@ option.
 .B ldconfig
 should normally be run by the superuser as it may require write
 permission on some root owned directories and files.
+.PP
+Note that
+.B ldconfig
+will only look at files that are named
+.I lib*.so*
+(for regular shared objects) or
+.I ld-*.so*
+(for the dynamic loader itsef).  Other files will be ignored.  Also,
+.B ldconfig
+expects a certain pattern to how the symlinks are set up, like this
+example, where the middle file
+.RB ( libfoo.so.1
+here) is the SONAME for the library:
+.PP
+.in +4n
+.EX
+libfoo.so -> libfoo.so.1 -> libfoo.so.1.12
+.EE
+.in
+.PP
+Failure to follow this pattern may result in compatibility issues
+after an upgrade.
 .SH OPTIONS
 .TP
 .BR \-c " \fIfmt\fP, " \-\-format=3D\fIfmt\fP

