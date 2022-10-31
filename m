Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE77F6140BA
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 23:36:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiJaWg5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 18:36:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiJaWg4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 18:36:56 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A4D8140BE
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 15:36:55 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id z14so17933587wrn.7
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 15:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vEjSgeWMQji68Qmcjj/XjzwvW32jQ/JpihvEmEBkUTQ=;
        b=kuGciQqhJvV21onKd0my3VpZ1HSTkFsWMKIzcszu7B9OJo/nBNtItwtYlrT2Jo3G4c
         2U4iDlPf7ZOsBsE0QpWNu6WzQbigefhSuezjJ9Z9b9X4SHnHLHSIWkYGCX9LyAU6AOOg
         FHe8TMaxL+iI+I9523hErG2YHLprD4+TIpsf7pGo/IkKxU+ZSbbbLv6yYPwffoyy9IKW
         kRPVsGsgAd1TroFEbpvwLRR1jTZW0U0rn7quf48J1a7qCnJrmL1HU2EQ2BJsIoNRMx7k
         s0faajHmgHgU7fT8jseb2IBZtNAQyo9HgAzFgC8d3Hhh6qZTK0RCcrOGnRUWggYvuf7S
         cE/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vEjSgeWMQji68Qmcjj/XjzwvW32jQ/JpihvEmEBkUTQ=;
        b=8DmrPfrCIrUJQDnJICdMby5wiPDCjiMmF9FzDccieRjY9vtgIIdgDD/pWpe61+JtxU
         D8kFhyC6rwPJj8jQzV4O0h1NjrJOtV3uibuRe34XsBFqswMZBugc9dwQRk05JZnerBmw
         2i0Vacdkx1uudw1PiWoMZzznxwLRXOo4/UWSgVapPFyN0qnLdZRx2LEbS83Nakz1fKUZ
         x1xeCPdzPWF6uZEAckhOVbv1IkxMRFnmmHK+QNTpwXRWH8UMMB8sBRHDk++7Bw4H/c8D
         PZvXUnpdv7RZOVJudJKxUwA6r66Jtp3gQ4hSwPo/R0UwKrnKkePeyUvZfAmNIqbYF9mn
         V0vw==
X-Gm-Message-State: ACrzQf0cfCooCEVJZDxPbyLDWZb2nLuKk1gHslXRHJsP+cza8fY+QlQq
        fH0ssG0YBNPan/bMN28GJWU=
X-Google-Smtp-Source: AMsMyM5IiN35zf7G1azZXi4MCog1sKMbrGkMDDLhREHLw1O7A9XAOnqh/b5TtoYRR6Zhk+/qxlg+Bg==
X-Received: by 2002:adf:e549:0:b0:236:a16c:100 with SMTP id z9-20020adfe549000000b00236a16c0100mr9859971wrm.72.1667255813782;
        Mon, 31 Oct 2022 15:36:53 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m5-20020a05600c4f4500b003c83465ccbfsm6267533wmq.35.2022.10.31.15.36.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 15:36:53 -0700 (PDT)
Message-ID: <a70df30b-0602-ad30-07e6-46d539bd82f0@gmail.com>
Date:   Mon, 31 Oct 2022 23:36:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] madvise.2: srcfix
Content-Language: en-US
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
References: <20221031202311.83357-1-alx@kernel.org>
 <CAAa6QmTXH5+iuwxrcadKh1ciUTnHxr9Y4vLeSUXtuU__-F3suA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmTXH5+iuwxrcadKh1ciUTnHxr9Y4vLeSUXtuU__-F3suA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2RSsP8r6gp5OcOX2gtyG1lW2"
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
--------------2RSsP8r6gp5OcOX2gtyG1lW2
Content-Type: multipart/mixed; boundary="------------0fPjgPk2noKhozbjPmNnart3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Message-ID: <a70df30b-0602-ad30-07e6-46d539bd82f0@gmail.com>
Subject: Re: [PATCH] madvise.2: srcfix
References: <20221031202311.83357-1-alx@kernel.org>
 <CAAa6QmTXH5+iuwxrcadKh1ciUTnHxr9Y4vLeSUXtuU__-F3suA@mail.gmail.com>
In-Reply-To: <CAAa6QmTXH5+iuwxrcadKh1ciUTnHxr9Y4vLeSUXtuU__-F3suA@mail.gmail.com>

--------------0fPjgPk2noKhozbjPmNnart3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMzEvMjIgMjI6MjIsIFphY2ggTydLZWVmZSB3cm90ZToNCj4g
VGhhbmtzLCBBbGV4IQ0KPiANCj4gQWdhaW4sIGFwcHJlY2lhdGUgYWxsIHlvdXIgaGVscCBo
ZXJlIC0tIGhvcGVmdWxseSBpdCB3aWxsIHBsYXkNCj4gZGl2aWRlbmRzIHNvIGRvbid0IHJl
cGVhdCB0aGUgc2FtZSBtaXN0YWtlcyBpbiB0aGUgZnV0dXJlIQ0KDQpZdXAsIEkgZXhwZWN0
IHRoYXQgaXQgd2lsbCBwYXkgaXRzZWxmLg0KSXQgd2FzIGEgcGxlYXN1cmUgdG8gaGVscCEg
OikNCg0KQ2hlZXJzLA0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------0fPjgPk2noKhozbjPmNnart3--

--------------2RSsP8r6gp5OcOX2gtyG1lW2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNgTfsACgkQnowa+77/
2zL3FRAAmtQcedjAMf4HnxHuq5Eqje2kn733dPP0prZjjOKN7Mkky2VImXTR9/wp
IUMxvUaBSQl5m/7C6DJFuEAQKrA5bpf0sHYEDixi9hhRNyB9UEwRXU9HCluHYnBm
B6nJLRvDDM1ye3bot1ytiQ4suKC8WHV6tLJE1jnxuXWU4leNZKJXwTpYNAxjn1Gq
W1RIkd9uab1LkjMJvUpHry7ftwK5zMBqI9GwJer807re+EAhM9SsOlz5X3oi83kP
yjcS/t7oJv8PKyYCXMjNSLSNEHYuuGxVusqtXWjdSR2wnXRzKo5x/uWmMtvPhtsA
m78FaDu9rgV7C6oGrVTGchaNeKfP2x1qf5VILtfCkOzzYhbCwVOJ06TUs5s0L6ui
z/eM4xotp0DRcNQto8LVQOEqGM3gHH7Wfm29Q2061e2GfhCK9MLbmo4c/konZT5a
jjND3HJ+qULAyKuYq75klV8DN3FXCNMnDokfRQOOC8v4sW82Kf5hQ+NX3V/Rk/zz
+9eVuvw6pFHxgYZEkxNbRLBJsOSSutuFpE7qpC0xBnZT+ggqZLWWABjti/fh3fel
Q7E/eYYW1ozkzfK+hLGpE/3quufIiRnuPzhchI1A2Yo8BI7QR3IdFwM+/PpHUy90
g1fk/zCuLMlfsj4VvP0XJk0ybXlMLW5NG4fHviuc2A5YCFB6+8M=
=br0X
-----END PGP SIGNATURE-----

--------------2RSsP8r6gp5OcOX2gtyG1lW2--
