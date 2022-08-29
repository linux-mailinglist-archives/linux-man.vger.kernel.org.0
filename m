Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CE775A5747
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 00:54:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbiH2Wyo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 18:54:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiH2Wyn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 18:54:43 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8430C7E308
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:54:42 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id ay39-20020a05600c1e2700b003a5503a80cfso5186067wmb.2
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=r6il9SjDl3hwP7VIBbqcOrjnB0mKq0NNsuPSHFZldW4=;
        b=Rv76LFg48D9Tc/EI5XwInsnT9jpCY5H1EjH6POxSWfvFm2P5FzcVbERtPXOIyQHsLy
         tX4AAU3K5r2QQNsEoXvzYfUqo7eu2dOU9d4a3dWSBRyxtTyvIm8ThmTsjnrBsHbi4+pR
         NXfbcc8ijl8oh3KDlhOs/JsZbx89xwB36nWkYrWO913LRhJ11J1OpcEmxxyKiDsgQz3a
         ntw8jV25TNd6zyk3/zSHf4ObRjlrxuINYlfuB+940WOZCczmtOia6eTwYXKO6cjdWpTU
         fBYkenWOlvWnXrFcpv0Ldcuazj9N7C8Eac6/nUSLb9z0W+GElgq1yyWNK4QIk3RhrKTQ
         qC3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=r6il9SjDl3hwP7VIBbqcOrjnB0mKq0NNsuPSHFZldW4=;
        b=K8PdvLitb1IQcmOM9JgnpbzVUcqEGPCFsn0reREMEfYDvtgNi47QOs8sqjIRA4vP0b
         tG3aE0u+BIw2Rgl7RksYyNpWa8+OH+WLg6AIZfBGNAWaytMCaA1PGA/e2rZH7uXvWtEz
         ssXP7dGcJ+4ms9++efpVPZZWasMPdz3Y409U5rXGGDXUiVzKFzDMYx75AJrB2q/blo6J
         Q4w/NBWP+LpXDIIknVNKSv/3qbhyonw9s/PeiCEKpmr6cd5ZE0v0b/E7O+gE6Q7HZWMW
         YtAlBriOFVpegAD0Rr3DIrD2gzJJ4MKGTRAzx0s6WaifIQk12ZGBHk251Tv27mN53Peg
         i3Yg==
X-Gm-Message-State: ACgBeo0CrLdELtD/qNs8+1wzbk/taVnJIVnbZpRC5ZQV6GVlP4AzqKyu
        juxdqyD2rjdQ9FR+eZioXaU=
X-Google-Smtp-Source: AA6agR6ub6OGS9zms0m3g7uql/DsASa5RvW/2tDO0pX6iiz9VEykYssWIf5zvG+G3qyBg0+C1uAfNg==
X-Received: by 2002:a1c:f60f:0:b0:3a0:3e0c:1de1 with SMTP id w15-20020a1cf60f000000b003a03e0c1de1mr8085375wmc.56.1661813681132;
        Mon, 29 Aug 2022 15:54:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c18-20020adffb52000000b00225239d9265sm8166047wrs.74.2022.08.29.15.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 15:54:40 -0700 (PDT)
Message-ID: <fb006d7d-3174-cebf-d366-8e2aef784930@gmail.com>
Date:   Tue, 30 Aug 2022 00:54:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
 <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
 <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>
 <fd28f474-90a1-9f81-677d-f70ce604bd81@gmail.com>
 <20220829224836.yzjr4mz55vptvva3@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220829224836.yzjr4mz55vptvva3@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------H7ASUyGmXLnrmQ0spw4weY4n"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------H7ASUyGmXLnrmQ0spw4weY4n
Content-Type: multipart/mixed; boundary="------------GY8UhrrJb7XoFN9vFduZcISb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <fb006d7d-3174-cebf-d366-8e2aef784930@gmail.com>
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
 <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
 <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>
 <fd28f474-90a1-9f81-677d-f70ce604bd81@gmail.com>
 <20220829224836.yzjr4mz55vptvva3@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220829224836.yzjr4mz55vptvva3@tarta.nabijaczleweli.xyz>

--------------GY8UhrrJb7XoFN9vFduZcISb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8zMC8yMiAwMDo0OCwg0L3QsNCxIHdyb3RlOg0KPiBPbiBUdWUsIEF1ZyAzMCwgMjAy
MiBhdCAxMjozNjozN0FNICswMjAwLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IEkg
anVzdCByZWFsaXplZCB5b3UgZGlkbid0IHNpZ24gdGhlIHBhdGNoZXMuICBXaWxsIHNpZ24g
dGhlbSBvbiB5b3VyIGJlaGFsZg0KPj4gaWYgeW91IHdhbnQuDQo+IA0KPiBZZXMsIHBsZWFz
ZSA6KSBJIGZvcmdvciDwn5KADQo+IA0KPiDQvdCw0LENCg0KUGF0Y2ggc2V0IGFwcGxpZWQg
YW5kIHNpZ25lZC4NCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzL3NyYy9hbHgv
bGludXgvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvY29tbWl0Lz9pZD05NmY1NTQ2NGJjMjAw
NGNkOTg2ZTdlZTA5NzZmODdmZjBjODgyZTBkPg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0g
DQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------GY8UhrrJb7XoFN9vFduZcISb--

--------------H7ASUyGmXLnrmQ0spw4weY4n
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMNQ6gACgkQnowa+77/
2zIiPg//SHpYRtsCr00Z8QPV4FKyVnp3JUJZASekPzf9NVA1xH6FOGBFHQQhLWpP
ublxVkOV1DopD6g5w2LFN4lPHlYP+iBEjVhgVPdR7A0I+P3qqMVMsW5Y62yKdZ81
RBpNgjHCGa20pEFS4VAHdDIfGlQa8YvW2bLgHNzz3CFx4czvhAtGSNFhB+mvjBgH
Ou4sRbCRM+I/12zMmcWK/FDA1x0VPP2C/HSVMILSokzF9z5hFIKyY5rMi7wOnuD/
BSUaVvN94525hivQlAVr/Vv/mjHn1OuLZbmELXOKAAx+PAqapRB/D27EDs5d7CNj
Yas/Lrv6mCRsElEXtEASgB40mW2j9F6dV2/wTE/zUJ+KTrL2f+Qk7LSp7ZOZdUMf
twquVQX56h58q3iKsLWS7WiujBJR7YxH1Wg4QlDQhEr1xS2azDHylvgBwhWzZOn6
3W8x65raF7N57ejVf7lPosLhuM955niHYw3gwkpbIfUuCYl3Z5HSU2SI2oKUlfwm
bDpcfSPQd6PqVlXA1/1MTdoe/1q/0N4ExfV7Rl73+y/f8+iQjIh/87P4jNQ7ZCmV
dbC3ZwmnCq9TrypbzB+NJaeyLRzSWCCi0W5dthg+yFkO68A75WlFzM3Xs22lT3na
lxykJWzMGhA9mU5KFw268ODvQHvzJa0J1CukbretV9smgF1pAbk=
=e4Lp
-----END PGP SIGNATURE-----

--------------H7ASUyGmXLnrmQ0spw4weY4n--
