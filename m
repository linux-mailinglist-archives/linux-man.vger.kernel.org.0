Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E2896A762E
	for <lists+linux-man@lfdr.de>; Wed,  1 Mar 2023 22:31:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbjCAVbr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Mar 2023 16:31:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjCAVbq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Mar 2023 16:31:46 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9711E51FA1
        for <linux-man@vger.kernel.org>; Wed,  1 Mar 2023 13:31:42 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id p23-20020a05600c1d9700b003ead4835046so1289352wms.0
        for <linux-man@vger.kernel.org>; Wed, 01 Mar 2023 13:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZ8P5VWjbg3mpdHRmLK6FdjFOAX9vaffFS+U/KrnlZI=;
        b=hi6bMTi7jUsfaEl0rMSChrCWTs7VmOkkO/zNGY/o3ZGPqE6aTSJH+pT6c7CEnFp9Wv
         jheLKs3PJl9b9nRfCqTq3lRAYqhqFIsS6RQtSRz3GBf/TVAmiy05t3c1SaJz4kQwzvpk
         m4ioDJYTARcT3BVH1wZ9ky419bhgepni697o0ta7ag9atJtsFUOoe40LOvr88G/ULnt3
         Ktt0+aAJsFBD2xwXCBkI70WE9fdpF6paaBQ5dHYlE19bcBZ9SqufwXNkyeUgxQTpM+LY
         vIeeg/7hxTdHG52c3p+KiNErzeSg+lxFX8RxLdB/jbc7aACcLilRVBR2YjIMpLjC2c9V
         XL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BZ8P5VWjbg3mpdHRmLK6FdjFOAX9vaffFS+U/KrnlZI=;
        b=QBs+jAs879XYtD96sJHhaDi0AyHZVJMOVjluZQbNUUk39CpL5CTgmifEZl/xYHhLhc
         3aXd+GvtXuCaXAwyIcRGnGNgZ38OekuxChnDAP6uDUM6301QbmqKnSLetcGzhuauTeMy
         qPsVkAC1chfohx7dg4cy+TX3/OxCAUm1q5dDE6iLbQfjpF0/rtq27b6CVJSpAntaNNgU
         CtPG25tfaGw+MjyJhnaf6YgptXrq7JWRcAw2j+hNUD/M+I0dZhKz4ofBXHIA5m4l5qkM
         aDGZdZSbH9xgp8pAtJHdxo69IyTtQ/o8GvW0Vvx2X8ZSuKeHpZDGM+BMOSUXeLOLaSH7
         29qQ==
X-Gm-Message-State: AO0yUKVbUeWLVN/dWjH7EAgffgH6Z4sUYO/DbwXvXRuozHHsGgWViJTg
        ZgoF7aoZLi9HajSuzJbVX44=
X-Google-Smtp-Source: AK7set+Zz4LQ3U2yY8JC062hZ8QNL44brLRKvQW3Az065twj3Kn9mF/3AWa4mZeciirIfHNHUwBdbg==
X-Received: by 2002:a05:600c:4a9d:b0:3ea:e7f6:f8f9 with SMTP id b29-20020a05600c4a9d00b003eae7f6f8f9mr6062144wmp.19.1677706300843;
        Wed, 01 Mar 2023 13:31:40 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q18-20020a05600c46d200b003eaee9e0d22sm787728wmo.33.2023.03.01.13.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 13:31:40 -0800 (PST)
Message-ID: <1ec9c450-3bb3-b6e9-b3f1-112869b62798@gmail.com>
Date:   Wed, 1 Mar 2023 22:31:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Jack Pearson <jack@pearson.onl>, linux-man@vger.kernel.org
References: <20230228234246.466811-1-jack@pearson.onl>
Cc:     Carlos O'Donell <carlos@redhat.com>,
        GNU C Library <libc-alpha@sourceware.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230228234246.466811-1-jack@pearson.onl>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oQpUd0DGFrAlcOJawCjhiYOu"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oQpUd0DGFrAlcOJawCjhiYOu
Content-Type: multipart/mixed; boundary="------------LsXoPxte1fWP6AWy9hSR0mAz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jack Pearson <jack@pearson.onl>, linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <1ec9c450-3bb3-b6e9-b3f1-112869b62798@gmail.com>
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
References: <20230228234246.466811-1-jack@pearson.onl>
In-Reply-To: <20230228234246.466811-1-jack@pearson.onl>

--------------LsXoPxte1fWP6AWy9hSR0mAz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jack,

