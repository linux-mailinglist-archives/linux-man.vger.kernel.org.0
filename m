Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B06902F03C7
	for <lists+linux-man@lfdr.de>; Sat,  9 Jan 2021 22:21:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726006AbhAIVVT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Jan 2021 16:21:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726001AbhAIVVT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Jan 2021 16:21:19 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D43C061786
        for <linux-man@vger.kernel.org>; Sat,  9 Jan 2021 13:20:38 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id i9so12378681wrc.4
        for <linux-man@vger.kernel.org>; Sat, 09 Jan 2021 13:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bZakKUDtRWm6LkM+h+KfofoStOa9aIDbIKtxnSeAxhU=;
        b=j33+oCbAbMNCVaHaX3VyFeVgHnig8oGi32H9sEKEJy4KhiFWTkBt7GGsshz/v1wKIL
         FXE8EL8erO0luiSmNhu7Dii5C7n2Va8kqmlGm8kWh6U4jcJdU+pGG26OhDSx5HNQf7YQ
         i6kPjQYWZRAoyqWkHNESd7b9nB8d4WNfIp22MwBeYMXfzL2PmehKMbk4zLewsulXtudn
         4q+Z/SnjPN81AKBLZlmzMjLGxTnqbOa4P/o/utGEvBMa0SXyJVxxgJqMC0MoRFHzr4hO
         nHpagwc+i5eBHeH3UcUbSsQPY3rNimDVGLgVhGcNhZiwKIrd5r9mAuoUj1AC1PybpGMT
         juXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bZakKUDtRWm6LkM+h+KfofoStOa9aIDbIKtxnSeAxhU=;
        b=Vm2VyiSObep1Os4VZ0EloReqi5+7N17COG3HxvfEreNmISenu6mTtrkXMOdZ/QynCI
         026G88jN/A7n6XIPivCSKFkYOJZKzHzvzpEG0TbTca/TLu8xzJcp1g1SmQHVt6uD9zhF
         MzyB3U4llaK5skYgeViZ6ghupHQmEAEg6E+Webz01Qha/qoWMLVaF+WRbwDejtFMjHdX
         JiXg78yB5K24x0eVr/ef9Gx3wRotCgm8WwwFRBhfZUAA6EtrNK5RGXQOBTMtgnWNLx/N
         RHMPHpkot7lKDOI1fN9y5yGjtgd6NcYl8wIjtLZ8lH2IoNVc6m4dejAqJk9WPAmwxw+o
         Hu+A==
X-Gm-Message-State: AOAM532ga7sXPTBwM7Teo6Z4YitaZrQWNMz40h5lNO42p9QpqdjVLN5G
        FXMIckdbQEl1rWv4IHu8hNA=
X-Google-Smtp-Source: ABdhPJz8wy1QEkpThCmhhJz/nFdriGrnjne4CZ80JNHBaApVeYttFwktDU80J2zTMlit0SfxNBujCQ==
X-Received: by 2002:adf:9546:: with SMTP id 64mr9626451wrs.343.1610227237549;
        Sat, 09 Jan 2021 13:20:37 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n3sm17922761wrw.61.2021.01.09.13.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 13:20:37 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        Johannes Pfister <johannes.pfister@josttech.ch>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, bugzilla-daemon@bugzilla.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH, BUG 211039] malloc.3: Document that realloc(p, 0) is specific to glibc and nonportable
Date:   Sat,  9 Jan 2021 22:15:06 +0100
Message-Id: <20210109211505.76000-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A more detailed notice is on realloc(3p).

......

$ man 3p realloc \
  |sed -n \
     -e '/APPLICATION USAGE/,/^$/p' \
     -e '/FUTURE DIRECTIONS/,/^$/p';
APPLICATION USAGE
       The description of realloc() has been modified from  pre‐
       vious  versions  of  this  standard  to  align  with  the
       ISO/IEC 9899:1999 standard. Previous versions  explicitly
       permitted  a  call  to  realloc(p,  0)  to free the space
       pointed to by p and return a null pointer. While this be‐
       havior  could be interpreted as permitted by this version
       of the standard, the C language committee have  indicated
       that   this  interpretation  is  incorrect.  Applications
       should assume that if realloc() returns a  null  pointer,
       the  space pointed to by p has not been freed. Since this
       could lead to double-frees, implementations  should  also
       set errno if a null pointer actually indicates a failure,
       and applications should only free the space if errno  was
       changed.

FUTURE DIRECTIONS
       This  standard  defers  to the ISO C standard. While that
       standard currently has language that might  permit  real‐
       loc(p, 0), where p is not a null pointer, to free p while
       still returning a null pointer, the committee responsible
       for  that standard is considering clarifying the language
       to explicitly prohibit that alternative.

Bug: 211039 <https://bugzilla.kernel.org/show_bug.cgi?id=211039>
Reported-by: Johannes Pfister <johannes.pfister@josttech.ch>
Cc: libc-alpha@sourceware.org
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Johannes, Michael,

Thanks for the report, Johannes!
Please review that your name is correct (I guessed it from the email).

Michael, please review the wording.

Thanks,

Alex

 man3/malloc.3 | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/man3/malloc.3 b/man3/malloc.3
index d8b4da62f..467e2438a 100644
--- a/man3/malloc.3
+++ b/man3/malloc.3
@@ -149,7 +149,8 @@ is equal to zero,
 and
 .I ptr
 is not NULL, then the call is equivalent to
-.IR free(ptr) .
+.I free(ptr)
+(this behavior is nonportable; see NOTES).
 Unless
 .I ptr
 is NULL, it must have been returned by an earlier call to
@@ -375,6 +376,21 @@ The
 implementation is tunable via environment variables; see
 .BR mallopt (3)
 for details.
+.SS Nonportable behavior
+The behavior of
+.BR realloc ()
+when
+.I size
+is equal to zero,
+and
+.I ptr
+is not NULL,
+is glibc specific;
+other implementations may return NULL, and set
+.IR errno .
+Portable POSIX programs should avoid it.
+See
+.BR realloc (3p).
 .SH SEE ALSO
 .\" http://g.oswego.edu/dl/html/malloc.html
 .\" A Memory Allocator - by Doug Lea
-- 
2.30.0

