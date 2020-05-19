Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F00321D93CE
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 11:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726938AbgESJuw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 05:50:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726880AbgESJuw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 05:50:52 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 085A9C061A0C
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 02:50:52 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id z72so2754046wmc.2
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 02:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TwNfnswBdA4sAJI0XVEcFwGh1ujzHnEm1bvH4tCbnEg=;
        b=M5ZuXiYZnSxgm9RQUwN1vBzaECP4UvPCcbJpVNCxbg/8lJvvdpM45q2AiE0k3xumE/
         XZOcnjhTRdSUmj56U1d8vYqDL7HDWwD2UFPp0T481p3CTbeZ/V7vbWvTvApnLkGLRxj6
         xxqXk2s51fQg1axAGSRkqSKOphGRpCwBcjFwT3kQsMRiKSyDt96nUdiBOvudNPFii48s
         knosX0zOg8xrsbeogMYlFT9AuX+sJT3xE3OEs1bmFAvH4TeEuR75tjiN65r7rmb+FUiT
         AaLFm5XVpTzAndroHOrDiMReMBN9Uhgxrs0RIWin0+9OMNWf1Om+kKYHzziXs8nLor1I
         tmJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TwNfnswBdA4sAJI0XVEcFwGh1ujzHnEm1bvH4tCbnEg=;
        b=fDm8dTyWUVXkvNDpynSxf/oixanReO6ymBq/d43MBOKaEUJtXggrHz2EVMKEMvwfow
         JqpbhZYA1hCs4T6fBJLj2DZGHGrveniyMRnelS2c51lMS1WPZeP5Uz+ibNhrWgw7jWsT
         BnXQZNtLnBTIyIApVR6ZMOCkKgmEVcu7q6/3dh/zLtaQRQ8fzkrejTKA3xHeSFBLUJ39
         NTmYzNFTlJvqVWZ5C91nQhTGPw7TfeODRQdVPlUEipVZn/Vy0M9HN/H59L8qYAEomhf0
         /O4ulA/NOVLqqHmuFCpHk3bFgsrgtDNxckYH3a6YYqY9E00iFDeHnxK1GjZ3lMPNaGLZ
         BcdA==
X-Gm-Message-State: AOAM531qPwYc3/JLEeWP12x1x2b+ghANPY0i7xta/XDxdPbt/fjVuaf7
        YybveDw6U5dGvvDCpVpKVbA=
X-Google-Smtp-Source: ABdhPJy+zdACasg0th02vTt1EvUNrn17ez1PsRbreksF4oC3ppKQ1xetX2Uy0Drxrpt21vKBAQCtlg==
X-Received: by 2002:a05:600c:2c53:: with SMTP id r19mr4820309wmg.83.1589881850650;
        Tue, 19 May 2020 02:50:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id l5sm20720376wrr.72.2020.05.19.02.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 02:50:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        glperkins@lit.edu
Subject: Re: [PATCH] hier.7: Updating from FHS 2.3 to 3.0
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
References: <33544f6a-5983-ed08-b2f1-a7a348c411f6@deloquencia.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8bbe0eae-b4a0-3b49-84a7-245b46eb9eff@gmail.com>
Date:   Tue, 19 May 2020 11:50:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <33544f6a-5983-ed08-b2f1-a7a348c411f6@deloquencia.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Thomas,

On 5/18/20 8:07 PM, Thomas Piekarski wrote:
> Adding description of new directories (/run, /usr/libexec,
> /usr/share/color,/usr/share/ppd, /var/lib/color), stating
> /usr/X11R6 as obsolete and updating URL to and version of
> FHS.
> 
> See https://bugzilla.kernel.org/show_bug.cgi?id=206693
> 
> Reported-by: Gary Perkins <glperkins@lit.edu>
> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>

The patch looks good overall, though I have not checked the details
in FHS 3.0. Are the changes in the patch the sum total of the
differences between FHS 2.3 and 3.0?

Thanks,

Michael

> ---
> 
> man7/hier.7 | 28 ++++++++++++++++++++++++----
>   1 file changed, 24 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/hier.7 b/man7/hier.7
> index dab9483d7..03fe61c71 100644
> --- a/man7/hier.7
> +++ b/man7/hier.7
> @@ -161,6 +161,12 @@ This pseudo-filesystem is described in more detail in
>   .I /root
>   This directory is usually the home directory for the root user (optional).
>   .TP
> +.I /run
> +This directory contains information which describes the system since it 
> was booted.
> +Once this purpose was served by
> +.IR /var/run
> +and programs may continue to use it.
> +.TP
>   .I /sbin
>   Like
>   .IR /bin ,
> @@ -186,7 +192,7 @@ It should hold only shareable, read-only data, so 
> that it can be mounted
>   by various machines running Linux.
>   .TP
>   .I /usr/X11R6
> -The X\-Window system, version 11 release 6 (optional).
> +The X\-Window system, version 11 release 6 (obsolete since FHS 3.0).
>   .TP
>   .I /usr/X11R6/bin
>   Binaries which belong to the X\-Window system; often, there is a
> @@ -296,6 +302,10 @@ which usually are not invoked directly.
>   More complicated programs may
>   have whole subdirectories there.
>   .TP
> +.I /usr/libexec
> +Directory contains binaries for internal use only and they are not meant
> +to be executed directly by users shell or scripts.
> +.TP
>   .I /usr/lib<qual>
>   These directories are variants of
>   .I /usr/lib
> @@ -385,6 +395,10 @@ or
>   or
>   .IR /usr/man .
>   .TP
> +.I /usr/share/color
> +Contains color management information, like International Color 
> Consortium (ICC)
> +Color profiles (optional).
> +.TP
>   .I /usr/share/dict
>   Contains the word lists used by spell checkers (optional).
>   .TP
> @@ -421,6 +435,9 @@ same OS.
>   .I /usr/share/nls
>   The message catalogs for native language support go here (optional).
>   .TP
> +.I /usr/share/ppd
> +Postscript Printer Definition (PPD) files (optional).
> +.TP
>   .I /usr/share/sgml
>   Files for SGML (optional).
>   .TP
> @@ -523,6 +540,9 @@ Variable game data (optional).
>   .I /var/lib
>   Variable state information for programs.
>   .TP
> +.I /var/lib/color
> +Variable files containing color management information (optional).
> +.TP
>   .I /var/lib/hwclock
>   State directory for hwclock (optional).
>   .TP
> @@ -635,11 +655,11 @@ this directory holds temporary files stored for an 
> unspecified duration.
>   Database files for NIS,
>   formerly known as the Sun Yellow Pages (YP).
>   .SH CONFORMING TO
> -The Filesystem Hierarchy Standard, Version 2.3
> -.UR http://www.pathname.com\:/fhs/
> +The Filesystem Hierarchy Standard (FHS), Version 3.0, published March 
> 19, 2015
> +.UR https://refspecs.linuxfoundation.org/fhs.shtml
>   .UE .
>   .SH BUGS
> -This list is not exhaustive; different systems may be configured
> +This list is not exhaustive; different distributions and systems may be 
> configured
>   differently.
>   .SH SEE ALSO
>   .BR find (1),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
