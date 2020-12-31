Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A92C82E8029
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 14:03:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbgLaNCu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 08:02:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726128AbgLaNCu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 08:02:50 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BE5FC061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 05:02:10 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id n16so3850245wmc.0
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 05:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CLci+bIdvvvWXA1m9jJHbkNp27EAdWmfXH8Uswd/g98=;
        b=TxERM1pbiG3tb/G/lFOorHUyvRaoLItWOZleXytxykdzHzSspTnY7Y79pCZg0z2Lmf
         rEQvtk4Rvz+NC0adRU6CXYJhPOixL+qz3xCH2tlRgmOaG7H2bgETez1buyRK6ZQRzL1E
         KBO2g78oMxcwDiKCwYZ8Zz6QcjYwSz1cwWp4O7DfmE79V6NBtiNL405mshRBLt7GFKCr
         ugUcowjGeZ8gSN8DgVNkiSdBhTlGJ1wAxL/lH2kBOepcEPemGUF7dXK5AAbhGkk+eW4y
         NAX+DnDvJVN0ug7sL7ZohVsOhxp89o6QqQmgezTDzMBwfZ5/K+rIe7cdqBO/7IlXQG9J
         8y5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CLci+bIdvvvWXA1m9jJHbkNp27EAdWmfXH8Uswd/g98=;
        b=APwEGjoq1wMMvSt5eia7G3YmeKI3dOSA/xejf1i2BLK4mx3O3oXWf8x0qMlxAztzv3
         kperg2DuIayzgOsIJZ5hyuhvPQtwGZOqnbOLvWAhrcAIqWFNPBSiX8sy4acONmZ+YBxs
         rl0sj1PyGYa81XKdxsCwZp/2fNeL/fh6KqPo2P1M0gUdNtf28Svk4VNHTkTNBGiKGDpA
         FoEFrQTSQFFX9YvsUg8m8XItvYbA+e7QxCtlvUiOfHD7dgq2ovrfYUmKwspldti/FKa2
         o/j/R0O0eauRUJP/v1F1XWkVm+AXzKstzmYoDcVo6Pe2czxyOo3wsfed3auWuTnYSa8B
         L2JQ==
X-Gm-Message-State: AOAM533BDEuRjcF7NMY1A4f/KLh6wyKbIQVteHdmsdEzJ/9L5QUt3zkl
        bdubQz5mLfnrN6DDfkEbD/2PmRWnSBY=
X-Google-Smtp-Source: ABdhPJxQ37b4FGUSIIP2/y+w+qoOU/OXHkadweS0TnEP71BikAujBKR3SVoVeRyUYr+NvQkvrjPF1A==
X-Received: by 2002:a7b:cf08:: with SMTP id l8mr12071781wmg.189.1609419728689;
        Thu, 31 Dec 2020 05:02:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id q73sm14187852wme.44.2020.12.31.05.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 05:02:08 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Various pages: Consistently use 'unsigned int'
Date:   Thu, 31 Dec 2020 14:01:37 +0100
Message-Id: <20201231130136.125543-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
References: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Most pages use 'unsigned int' (and the kernel too).
Make them all do so.

$ find man? -type f \
  |xargs sed -i \
	-e 's/unsigned \*/unsigned int */g'
	-e 's/unsigned "/unsigned int "/g';

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getcpu.2     | 4 ++--
 man2/io_setup.2   | 2 +-
 man2/mbind.2      | 2 +-
 man3/cfree.3      | 2 +-
 man3/des_crypt.3  | 8 ++++----
 man3/getrpcport.3 | 2 +-
 man3/random.3     | 4 ++--
 man3/xdr.3        | 2 +-
 8 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/man2/getcpu.2 b/man2/getcpu.2
index fc36b43b5..46e4d53ff 100644
--- a/man2/getcpu.2
+++ b/man2/getcpu.2
@@ -16,8 +16,8 @@ getcpu \- determine CPU and NUMA node on which the calling thread is running
 .nf
 .B #include <linux/getcpu.h>
 .PP
-.BI "int getcpu(unsigned *" cpu ", unsigned *" node \
-", struct getcpu_cache *" tcache );
+.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node ,
+.BI "           struct getcpu_cache *" tcache );
 .fi
 .SH DESCRIPTION
 The
