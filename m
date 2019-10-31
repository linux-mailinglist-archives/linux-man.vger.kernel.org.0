Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2266EB4B3
	for <lists+linux-man@lfdr.de>; Thu, 31 Oct 2019 17:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728428AbfJaQ0z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Oct 2019 12:26:55 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:43209 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726540AbfJaQ0z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Oct 2019 12:26:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1572539214;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=YXM9o0vi4XYbm6bPfsOReuPjdQ6dzWst/YyYtICLWlU=;
        b=CuzN08Mu257QPvLqxfDCxsoYseT+65w1pZcZRkvzlcChXhLevYgG4neEmpa3KV3s9Z02mR
        FS2xIZFdTYzklqhvleTtgGPR9TAPvncBQjnuS1jurSG4vUB88uM7GLof2CIHid0XvLsORK
        74Tb94gqqaWvgjtnVwzR2pJGMX7PYAw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-XpLOJV9iP8Sb6pgD0kmr-g-1; Thu, 31 Oct 2019 12:26:52 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E53811005500;
        Thu, 31 Oct 2019 16:26:51 +0000 (UTC)
Received: from cicero.redhat.com (unknown [10.33.36.109])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A80D25DA60;
        Thu, 31 Oct 2019 16:26:50 +0000 (UTC)
From:   Andrew Price <anprice@redhat.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fallocate.2: Add gfs2 to the list of punch hole-capable filesystems
Date:   Thu, 31 Oct 2019 16:26:47 +0000
Message-Id: <20191031162647.1224-1-anprice@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: XpLOJV9iP8Sb6pgD0kmr-g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Also remove a stray " from the previous item.

Signed-off-by: Andrew Price <anprice@redhat.com>
---
 man2/fallocate.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man2/fallocate.2 b/man2/fallocate.2
index 35a319e39..0ea6ad55f 100644
--- a/man2/fallocate.2
+++ b/man2/fallocate.2
@@ -133,8 +133,12 @@ ext4 (since Linux 3.0)
 Btrfs (since Linux 3.7)
 .IP *
 .BR tmpfs (5)
-(since Linux 3.5)"
+(since Linux 3.5)
 .\" commit 83e4fa9c16e4af7122e31be3eca5d57881d236fe
+.IP *
+.BR gfs2 (5)
+(since Linux 4.16)
+.\" commit 4e56a6411fbce6f859566e17298114c2434391a4
 .SS Collapsing file space
 .\" commit 00f5e61998dd17f5375d9dfc01331f104b83f841
 Specifying the
--=20
2.21.0

