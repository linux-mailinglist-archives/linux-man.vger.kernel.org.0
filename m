Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69DF0267E7E
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 10:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725921AbgIMIGh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 04:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725914AbgIMIGh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 04:06:37 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D76C4C061573
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 01:06:36 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id x123so10113165pfc.7
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 01:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Fu0FxDvla2itHmos7+I3QRBLZDkHx3SO65OjechxByk=;
        b=bo7dVoIabnbB31NKq3gqdxa+vQzctd+YZiHtdwpu+EGr5qvAhETtprGjYA9+rjVWwG
         Iz4hDDx+DupTYdMkWE4lUZp4rPqEkoW3mgwtTGK2s/F+9RbGeSQeCLx6KW+PvBfaJyG5
         BoMYyJmgzSKMVfdIH5p156ctUvEbBUkAyxQlOCY0WL08eCuvOkmDrsX4cH0ZmztMZNBl
         oTlWqYTv8BgmsoIxgQhAJfZ5dDs+sk+5VeG69LgNnd5lJbm1h/kefr3Gl6BVMJ8XTbd0
         tDhdgIFuaeCFaVJdc3BH8AaevetLwug1eH+j0cDYKiyfwNmLheAvolkw4O/UqYbYEBzS
         jOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Fu0FxDvla2itHmos7+I3QRBLZDkHx3SO65OjechxByk=;
        b=SYGasfZZ8VS4lo9g/TOtqQ61wxDrd2IsMG5aZD2xZfBD/Xl8rTSW7/Rt5TlLVPcgIK
         pI4I/XWUUOBIax4hwkixRpbt6fd9VhfzsNzAwmeTbtXyE/ARCqDnCwwifZCqhlMw7o2j
         UOdQM0JK/5MrTM8MmAd/npr/VZJcT0bGxGqwFZyNQNNzGxFxSBphXgOiF9Cr59S+JDHz
         /cFoJECrPN6ewBg3c0n+eMsinDnVjXDBg0T0jAUcad4n7+FqtONLxMXvpj5TX6CHx2aY
         6XnAI6yur2nXbakRh9JaXOPHYSKHReVYEzc4XBcH+SzydhLbeTerluaR+kwD1NHqCNrZ
         frBg==
X-Gm-Message-State: AOAM5333zG0b7LvwekBvfbFsHdlFgxQ34cDZkZTVV3clDS8DwkZPMHk4
        phwC4Sz+6T6lf7xi8FHjy4kQi2JujDqYbeFHrEg=
X-Google-Smtp-Source: ABdhPJwgNnFzKLq3dDkryAOQcjd5Es0tKZP8NuFeK8LBeSsEwK3bEBJNCPQ5wTH/RNfCqQMJtBF/NG00JKF8rBdC6xI=
X-Received: by 2002:aa7:9730:0:b029:13e:d13d:a091 with SMTP id
 k16-20020aa797300000b029013ed13da091mr9034829pfg.40.1599984396407; Sun, 13
 Sep 2020 01:06:36 -0700 (PDT)
MIME-Version: 1.0
From:   =?UTF-8?B?w4lyaWNvIFJvbGlt?= <erico.erc@gmail.com>
Date:   Sun, 13 Sep 2020 05:06:25 -0300
Message-ID: <CAFDeuWPmWWHatxnZ9HsYN2fp3gagHOKCsKmVDj0F6us9XWKwFQ@mail.gmail.com>
Subject: [patch] posix_fallocate.3: add note about error codes for musl.
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        ericonr@disroot.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As can be seen in

https://git.musl-libc.org/cgit/musl/tree/src/fcntl/posix_fallocate.c?id=73cc775bee53300c7cf759f37580220b18ac13d3

musl returns the syscall's errors directly, which means it doesn't
perform the same emulation as glibc, and, more relevant to this change,
it can return more errors than the ones currently listed in ERRORS.
---
 man3/posix_fallocate.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man3/posix_fallocate.3 b/man3/posix_fallocate.3
index 58338d673..2e440b3e1 100644
--- a/man3/posix_fallocate.3
+++ b/man3/posix_fallocate.3
@@ -101,6 +101,10 @@ referred to by
 .B ESPIPE
 .I fd
 refers to a pipe.
+.TP
+Libraries that don't perform the emulation shown in NOTES, such as musl libc,
+may also return the error codes listed in
+.BR fallocate (2).
 .SH VERSIONS
 .BR posix_fallocate ()
 is available since glibc 2.1.94.
-- 
2.28.0
