Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4458A55073A
	for <lists+linux-man@lfdr.de>; Sun, 19 Jun 2022 00:05:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231538AbiFRWEx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Jun 2022 18:04:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229715AbiFRWEw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Jun 2022 18:04:52 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBA3A12081
        for <linux-man@vger.kernel.org>; Sat, 18 Jun 2022 15:04:51 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id z9so3916456wmf.3
        for <linux-man@vger.kernel.org>; Sat, 18 Jun 2022 15:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=t3DSH96VB1sKRgVKHJolDZlFvtc8KVi5FyPsCWVu8Tk=;
        b=dlrzyYLepZRGSn8b/97QZ7m1DpIGbcqev9ZA3FpKqFNn0jyVDO0nnvh0dxsawJcSLi
         KLo5nEfmJ4VIVT8iBcDDRxI9t5kAglWRRmzKmHabzmON082M+YmXD1RT6f98VkwdHzlI
         e8gYgW3Nlq7xeloKeS8x7Y+U9/lbRK8s942WfHhhfT1+Pby9Sqx7hBPV2Vs5o9M0zJyg
         aN3hwOXcXur58yFvre0piTf0P7Sc6KveR+IchUypOaw1axvUBf3tisz8oMeRIy2QClIV
         mLXUfHKDB2ZrNVXGIfoK+ea1wlUgGzCvWajI8FrSIXWjAhM1L9HhskWAs4mFn2qWbLSd
         bIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=t3DSH96VB1sKRgVKHJolDZlFvtc8KVi5FyPsCWVu8Tk=;
        b=GPsXXuU+s/b33jAxdPo8erxysNemFvdXHBnuUs794kGJOdRf4vgS8mCbcBfDKoZKEI
         LCzqAeU5pImfJESSR9fgsnADOKBdky7bP62Dts/pxVBb4TwsCZSad8fTgHcAM5V5a/W5
         3iXLDsNNbh8NXyuY3HmpuZfrW/69p4AJFSrn0hAozmWOZR/PvY6DNDAEQNWrszqFUpOe
         wu8jr9n7I+0SlkIFvV4xy1LUjTri3Kna0iYjVTSBQPGgcaWnsuq5Vls6J+XDQNF4EcWZ
         51KJm39TiARcavIXMfWl6smXWFZ+f/z7SCIqi39K+A476fLX/sNB3a4d5q55McoHVoGi
         KEWQ==
X-Gm-Message-State: AJIora9MFqiSyt1lqdOxgkhMIdRa2+310nnxLv7pQmO8Q3KDVjgDqZy0
        vvgWHsg+ZgNmTj7cWKSQw1w=
X-Google-Smtp-Source: AGRyM1tkT5I4x2lHevLVbm94abbw06LmD62JIE9vxJZvO29ud157gTCVONZ/n+EVSV9zlGm4hji63g==
X-Received: by 2002:a7b:c310:0:b0:38c:f07a:e10d with SMTP id k16-20020a7bc310000000b0038cf07ae10dmr16975367wmj.110.1655589890469;
        Sat, 18 Jun 2022 15:04:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w5-20020a7bc105000000b003976fbfbf00sm9737218wmi.30.2022.06.18.15.04.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jun 2022 15:04:49 -0700 (PDT)
Message-ID: <3b9526a4-17af-c092-5ccc-7a851f73658c@gmail.com>
Date:   Sun, 19 Jun 2022 00:04:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Xu <peterx@redhat.com>
References: <20220610105141.16649-1-alx.manpages@gmail.com>
 <20220610122111.2k5jkzgo2k5odpbf@illithid>
 <75b9d903-74ce-9bbc-45d9-4e890cefeff2@gmail.com>
 <20220618155803.pvmpv3t3c4v2ygzo@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220618155803.pvmpv3t3c4v2ygzo@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OSp7UWrcFgRwDicCuEkGRIRx"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OSp7UWrcFgRwDicCuEkGRIRx
Content-Type: multipart/mixed; boundary="------------y0wjXeCH6EvwT9Ii7j3qOEVK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Peter Xu <peterx@redhat.com>
Message-ID: <3b9526a4-17af-c092-5ccc-7a851f73658c@gmail.com>
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
References: <20220610105141.16649-1-alx.manpages@gmail.com>
 <20220610122111.2k5jkzgo2k5odpbf@illithid>
 <75b9d903-74ce-9bbc-45d9-4e890cefeff2@gmail.com>
 <20220618155803.pvmpv3t3c4v2ygzo@illithid>
In-Reply-To: <20220618155803.pvmpv3t3c4v2ygzo@illithid>

