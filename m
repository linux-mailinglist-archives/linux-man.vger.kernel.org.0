Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5B631F7DDC
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 21:59:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726269AbgFLT7f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 15:59:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbgFLT7f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 15:59:35 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D30DAC03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:59:34 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id q11so11110783wrp.3
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rRwDnNcQbyYkRFE67UcJ3J6+phEhBTpNDKdL+fUgprc=;
        b=J8DUcXDq8ffNW0V7i6cHYfJ5bB84veNiQ/Y5SQsTFY2P5z3rtzpHf7aBDbAg4N5HUn
         SDed/qM6VhKbbE/mrKpv1UCLMhnbKFI1pWbghZ+iAeEtU63yhO7LeeXdeJ4qbob0980T
         IBMwTaGYGNPVzhBHtqirbqYsivTAADSHXyzI9+zJONeI70pERneOX3lS7D6bbHBCs1Gw
         +pVzgxD/nD8Tmlk4aMF5Zyx8hrwkRSkegU23P4rRi8fxT446b5JC1oQdelNHdfMTUnCJ
         q5wN21OrN8Byv0OFsw4NI+u4SrXD3++RoIbHVtAh7kUAIz7dgZ50k0fWtb1o9YDQB/oN
         kjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rRwDnNcQbyYkRFE67UcJ3J6+phEhBTpNDKdL+fUgprc=;
        b=SK/t0YOggWErpRGzeX5k4mP2/9VPB0MAOcOQBpA52l6tXAACciaKe5q+AHk8FlDptE
         YcwPUy625j9NxNfenb08A0aLQ5zmPso2SBWfIjWuLLMZFfoy+LngQlac4toS90E6Dxwv
         Mug+rDPNR5jNoC/6bD2NY2VSUvTIegx37CQ0PX+Mo4a0QMV3vWbC9AEikR6hkBs++ZZH
         egjK/AaEVwHcj/McItYhSdiEFaQK16VAenfysMvORc4h8eEN9BMbLrq5bIHL/Q785bZY
         /ikJg06vkeNYNMgHg0QLntyMk0idZyf46LX7ao3gw/NSPVW6Vj2W4qIkxo9mIWd8kYYe
         YYOw==
X-Gm-Message-State: AOAM532pZx65xaRuPtpgoPmw7/ujXUNmuWqMSyQ5VRCfzUxYCsnO2wRU
        IO5KY6K05OcpGzziHRpDGUsGKLhYxW8=
X-Google-Smtp-Source: ABdhPJy9VxjeO+kE2b/Hyfdi0jDCmDFjpmBgnAg9lGPrbbHOEnYm3/9Xnj74z1ngwpxTDGW6e2bJXw==
X-Received: by 2002:a1c:9804:: with SMTP id a4mr524999wme.109.1591991973213;
        Fri, 12 Jun 2020 12:59:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id 138sm10787616wma.23.2020.06.12.12.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 12:59:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: srcfix: trim a trailing space
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200612195742.GA1047@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <50f057de-0103-291c-b306-b4294d946850@gmail.com>
Date:   Fri, 12 Jun 2020 21:59:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200612195742.GA1047@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 6/12/20 9:57 PM, Bjarni Ingi Gislason wrote:
> Output is from: test-groff -b -e -mandoc -T utf8 -rF0 -t -w w -z
> 
>   [ "test-groff" is a developmental version of "groff" ]
> 
>   There is no change in the output of "nroff" and "groff".
> 
> ####
> 
> troff: <fts.3>:50: warning: trailing space
> ####
> 
> troff: <getgrnam.3>:175: warning: trailing space
> ####
> 
> troff: <getpwnam.3>:181: warning: trailing space
> ####
> 
> troff: <rcmd.3>:52: warning: trailing space
> troff: <rcmd.3>:57: warning: trailing space
> troff: <rcmd.3>:60: warning: trailing space
> troff: <rcmd.3>:63: warning: trailing space
> troff: <rcmd.3>:69: warning: trailing space
> troff: <rcmd.3>:73: warning: trailing space
> ####
> 
> troff: <rexec.3>:48: warning: trailing space
> troff: <rexec.3>:51: warning: trailing space
> ####
> 
> troff: <sem_open.3>:36: warning: trailing space
> 
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>

Thanks, patch applied.

Cheers,

Michael

