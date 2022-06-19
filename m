Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74E50550C62
	for <lists+linux-man@lfdr.de>; Sun, 19 Jun 2022 19:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231223AbiFSRwo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Jun 2022 13:52:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230002AbiFSRwo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Jun 2022 13:52:44 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88168BE0B
        for <linux-man@vger.kernel.org>; Sun, 19 Jun 2022 10:52:43 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id m39-20020a05600c3b2700b0039c511ebbacso6717045wms.3
        for <linux-man@vger.kernel.org>; Sun, 19 Jun 2022 10:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:cc:from
         :subject;
        bh=uUHdSQ4LhO6J7mHB3Hot/vB0noTwgMMvrsagBB051js=;
        b=LjwH0so3ncpqKO3lMqQUNQP/Gqmw/rqCInM7ExQp21tVNhsjLjR+Fj0fTrOw1H9FjD
         pEqtwBauo34HXzHZkpOo9AqM9JOv0ymClKhw+eO63yfGIqADshRVgm23l5gUysPj/EPU
         z6bJ460ghNlyUTlblnbMLWZAshUeB8PPnsBc36CgpOdubBZDm9IFmEyzGcjOyhR6ax9i
         2p89xsHXBplKnzSs/4HQM9aLV+BrsnKv1VSI3vpz2ITUsj0KAK+5fbQICa4SV80TGgWH
         5PbIgAjikAygYgIJ+9VpSQ9bwAy104d7PfxC2G9Mx7V4nsV+Tr7Z155mRHEbUeF93nEA
         W1AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:from:subject;
        bh=uUHdSQ4LhO6J7mHB3Hot/vB0noTwgMMvrsagBB051js=;
        b=4v93OTHa684bBeMK5scuN1QgtHKfUvl2plFLhECPl4Si9w9OBvSrwYSnWGZhdV4tp2
         ZrD0jYXDPFQQtJcTJ6MEV/o5pxIUMd+FNhXb9m8VAvnWqZ46YSaLCv5jN/jRnoRpx/Wh
         8MehlJT6Cp7eThOvLaMFuSMOUC1fpm8FtU8tFgMSIGgeJQDJHHaZSB/se5tjBq31AgjW
         Ccmj7YWuq9jaeor3eZj4+uZC7xNpEnGiPEhgodI/bPHSYcChhShJGaEY+03jwUU/WIvh
         pbt+VUPpiS1M9r0Lzlf7WeKp8g1i5PU9lNtKoLUKet7plV7ubBo5MR8/XCMFuXHRh3Wv
         ercg==
X-Gm-Message-State: AOAM532GiOReSDzLOeuYoiYcmTk9zNowtYCRni9bYy/SczNQcR2n0tbi
        iTti4iBwfZ00VOO0NqttzSjYDKKY520=
X-Google-Smtp-Source: ABdhPJypw7jO/OrMvWjHG0Zu/umVZYXka8U4QSwfvekWksVTMDbUaMrexD8m20UX09vepJmpYRrw1A==
X-Received: by 2002:a05:600c:3d8d:b0:39c:5232:107a with SMTP id bi13-20020a05600c3d8d00b0039c5232107amr31370665wmb.191.1655661162046;
        Sun, 19 Jun 2022 10:52:42 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l12-20020a056000022c00b0021a3daef45esm10301386wrz.63.2022.06.19.10.52.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 10:52:41 -0700 (PDT)
Message-ID: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
Date:   Sun, 19 Jun 2022 19:52:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Linux man-pages Makefile portability
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5FjXhp7dycblB61jPplVKZfa"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5FjXhp7dycblB61jPplVKZfa
Content-Type: multipart/mixed; boundary="------------gy02JFi1PzbGRzPJjDQPRlR0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
Subject: Linux man-pages Makefile portability

--------------gy02JFi1PzbGRzPJjDQPRlR0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KV291bGQgeW91IG1pbmQgY2hlY2tpbmcgaWYgdGhlIGN1cnJlbnQgTWFr
ZWZpbGUgd29ya3Mgb24geW91ciBPcGVuQlNEPw0KSSB0aGluayBpdCBkZXBlbmRzIG9uIGdt
YWtlKDEpLCBidXQgSSdkIGxpa2UgdG8gc3RhdGUgdGhhdCBpbiB0aGUgDQpkZXBlbmRlbmNp
ZXMgKHdoaWNoIEkgbmVlZCB0byB3cml0ZSBpbiBhIG5ldyBJTlNUQUxMIGZpbGUpLiAgTWF5
YmUsIGlmIA0KaXQncyBub3QgdG9vIGhhcmQsIHdlIGNhbiB0d2VhayB0aGUgTWFrZWZpbGUg
dG8gbWFrZSBpdCB3b3JrIHdpdGggDQptYWtlKDFQT1NJWCkuDQoNCjxodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC8+DQoNClRo
YW5rcywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------gy02JFi1PzbGRzPJjDQPRlR0--

--------------5FjXhp7dycblB61jPplVKZfa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKvYmEACgkQnowa+77/
2zJ0JA/+M9p+KXukKuEPQjY5fprWyKOZqDfsgZTeI5Aduyx9Pxh4rZ5Qpbje+mnb
zaQYbWlGlOt49cxFcTGeboGbMTqt99KSvoySVufy5vjt07dqHQq8EHessDmnEQFp
xP+kat4WBy+Xijv27t9lIM2eP6IYNGocvHFKVV1UJk4x8D8I9PX6vRyDjVgLEEkP
kdSWdj6GTryHApIRwDuG1NB1QmuI08NDhGZiNh60adShPfaHUERD6UY+YvW8kkx0
MGTZRkcYkxqmywzvvq2yer2k5pTsvVUQwgLzzPc5PgIRy1joU17J1+rVzVRU+Khp
W1eS+b7Hpu98Fg7+UBSqmYrgPQOZbMSi8KcGuk62lUn9Par/UazA0P3mL2PyAYHn
0EWFuK8gqmwh4E/XHlqsF5TWYyPEHUjfvwN5HCJjbntYUrWtLgH9qqzAzTk13sme
CiQ5bexwArvBaLNnLOWLpowp9ipapwXm9CAj/9CKsaM3DXOlobaF6PmYXTtw2o/R
31SuWFpJyc3VhcVxhGuc5oq5HJk26J0tAGqVM3NtLaAFAwEX+Kem+AJy3jsmxkWa
IDeHww+YCesKES7zi2hGKdwuPyatrGhnNcRAT4zr/hn8dquVpyQYe364IYBqMzKa
NoZHyUyZjXnGU6nc2qCitI/tGHqw8Ky9BlDL3URLZ0hEsf1O7dI=
=QgA+
-----END PGP SIGNATURE-----

--------------5FjXhp7dycblB61jPplVKZfa--
