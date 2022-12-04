Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EC5A641F4E
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 20:52:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbiLDTwC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 14:52:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbiLDTwB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 14:52:01 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BA8212774
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 11:51:59 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id u12so14790296wrr.11
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 11:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SNjr5CzkARoUKo5dHL5KVd0mLIxGFPXlDwps1+LHkMw=;
        b=B6/mS15ueIJfzjXpfNlEZU7s8Hu0roELLv2UWxn8iK5aUbE4KSWwOpSGaar/bF9Wqk
         SmQyzRLU1vHJPCn2o09Y0Uj3wa8rhnQW9fZv0L70TbKs7S3GGuD+ZWSdD85Vrx7Yoj7R
         mRtAxG6Tkn8+KH4gS5Jq02lBIfhXAUAZ3nT6efukkA8Ddd4GvgS0LcbmssV7tLyDn+f1
         4450IJ0W+6Cwzx0SaNy1Eg8z5sBwjJeZBHPhAQBUbFrPlhwtonk92QpD4KwJ0gRl1gBx
         ep2lTw3teheVAUFKg6bzewB8pT974rm1seVWR0/b8BgVqpMSbrNtAF/x8xMXMwuPd9a9
         P1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SNjr5CzkARoUKo5dHL5KVd0mLIxGFPXlDwps1+LHkMw=;
        b=n9IVXtmscezKSvxr88V/s8MA/w6TCj+qCmjBsnEaNQys1CBw7zIrB+orWePJL/PgZ0
         qYncegiY8bGRHnx5ybK2DC2tV7XDRFbwh0Fvvq2AAs0dwoT/yFqvfi17U25XDtdEUoaK
         JD9yKHMVEF3vSYvsv0v7eHhBb+08TWv09HjzTMkbtp6tBgbEWM6/wzNNlmxSmzwKvsZ2
         qGHxMVCyLNQW5AXYuQlCz20UnxKka3ZF/BGlzAqb6tG9Q4Is+bqpiquWfHyDhJ0IQEjf
         SCYfyD1OVs35ql+2lrZSmeELV5FFdRfzOWTf+H+EollOsN2IomAAIJtBCMFvAzyTgGv6
         oHbA==
X-Gm-Message-State: ANoB5pkWWVmLKi3xyO06fzWagh3beTieIPOsbcWkwMLXR+8AjI8MOZN0
        L4wvn/2NtrMg2ZxWyup8ztk=
X-Google-Smtp-Source: AA0mqf7ayrjCbGHgbX+COqItIL8jutKoTAQwrIg1nDamT3jaLpNJS+WXm6dzUU6j+XxZdRPUB/p0PA==
X-Received: by 2002:a05:6000:a01:b0:241:e856:e441 with SMTP id co1-20020a0560000a0100b00241e856e441mr34118861wrb.493.1670183517916;
        Sun, 04 Dec 2022 11:51:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n10-20020adffe0a000000b00241bd7a7165sm12130723wrr.82.2022.12.04.11.51.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 11:51:57 -0800 (PST)
Message-ID: <431dde63-59ad-6372-7c1c-864d26263269@gmail.com>
Date:   Sun, 4 Dec 2022 20:51:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page proc.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090715.GA658@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090715.GA658@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dwT3TAE8uoPnYHQ7ndeN8GK6"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------dwT3TAE8uoPnYHQ7ndeN8GK6
Content-Type: multipart/mixed; boundary="------------V4rbfEUWswvVXmlzj9p2ZAo3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <431dde63-59ad-6372-7c1c-864d26263269@gmail.com>
Subject: Re: Issue in man page proc.5
References: <20221204090715.GA658@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090715.GA658@Debian-50-lenny-64-minimal>

--------------V4rbfEUWswvVXmlzj9p2ZAo3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIC4vRG9jdW1lbnRhdGlvbiDihpIgRG9jdW1lbnRhdGlvbg0KPiANCj4gIlRoaXMgZmls
ZSBjb250YWlucyBkaXNrIEkvTyBzdGF0aXN0aWNzIGZvciBlYWNoIGRpc2sgZGV2aWNlLiAg
U2VlIHRoZSBMaW51eCINCj4gImtlcm5lbCBzb3VyY2UgZmlsZSBJPC4vRG9jdW1lbnRhdGlv
bi9hZG1pbi1ndWlkZS9pb3N0YXRzLnJzdD4gKG9yIg0KPiAiSTxEb2N1bWVudGF0aW9uL2lv
c3RhdHMudHh0PiBiZWZvcmUgTGludXggNS4zKSAgZm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24u
Ig0KDQpGaXhlZC4gIFRoYW5rcy4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------V4rbfEUWswvVXmlzj9p2ZAo3--

--------------dwT3TAE8uoPnYHQ7ndeN8GK6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM+lwACgkQnowa+77/
2zKmkQ/9EeBK33Xiak0d1jROXT++v+RyXLR7rEcQucJnp4xoOB3fdcEtPTY8dcst
fnjF7ZtDvp+G2037iue/2BLPZNoZY+dsK2DiY/8tDUcSkWbQCj77ur65D42iOayl
iEYZx1xrB02bxVGwcRautNDjj8Ogzh/RmCy+Hx+uIDkpkoY5qYBrvrxcKd8Mn3u9
7lmooNgB2lIQZG2FKup+tFuURLGw6Yj5tS/UHONjXMo3qxBPv1wcIKO8K83lYivb
70Jd8TEIEkOlqhcJahmjH1qM+h/98Am+cMMkbRliSg4NHElodnbQSYe9yw9k4bvM
HxNWWcq809s0y17p5PchuzscZz9kzXqRr4ykHZWqVf3aA3TPK7GU758cfe00Vn+P
NT4qYiCoHraC5C00ff2+n4k6bPdEYSA2eOs8uv38Jmkbu4f54yM9PRMx9WzPNKmN
+FkKyiNpcY9EWTozEQh25ZT6iql7+2ZY8ynFeMk4Fk4E0wX0/2BlIy/yItu5RpID
VWJfxcI1xEsQjZ2kN54qJ++FdIwKE+WlO1/GX3fh6OzMQYNYz0VaIFQpp4cRJZUh
zXq43CW53IzO6mkZy8rHCFo+k0jUoLgzFwaJBL3yThlr1zFxz0jx3LA6Aaa2kXZS
n/8h8FqXMwmlbF2Hiader3DOgoAFT1p9MQq4IdL0sZMJ/Vp5/Zc=
=6V9F
-----END PGP SIGNATURE-----

--------------dwT3TAE8uoPnYHQ7ndeN8GK6--
