Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0848055110C
	for <lists+linux-man@lfdr.de>; Mon, 20 Jun 2022 09:12:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235909AbiFTHM2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jun 2022 03:12:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239146AbiFTHMZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jun 2022 03:12:25 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10288E099
        for <linux-man@vger.kernel.org>; Mon, 20 Jun 2022 00:12:24 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id i10so9528948wrc.0
        for <linux-man@vger.kernel.org>; Mon, 20 Jun 2022 00:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=QdbgURTQmmeW93gMDcCEP8W8jjplszKoOsL11qWih+w=;
        b=ipt5QXs1D5MHLjHRUGBTGCdYkwNpH+drnJIGkPE40s5R9OYweGcQO9g7B0vfpJdX67
         9v4vuh6ZkuWg1zfQQ55B1fraPbFpMPoySQ+yTm4/yHZiFP7lwa1HRG8TeRzF1YT7rMcp
         bO4XEcLFicHmxymDXNWUmeS9ccYhWP07t48kzC6XibkYlT0moYrBVcM3YJkq0Ou4Til+
         E1Sg2rdxFwp83i5xfah6HjZbsMMi4ChdMClcw+iL3cMmNUKSDDx+o0iD3kNAvA/wpfpx
         04NtMB8GGZ08j4SqQ/xKIWGEff785LfjuDCGYTod1s3ees7bFXxVF14KyTLr/l9ygXJC
         hPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=QdbgURTQmmeW93gMDcCEP8W8jjplszKoOsL11qWih+w=;
        b=YxywUjXB34VvCHXwEqNIJTsd+tBvmB65PFpsDz0AI68LnZbq7CNCzDeIdze3GbQ5rf
         KlvTiTsaqPHiIweVBZVLv+SoUZR983k0b01n8+r8Xm/fAccLUq5W1ARFD2FM03We32oc
         rf4fOFsMRTfV7gfRdeTC+HDywIxhn+PD7bd4esM4gMTAE1ZGuo/ZeuRMLE6NlGqAEe5g
         Y2Y0DTHCDTFA/GWj/f1GQKardsuhN1lqai1ScFWAWcrUBL2BtJZIWQqpuzCaa+oyoYKS
         qznGA+r38voS07VaNs74ftx9k9di2tcVloLTbBPUGuK/FbIdhFLGeEhj44odP8ehnZRo
         zXBA==
X-Gm-Message-State: AJIora/TEGDNhCocvgl2DCbj2OSDLnnSeov+U39YzZEb8V4BPtHBTzxy
        Uv6ojPLyoXMaMkgDz2gADBpqJYe9luk=
X-Google-Smtp-Source: AGRyM1v5Qr9Bjtyx63UP9Ld+z+4viTP7HeFWMglw/Byia4X1HVufzXOUqEOqzZA+7EzuDTKo+MI8TA==
X-Received: by 2002:a5d:59a5:0:b0:218:3ffb:e6ea with SMTP id p5-20020a5d59a5000000b002183ffbe6eamr21686374wrr.715.1655709142597;
        Mon, 20 Jun 2022 00:12:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n8-20020a5d4c48000000b0021b8213fa3bsm8554615wrt.19.2022.06.20.00.12.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 00:12:21 -0700 (PDT)
Message-ID: <d6f23937-2632-ece9-d540-2e711f2a9578@gmail.com>
Date:   Mon, 20 Jun 2022 09:12:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2] environ.7: align PWD with the standard
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
 <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------L70jLbncm20KRFSlE9oQY4TX"
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
--------------L70jLbncm20KRFSlE9oQY4TX
Content-Type: multipart/mixed; boundary="------------Mw0gCAVUFQyjjU0a0iCDERXo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <d6f23937-2632-ece9-d540-2e711f2a9578@gmail.com>
Subject: Re: [PATCH v2] environ.7: align PWD with the standard
References: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
 <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>