> ---
>  man3/fts.3      |  2 +-
>  man3/getgrnam.3 |  2 +-
>  man3/getpwnam.3 |  2 +-
>  man3/rcmd.3     | 12 ++++++------
>  man3/rexec.3    |  4 ++--
>  man3/sem_open.3 |  2 +-
>  6 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/man3/fts.3 b/man3/fts.3
> index 407d7e004..bbd5cad5e 100644
> --- a/man3/fts.3
> +++ b/man3/fts.3
> @@ -47,7 +47,7 @@ traverse a file hierarchy
>  .B #include <sys/stat.h>
>  .B #include <fts.h>
>  .PP
> -.BI "FTS *fts_open(char * const *" path_argv ", int " options ", "
> +.BI "FTS *fts_open(char * const *" path_argv ", int " options ,
>  .BI "              int (*" compar ")(const FTSENT **, const FTSENT **));"
>  .PP
>  .BI "FTSENT *fts_read(FTS *" ftsp );
> diff --git a/man3/getgrnam.3 b/man3/getgrnam.3
> index 50497059d..737d0a33a 100644
> --- a/man3/getgrnam.3
> +++ b/man3/getgrnam.3
> @@ -172,7 +172,7 @@ In case of error, an error number is returned, and NULL is stored in
>  .IR *result .
>  .SH ERRORS
>  .TP
> -.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ... "
> +.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ..."
>  The given
>  .I name
>  or
> diff --git a/man3/getpwnam.3 b/man3/getpwnam.3
> index eaac2836c..6c31b6647 100644
> --- a/man3/getpwnam.3
> +++ b/man3/getpwnam.3
> @@ -178,7 +178,7 @@ In case of error, an error number is returned, and NULL is stored in
>  .IR *result .
>  .SH ERRORS
>  .TP
> -.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ... "
> +.BR 0 " or " ENOENT " or " ESRCH " or " EBADF " or " EPERM " or ..."
>  The given
>  .I name
>  or
> diff --git a/man3/rcmd.3 b/man3/rcmd.3
> index 4eb18a637..70f3f510b 100644
> --- a/man3/rcmd.3
> +++ b/man3/rcmd.3
> @@ -49,28 +49,28 @@ stream to a remote command
>  .nf
>  .B #include <netdb.h> \ \ \fP/* Or <unistd.h> on some systems */
>  .PP
> -.BI "int rcmd(char **" ahost ", unsigned short " inport ", const char *" locuser ", "
> +.BI "int rcmd(char **" ahost ", unsigned short " inport ", const char *" locuser ,
>  .BI "         const char *" remuser ", const char *" cmd ", int *" fd2p );
>  .PP
>  .BI "int rresvport(int *" port );
>  .PP
> -.BI "int iruserok(uint32_t " raddr ", int " superuser ", "
> +.BI "int iruserok(uint32_t " raddr ", int " superuser ,
>  .BI "             const char *" ruser ", const char *" luser );
>  .PP
> -.BI "int ruserok(const char *" rhost ", int " superuser ", "
> +.BI "int ruserok(const char *" rhost ", int " superuser ,
>  .BI "            const char *" ruser ", const char *" luser );
>  .PP
> -.BI "int rcmd_af(char **" ahost ", unsigned short " inport ", const char *" locuser ", "
> +.BI "int rcmd_af(char **" ahost ", unsigned short " inport ", const char *" locuser ,
>  .BI "            const char *" remuser ", const char *" cmd ", int *" fd2p ,
>  .BI "            sa_family_t " af );
>  .PP
>  .BI "int rresvport_af(int *" port ", sa_family_t " af );
>  .PP
> -.BI "int iruserok_af(const void *" raddr ", int " superuser ", "
> +.BI "int iruserok_af(const void *" raddr ", int " superuser ,
>  .BI "                const char *" ruser ", const char *" luser \
>  ", sa_family_t " af );
>  .PP
> -.BI "int ruserok_af(const char *" rhost ", int " superuser ", "
> +.BI "int ruserok_af(const char *" rhost ", int " superuser ,
>  .BI "               const char *" ruser ", const char *" luser \
>  ", sa_family_t " af );
>  .fi
> diff --git a/man3/rexec.3 b/man3/rexec.3
> index 9a09a47a3..142f0028a 100644
> --- a/man3/rexec.3
> +++ b/man3/rexec.3
> @@ -45,10 +45,10 @@ rexec, rexec_af \- return stream to a remote command
>  .nf
>  .B #include <netdb.h>
>  .PP
> -.BI "int rexec(char **" ahost ", int " inport ", const char *" user ", "
> +.BI "int rexec(char **" ahost ", int " inport ", const char *" user ,
>  .BI "          const char *" passwd ", const char *" cmd ", int *" fd2p );
>  .PP
> -.BI "int rexec_af(char **" ahost ", int " inport ", const char *" user ", "
> +.BI "int rexec_af(char **" ahost ", int " inport ", const char *" user ,
>  .BI "             const char *" passwd ", const char *" cmd ", int *" fd2p ,
>  .BI "             sa_family_t " af  );
>  .fi
> diff --git a/man3/sem_open.3 b/man3/sem_open.3
> index 8b5b1069d..df25016b0 100644
> --- a/man3/sem_open.3
> +++ b/man3/sem_open.3
> @@ -33,7 +33,7 @@ sem_open \- initialize and open a named semaphore
>  .B #include <semaphore.h>
>  .PP
>  .BI "sem_t *sem_open(const char *" name ", int " oflag );
> -.BI "sem_t *sem_open(const char *" name ", int " oflag ", "
> +.BI "sem_t *sem_open(const char *" name ", int " oflag ,
>  .BI "                mode_t " mode ", unsigned int " value );
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