On 3/1/23 00:42, Jack Pearson wrote:
> Document that Linux will report EINVAL when exit_signal is specified an=
d
> either CLONE_THREAD or CLONE_PARENT is specified.
>=20
> From clone3_args_valid in Linux:
> ```
> 	if ((kargs->flags & (CLONE_THREAD | CLONE_PARENT)) &&
> 	    kargs->exit_signal)
> 		return false;
> ```
>=20
> I have verified that this happens on my kernel with a small program:
>=20
> ```
> #include <stdio.h>
> #include <linux/sched.h>
> #include <signal.h>
> #include <sys/syscall.h>
> #include <unistd.h>
>=20
> int main() {
> 	struct clone_args ca =3D {
> 		.flags =3D CLONE_THREAD | CLONE_SIGHAND | CLONE_VM,
> 		.exit_signal =3D SIGCHLD, // comment me out to fix error
> 		.set_tid_size =3D 0,
> 	};
> 	syscall(SYS_clone3, &ca, sizeof(struct clone_args));
> 	perror("");
> }
> ```
>=20
> And I have verified that this doesn't happen with normal `clone` throug=
h
> the glibc helper:
>=20
> ```
> #define _GNU_SOURCE
>=20
> #include <sched.h>
> #include <signal.h>
> #include <stdio.h>
> #include <sys/mman.h>
>=20
> int do_nothing(void *_) { return 0; }
>=20
> int main() {
>         void *map =3D mmap(NULL, 0x10000, PROT_READ | PROT_WRITE,
> 	                 MAP_ANONYMOUS | MAP_PRIVATE, 0, 0);
> 	void *stack_top =3D map + 0x10000 - 1;
> 	clone(do_nothing, stack_top,
> 	      CLONE_THREAD | CLONE_VM | CLONE_SIGHAND | SIGCHLD, NULL);
> 	perror("");
> }
> ```
>=20
> Signed-off-by: Jack Pearson <jack@pearson.onl>
> ---
>  man2/clone.2 | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Patch applied.  Thanks!

Alex

>=20
> diff --git a/man2/clone.2 b/man2/clone.2
> index d63895189..be802a280 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -1436,6 +1436,16 @@ One of the PIDs specified in
>  .I set_tid
>  was an invalid.
>  .TP
> +.BR EINVAL " (" clone3 "() only)"
> +.\" commit 7f192e3cd316ba58c88dfa26796cf77789dd9872
> +.B CLONE_THREAD
> +or
> +.B CLONE_PARENT
> +was specified in the
> +.I flags
> +mask, but a signal was specified in
> +.I exit_signal.
> +.TP
>  .BR EINVAL " (AArch64 only, Linux 4.6 and earlier)"
>  .I stack
>  was not aligned to a 128-bit boundary.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------LsXoPxte1fWP6AWy9hSR0mAz--

--------------oQpUd0DGFrAlcOJawCjhiYOu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP/xDsACgkQnowa+77/
2zKQlhAAmtmiZH5Yo47tV+fsc0JdmIRu+S558H4zvc0NFlkPR+ZtLveat8A6yZ64
nEyN7KT5TgujJb4zDYzXc9PKj+YExKQzjM9G5YN6bKPa+ZxnyZZZLupSOH1ab7PH
Yt5aEl3gOfnfSKgZvjkpZjjgGA6vygxfUZD152x3AvRhqN8FtZ66hHkgSrHewgEU
vcEol/47xTtWi718UxyBqlcsfwgL7uVzkn/Rov08NJiwOAhI4o9uwyxAsdTkIzjf
S6dceAGMxsiFYUQX87LhbN7z2wARAP5HyVRALVLwDWQvwyTSEBTH8fIClzMuKwkw
7xqCPWEs7GMr9HuwX/DgA9/Np15/DhHUfttz87++cWv8eNrtQaaBsCh8Ehd3ucfF
A2RWvRJLFwFrUkZHExX4PXIMq+250YLORBM1tdx2hX1RZm4fC9+47cpBF9RDCUzh
RSa0oIYuvV9p5keJWk2ZaK+YM9TEIudyjoECg8TfPvWZrx0VfjoJHEBISCKerN58
ypYLxoZxAIu+SWPoT5PoI9vWQajZ9pvnpveIPD0p2tPxYlfvfK/8dfhb8reKpAPL
/1QayowejNn3hCSFmvP2ET2Sqb/PgbsDmlyhmI0tSpvRCl7lyvNWH1BFMFJTrw4A
1S7LMXTzcf/GCp9ahkaKe3YfuEGdcKXq38ytxZdCM5yqYNsU14w=
=Hr2+
-----END PGP SIGNATURE-----

--------------oQpUd0DGFrAlcOJawCjhiYOu--
