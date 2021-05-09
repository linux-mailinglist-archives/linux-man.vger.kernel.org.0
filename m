Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF20637795B
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhEIXwG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:52:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhEIXwG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:52:06 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A807C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:51:02 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so9228858pjv.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1NiS2WI01K+H7GA+1ir2GDN2kkZCVkAxJsPUhSddb14=;
        b=bRkj/iP1lV14Ym3S1OxNhxmik2qKFvGYMFONHi+Lrho8J/GJkwY1cbTcY1Z3m2ujDR
         6qGFC+C3mcpvm+jF/Ji/WTXOYYiSvq5DDfUvkkk/Lerbjx01QLVSOpYIyxHnFupPQKcu
         r7i9LgXSPkB/HlomP+m2eojnRcpninkbtAFM5RVZ5UxdvUXzgW82K+pSc3FzQ0sTBBHF
         jqYj73EHQWpocW6spWAhW81Y9DAPEgMc3jsFwoREeMrHxU5e3fCJx3j6BBqD/vefDIP1
         9ZhW0RNx83Gd8bOfQIKLcvwjf4gF0AcuOk+mq3KLUCDjL2gv3AgolOD9ULOjtkatZ2I0
         RWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1NiS2WI01K+H7GA+1ir2GDN2kkZCVkAxJsPUhSddb14=;
        b=lcH1MrEazgtFYLe8fZo1H/tNU5SfoTo83jsTDTl68aleqZlNMzX3tZR/BtKANMakse
         C/tBwEPId7QRUF7LF+2oSq0gNco2RRq7MaM84gayJk1dkCAx896atLH6gE5IblcmTEQt
         hWIeyZDyAjzmVAOCNFb1/LFnEK3gf3uOL17GceguVBrvBcPCOaGe0lmBGe4nzTaOqY6F
         9xCSLBaVHsnWYqvuPhiU9CjHHdjEMYmZJmtD3i8+cmSCvqP2cdLWxZWyzJFX9rtSFnG2
         qFD97vuFsp7Fkd0E8jmh1p43chgmXbP0kkguCxKH4V66EKcLH3ygGr6jM1sHOrCJ6GTA
         rPVw==
X-Gm-Message-State: AOAM531Pa5LK5gbOpKh7wutbf18bBbdBzWoQTxm1P3bZBBI/kqLixAKI
        iq8u+s8Ay5lyTAf+Y3ceWh2NWQ9O+g0=
X-Google-Smtp-Source: ABdhPJyaFJRW796UTBJekjxVvsNv7Se/4xu+JVRKf0HhDArnmupf12jBm5V6nl5nzuKlSCT9hAR/JQ==
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr36765141pjb.28.1620604261726;
        Sun, 09 May 2021 16:51:01 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id y30sm9513923pff.195.2021.05.09.16.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:51:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] rpc.3: SYNOPSIS: Fix prototypes (misc.)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-21-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3cba81f1-2445-0620-d577-350e17c0df4f@gmail.com>
Date:   Mon, 10 May 2021 11:50:57 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-21-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Fix the types for the following functions:
> 
> authunix_create(),
> callrpc(),
> clnt_create(),
> clnt_pcreateerror(),
> clnt_perror(),
> clnt_spcreateerror(),
> clnt_sperror(),
> pmap_set(),
> svc_register(),
> svcerr_progvers().
> 
> .../glibc$ grep_glibc_prototype authunix_create
> sunrpc/rpc/auth.h:158:
> extern AUTH *authunix_create (char *__machname, __uid_t __uid, __gid_t __gid,
> 			      int __len, __gid_t *__aup_gids);
> .../glibc$ grep_glibc_prototype callrpc
> sunrpc/rpc/clnt.h:359:
> extern int callrpc (const char *__host, const u_long __prognum,
> 		    const u_long __versnum, const u_long __procnum,
> 		    const xdrproc_t __inproc, const char *__in,
> 		    const xdrproc_t __outproc, char *__out) __THROW;
> .../glibc$ grep_glibc_prototype clnt_create
> sunrpc/rpc/clnt.h:291:
> extern CLIENT *clnt_create (const char *__host, const u_long __prog,
> 			    const u_long __vers, const char *__prot)
>      __THROW;
> .../glibc$ grep_glibc_prototype clnt_pcreateerror
> sunrpc/rpc/clnt.h:368:
> extern void clnt_pcreateerror (const char *__msg);	/* stderr */
> .../glibc$ grep_glibc_prototype clnt_perror
> sunrpc/rpc/clnt.h:379:
> extern void clnt_perror (CLIENT *__clnt, const char *__msg);
> .../glibc$ grep_glibc_prototype clnt_spcreateerror
> sunrpc/rpc/clnt.h:369:
> extern char *clnt_spcreateerror(const char *__msg) __THROW;	/* string */
> .../glibc$ grep_glibc_prototype clnt_sperror
> sunrpc/rpc/clnt.h:381:
> extern char *clnt_sperror (CLIENT *__clnt, const char *__msg) __THROW;
> .../glibc$ grep_glibc_prototype pmap_set
> sunrpc/rpc/pmap_clnt.h:69:
> extern bool_t pmap_set (const u_long __program, const u_long __vers,
> 			int __protocol, u_short __port) __THROW;
> .../glibc$ grep_glibc_prototype svc_register
> sunrpc/rpc/svc.h:188:
> extern bool_t svc_register (SVCXPRT *__xprt, rpcprog_t __prog,
> 			    rpcvers_t __vers, __dispatch_fn_t __dispatch,
> 			    rpcprot_t __protocol) __THROW;
> .../glibc$ grep_glibc_prototype svcerr_progvers
> sunrpc/rpc/svc.h:253:
> extern void	svcerr_progvers (SVCXPRT *__xprt, rpcvers_t __low_vers,
> 				 rpcvers_t __high_vers) __THROW;
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied. Thanks!

