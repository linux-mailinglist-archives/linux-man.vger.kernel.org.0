Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D87142E882F
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 19:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726667AbhABSEu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 13:04:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbhABSEt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 13:04:49 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06434C0613CF
        for <linux-man@vger.kernel.org>; Sat,  2 Jan 2021 10:04:09 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 3so13971656wmg.4
        for <linux-man@vger.kernel.org>; Sat, 02 Jan 2021 10:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=34u7rmbcx1kKpxrh67iYMN88xbvDv/p0OsPasl+68Yk=;
        b=qExw8YoH3egBVfc99VqFLTqaGpT45nWb2UbcsNWWKWW+um+dmvgWoSBA7dp/pwlMcb
         GNYJpl/uxt86c1mJWeCMlT5uIEFyOjF8bb7kyOMqs/PNmOrg9U2A7nI23yccyy/recYA
         yESLpisQzwptMDBdNauMuBlhfZyjHOxZAMTEN2fnmmr0KcWDd18xR1QyQS6mysthFqOO
         Y77rjKV0xy3LIgQqc2D4m+HaajnS7KyoFMq1O2CWJPVUuxxkYFR0lFfikgnqMUALUDCp
         76Kx7d9776f+mnlvSKm1fDYZDk/KpVtTeWRyLFxxTj37StC2tsC7FrgKBK1p6NAySdCy
         RqiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=34u7rmbcx1kKpxrh67iYMN88xbvDv/p0OsPasl+68Yk=;
        b=gjq7UeD/s1tVeCbrzG9gOiJvYT8RJHrwTaasATUV0BoRM4GEVGPHKpJRdtF5dkz/7D
         2h/fGoZTzfGQrzAsA3gyqW2RUAOgSxqvzNQL1k5lHAYD0p86suqImhNi+c1hl8G/hxzj
         F5kgaGuLOP4/63R0TTcmkQlZfKpRdBMIskMXa8cogLZkGneBNULubK9Luw0DOUfVXvWg
         B4LtfryckOllB+ylyAOrUOekm5hOPuxr4syJ2K4Hz0+FnrOZxvdBS3/iQeO2f5tEMi/I
         QbOfuHwraeT70Zqw7/sg2K5MhPOEizP401Mb+iVJ4cR6J/sGaCk8W3LdCnNS9iNUgzjy
         g6/Q==
X-Gm-Message-State: AOAM531nEvEk8e/pjYOFcgRkQRDsw4mGvd8mTrz22epptr+fxjfDZQQt
        LrSfnDvXsYUy/+nAczXqocw=
X-Google-Smtp-Source: ABdhPJzpb2c7qF/+T8zbkeKcORg5c4mIbe6+RP2W8QTDHoeVWgApCdh3MfKylJC/wTkS3elt/vc1/A==
X-Received: by 2002:a1c:790f:: with SMTP id l15mr20344162wme.188.1609610647837;
        Sat, 02 Jan 2021 10:04:07 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id g1sm40953380wrq.30.2021.01.02.10.04.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jan 2021 10:04:07 -0800 (PST)
Subject: Re: [PATCH] netdevice.7: Update documentation for SIOCGIFADDR
 SIOCSIFADDR SIOCDIFADDR
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210102140254.16714-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <486b1176-d12b-4f6f-0890-f3d4e8483eb7@gmail.com>
Date:   Sat, 2 Jan 2021 19:04:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210102140254.16714-1-pali@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

Please, see some comments below.

On 1/2/21 3:02 PM, Pali Rohár wrote:
> Also add description for struct in6_ifreq which is used for IPv6 addresses.
> 
> SIOCSIFADDR and SIOCDIFADDR can be used to add or delete IPv6 address and
> pppd is using these ioctls for a long time. Surprisingly SIOCDIFADDR cannot
> be used for deleting IPv4 address but only for IPv6 addresses.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> ---
>  man7/netdevice.7 | 36 +++++++++++++++++++++++++++++-------
>  1 file changed, 29 insertions(+), 7 deletions(-)
> 
> diff --git a/man7/netdevice.7 b/man7/netdevice.7
> index 488e83d9a..5b68e4988 100644
> --- a/man7/netdevice.7
> +++ b/man7/netdevice.7
> @@ -55,9 +55,27 @@ struct ifreq {
>  .EE
>  .in
>  .PP
> +Exception is
> +.B AF_INET6
> +socket for which is used
> +.I in6_ifreq
> +structure:

Wording fix:

[
AF_INET6 is an exception.
It passes an
.I in6_ifreq
structure:
]

Are there more exceptions?
Or is it the only one?

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

I've seen there's ifr_ifindex too (see SIOCGIFNAME).
Can it be used in the same way as ifr6_ifindex?

>  All other members of the structure may
>  share memory.
>  .SS Ioctls
> @@ -142,13 +160,17 @@ IFF_ISATAP:Interface is RFC4214 ISATAP interface.
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
> +.IR ifr_addr " or " ifr6_addr " with " ifr6_prefixlen .

Generally, we place each name on a single line.
The line after .TP is an exception, as you can see above.
So this would be:

[
.IR ifr_addr ,
or
.I ifr6_addr
with
.IR ifr6_prefixlen .
]

> +Setting or deleting the interface address is a privileged operation.
> +For compatibility,
> +.BR SIOCGIFADDR " returns only " AF_INET " addresses, "
> +.BR SIOCSIFADDR " accepts " AF_INET " and " AF_INET6 " addresses and "
> +.BR SIOCDIFADDR " deletes only " AF_INET6 " addresses. "

See above.

>  .B AF_INET
> -addresses are accepted or returned.
> +address can be deleted by setting zero address via
> +.BR SIOCSIFADDR .
>  .TP
>  .BR SIOCGIFDSTADDR ", " SIOCSIFDSTADDR
>  Get or set the destination address of a point-to-point device using
> 

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
