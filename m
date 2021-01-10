Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C4922F086D
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 17:39:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726638AbhAJQjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 11:39:08 -0500
Received: from mail.kernel.org ([198.145.29.99]:51958 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726069AbhAJQjH (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 10 Jan 2021 11:39:07 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id CF40C22AAF;
        Sun, 10 Jan 2021 16:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610296707;
        bh=YTFMh1viuFVboiToTmlXGFnLe/jLfLn9U883WQGaGGw=;
        h=Date:From:To:Subject:References:In-Reply-To:From;
        b=LdBFJyD3UhGf6mB7eE/QGV4MnJXQQTsoYRXprK1HYJW1mMMEf2fO/UWDkR8OWHQL0
         fL8PLSbEnBU95AOgz4zYjPU4Iub0Fa7GxmGwuVBwrN8VBdhfNS0az/0+0zqcPX+Gsw
         8KmjaKcjdYk/5ROGB3rMtlXrzV79EM6Myu0UfjDRkmrK2nmJs8ItAzBGu5A1BURQ8n
         sAeEksXdsOzLZLB9LGT2vz1j4gLaQ0SH/LyIxPyZ43+PGA2Cwo1t+JT9SEpu+h4ISn
         UZg51WAUNZAm2VF9G/Eruz8qaUG1kgXLyvX2Xoo/w1TkVrbNtW0yK/Mv3b/TqrmmJY
         pKw1jA6SKylAQ==
Received: by pali.im (Postfix)
        id 6E9A07C5; Sun, 10 Jan 2021 17:38:24 +0100 (CET)
Date:   Sun, 10 Jan 2021 17:38:24 +0100
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2] netdevice.7: Update documentation for SIOCGIFADDR
 SIOCSIFADDR SIOCDIFADDR
Message-ID: <20210110163824.awdrmf3etndlyuls@pali>
References: <20210102140254.16714-1-pali@kernel.org>
 <20210102183952.4155-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210102183952.4155-1-pali@kernel.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Saturday 02 January 2021 19:39:52 Pali Rohár wrote:
> Also add description for struct in6_ifreq which is used for IPv6 addresses.
> 
> SIOCSIFADDR and SIOCDIFADDR can be used to add or delete IPv6 address and
> pppd is using these ioctls for a long time. Surprisingly SIOCDIFADDR cannot
> be used for deleting IPv4 address but only for IPv6 addresses.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> ---
>  man7/netdevice.7 | 50 +++++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 43 insertions(+), 7 deletions(-)

Hello! Is something else needed for this patch?

> diff --git a/man7/netdevice.7 b/man7/netdevice.7
> index 488e83d9a..12f94bfd7 100644
> --- a/man7/netdevice.7
> +++ b/man7/netdevice.7
> @@ -55,9 +55,26 @@ struct ifreq {
>  .EE
>  .in
>  .PP
> +AF_INET6 is an exception.
> +It passes an
> +.I in6_ifreq
> +structure:
> +.PP
> +.in +4n
> +.EX
> +struct in6_ifreq {
> +    struct in6_addr     ifr6_addr;
> +    u32                 ifr6_prefixlen;
> +    int                 ifr6_ifindex; /* Interface index */
> +};
> +.EE
> +.in
> +.PP
>  Normally, the user specifies which device to affect by setting
>  .I ifr_name
> -to the name of the interface.
> +to the name of the interface or
> +.I ifr6_ifindex
> +to the index of the interface.
>  All other members of the structure may
>  share memory.
>  .SS Ioctls
> @@ -142,13 +159,32 @@ IFF_ISATAP:Interface is RFC4214 ISATAP interface.
>  .PP
>  Setting the extended (private) interface flags is a privileged operation.
>  .TP
> -.BR SIOCGIFADDR ", " SIOCSIFADDR
> -Get or set the address of the device using
> -.IR ifr_addr .
> -Setting the interface address is a privileged operation.
> -For compatibility, only
> +.BR SIOCGIFADDR ", " SIOCSIFADDR ", " SIOCDIFADDR
> +Get, set or delete the address of the device using
> +.IR ifr_addr ,
> +or
> +.I ifr6_addr
> +with
> +.IR ifr6_prefixlen .
> +Setting or deleting the interface address is a privileged operation.
> +For compatibility,
> +.B SIOCGIFADDR
> +returns only
>  .B AF_INET
> -addresses are accepted or returned.
> +addresses,
> +.B SIOCSIFADDR
> +accepts
> +.B AF_INET
> +and
> +.B AF_INET6
> +addresses and
> +.B SIOCDIFADDR
> +deletes only
> +.B AF_INET6
> +addresses.
> +.B AF_INET
> +address can be deleted by setting zero address via
> +.BR SIOCSIFADDR .
>  .TP
>  .BR SIOCGIFDSTADDR ", " SIOCSIFDSTADDR
>  Get or set the destination address of a point-to-point device using
> -- 
> 2.20.1
> 
