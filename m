Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FA7E6DBB77
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 16:06:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbjDHOGE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 10:06:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbjDHOGD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 10:06:03 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BE0C10267
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 07:05:47 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l26-20020a05600c1d1a00b003edd24054e0so2115611wms.4
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 07:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680962746; x=1683554746;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=blI3yH3TOq1Gokx6ZdCQ90BraGA4BPDIryaLYCI9ahU=;
        b=bz/AvFz9H1EvHIzICkuI0o6thEshCjE5oV46CAP/YGCNmtPX5i7h8bcf6bNPf4v1SN
         7D8SDBD3JH1tGE6mkJ/XkHIbsSA+g+mXXic7aB4UwsBYSm+Qval/pDY+LCQbjR9P5JLF
         ShqEUyV4+iDFeDtF8q0AzJjzHyBGWlF6htf18+Fkb58NJdSdl03oWz8dVQOMJ7a7Xsa2
         EW81nrMfaoeSVbArFUPSqrLvfiUy1uxjA+eGkmr+B399kD0KbyhEuqYDDS+C9zzvSuHb
         +q+nkxsvza4TB7Mya8LvGwF7Gy7s9lG8BFcR2b4aL4LW9N+uRluTJuiSKxqwnNU9efmJ
         CKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680962746; x=1683554746;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=blI3yH3TOq1Gokx6ZdCQ90BraGA4BPDIryaLYCI9ahU=;
        b=OgYWlhWgCVghnCjVSOBByDQBQSoFNGIrj9cgXNMR56Qv1jWJwKK+H2MLq39qWoHzG7
         cQbXTfkYbCuNkkPksBCXkpUtrn/W77d+YABZvtmmTlSPutHL+lSpg03JPxfDSq63gVvv
         Afx4Nd6aFLgg10z21PzRCHhPNAD8E0fktrHda4iAESkCeSRMiZwVdOjwvAaSZZqWLWiB
         aviu9AsSIstO9kvDig1XW6Wj0ZgBA4wnn9DF2pGozcq/L3Uz/jBIxbB/PF/vPPj6FBZA
         bjwmlZFuoEhBtFh/FtcCNQi4aSDJ4Xmg+2W/eWgINIrU3QP8YSVOxIec1riVHdxmx8uS
         8MeA==
X-Gm-Message-State: AAQBX9fJcGYv2nmc8wt/JTR5jwbHLsxfxO9DIkBHlVjaxUosm/Q1eoWe
        lT88wDzOs82xkzsMMbValXSwg6RqyU8=
X-Google-Smtp-Source: AKy350YSPdJe96qwyvMOth4Su8Zt2ZEOgggLpMcog6VfOawR+vMdrYJDyIkRTWtMz4HwzftnJpPBMQ==
X-Received: by 2002:a05:600c:22ce:b0:3eb:3945:d405 with SMTP id 14-20020a05600c22ce00b003eb3945d405mr3685214wmg.38.1680962745577;
        Sat, 08 Apr 2023 07:05:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k23-20020a05600c0b5700b003ee44b2effasm7955621wmr.12.2023.04.08.07.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 07:05:45 -0700 (PDT)
Message-ID: <076c57cf-0ef2-2bcd-de1f-43e8c541597d@gmail.com>
Date:   Sat, 8 Apr 2023 16:05:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2] ioctl_pipe.2: Add page.
Content-Language: en-US
To:     Cyril Hrubis <chrubis@suse.cz>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, David Howells <dhowells@redhat.com>
References: <ZCrd+BdRcshoHVZb@yuki>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZCrd+BdRcshoHVZb@yuki>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------365sCodLWYGj0RSLag74O6YA"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------365sCodLWYGj0RSLag74O6YA
Content-Type: multipart/mixed; boundary="------------fkmokkXpzVnMp8RV0e6HSwdE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Cyril Hrubis <chrubis@suse.cz>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, David Howells <dhowells@redhat.com>
Message-ID: <076c57cf-0ef2-2bcd-de1f-43e8c541597d@gmail.com>
Subject: Re: [PATCH v2] ioctl_pipe.2: Add page.
References: <ZCrd+BdRcshoHVZb@yuki>
In-Reply-To: <ZCrd+BdRcshoHVZb@yuki>

--------------fkmokkXpzVnMp8RV0e6HSwdE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Cyril,

On 4/3/23 16:08, Cyril Hrubis wrote:
> Signed-off-by: Cyril Hrubis <chrubis@suse.cz>

I applied the page with some tweaks.

