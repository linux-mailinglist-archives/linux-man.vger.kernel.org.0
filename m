Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33624331624
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:32:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbhCHScH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:32:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhCHSbh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:31:37 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A002C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:31:37 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id m20-20020a7bcb940000b029010cab7e5a9fso4402818wmi.3
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mkYy8MfEUtI4krazEUR76cWb+UrBKrcyPmHWpTP9bTo=;
        b=iJ+5R/aLPq8djb5RHikRY89zlPIWJ/gOBvxuTfKY88Ttw8rDu4Kyare58USIOqPS55
         ohwfguOetaegcHdINPrM8I9QscGPG9BePZvrga6EijaIcy+KuIIylGcA9M0RA1Z/y0ta
         FXN6tKptHFz4FtKZVUxrL8i/yMRJyc80ubgM/mE2+nss0R2ahlL4Nj9/LJm9+oEB+lRz
         ZvbLeJRtkxgrvh/jDeaf4luF5g1djPf9FiXp1OB7vyiJwOJMGF3totAFiReyFMVtZaub
         qewrXwyIins26dGjD3hx7W0yNSMY19KyFqJBpPghfkMpMQIzizgnWJIuhd61CiQlLhfU
         NA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mkYy8MfEUtI4krazEUR76cWb+UrBKrcyPmHWpTP9bTo=;
        b=OJG75O2LDkBUdv2Ly57FYAy7zeLzU1wN78J2zl+vZ3Ky9G1s2Yu2sOVHjFVKaCwIS8
         2AWHfWAYscPNtEcC7cymLsRBQrcbXLMcfgCiagMct5psA9ciwOZI6mxBZJ7hqs5m1vfI
         7+pFqubYrAH5Ftdv+wWf58TvYHxwrgZsw/+o5qBHegD8jHA0Dt1Wjy7fTTRGImGErRVH
         x0CU1HtGnD2nKnMgLKBRMhB+RBtS3/7Al99mP6EPtI3Pq/pBSdafS3X8SSoQu3ACjNQA
         cAWluCQMikPhaglmOEocCRArayXyHi0px+YzoasWUlWrPi1PEQz8m5XHnLmxSpXjHn3R
         V+FQ==
X-Gm-Message-State: AOAM530FwxTRF/zgnEjoCHQZayNev7+m9AAYp/9Iyo+R9BaXJEVGWUia
        dtfOVMMFiIDSuzNfHxGf1JI=
X-Google-Smtp-Source: ABdhPJwtBVGsl5Mi+JhG749JTeTPqtPF4qm1OL4E2K78puXoflsRWuFtimTpE+ynXMkJitGAy0e61w==
X-Received: by 2002:a05:600c:2109:: with SMTP id u9mr147194wml.44.1615228295889;
        Mon, 08 Mar 2021 10:31:35 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id u2sm20536336wrp.12.2021.03.08.10.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:31:35 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] rpc.3: SYNOPSIS: Fix prototypes (misc.)
Date:   Mon,  8 Mar 2021 19:30:25 +0100
Message-Id: <20210308183024.240858-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
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
index 864994853..7823705a4 100644
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
2.30.1

