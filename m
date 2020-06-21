Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AE8B202957
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 09:25:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729419AbgFUHZ1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jun 2020 03:25:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729415AbgFUHZ1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jun 2020 03:25:27 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB77EC061794
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 00:25:26 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id q2so11163518wrv.8
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 00:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X8g84FLwuHb9F5QFr84tTIE7rGVo1eoNmFzadmBF5+A=;
        b=VmkZwmqlZ23PiyRZ9EdwGAiwrIzueozh9bhLAGa7ToN62r0wF1NOfpaPmrgp+Sjzdz
         6qACG688gwHXu1m+gtYh+GFDTXIzvfgEEwhuHGLpOaN7FpFx2rs3Arofc9KKRNA7MOTD
         KU5dFIrgNP0hEXFnT5op9iUMc+vhRDAyNbKaQxTlXNaM3UxnnHpzlz2xr2wpJAIuMg9S
         Q/Rgxbcy5YQUg+b+TXsj28DKskCWyO+XMesK5Bg9v5gk49lQZHMSPfvIxHxFCEtZ0DWZ
         Jmzo6pLbSXwjpVGsFwEUxQINz0BIAvyodBcT2gtc7/pszSWN7BwZ1GsZfvtu0NYT3uT1
         GlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X8g84FLwuHb9F5QFr84tTIE7rGVo1eoNmFzadmBF5+A=;
        b=qV6Aehi9qP6DTSAYsLH8JGK0TYVCUV9GkG/wnnI0eodkIpYJ+C1Ogy3FQI6Dgl00as
         1AJkExjeczp42zYne6w3SSQlEMukb7Oxkgi7ZqVcSGkWWXcEoXYFTwd/G5Gakk8smMzy
         nnHbV1/LUeW4+9+eKxxJO2cQhDZeFkDI0sqYiYlnn85p12e5rx8zlJq4QqVOuhvQyxzC
         G+0ZQ1P9wUsl9V3+0gWNSezbvuq9TCFIImFxkfRShFyNNRbrIwkLBt58Hz6xC9oRf62J
         l5fav69ZTc5t8QDEgVZzcQvithj1DaovejrlrkrGKUJTHD5Pi0lv253Fc/ecPADyXj58
         4jog==
X-Gm-Message-State: AOAM533wCq4qhNGyNTbeGr0NozdM2TOJgpkBi7AN0J2/p48haQySH1f5
        emr6z522IhnxvVAsySf7weyAcyut
