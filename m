Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3053778D8
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbhEIVpS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229987AbhEIVpQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:16 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31553C061761
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:12 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id n2so14606299wrm.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3qe1wYpVmCOStgjDGeNWPiA6O7+vbxcDFxh4+EEbOqA=;
        b=SMisC5Lee4OPxTHhsCXsCPfsB+RGTeGbDSR2J380+/cKPqaFR9UYXyxYkenm4ytBoB
         wOLWTX0xuWXfM/ImhocCCUK497QRuEUlabXKykQIjUqX8soX1chKNxT96JZ+TtxXopwm
         vH7Ky6fOb+SFQbmk6vY2hwEaPFxmGx07gX8NE/rgkDBmAc1+zyT0nVj+fV6aXloZgwlo
         qmQEn1wP+jwL7T2838sqm/xPcw18K5B+MBLKlMkF9OLptCS22sQB7LTieoXeG9PFmYwa
         sKj03TJT1WQHrXgMeRq231TK2rYS/cDGh19Ks2evztMXkSHN90F3vQc4OBPtGAiGKL7H
         ArLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3qe1wYpVmCOStgjDGeNWPiA6O7+vbxcDFxh4+EEbOqA=;
        b=kXMDRaGAKB4qxjRq9TIl5lRCVQDceWBaBeXrhyf8dvM5Sbt6xvjVeaYCaLer5O0k/+
         0iLSctp3I4bS1NqvAtUQJlnsiIho2rsKsy+JaeYewyuKdRoUkhjCuNiuWhikt+O5b4Yn
         oyUn4uk6wN0rj4+rH/T5LW43jzoxqyBf70PvN/3lrN6P7Zh8eDpXGCUR93Sr8ftM5R78
         KBBUN4lOeRXv3qNPH3Rvmv7QUJ5r4PBs8SFah7WVA+Zgf7SFf3/lcA5ZFR1iad8zU3Rw
         1///XlJi9al8q7X1OCZvB80fPAbH5zplJky2asfmLDtNaconGlXxv/m8W51Gu7cSpVs2
         +OUg==
X-Gm-Message-State: AOAM5317R6uyFRUWgQvmmNDqjrzqe4eV9OkgLmXKUpCn5ikwDROYUctG
        mdUl3bxYWoiTDRWSW0l0gew=
X-Google-Smtp-Source: ABdhPJytvDKBvJugToayQyW+IYcR2Ybh/Ag1mM2nmGqlBF30JUZd4aCnyam3zJ43YnUR/QOTkNCrbw==
X-Received: by 2002:adf:ff81:: with SMTP id j1mr26918528wrr.336.1620596651008;
        Sun, 09 May 2021 14:44:11 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] rpc.3: SYNOPSIS: Fix prototypes (misc.)
Date:   Sun,  9 May 2021 23:39:15 +0200
Message-Id: <20210509213930.94120-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix the types for the following functions:

authunix_create(),
callrpc(),
clnt_create(),
clnt_pcreateerror(),
clnt_perror(),
clnt_spcreateerror(),
clnt_sperror(),
pmap_set(),
svc_register(),
svcerr_progvers().

.../glibc$ grep_glibc_prototype authunix_create
sunrpc/rpc/auth.h:158:
extern AUTH *authunix_create (char *__machname, __uid_t __uid, __gid_t __gid,
			      int __len, __gid_t *__aup_gids);
.../glibc$ grep_glibc_prototype callrpc
sunrpc/rpc/clnt.h:359:
extern int callrpc (const char *__host, const u_long __prognum,
		    const u_long __versnum, const u_long __procnum,
		    const xdrproc_t __inproc, const char *__in,
		    const xdrproc_t __outproc, char *__out) __THROW;
.../glibc$ grep_glibc_prototype clnt_create
sunrpc/rpc/clnt.h:291:
extern CLIENT *clnt_create (const char *__host, const u_long __prog,
			    const u_long __vers, const char *__prot)
     __THROW;
.../glibc$ grep_glibc_prototype clnt_pcreateerror
sunrpc/rpc/clnt.h:368:
extern void clnt_pcreateerror (const char *__msg);	/* stderr */
.../glibc$ grep_glibc_prototype clnt_perror
sunrpc/rpc/clnt.h:379:
extern void clnt_perror (CLIENT *__clnt, const char *__msg);
.../glibc$ grep_glibc_prototype clnt_spcreateerror
sunrpc/rpc/clnt.h:369:
extern char *clnt_spcreateerror(const char *__msg) __THROW;	/* string */
.../glibc$ grep_glibc_prototype clnt_sperror
sunrpc/rpc/clnt.h:381:
extern char *clnt_sperror (CLIENT *__clnt, const char *__msg) __THROW;
.../glibc$ grep_glibc_prototype pmap_set
sunrpc/rpc/pmap_clnt.h:69:
extern bool_t pmap_set (const u_long __program, const u_long __vers,
			int __protocol, u_short __port) __THROW;