Cheers,

Michael

> ---
>  man3/rpc.3 | 25 +++++++++++++------------
>  1 file changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/man3/rpc.3 b/man3/rpc.3
> index 1daaaad7e..3d2fe4243 100644
> --- a/man3/rpc.3
> +++ b/man3/rpc.3
> @@ -70,8 +70,8 @@ information with each remote procedure call.
>  This is the default authentication used by RPC.
>  .PP
>  .nf
> -.BI "AUTH *authunix_create(char *" host ", int " uid ", int " gid ,
> -.BI "                      int " len ", int *" aup_gids );
> +.BI "AUTH *authunix_create(char *" host ", uid_t " uid ", gid_t " gid ,
> +.BI "                      int " len ", gid_t *" aup_gids );
>  .fi
>  .IP
>  Create and return an RPC authentication handle that contains
> @@ -100,7 +100,7 @@ with the appropriate parameters.
>  .nf
>  .BI "int callrpc(char *" host ", unsigned long " prognum ,
>  .BI "            unsigned long " versnum ", unsigned long " procnum ,
> -.BI "            xdrproc_t " inproc ", char *" in ,
> +.BI "            xdrproc_t " inproc ", const char *" in ,
>  .BI "            xdrproc_t " outproc ", char *" out );
>  .fi
>  .IP
> @@ -216,8 +216,8 @@ If the RPC library opened the associated socket, it will close it also.
>  Otherwise, the socket remains open.
>  .PP
>  .nf
> -.BI "CLIENT *clnt_create(char *" host ", unsigned long " prog ,
> -.BI "                    unsigned long " vers ", char *" proto );
> +.BI "CLIENT *clnt_create(const char *" host ", unsigned long " prog ,
> +.BI "                    unsigned long " vers ", const char *" proto );
>  .fi
>  .IP
>  Generic client creation routine.
> @@ -305,7 +305,7 @@ handle to the structure at address
>  .IR errp .
>  .PP
>  .nf
> -.BI "void clnt_pcreateerror(char *" s );
> +.BI "void clnt_pcreateerror(const char *" s );
>  .fi
>  .IP
>  Print a message to standard error indicating why a client RPC
> @@ -332,7 +332,7 @@ Used after
>  .BR callrpc ().
>  .PP
>  .nf
> -.BI "clnt_perror(CLIENT *" clnt ", char *" s );
> +.BI "clnt_perror(CLIENT *" clnt ", const char *" s );
>  .fi
>  .IP
>  Print a message to standard error indicating why an RPC call failed;
> @@ -345,7 +345,7 @@ Used after
>  .BR clnt_call ().
>  .PP
>  .nf
> -.BI "char *clnt_spcreateerror(char *" s );
> +.BI "char *clnt_spcreateerror(const char *" s );
>  .fi
>  .IP
>  Like
> @@ -383,7 +383,7 @@ returns pointer to static data, but the
>  result will not get overwritten on each call.
>  .PP
>  .nf
> -.BI "char *clnt_sperror(CLIENT *" rpch ", char *" s );
> +.BI "char *clnt_sperror(CLIENT *" rpch ", const char *" s );
>  .fi
>  .IP
>  Like
> @@ -601,7 +601,7 @@ See also
>  .PP
>  .nf
>  .BI "bool_t pmap_set(unsigned long " prognum ", unsigned long " versnum ,
> -.BI "                unsigned int " protocol ", unsigned short " port );
> +.BI "                int " protocol ", unsigned short " port );
>  .fi
>  .IP
>  A user interface to the
> @@ -781,7 +781,7 @@ This interface is obsoleted by
>  .nf
>  .BI "bool_t svc_register(SVCXPRT *" xprt ", unsigned long " prognum ,
>  .BI "                    unsigned long " versnum ,
> -.BI "                    void (*" dispatch ")(svc_req *, SVCXPRT *),"
> +.BI "                    void (*" dispatch ")(struct svc_req *, SVCXPRT *),"
>  .BI "                    unsigned long " protocol );
>  .fi
>  .IP
> @@ -894,7 +894,8 @@ Called when the desired program is not registered with the RPC package.
>  Service implementors usually do not need this routine.
>  .PP
>  .nf
> -.BI "void svcerr_progvers(SVCXPRT *" xprt );
> +.BI "void svcerr_progvers(SVCXPRT *" xprt ", unsigned long " low_vers ,
> +.BI "                     unsigned long " high_vers );
>  .fi
>  .IP
>  Called when the desired version of a program is not registered
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