X-Google-Smtp-Source: ABdhPJwu/OTJh9aeg6GCmZUSdRo0jTY7hTKy2ed3uVbMqJs2eTtmpYxD7h9rAq02/RYB7CVwTpdv+w==
X-Received: by 2002:a5d:51ce:: with SMTP id n14mr12713333wrv.155.1592724325359;
        Sun, 21 Jun 2020 00:25:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id i15sm12893001wre.93.2020.06.21.00.25.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 00:25:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man4/*: srcfix, fix warnings from "mandoc -Tlint"
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200620233647.GA8900@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <221f1323-0565-ff08-31b8-a9da9b65aa18@gmail.com>
Date:   Sun, 21 Jun 2020 09:25:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200620233647.GA8900@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

Patch doesn't apply. Could you take a look please.

Cheers,

Michael


On 6/21/20 1:36 AM, Bjarni Ingi Gislason wrote:
>   Remove superfluous paragraph macros.
> 
>   The output from "nroff" and "groff" is unchanged.
> 
> ###
> 
>   Examples of warnings:
> 
> mandoc: fuse.4:244:2: WARNING: skipping paragraph macro: IP empty
> 
> mandoc: fuse.4:34:2: WARNING: skipping paragraph macro: PP after SH
> mandoc: lirc.4:68:2: WARNING: skipping paragraph macro: PP after SS
> 
> mandoc: msr.4:59:2: WARNING: skipping paragraph macro: PP empty
> 
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man4/fuse.4 |  5 -----
>  man4/lirc.4 | 10 ----------
>  man4/msr.4  |  1 -
>  man4/st.4   |  3 ---
>  man4/veth.4 |  1 -
>  5 files changed, 20 deletions(-)
> 
> diff --git a/man4/fuse.4 b/man4/fuse.4
> index 4c40c801a..c1416fb64 100644
> --- a/man4/fuse.4
> +++ b/man4/fuse.4
> @@ -31,7 +31,6 @@ fuse \- Filesystem in Userspace (FUSE) device
>  .B #include <linux/fuse.h>
>  .fi
>  .SH DESCRIPTION
> -.PP
>  This device is the primary interface between the FUSE filesystem driver
>  and a user-space process wishing to provide the filesystem (referred to
>  in the rest of this manual page as the
> @@ -241,7 +240,6 @@ struct fuse_attr_out {
>  };
>  .EE
>  .in
> -.IP
>  .TP
>  .B FUSE_ACCESS
>  .IP
> @@ -285,7 +283,6 @@ filesystem should validate that the requested
>  are valid for the indicated resource and then send a reply with the
>  following format:
>  .IP
> -.IP
>  .in +4n
>  .EX
>  struct fuse_open_out {
> @@ -296,7 +293,6 @@ struct fuse_open_out {
>  .EE
>  .in
>  .IP
> -.IP
>  The
>  .I fh
>  field is an opaque identifier that the kernel will use to refer
> @@ -333,7 +329,6 @@ struct fuse_read_in {
>  .EE
>  .in
>  .IP
> -.IP
>  The requested action is to read up to
>  .I size
>  bytes of the file or directory, starting at
> diff --git a/man4/lirc.4 b/man4/lirc.4
> index 29bbeea34..475fed848 100644
> --- a/man4/lirc.4
> +++ b/man4/lirc.4
> @@ -25,7 +25,6 @@
>  .SH NAME
>  lirc \- lirc devices
>  .SH DESCRIPTION
> -.PP
>  The
>  .I /dev/lirc*
>  character devices provide a low-level
> @@ -65,7 +64,6 @@ receiving and sending is supported, and in which modes, amongst other
>  features.
>  .\"
>  .SS Reading input with the LIRC_MODE_MODE2 mode
> -.PP
>  In the \fBLIRC_MODE_MODE2 mode\fR, the data returned by
>  .BR read (2)
>  provides 32-bit values representing a space or a pulse duration.
> @@ -90,7 +88,6 @@ The package reflects a timeout; see the
>  ioctl.
>  .\"
>  .SS Reading input with the LIRC_MODE_SCANCODE mode
> -.PP
>  In the \fBLIRC_MODE_SCANCODE\fR
>  mode, the data returned by
>  .BR read (2)
> @@ -100,7 +97,6 @@ is stored in \fIrc_proto\fR.
>  This field has one the values of the \fIenum rc_proto\fR.
>  .\"
>  .SS Writing output with the LIRC_MODE_PULSE mode
> -.PP
>  The data written to the character device using
>  .BR write (2)
>  is a pulse/space sequence of integer values.
> @@ -116,7 +112,6 @@ If more data is provided than the hardware can send, the
>  call fails with the error
>  .BR EINVAL .
>  .SS Writing output with the LIRC_MODE_SCANCODE mode
> -.PP
>  The data written to the character devices must be a single struct
>  \fIlirc_scancode\fR.
>  The \fIscancode\fR and \fIrc_proto\fR fields must
> @@ -127,7 +122,6 @@ The protocol or scancode is invalid, or the
>  .B lirc
>  device cannot transmit.
>  .SH IOCTL COMMANDS
> -.PP
>  The LIRC device's ioctl definition is bound by the ioctl function
>  definition of
>  .IR "struct file_operations" ,
> @@ -153,7 +147,6 @@ referred to below as
>  .IR val .
>  .\"
>  .SS Always Supported Commands
> -.PP
>  \fI/dev/lirc*\fR devices always support the following commands:
>  .TP 4
>  .BR LIRC_GET_FEATURES " (\fIvoid\fP)"
> @@ -166,7 +159,6 @@ it is safe to assume it is not a
>  device.
>  .\"
>  .SS Optional Commands
> -.PP
>  Some
>  .B lirc
>  devices support the commands listed below.
> @@ -241,7 +233,6 @@ is a number in the range [0,100] which
>  describes the pulse width as a percentage of the total cycle.
>  Currently, no special meaning is defined for 0 or 100, but the values
>  are reserved for future use.
> -.IP
>  .TP
>  .BR LIRC_GET_MIN_TIMEOUT " (\fIvoid\fP)", " "\
>  LIRC_GET_MAX_TIMEOUT " (\fIvoid\fP)"
> @@ -363,7 +354,6 @@ Trying to disable a wide band receiver while carrier reports are active
>  will do nothing.
>  .\"
>  .SH FEATURES
> -.PP
>  the
>  .B LIRC_GET_FEATURES
>  ioctl returns a bit mask describing features of the driver.
> diff --git a/man4/msr.4 b/man4/msr.4
> index 9feb78a4b..38e4e8e18 100644
> --- a/man4/msr.4
> +++ b/man4/msr.4
> @@ -56,7 +56,6 @@ to load it explicitly before use:
>  $ modprobe msr
>  .EE
>  .in
> -.PP
>  .SH SEE ALSO
>  Intel Corporation Intel 64 and IA-32 Architectures
>  Software Developer's Manual Volume 3B Appendix B,
> diff --git a/man4/st.4 b/man4/st.4
> index 770ed40e5..151e8b35b 100644
> --- a/man4/st.4
> +++ b/man4/st.4
> @@ -238,7 +238,6 @@ driver.
>  The definitions below are from
>  .IR /usr/include/linux/mtio.h :
>  .SS MTIOCTOP \(em perform a tape operation
> -.PP
>  This request takes an argument of type
>  .IR "(struct mtop\ *)" .
>  Not all drives support all operations.
> @@ -686,7 +685,6 @@ the cleaning request.
>  If the pattern is nonzero, the pattern must match
>  the masked sense data byte.
>  .SS MTIOCGET \(em get status
> -.PP
>  This request takes an argument of type
>  .IR "(struct mtget\ *)" .
>  .PP
> @@ -815,7 +813,6 @@ This value is set to \-1 when the block number is unknown (e.g., after
>  or
>  .BR MTSEEK ).
>  .SS MTIOCPOS \(em get tape position
> -.PP
>  This request takes an argument of type
>  .I "(struct mtpos\ *)"
>  and reports the drive's notion of the current tape block number,
> diff --git a/man4/veth.4 b/man4/veth.4
> index 1cc473434..e5d11b2b6 100644
> --- a/man4/veth.4
> +++ b/man4/veth.4
> @@ -98,7 +98,6 @@ NIC statistics:
>  16: ve_B@ve_A: <BROADCAST,MULTICAST,M-DOWN> mtu 1500 qdisc ...
>  .EE
>  .in
> -.PP
>  .SH "SEE ALSO"
>  .BR clone (2),
>  .BR network_namespaces (7),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
