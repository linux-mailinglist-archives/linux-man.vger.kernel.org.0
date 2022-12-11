Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F525649494
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 15:01:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbiLKOBN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 09:01:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiLKOBM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 09:01:12 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0D04DF68
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 06:01:10 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id co23so9521922wrb.4
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 06:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4PYek5le1eQxGCcr8FpNnfMCwZq0JXp5PmnXH7dRs7k=;
        b=HhIgQbzcGRSNOj+bLwggHGbztrVg0Qpg0xfg2xLpvgdsA4j1lWJzqIFmr7VqlfQbVu
         KsQZzPklTs52B3eH5DVT4utHxpkdPTfij5ufhJh//E8cv8EsprS4l8otG/kb0M2uAfpf
         Zbip7NoOy2kxB2oLIfFYxmh9KtVe+UrPYqn8jJ+ks74G9iRTUNVkVGTDIsYcXzPKZAEG
         daruQ99KltrTDibW7glRp+l24uwJnC4CM9xYYl1DLy95tuwIFL2Q1VSiydIn/UMZvakd
         LnlamibiiBD+0odv0kwvjBYeHv5kj6rLktSJG9jmyN0e+yQgqT4QNm016rsnqV0CzDST
         pU9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4PYek5le1eQxGCcr8FpNnfMCwZq0JXp5PmnXH7dRs7k=;
        b=IFfSmEfav5y8ozSSE84TSt/ygLY4U3VY43989ZSe2D8ZyyeEgS2My7s00D/NpOARXK
         mhs1M0Wnd3Dqa8x74Pmtk5JqR0YyowcELQpEs9k6rNlpbJtluRyCmpHMN8V1b+7fcta+
         WJ412KayD5iz3MDZCvTdBUo0juZGHIKJv0CqLfaih5uMvpScZf9WEe2Tq+kxHw9cyau2
         oeb1R9beV3Q1aw06Mv7VPoM2SuUlOl2RwCs5EWrtYDUXv9ik+zEChsXva0a6+8InSK3c
         yyApNyrrWd+OGTwJTsK8FbM79COA5S/nX1JpUvo7rnzz8J44SXdJuL8eaMt5J+4O07v8
         huoA==
X-Gm-Message-State: ANoB5pnFzLFFCTE9HInEr/sb0ICk2HWyFPoFkzzxPjqE9fgaZncisMgr
        8CN0edQFjyhLu0xyCZBP5Hc=
X-Google-Smtp-Source: AA0mqf5k0iYW8Eds3OKSypBota71/mn4QStAg1L2O8FtXKZDydKNOdSqtRmof0MQ88zkrNXcpwR6qA==
X-Received: by 2002:a5d:414d:0:b0:242:864e:c71c with SMTP id c13-20020a5d414d000000b00242864ec71cmr8075773wrq.24.1670767269446;
        Sun, 11 Dec 2022 06:01:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g14-20020adffc8e000000b002421ed1d8c8sm6215122wrr.103.2022.12.11.06.01.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 06:01:08 -0800 (PST)
Message-ID: <9abab3e2-a1f8-8aa8-dcfe-b1cffe990f59@gmail.com>
Date:   Sun, 11 Dec 2022 15:01:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] socket.7: be explicit that connect(2) respects SO_*TIMEO
Content-Language: en-US
To:     Luis Javier Merino <ninjalj@gmail.com>
Cc:     Tycho Andersen <tycho@tycho.pizza>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20221128205837.2408050-1-tycho@tycho.pizza>
 <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
 <CABjvSdjC93Bdi_1Vmy7r4eJTQrKx0B_A-=247RYLJeMcJbn42Q@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CABjvSdjC93Bdi_1Vmy7r4eJTQrKx0B_A-=247RYLJeMcJbn42Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------W9okhjI7TGVCICLIqYrloevV"
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
--------------W9okhjI7TGVCICLIqYrloevV
Content-Type: multipart/mixed; boundary="------------FxW3E58lh4K74q3Ca10AXmPM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Luis Javier Merino <ninjalj@gmail.com>
Cc: Tycho Andersen <tycho@tycho.pizza>, Alejandro Colomar <alx@kernel.org>,
 linux-man@vger.kernel.org
Message-ID: <9abab3e2-a1f8-8aa8-dcfe-b1cffe990f59@gmail.com>
Subject: Re: [PATCH] socket.7: be explicit that connect(2) respects SO_*TIMEO
References: <20221128205837.2408050-1-tycho@tycho.pizza>
 <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
 <CABjvSdjC93Bdi_1Vmy7r4eJTQrKx0B_A-=247RYLJeMcJbn42Q@mail.gmail.com>
In-Reply-To: <CABjvSdjC93Bdi_1Vmy7r4eJTQrKx0B_A-=247RYLJeMcJbn42Q@mail.gmail.com>

--------------FxW3E58lh4K74q3Ca10AXmPM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTHVpcywNCg0KT24gMTIvMTAvMjIgMDA6NTEsIEx1aXMgSmF2aWVyIE1lcmlubyB3cm90
ZToNCj4gTm90ZSB0aGF0IGFjY2VwdCgyKSBpcyBhbHNvIGFmZmVjdGVkIGJ5IFNPX1JDVlRJ
TUVPLCBhdCBsZWFzdCBvbiBMaW51eC4NCj4gDQo+IFNlZToNCj4gDQo+IGh0dHBzOi8vc3Rh
Y2tvdmVyZmxvdy5jb20vcXVlc3Rpb25zLzU5NjgxMjEvZG9lcy1zby1yY3Z0aW1lby1hZmZl
Y3QtYWNjZXB0DQoNClRoYW5rcyEgIEkgcGF0Y2hlZCB0aGUgcGFnZS4NCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------FxW3E58lh4K74q3Ca10AXmPM--

--------------W9okhjI7TGVCICLIqYrloevV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOV4qMACgkQnowa+77/
2zK9nQ/9E5be9M7BZ7wHWigJdvQWABIhgs5HEAEEP4AVkKhiD2SVcU92yXWqwYrQ
AgAQUDY93ATmB2I1TW/AJJ+RsFs/dZYL/4A3DRtT5ORuCrD+mad/7JRshoRcpfzX
W0aY0jxaYzwJYRvddXWhywxH4uWGpy3YCLaD7O2Nbp31iMByJrcd8uYsqbolguAs
9n97vP1B67k4qGz2OcUF20ITfTo7WXU2I7WcF8+MIoYBeDgTeiTVdqaWvGI5pPj3
TysY9UOz/eeStr6S1gY+8s5yjE+ijs3l0MpDbA+HNtQeeTkqWCzYmp7jhGrEEDPR
V0/fn+hOjkvdTIRJ0uThCziWtva/sTGL7os3TOhBYiKRpJw5NWZmg5uLQr/9eBu6
JD/sqMqscV9Jof16+H9KhyZt5h7hkXMkUK8mQF4LX5TyHEMNToxNQLE/RM4SwzDb
X/QAPT3jC1q8fUj9nDYuUqektHGJubM8+QCYan7sX5PlqLWFaEe2JrI26C3Xz+DE
EBYdvw3xGAXI6GeAWBgNpkYYI0qC1BikfTRz0Doofx2Op2+XHH/GS9Shv5lk0o4x
/XaBAHdui2uk7YTH5agBE47lbmrj7RiujnMZddRIj5lsZA5XO2mhATBA8IwY97AK
15mpsq90IA19Bv2pUtAUYOM4bG/OmsnpKPaCtOzJxIbu2C0aHQg=
=L2LD
-----END PGP SIGNATURE-----

--------------W9okhjI7TGVCICLIqYrloevV--
