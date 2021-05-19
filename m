Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7335388D87
	for <lists+linux-man@lfdr.de>; Wed, 19 May 2021 14:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353330AbhESMIZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 May 2021 08:08:25 -0400
Received: from mail-40140.protonmail.ch ([185.70.40.140]:12968 "EHLO
        mail-40140.protonmail.ch" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353329AbhESMIY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 May 2021 08:08:24 -0400
Date:   Wed, 19 May 2021 12:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail; t=1621426023;
        bh=kv5LZeIwUu5Oi4wB/GLqnq0zt0SxD+mqFuaQj1OB/J8=;
        h=Date:To:From:Reply-To:Subject:From;
        b=fihMt8Ctb7/3EF1g5D2h+mg5sorVxnuFmGOntgQEkyKeK06x5q+JLzsAGRf6fzZlY
         fama8QVHjs3HCgBM+5wz3gJa2i44jUrSFgW6ehLYB3ne2hZXWO1nVeY9yPXLQBpPRh
         8lxoqVtgP8ZOjj4TUybj+7kIUjnu1jPmPN13aK8M=
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
From:   thomasavoss <thomasavoss@protonmail.com>
Reply-To: thomasavoss <thomasavoss@protonmail.com>
Subject: [patch] ferror.3: tfix
Message-ID: <eojOMoHjzTNlw2LVrkgUktAlMCTsLVkfcVez0_acdOh4ZyoRGjlOM7VqQ5F0Dm25lEm5DqTQt4b0iAeupIjD59ds9ZBzxmg50f9K14ZDbVw=@protonmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_dZmFCAYKz1w1OvOVGaLbAgGWONUKpib1rdFrVoW3Vo"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
        autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
        mailout.protonmail.ch
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--b1_dZmFCAYKz1w1OvOVGaLbAgGWONUKpib1rdFrVoW3Vo
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

--- ferror.3 2021-05-19 13:24:25.232736993 +0200
+++ ferror-fix.3 2021-05-19 13:56:18.642744786 +0200
@@ -85,7 +85,7 @@
otherwise, it returns zero.
.PP
The
-.BR feof ()
+.BR ferror ()
function returns nonzero if the error indicator is set for
.IR stream ;
otherwise, it returns zero.
--b1_dZmFCAYKz1w1OvOVGaLbAgGWONUKpib1rdFrVoW3Vo
Content-Type: text/x-patch; name=ferror.3.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=ferror.3.patch

LS0tIGZlcnJvci4zCTIwMjEtMDUtMTkgMTM6MjQ6MjUuMjMyNzM2OTkzICswMjAwCisrKyBmZXJy
b3ItZml4LjMJMjAyMS0wNS0xOSAxMzo1NjoxOC42NDI3NDQ3ODYgKzAyMDAKQEAgLTg1LDcgKzg1
LDcgQEAKIG90aGVyd2lzZSwgaXQgcmV0dXJucyB6ZXJvLgogLlBQCiBUaGUKLS5CUiBmZW9mICgp
CisuQlIgZmVycm9yICgpCiBmdW5jdGlvbiByZXR1cm5zIG5vbnplcm8gaWYgdGhlIGVycm9yIGlu
ZGljYXRvciBpcyBzZXQgZm9yCiAuSVIgc3RyZWFtIDsKIG90aGVyd2lzZSwgaXQgcmV0dXJucyB6
ZXJvLgo=

--b1_dZmFCAYKz1w1OvOVGaLbAgGWONUKpib1rdFrVoW3Vo--

