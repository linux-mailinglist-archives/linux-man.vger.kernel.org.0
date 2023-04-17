Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A2106E5033
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 20:29:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbjDQS3z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 14:29:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbjDQS3y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 14:29:54 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 809BF8A72
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:29:37 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so1688523wmr.2
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681756176; x=1684348176;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJgdd4hHrd1goSi58qtu5V3xLcFdexP2JqdhyGmgsOM=;
        b=TpFDxFpghNvNVjLz6AwnNPvpbiwHGdMG7s5DVgiWdUpXE3YH0n+ox6G0ImSMdbrvq5
         ZdAybgGAWpOOrrRMJUVSxNixpLtdLj9BRrBZwxGzw3mv3SgpnNBpqR1ypt7Gb7mPg8Ps
         oOb9sWX5D9GgTdiDdZM/zguGE620esFzcMoQe5Xn6Iw4EbFPv/2wyIFzw1Cr8ot17h3T
         KKim4MCTCILwRBOHmjygl7SHN216JN7wcSisqS82KufhdW0k9PEhcpLkSbD76ibN5Gao
         CNxwVJ/GisbFHiXrGBrPVvP/Cgg3VercZ3AdnKm+A8AgxgUsNjko/yb8cLyR+CTPpf2O
         9SsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681756176; x=1684348176;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lJgdd4hHrd1goSi58qtu5V3xLcFdexP2JqdhyGmgsOM=;
        b=d0Dm0X3YWqO9vdgcQMAx9QGVLVZqDU2RnSZSav+5ebc4J8cxqhqOaS5JeASl0mLlHZ
         MeE2Myg4z/6ljDZ7+OwRNbIJpuB1EvMAWs/BlGEoMVTCwSlqq/Nj4iTB1Cw3KikQpjhW
         xkqmm4AxU0hWW7WtZK4FiF5IwI2Y92f1Q9rxHHWj/53ZeXLNYoZ7X00UQoNfWeoPGWv8
         X81gzQmdWSBQpjF4m6sYE/FgxZGkWKlos3ZOzcBPD0PGujkXTGoFhUWe0QAvxtLu8jcl
         mXaTolxEn0V1Oloes6QxTzbZipmwpI8nf+bK//257yJpecHLCHbcvEqFBOFA10tVMOFb
         t40w==
X-Gm-Message-State: AAQBX9e4wYVIwxcNTdVS7Ox3DahwVtwOspC4kxV1ThT9mHbPFiyntfvc
        j76y6/LbfsxOXe+zEZFZzB4=
X-Google-Smtp-Source: AKy350YzouPFtnLgy+zYkUF4ocplWb4DQbK91afJYwB2bR5bkKcNtS/z562ARIumDJZuJ0mDeXf08Q==
X-Received: by 2002:a05:600c:ac9:b0:3f1:6f57:6fd1 with SMTP id c9-20020a05600c0ac900b003f16f576fd1mr5195425wmr.9.1681756175695;
        Mon, 17 Apr 2023 11:29:35 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s9-20020a05600c45c900b003f09d51a4edsm16535640wmo.48.2023.04.17.11.29.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 11:29:35 -0700 (PDT)
Message-ID: <ca9eac92-8339-bde7-9f6e-601cd6765151@gmail.com>
Date:   Mon, 17 Apr 2023 20:29:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 4/4] proc.5: tfix
Content-Language: en-US
To:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-5-guillem@hadrons.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230416233552.283776-5-guillem@hadrons.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ALa9glLYPoJotw8UfPUluCGe"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ALa9glLYPoJotw8UfPUluCGe
Content-Type: multipart/mixed; boundary="------------BcdWWyu00Jpn1IrucUkuL2O3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Guillem Jover <guillem@hadrons.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <ca9eac92-8339-bde7-9f6e-601cd6765151@gmail.com>
Subject: Re: [PATCH 4/4] proc.5: tfix
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-5-guillem@hadrons.org>
In-Reply-To: <20230416233552.283776-5-guillem@hadrons.org>

--------------BcdWWyu00Jpn1IrucUkuL2O3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Guillem,

On 4/17/23 01:35, Guillem Jover wrote:
> Use Ctrl-Alt-Del instead of ctrl-alt-del, as used in all other
> instances.
>=20
> Signed-off-by: Guillem Jover <guillem@hadrons.org>

Patch applied; thanks!

Cheers,
Alex

> ---
>  man5/proc.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index a3b5ffc7b..535bbc61b 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -5001,7 +5001,7 @@ When the value is greater than zero, Linux's reac=
tion to a Vulcan
>  Nerve Pinch (tm) will be an immediate reboot, without even
>  syncing its dirty buffers.
>  Note: when a program (like dosemu) has the keyboard in "raw"
> -mode, the ctrl-alt-del is intercepted by the program before it
> +mode, the Ctrl-Alt-Del is intercepted by the program before it
>  ever reaches the kernel tty layer, and it's up to the program
>  to decide what to do with it.
>  .TP

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------BcdWWyu00Jpn1IrucUkuL2O3--

--------------ALa9glLYPoJotw8UfPUluCGe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9kA4ACgkQnowa+77/
2zL3RxAAmOZ995tVep9UB4GsUahSQNaAsotHbgTvRFeQRDCMqvZjxTUecmNYtk15
GRuWVoRxSSQxcxlf84iNmX49rAGx/MBHNbj1b2cCqF90ZIk9fwfd8upEQzcZoh0v
LYBDGI7Z0VRBjG7z5ivRN0HvBAKpxzZI7TMBFQvOAVD90eIqoiQe31woAGhGKZQj
61B1IFJ2pKygLvLrd9B7UxGwgiZ03I1FOjq0zomeMzfFHWpHQIE+2CfeZwPCVeRx
PjQ5Aga6jJYFhCI9VjZAplfpW3bk3eoSgDfxWjpsbj0EtbPyu2hQHjyfUvM4+ApZ
zWJq07mF6/0JjlrR7tuUaBxOX6hGTTEfzZVuuqvF1zMb84vFTmy0DVKGNTQniin6
Qug2mElRpTNvlIVoV6aXbEMvuK641gsrnEeoQBO/g6Xl6V58i8JNIQPEqDQzOa49
qUYbVpxjeM/GJFeaWn4terJnDIgahYsDy90UGjJFhDkYu/6RIx9xt7EQKGpdk99l
3Fbwa2qRmPpIiZIK54awuJgSU98ZWO6dPkdG0ACz7CWmyKEeelbvwhdcMrlEHmWJ
qVktshPHVAhUk4sVR7ALGP+k5kUIR3esLCsFqsBnA+4TSltUUho+drAD0wVygRv1
Z9H15KoeQpIpNtLeb9sm+G6H6bx3GdfkZnzOj/PZZWlpAx9F7EY=
=IxOc
-----END PGP SIGNATURE-----

--------------ALa9glLYPoJotw8UfPUluCGe--