--------------y0wjXeCH6EvwT9Ii7j3qOEVK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gNi8xOC8yMiAxNzo1OCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSGkgQWxleCwNCj4gDQo+IEF0IDIwMjItMDYtMTBUMTY6Mzc6MTgrMDIwMCwg
QWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBCVFcsIGlzIHRoZSBbMm5kIGVkLiwgQldL
XSB0aGluZ3kgY29ycmVjdD8gIEkgZGlkIGl0IGZyb20gbWVtb3J5Lg0KDQpPaCwgSSBqdXN0
IG1lYW50IGlmIHRoZSBzdHlsZSAodGhlIGJyYWNrZXRzLCB0aGUgY29tbWEpIHdhcyBjb3Jy
ZWN0IGZvciANCnJlZmVyZW5jZXMgbGlrZSB0aGlzLiAgWW91IHByb2JhYmx5IGhhdmUgbXVj
aCBtb3JlIGV4cGVyaWVuY2UgcXVvdGluZyANCnRoYW4gSSBkby4NCg0KPiANCj4gWWVzLiAg
VGhlIG9yaWdpbiBvZiB0aGlzIGRvY3VtZW50IGlzIHRoZSBVbml4IFByb2dyYW1tZXIncyBN
YW51YWwgZm9yDQo+IHRoZSBWZXJzaW9uIDcgcmVsZWFzZSAoMTk3OSkuICBUaGUgbWFudWFs
IHdhcyBwdWJsaXNoZWQgaW4gdHdvIHZvbHVtZXM6DQo+IHZvbHVtZSAxIHdhcyBhIGNvbXBp
bGF0aW9uIG9mIGFsbCB0aGUgbWFuIHBhZ2VzLCBhbmQgdm9sdW1lIDIgd2FzIGENCj4gY29t
cGlsYXRpb24gb2Ygd2hpdGVwYXBlcnMgKGFsbCwgb3IgbmVhcmx5IGFsbCwgY29tcG9zZWQg
dXNpbmcgdGhlICJtcyINCj4gbWFjcm8gcGFja2FnZSkuDQo+IA0KPiAiVU5JWCBmb3IgQmVn
aW5uZXJzLS1TZWNvbmQgRWRpdGlvbiIgYXBwZWFyZWQgZWFybHkgaW4gdm9sdW1lIDIuICAo
QVQmVA0KPiBsYXd5ZXJzIGluc2lzdGVkIG9uIHRoZSBmdWxsIGNhcGl0YWxpemF0aW9uLCBi
dXQgc2V2ZXJhbCBNdXJyYXkgSGlsbA0KPiBCZWxsIExhYnMgdmV0ZXJhbnMgaGF2ZSBnb25l
IG9uIHJlY29yZCBhcyBwcmVmZXJyaW5nICJVbml4IiB0byBiZQ0KPiBzcGVsbGVkIGluIG1p
eGVkIGNhc2UgYXMgYW4gb3JkaW5hcnkgcHJvcGVyIG5vdW4uKQ0KPiANCj4gU29tZSBjb3Bp
ZXMgb2YgdGhpcyBkb2N1bWVudCBvbiB0aGUgSW50ZXJuZXQgaGF2ZSBiZWVuIHJlLXR5cGVz
ZXQsIGFuZA0KPiBzb21lIG9mIHRoZW0gaGF2ZSBtaXNsZWFkaW5nIGRhdGVzIGR1ZSB0byBh
IHRlY2huaWNhbCBkZXRhaWwgb2YgbXMoNykNCj4gdXNhZ2UuICBUaGUgZGF0ZSBvbiB0aGUg
Y29weSB0aGF0IHdhcyB0eXBlc2V0IGZvciB0aGUgcHVibGlzaGVkIG1hbnVhbA0KPiBpcyAi
T2N0b2JlciAyLCAxOTc4Ii4NCg0KQnV0IHRoYW5rcyBmb3IgdGhlIGludGVyZXN0aW5nIGhp
c3RvcnkgY2xhc3MhIDopDQoNCkFuZCwgY29uc2lkZXJpbmcgdGhhdCBCZWxsIExhYnMgdmV0
ZXJhbnMgcHJlZmVyIFVuaXggb3ZlciBVTklYLCBJJ2xsIA0Kc3RhcnQgdXNpbmcgVW5peCAo
aXQncyB0aGVpciB0aGluZ3ksIGFmdGVyIGFsbCkuDQoNCkNoZWVycywNCg0KQWxleA0KDQot
LSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------y0wjXeCH6EvwT9Ii7j3qOEVK--

--------------OSp7UWrcFgRwDicCuEkGRIRx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKuTAAACgkQnowa+77/
2zK54A/+KgAlqSbrYBdNtK/dj2D+rFNm4En96wpmbEuhJZSs0qaNRAx8boYc1iOf
HarCs/Xnl253zJA3sl0ntedM8zdkYshOwT+IxQoKf0lwtUFKBs2uecjNnB61L+bn
qcPtlfT0WF8TJma4adEzNdNKsd91WTwopmSyBsfDXi/CgdrQdL72mUJzlAc+RSMf
7q9CW9GJJ1GwMpaHLOHm7l4jSVKEYvKyGN9VagQ77vCdS5Fo7iH2UpRo912OBXHx
AjLio6UffhG341dYCe9KADMVgihlZrAgwvTLMVNlOpA/HT4xly3bL5I8fTGxgw/k
En01juqplJCMSXCVK+xipDXSF1En2H5pPtLx2ManvFGXZ7UPGd/DTqIITgUu9+Xs
xCiw2k+/OcJBZPqHAnXbAXfAfujqrUJbFkZY1sCiewoVRZ9Zo68I0gkA121VVuN0
PobUSTAOi6szJGz3TIG3pEJONQh+/mXjAJBFfflRoGsM6Skmrami7kKBDRN3vOD3
oZShslzMqO++5JRphdYoQhkAfiY38uLv6xDN1wZgfuc3LrpaTzzVwrisxj8GpEvS
IUfUFVWublHS39lLWTdQTQKTDPzfpGMo2e0FHNiM2HIqMPsvKWJxEfM8CZZdky6g
LB9KFoC2g7Llzcw81WvnviY0+QxRE+HeIf0Dp8UcOMyWo85nayo=
=gHDQ
-----END PGP SIGNATURE-----

--------------OSp7UWrcFgRwDicCuEkGRIRx--
