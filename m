Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 990282E7CCB
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 22:43:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726487AbgL3Vmp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 16:42:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726486AbgL3Vmp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 16:42:45 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D292BC061575
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:04 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id c124so6003317wma.5
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aPNrI9dW8M3HZl+mLIYvidKny14Ik7VcK+DbgxROtYM=;
        b=REcAAjvlfQp0hOtKiBYiysO1CjN/NVgc9qDuLxIQkCtgyNspO/uOA448oUgJ78RIu8
         h2LURirAsTzshOaShVTR0hUr2rMGaO65n2bz6UHnURovnVyBiWJOx/fky6Bzypk+BFiP
         SGNK/8IyEprWfqVr+Dyr41erT8Sca1eQxWKMiWG3ItcAq0eiYwxEbzyNkyi7h+OJaI2j
         BShPRQ4bNs5VmjnR89Q2YBGXbts4jSRA4vjE5z5IQQqFng5/7QKEyTHJgHlqGKEEgwyZ
         RZQqdIsapfZvQJoSSZxYN7/GVfTlhkH9KaIu6Ra5OkPa1H0fjTuowCqr2uO1+q+ewQc6
         t0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aPNrI9dW8M3HZl+mLIYvidKny14Ik7VcK+DbgxROtYM=;
        b=m9PCaSIJPRTN637GaYJiglGUNItdXr+IoyoithAY0LC8xCNdFU6JsArbKA9XDEa85+
         9y2zJtBV5g47vL8QUhFhcVpHarAXb4ruJEijXB+7yOLULUGFRBOFuAz0n99wmg/Z5pvt
         9AjM1xZKuxeKBgryvCy9E9a4X5FjHu805ZAS9QM2ernS61lOMEFXMFtxe0/e8BU2rAkX
         cYzZF+q4TK5vuSs7fFX+YYsmRK26qaYmyyG90OPRNuvs07demuX0id1uluFl6OcEy/qd
         7epjze3va94YE6TadlHFX46Lv+OBHNds4yEMbaU4qzK9B2T+hmTJqXJWeCkxwu4z5GZm
         p1EQ==
X-Gm-Message-State: AOAM531/iGPIsyrUfrqXE9gNxujSbEFd/M7wn2FzUXE6/VUhXgf9Yl/X
        MozkM6SOXtpAWTn6JYyf7DJdu6Ig5xg=
X-Google-Smtp-Source: ABdhPJy9dUxafInjUjrofDSu+e1vR7FVE1GvGfNM+iXrAwBC5UYY9LKm/AdefQ27rXaRzZw+sJq+OA==
X-Received: by 2002:a1c:5f8a:: with SMTP id t132mr9206626wmb.121.1609364523662;
        Wed, 30 Dec 2020 13:42:03 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id 67sm9519234wmb.47.2020.12.30.13.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 13:42:03 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Various pages: Consistently use 'unsigned int'
Date:   Wed, 30 Dec 2020 22:41:42 +0100
Message-Id: <20201230214147.874671-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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
index 33d15316b..9ea6fce3f 100644
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