.../glibc$ grep_glibc_prototype svc_register
sunrpc/rpc/svc.h:188:
extern bool_t svc_register (SVCXPRT *__xprt, rpcprog_t __prog,
			    rpcvers_t __vers, __dispatch_fn_t __dispatch,
			    rpcprot_t __protocol) __THROW;
.../glibc$ grep_glibc_prototype svcerr_progvers
sunrpc/rpc/svc.h:253:
extern void	svcerr_progvers (SVCXPRT *__xprt, rpcvers_t __low_vers,
				 rpcvers_t __high_vers) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/rpc.3 | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/man3/rpc.3 b/man3/rpc.3
index 1daaaad7e..3d2fe4243 100644
--- a/man3/rpc.3
+++ b/man3/rpc.3
@@ -70,8 +70,8 @@ information with each remote procedure call.
 This is the default authentication used by RPC.
 .PP
 .nf
-.BI "AUTH *authunix_create(char *" host ", int " uid ", int " gid ,
-.BI "                      int " len ", int *" aup_gids );
+.BI "AUTH *authunix_create(char *" host ", uid_t " uid ", gid_t " gid ,
+.BI "                      int " len ", gid_t *" aup_gids );
 .fi
 .IP
 Create and return an RPC authentication handle that contains
@@ -100,7 +100,7 @@ with the appropriate parameters.
 .nf
 .BI "int callrpc(char *" host ", unsigned long " prognum ,
 .BI "            unsigned long " versnum ", unsigned long " procnum ,
-.BI "            xdrproc_t " inproc ", char *" in ,
+.BI "            xdrproc_t " inproc ", const char *" in ,
 .BI "            xdrproc_t " outproc ", char *" out );
 .fi
 .IP
@@ -216,8 +216,8 @@ If the RPC library opened the associated socket, it will close it also.
 Otherwise, the socket remains open.
 .PP
 .nf
-.BI "CLIENT *clnt_create(char *" host ", unsigned long " prog ,
-.BI "                    unsigned long " vers ", char *" proto );
+.BI "CLIENT *clnt_create(const char *" host ", unsigned long " prog ,
+.BI "                    unsigned long " vers ", const char *" proto );
 .fi
 .IP
 Generic client creation routine.
@@ -305,7 +305,7 @@ handle to the structure at address
 .IR errp .
 .PP
 .nf
-.BI "void clnt_pcreateerror(char *" s );
+.BI "void clnt_pcreateerror(const char *" s );
 .fi
 .IP
 Print a message to standard error indicating why a client RPC
@@ -332,7 +332,7 @@ Used after
 .BR callrpc ().
 .PP
 .nf
-.BI "clnt_perror(CLIENT *" clnt ", char *" s );
+.BI "clnt_perror(CLIENT *" clnt ", const char *" s );
 .fi
 .IP
 Print a message to standard error indicating why an RPC call failed;
@@ -345,7 +345,7 @@ Used after
 .BR clnt_call ().
 .PP
 .nf
-.BI "char *clnt_spcreateerror(char *" s );
+.BI "char *clnt_spcreateerror(const char *" s );
 .fi
 .IP
 Like
@@ -383,7 +383,7 @@ returns pointer to static data, but the
 result will not get overwritten on each call.
 .PP
 .nf
-.BI "char *clnt_sperror(CLIENT *" rpch ", char *" s );
+.BI "char *clnt_sperror(CLIENT *" rpch ", const char *" s );
 .fi
 .IP
 Like
@@ -601,7 +601,7 @@ See also
 .PP
 .nf
 .BI "bool_t pmap_set(unsigned long " prognum ", unsigned long " versnum ,
-.BI "                unsigned int " protocol ", unsigned short " port );
+.BI "                int " protocol ", unsigned short " port );
 .fi
 .IP
 A user interface to the
@@ -781,7 +781,7 @@ This interface is obsoleted by
 .nf
 .BI "bool_t svc_register(SVCXPRT *" xprt ", unsigned long " prognum ,
 .BI "                    unsigned long " versnum ,
-.BI "                    void (*" dispatch ")(svc_req *, SVCXPRT *),"
+.BI "                    void (*" dispatch ")(struct svc_req *, SVCXPRT *),"
 .BI "                    unsigned long " protocol );
 .fi
 .IP
@@ -894,7 +894,8 @@ Called when the desired program is not registered with the RPC package.
 Service implementors usually do not need this routine.
 .PP
 .nf
-.BI "void svcerr_progvers(SVCXPRT *" xprt );
+.BI "void svcerr_progvers(SVCXPRT *" xprt ", unsigned long " low_vers ,
+.BI "                     unsigned long " high_vers );
 .fi
 .IP
 Called when the desired version of a program is not registered
-- 
2.31.1

