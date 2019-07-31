Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3DA17CDA3
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2019 22:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726096AbfGaUC3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 Jul 2019 16:02:29 -0400
Received: from latitanza.investici.org ([82.94.249.234]:42891 "EHLO
        latitanza.investici.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729094AbfGaUC2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 Jul 2019 16:02:28 -0400
X-Greylist: delayed 542 seconds by postgrey-1.27 at vger.kernel.org; Wed, 31 Jul 2019 16:02:27 EDT
Received: from contumacia-webmail.investici.org (contumacia.vpn0.investici.org [10.0.0.11])
        by latitanza.investici.org (Postfix) with ESMTP id 0D95E1204D3;
        Wed, 31 Jul 2019 19:53:24 +0000 (UTC)
Received: from 1.webmail.investici.org (localhost [127.0.0.1])
        (Authenticated sender: gallefray@inventati.org)
        by contumacia-webmail.investici.org (Postfix) with ESMTPA id DD8F6C06D3;
        Wed, 31 Jul 2019 19:53:19 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 31 Jul 2019 19:53:19 +0000
From:   Finn O'Leary <finnoleary@inventati.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [patch] setxattr.2: Add ERANGE to 'ERRORS' section
Message-ID: <e7cde98960e380f638406b7ef359eb8c@inventati.org>
X-Sender: finnoleary@inventati.org
User-Agent: Roundcube Webmail
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Both the Ext2 filesystem handler and the Ext4 filesystem handler will
return the ERANGE error code. Ext2 will return it if the name or value 
is
too long to be able to be stored, Ext4 will return it if the name is too
long. For reference, the relevant files/lines (with excerpts) are:

fs/ext2/xattr.c: lines 394 to 396 in ext2_xattr_set
>  394         name_len = strlen(name);
>  395         if (name_len > 255 || value_len > sb->s_blocksize)
>  396                 return -ERANGE;

fs/ext4/xattr.c: lines 2317 to 2318 in ext4_xattr_set_handle
> 2317         if (strlen(name) > 255)
> 2318                 return -ERANGE;

Other filesystems also return this code:

xfs/libxfs/xfs_attr.h: lines 53 to 55
> * The maximum size (into the kernel or returned from the kernel) of an
> * attribute value or the buffer used for an attr_list() call.  Larger
> * sizes will result in an ERANGE return code.

It's possible that more filesystem handlers do this, a cursory grep 
shows
that most of the filesystem xattr handler files mention ERANGE in some
form. A suggested patch is below (I'm not 100% sure on the wording 
through).

Thanks

-- 
- Finn


diff --git a/man2/setxattr.2 b/man2/setxattr.2
index 66272ac..f8edad0 100644
--- a/man2/setxattr.2
+++ b/man2/setxattr.2
@@ -138,6 +138,13 @@ The namespace prefix of
  .I name
  is not valid.
  .TP
+.B ERANGE
+The given
+.I name
+or
+.I value
+is too long for the filesystem to store.
+.TP
  .B ENOTSUP
  Extended attributes are not supported by the filesystem, or are 
disabled,
  .TP