diff --git a/man2/io_setup.2 b/man2/io_setup.2
index e08d19bb8..bd52a5311 100644
--- a/man2/io_setup.2
+++ b/man2/io_setup.2
@@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "long io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
+.BI "long io_setup(unsigned int " nr_events ", aio_context_t *" ctx_idp );
 .fi
 .PP
 .IR Note :
diff --git a/man2/mbind.2 b/man2/mbind.2
index bf66dfc6c..d98969e7f 100644
--- a/man2/mbind.2
+++ b/man2/mbind.2
@@ -41,7 +41,7 @@ mbind \- set memory policy for a memory range
 .PP
 .BI "long mbind(void *" addr ", unsigned long " len  ", int " mode ,
 .BI "           const unsigned long *" nodemask  ", unsigned long " maxnode ,
-.BI "           unsigned " flags );
+.BI "           unsigned int " flags );
 .PP
 Link with \fI\-lnuma\fP.
 .fi
diff --git a/man3/cfree.3 b/man3/cfree.3
index 2a09527a7..74223db71 100644
--- a/man3/cfree.3
+++ b/man3/cfree.3
@@ -36,7 +36,7 @@ cfree \- free allocated memory
 .BI "void cfree(void *" ptr );
 .PP
 /* In SCO OpenServer */
-.BI "void cfree(char *" ptr ", unsigned " num ", unsigned " size );
+.BI "void cfree(char *" ptr ", unsigned int " num ", unsigned int " size );
 .PP
 /* In Solaris watchmalloc.so.1 */
 .BI "void cfree(void *" ptr ", size_t " nelem ", size_t " elsize );
diff --git a/man3/des_crypt.3 b/man3/des_crypt.3
index 7f34c1585..66fe78337 100644
--- a/man3/des_crypt.3
+++ b/man3/des_crypt.3
@@ -21,11 +21,11 @@ DES encryption
 .\" .B #include <des_crypt.h>
 .B #include <rpc/des_crypt.h>
 .PP
-.BI "int ecb_crypt(char *" key ", char *" data ", unsigned " datalen ,
-.BI "              unsigned " mode );
+.BI "int ecb_crypt(char *" key ", char *" data ", unsigned int " datalen ,
+.BI "              unsigned int " mode );
 .PP
-.BI "int cbc_crypt(char *" key ", char *" data ", unsigned " datalen ,
-.BI "              unsigned " mode ", char *" ivec );
+.BI "int cbc_crypt(char *" key ", char *" data ", unsigned int " datalen ,
+.BI "              unsigned int " mode ", char *" ivec );
 .PP
 .BI "void des_setparity(char *" key );
 .PP
diff --git a/man3/getrpcport.3 b/man3/getrpcport.3
index 2eba5d30a..d5753d39b 100644
--- a/man3/getrpcport.3
+++ b/man3/getrpcport.3
@@ -13,7 +13,7 @@ getrpcport \- get RPC port number
 .B "#include <rpc/rpc.h>"
 .PP
 .BI "int getrpcport(const char *" host ", unsigned long " prognum ,
-.BI "               unsigned long " versnum ", unsigned " proto );
+.BI "               unsigned long " versnum ", unsigned int " proto );
 .fi
 .SH DESCRIPTION
 .BR getrpcport ()
diff --git a/man3/random.3 b/man3/random.3
index d1b8e1981..c9066e446 100644
--- a/man3/random.3
+++ b/man3/random.3
@@ -39,9 +39,9 @@ random, srandom, initstate, setstate \- random number generator
 .PP
 .B long random(void);
 .PP
-.BI "void srandom(unsigned " seed );
+.BI "void srandom(unsigned int " seed );
 .PP
-.BI "char *initstate(unsigned " seed ", char *" state ", size_t " n );
+.BI "char *initstate(unsigned int " seed ", char *" state ", size_t " n );
 .PP
 .BI "char *setstate(char *" state );
 .fi
diff --git a/man3/xdr.3 b/man3/xdr.3
index 713827567..978a50660 100644
--- a/man3/xdr.3
+++ b/man3/xdr.3
@@ -433,7 +433,7 @@ C characters and their external representations.
 This routine returns one if it succeeds, zero otherwise.
 .PP
 .nf
-.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned *" up );
+.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned int *" up );
 .fi
 .IP
 A filter primitive that translates between C
-- 
2.29.2