--------------Mw0gCAVUFQyjjU0a0iCDERXo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8yMC8yMiAwMTozOSwg0L3QsNCxIHdyb3RlOg0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVs
ZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0K
DQpPaCwgSSBsaWtlZCB0aGUgY29tbWl0IG1zZyA6KA0KUGxlYXNlLCBhZGQgaXQgYmFjayA6
KQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW43L2Vudmlyb24uNyB8IDgg
KysrKysrLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjcvZW52aXJvbi43IGIvbWFuNy9lbnZp
cm9uLjcNCj4gaW5kZXggMDE5YzVhMjVhLi4yNDQ0NmM3MDkgMTAwNjQ0DQo+IC0tLSBhL21h
bjcvZW52aXJvbi43DQo+ICsrKyBiL21hbjcvZW52aXJvbi43DQo+IEBAIC0xNTgsOCArMTU4
LDEyIEBAIHVzZWQgYnkNCj4gICB0byBmaW5kIG1hbnVhbCBwYWdlcywgYW5kIHNvIG9uLg0K
PiAgIC5UUA0KPiAgIC5CIFBXRA0KPiAtVGhlIGN1cnJlbnQgd29ya2luZyBkaXJlY3Rvcnku
DQo+IC1TZXQgYnkgc29tZSBzaGVsbHMuDQo+ICtBYnNvbHV0ZSBwYXRoIHRvIHRoZSBjdXJy
ZW50IHdvcmtpbmcgZGlyZWN0b3J5Ow0KPiArcmVxdWlyZWQgdG8gYmUgcGFydGlhbGx5IGNh
bm9uaWNhbCAobm8NCj4gKy5JIC5cJg0KPiArb3INCj4gKy5JIC4uXCYNCj4gK2NvbXBvbmVu
dHMpLg0KPiAgIC5UUA0KPiAgIC5CIFNIRUxMDQo+ICAgVGhlIGFic29sdXRlIHBhdGhuYW1l
IG9mIHRoZSB1c2VyJ3MgbG9naW4gc2hlbGwuDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXIN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------Mw0gCAVUFQyjjU0a0iCDERXo--

--------------L70jLbncm20KRFSlE9oQY4TX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKwHdQACgkQnowa+77/
2zLOkBAAiLCfrA+TOTXFitQNl6ilEczMbG4tF833XOykMqiRKE10kq5dF3HguYtu
+Z1RbE9nVXmihNxr7/Kx1fcEYYHOZSJ+pl+bUpaNJz57R2xbiq04mB7l7+JrxdnB
Zn8OOTfnp2JHbJ7oiivL5uK750eDAg25zPJHP1E8RQy5aK4xCX+rpxL9tsJ8d6T6
AMg+gP/LYoIh3e33BGbMBGyE4ndV/lLKxcrGJ6GACFcwVJdooKg74d0uccSVuyfr
c78bjfgXuLPf+cFchGxDXbzGAbTudpUXUHisMlUnwbLFJ13IVoXxvqfzlPnK4lGM
A7jJKpzq1gct7acdbN9PeAezL3J5WBvR+d/jZNRIlLSl7+Sf2OER4Dnt0OgOWbtN
/v8JMwcW2Wn/kxX6k5vD31vVxEd5ayRnLLtQnBE6ExqqB+Ngw7OMnrlLdfx70qY3
Suu7jSokfwus9qTpZjf+OY9+a7aTLPuYALYrNe6ma24NJD30yo/McMAOacAulXif
CEPVnfpCA6ZTvxWhe3Ep7eej1JJ4NnU/c0M4ksT0SEQ3kuQk2lmdghIAUDXubySt
XJwq9WM3LbTlK4fCG+DlHnHIOODz6E5FUOc+aTvVwZ7ISt0T8icOgFB4q+K0C+KD
wYCWKuf9RuRgDO8Y3x9T6SnsuFft0bGvSmHEtPfoW7ThRz08lx8=
=I/dW
-----END PGP SIGNATURE-----

--------------L70jLbncm20KRFSlE9oQY4TX--
