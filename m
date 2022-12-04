Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96D24641FB4
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 22:00:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbiLDVAV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 16:00:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230201AbiLDVAU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 16:00:20 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1F8E12A9E
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 13:00:19 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id bx10so15976833wrb.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 13:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5DmKLjyBhX+P5X+JBshVt/vCCxBwtKex9zZQyJFXot0=;
        b=p70PT1K55xMoql0k3KuoCh9R5i2Ycq6dK3kxXRPZOP2blrGpoHaKeBxddXnH7zKfRJ
         IfhUQXJKKHUWv5AwqQg+6OHdv0dLcFdJOrHEnvqm7CvFrgSFZUMpyiGa7YxfabBbuaOS
         nYAPQnEumeo0845FOtvOztdmi4lLHUSpwqE+TWeKHzjcu5xOfMGc83YxLIKFxXDRqewH
         IRQPWMjmx+UewthaLFriZl5gHQjImmLHzPK+TMTrb3QOoCqUqxW5dhoM618KZ9HiA+f3
         o4IWn/gxmVLs5vWydKCPcnItGhnngt6d9iYeHfmlBEFLO/n7P9/lercHiHwu3kQxxcq1
         MjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5DmKLjyBhX+P5X+JBshVt/vCCxBwtKex9zZQyJFXot0=;
        b=UCMphK8avAOixaBjDOOJYAjhk99d4Wpy/7pRfns9aFw0r2+ZvxHUfxb1+Oeqnp8Og9
         WaBTPG9oW/jjwVKBX9M8ctrNpDSVpdZAZHxYeNwUh/DkGqwQKy72To7hN7s/vFRxLUyS
         dftkZGf3O3uERJyTu6VlFppfTqdtbznefrpzYT/3/1ye1ZUjmLefWcQem+BBgQGE5LH0
         svUJdrxkcm6Wwy4mkwoRL29gCAjYFyD3JlSMKN//NKfLwG89LQtK/OUHy+pDs7Vk1Fpi
         WHq044eQkGU0qVHKkzwvIUduq8urWcb1w9dz8OZ0qg5BNqF/6XhpKStETPTDu9oojDiD
         UFEw==
X-Gm-Message-State: ANoB5pmuDy/ee/+hYnNx5XxLmoDnoX0h6zfXDMiGHeRf0aZmIX/Mwpr5
        lwAKUqkczugklXLfZs2crHB7ZAxfOL0=
X-Google-Smtp-Source: AA0mqf7OvNyTUVV5m3ig0xTQuRmdVxzIhUKmDi+eEItKUJWiQSvnXazy994zSkg2PHQOSMY1fotxsQ==
X-Received: by 2002:a5d:44c8:0:b0:242:2a46:6ff9 with SMTP id z8-20020a5d44c8000000b002422a466ff9mr13657674wrr.371.1670187618341;
        Sun, 04 Dec 2022 13:00:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c2-20020a05600c0a4200b003cfd4cf0761sm20982144wmq.1.2022.12.04.13.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 13:00:17 -0800 (PST)
Message-ID: <0d990c19-fc96-2064-98bf-32cd87facdb2@gmail.com>
Date:   Sun, 4 Dec 2022 22:00:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page credentials.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090727.GA1393@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090727.GA1393@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lEJexJyNFP0TfggXP7HXQyN3"
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
--------------lEJexJyNFP0TfggXP7HXQyN3
Content-Type: multipart/mixed; boundary="------------Sj0vHolgUV0C2dGiIIRb2XeY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <0d990c19-fc96-2064-98bf-32cd87facdb2@gmail.com>
Subject: Re: Issue in man page credentials.7
References: <20221204090727.GA1393@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090727.GA1393@Debian-50-lenny-64-minimal>

--------------Sj0vHolgUV0C2dGiIIRb2XeY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIEI8c2V0cHJpb3JpdHk+KDIpIOKGkiBCPHNldHByaW9yaXR5PigyKSwNCj4gDQo+ICJQ
SURzIGFyZSB1c2VkIGluIGEgcmFuZ2Ugb2Ygc3lzdGVtIGNhbGxzIHRvIGlkZW50aWZ5IHRo
ZSBwcm9jZXNzIGFmZmVjdGVkIGJ5Ig0KPiAidGhlIGNhbGwsIGZvciBleGFtcGxlOiBCPGtp
bGw+KDIpLCBCPHB0cmFjZT4oMiksIEI8c2V0cHJpb3JpdHk+KDIpIg0KPiAiQjxzZXRwZ2lk
PigyKSwgQjxzZXRzaWQ+KDIpLCBCPHNpZ3F1ZXVlPigzKSwgYW5kIEI8d2FpdHBpZD4oMiku
Ig0KDQpGaXhlZC4gIFRoYW5rcy4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------Sj0vHolgUV0C2dGiIIRb2XeY--

--------------lEJexJyNFP0TfggXP7HXQyN3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCmAACgkQnowa+77/
2zJzAA//U9BMpIxH0WrgolizX3E91CQhmQi6vq7n6wDA12V3CJCKX6F6RakoAtax
pZaYj/E6L8LOjNoYPTxdfQYFYLy7irU+6FxhiVB6C/5ydLZSmgy9haQqcqP+xC2T
zv6foo0RBF83n0culoO9GrPLygjQCRsa6TMXAkJR1szNs61Eapf8PiZsEyvKPAtX
2dfj196/dcOM/wKyQYEIIaSIJ+b4D28SdUI32eMGvYAggCPPhI6oDcfoS9bk4Kqx
IDj1ih1nWU01Z8wcvHf/lvbW1NoXwoxEaMDoSAAbFhdank11UR41Sr1uIb2Dv0ZE
ZV5BuDz9fxvvGx/Sdj1j7VFw4UpF9JiKulz3f8Yr0s5deLiEdgcNAZwGRoJFi435
ogARsSM45b9ycYCk6FHCcvpXRIDClfpfCw3YLZ2aqvy1lk/bmzKAon+yI6I2Fwp/
yC2aPF8/hO8YKbYHkAFaslj3NU/ljyvZVjIT0sc8rscogMYAfZwm+Uom6dwtJOoM
2CE3Bx4lhpWHgyyMNxm1iyLGelPmegfFN1TfrxqFrnaUYeuCWSEChr2ryzXSLC+F
A7FCsxM0Iuj1zSImnBpWfZg0RfFV0oy6CTBU32sDDy0K4NVRk6QsRq1TAUW7hRla
eSFXkKqPW30MMKJaJwdI3+BC0kgMTk6RkzYlkOt5f6uT2e4Oc4o=
=0osX
-----END PGP SIGNATURE-----

--------------lEJexJyNFP0TfggXP7HXQyN3--
