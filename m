Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56E7D6BC388
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 03:00:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229599AbjCPCAo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 22:00:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjCPCAl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 22:00:41 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76824AFB98
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 19:00:39 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id o7so140548wrg.5
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 19:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678932038;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fphk7FPw+tsMNsCPLhWW1N0lEeRh45c/o0UrM9RW6o4=;
        b=hMzlj6XLD/d5PvVrz7+aKLDLyHHPaQur45MVkOgkylYpRIrK9aOtjOSO6UWT06xp0/
         AJHlKp8ClKbHdjKH3wSeb2nHinZ5AEOd1nZCHahyqK+Zx2tWy50T+zrr5YEkco5MUrSG
         vd8/RamdRSc92Pha/mOF2NUbEATZtnxg30QZVcs3WIvIMPU1AwOEjE885Z7GGy+wh13w
         g5MhhYwTGirg5wA8A4sv9xCmfQxcVBnB6h3MYGE0FIvL0rcwEX/VD8zTmMRlzg0hC33d
         5iz5r4nf/i/h5+Tmthg/9ydpcUBEXeik5fvxy9k6BMWZBFzeHmmKStPd8Nme0vqeqCw8
         9NwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678932038;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fphk7FPw+tsMNsCPLhWW1N0lEeRh45c/o0UrM9RW6o4=;
        b=KphRc7byULWq7qCfnxO8t4YIju166wUvJWOh8evwjUt885S2WvN7TOAdOp8olruIlM
         6fYotO+6sBeAVds2X/dtWp+TzXEYmK80sA8kLWkR+m4tuwn6PaxQFoEdmhs5ce15lOT5
         61EFp7bDgvWUdq/l2dMnryt9yeEahkaHnUPJPDUJ0f1S8eYXsTszddk50DkLgGP/kRFa
         QGn0XY5ovH4VMEo8v1BDwgp5b9lvm8HNrOExZ3mQj8GzPnpZwupRDgluJH/PTOyMNhHY
         iZ4Blt/2lE9UXI41PTv2f2REuG0N9rXBf7ypyIN0q/sxkDru4xEBffMbpTGcfWxUBF89
         dL8g==
X-Gm-Message-State: AO0yUKVJCoJZbUQ5Y1IVaJNlWngD8pizDFZlfv+GsNfWeM0Bn1T4J3Qm
        64dOET/EXFpsWVK2Yk/cjtv4PfVAuaU=
X-Google-Smtp-Source: AK7set9J2UHAabz2AHWCk0gNutUFEYjQcdjuU5NGLc1Jg7HrDceQPUy0xm068KUU3j93uz7QIZ3XoA==
X-Received: by 2002:a5d:5232:0:b0:2cf:e827:b597 with SMTP id i18-20020a5d5232000000b002cfe827b597mr3658889wra.10.1678932037775;
        Wed, 15 Mar 2023 19:00:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id j28-20020a5d6e5c000000b002cfef4cfdfbsm4735056wrz.115.2023.03.15.19.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 19:00:37 -0700 (PDT)
Message-ID: <9c3dba5f-b71b-b577-5914-b3d5eadf42c2@gmail.com>
Date:   Thu, 16 Mar 2023 03:00:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: .txt draft C standards
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     JeanHeyd Meneide <wg14@soasis.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>, nsz@port70.net,
        mnagy@port70.net
References: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
In-Reply-To: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UU56HUnElZo8tut2MrVZ6edl"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UU56HUnElZo8tut2MrVZ6edl
Content-Type: multipart/mixed; boundary="------------7DhQvMt87QzrxZv8U8MS1i7p";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: JeanHeyd Meneide <wg14@soasis.org>
Cc: linux-man <linux-man@vger.kernel.org>,
 Oskari Pirhonen <xxc3ncoredxx@gmail.com>, Brian Inglis
 <Brian.Inglis@Shaw.ca>, Matt Jolly <Matt.Jolly@footclan.ninja>,
 nsz@port70.net, mnagy@port70.net
Message-ID: <9c3dba5f-b71b-b577-5914-b3d5eadf42c2@gmail.com>
Subject: Re: .txt draft C standards
References: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
In-Reply-To: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>

--------------7DhQvMt87QzrxZv8U8MS1i7p
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi JeanHeyd!

I'd like to ask you too about this.  You can read the entire thread in
the Linux man-pages mailing list:
<https://lore.kernel.org/linux-man/ebd2141a-c535-6288-1f2b-497bed043880@g=
mail.com/T/>.

What license applies to the drafts of the standard?  I've seen drafts
published in many sites, but I'm not sure if that's correct or not.  I'd
like to redistribute the drafts of the C standards in plain-text version
(probably autogenerated from the PDF), because I find them very useful
for my work in the man pages.

We discussed recently that being able to grep(1) for function
declarations is quite nice, as in:

$ ./stdc89 gets
         char *gets(char *s);
$ ./stdc89 printf
         int printf(const char *format, ...);
$ ./stdc89 asm
         asm (  character-string-literal );

Do you know what we can do legally?  The plan is to at least ship the
drafts in a package that distros would install somewhere like
</usr/share/doc/c/{c89,c99,c11,c23}/>, and we could also ship some
scripts that grep declarations in them.

Another related thread:
<https://lore.kernel.org/linux-man/b73a9636-1a17-36f3-3718-d9ca3b9293ed@g=
mail.com/T/#m9e2b93ad9926a45b6f0b0cfed9376e1d7bab6a59>

Kind regards,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------7DhQvMt87QzrxZv8U8MS1i7p--

--------------UU56HUnElZo8tut2MrVZ6edl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQSeDwACgkQnowa+77/
2zJb+w//UDyyCyGHQzjWECdUNSaQXG2GMRDJM123RxHjYDNu/mmQRkjk2A9sq3w8
sfJNMQu2DclHe9nFgKra9SMltRtVmz2GElMmReEfFlCrEz2Mhnnip+mX4IWR71Jg
IoQM6QCynHMSQofQZCDNrb4chag/kyJbhGQtRZyIjrEJU4bRSMuF/XS08QgK2/G2
HMxn2iVG7imqjvlurFZprFmE3sMnDP23FKELk7DqgS4ZSiiKdw6v9TniWpq5cqUW
6uLyu67mDNYqKBcswcYrPlbEMusC5/2O+lM0yCjoS61nhHrr+buxvWfbZz74QKyW
0KqT+5byjRRCith+AM31uEUOGJnO43K6leGCx0A2R0cIUMdpR/silz72IYgcNNAi
BCl+aTjyCxafYotKM/zKyjyL4FGkKc+OaPY61eJs5aG4G1QvgzLmUGRxWcfY0/zH
g6dO+uT6MYNkj90p83WttAnPlhS7WsotfbMgv5rMqMMk4hnxDENjXSJfGyn6NFca
+RxYRP1p2hHOBzTPeeyeBOOmgLZKwMAy4c+ce8evBKprv5UwaQYW7EBrw6+gXeD+
Ca12I81zJLervfafdm2v6vlHv0oMTrh7dkpsjDIt/QAL1wb7WcUb05al50FzmYwX
7Tdn9M2SLbp6QzYmT1sFaEIc7YWNSYk1y4vXE5aX5R5agmfh4qk=
=X2ap
-----END PGP SIGNATURE-----

--------------UU56HUnElZo8tut2MrVZ6edl--