Thanks,
Alex

> ---
>  man2/ioctl_pipe.2 | 56 +++++++++++++++++++++++++++++++++++++++++++++++=

>  1 file changed, 56 insertions(+)
>  create mode 100644 man2/ioctl_pipe.2
>=20
> diff --git a/man2/ioctl_pipe.2 b/man2/ioctl_pipe.2
> new file mode 100644
> index 000000000..afdf05236
> --- /dev/null
> +++ b/man2/ioctl_pipe.2
> @@ -0,0 +1,56 @@
> +.\" Copyright (c) 2022 by Cyril Hrubis <chrubi@suse.cz>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH IOCTL_PIPE 2 2022-08-06 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +ioctl_pipe \- ioctl() operations for General notification mechanism
> +.SH SYNOPSIS
> +.nf
> +.B #include <linux/watch_queue.h>
> +.PP
> +.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_SIZE, int " size=
 ");
> +.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_FILTER, \
> +struct watch_notification_filter * " filter ");
> +.fi
> +.SH DESCRIPTION
> +The following
> +.BR ioctl (2)
> +operations are provided to set up general notification queue parameter=
s.
> +The notification queue is build on the top of a
> +.BR pipe (2)
> +opened with the
> +.B O_NOTIFICATION_PIPE
> +flag.
> +.TP
> +.BR IOC_WATCH_QUEUE_SET_SIZE " (since Linux 5.8)"
> +.\" commit c73be61cede5882f9605a852414db559c0ebedfd
> +Preallocates the pipe buffer memory so that it can fit size notificati=
on
> +messages. Currently the size must be between 1 and 512.
> +.TP
> +.BR IOC_WATCH_QUEUE_SET_FILTER " (since Linux 5.8)"
> +.\" commit c73be61cede5882f9605a852414db559c0ebedfd
> +Watch queue filter can limit events that are received. Filters are pas=
sed in a
> +.I struct watch_notification_filter
> +and each filter is described by
> +.I struct watch_notification_type_filter
> +structure.
> +.PP
> +.EX
> +struct watch_notification_filter {
> +        __u32   nr_filters;
> +        __u32   __reserved;
> +        struct watch_notification_type_filter filters[];
> +};
> +
> +struct watch_notification_type_filter {
> +        __u32   type;
> +        __u32   info_filter;
> +        __u32   info_mask;
> +        __u32   subtype_filter[8];
> +};
> +.EE
> +.PP
> +.SH SEE ALSO
> +.BR pipe (2),
> +.BR ioctl (2)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------fkmokkXpzVnMp8RV0e6HSwdE--

--------------365sCodLWYGj0RSLag74O6YA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQxdLEACgkQnowa+77/
2zJwPw/8DpSxjWQE7VhcbDf9Z6zugFq5mTIVu4a1eFmZR5Fd9oXrRAdXtEoSdm9Y
yFavEngwGFksPJKSVSWZR4KbfEadZfqhGY6iHkupX9nmzkHSYTC2npK5oU82l0y6
IchxUh+L3ZCCui4qT03qiLgOOQoBFXtz/Jsb4TBGW4DMPw1jn14iqdib6ULJ+Vzu
B6BL+KvgxCSi+Hn3lQ8Oo19AOGlRfomcO1VoTtS/ZKps9WBp6VSZKyyyuhX2QcEP
G79iBeyH3b9gJ8EaazgP2HQHiOx8wMnxoum6LM7L+rohTw9aU1iW/FAgcFkCjO8f
Vy8CpaZZDYXiBnauWhE93Iyk+E44KvEGxYM3Vmd0FqJxYR1POImNSvok/adY9eah
S8m6GfiTcikph1OEmJEgdqJ/cf0bMusqUbRJAt2B6sydJj9QLtr5lgSyNUws2r6b
W4RtbASKJ6hVxrLYwVKTi3MnqOpToPDGV7bx3MQvmMjzOJLhOavat/HAgXvTSZlU
IQE+Yj/PoU5+iA+dX12S3AHnWmvfIjdwtxAo8G4AY7GpY5vETfOY8zVOQ7c9K8an
VjXpFiqtD+pZu6aRwlo5W6ChK0glD4j2jFqvhmNm6gMgZjsni9G6FhgtjPVQRfO4
Ik/S5yZXHF9Q2yzOWfjbff5xyXOIuA+xp53GLowsaZYdPT2rbto=
=SvHX
-----END PGP SIGNATURE-----

--------------365sCodLWYGj0RSLag74O6YA--
