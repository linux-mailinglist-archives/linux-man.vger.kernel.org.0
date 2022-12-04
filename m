Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C897A641FAF
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:57:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230177AbiLDU5p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:57:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230436AbiLDU5l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:57:41 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDA3DE7C
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:57:36 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 125-20020a1c0283000000b003d076ee89d6so7777001wmc.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPc2u/haMUCVNRmZaGyPQrJyLcs48m1V5ppos+iVxr0=;
        b=j3Ib8p4vhz0zbcvO9l/+DE5bOfOKofVQ5/CqWuuJEGUtNKwo7/09NkMzFlhnXuFN8N
         k7E3KuefR1WQGS1Zu81vdcdno1QmI1r2eBYqBDkD5W3/uMSa4475Enq9OHbNjEsBIPFA
         n4AEo/ozCrPkzWoiD+laWYHdmKrPJmNdrEvSR7npKJKTDuQHgHLSefIK7bqniivMIkpW
         UPXLKSwVK4yc1CAvdZYcLKijuqo9kugfFnXyyqr9+2zFeP6jQSVGkid7rvbVOC8o3gOt
         g3B4NW1qcgUbv+RJ0YCMsQ7tfhjUCrsjhs9s5g8k/MmBBslEvxSNlRy7F7X+Fwu6gUCY
         Cjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QPc2u/haMUCVNRmZaGyPQrJyLcs48m1V5ppos+iVxr0=;
        b=Uk+a/vuIDYjyxlHcxqpG/0LxSAv+vEPco+BQQq5G1ov1Hq3nKxreB6Wi5n9eVqiEsL
         k1c44EhSgBhkKkSkHv4wn1+Kc9oNKwH+jH2EWFjX0/HM3Bcqxyjr2ZzMp67GEnerWiLi
         XiyNa3YMwVA4YifKV4qyGbjpRJlDGoCG1g8usP8WA+ho+T4QDngzvTEW1Do1h4/g6KVo
         hNC4Xuu94d2XQByzMmmx2g+6ktsnYmCoplc5farz/rLhgbEwC3dvE1WBq7J8/KnBjOhl
         alZUuG76rjyvHLW3zMBRitji6f0Mmrm+Da4q9RwxpQRD2fpvvG7smPfpaN0WqbLn8PaZ
         PLdQ==
X-Gm-Message-State: ANoB5pkWEbrgz0o4JzWcarGoBRL69ponF2q6aus4oMQONvHqapH0uRfj
        rvKE/OvoBH3iZjarRYZDjmw=
X-Google-Smtp-Source: AA0mqf4AuaoBYdQLMZQ6GnGCsHnieZMenMi1AjmhQIn2YvlmyUDpIu6DPWzfZREJbDgaCQvGPIkbYQ==
X-Received: by 2002:a05:600c:4e45:b0:3d1:221d:51e6 with SMTP id e5-20020a05600c4e4500b003d1221d51e6mr3451982wmq.4.1670187455501;
        Sun, 04 Dec 2022 12:57:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o37-20020a05600c512500b003cf5ec79bf9sm17660535wms.40.2022.12.04.12.57.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:57:35 -0800 (PST)
Message-ID: <11e6ab16-df2a-2036-24cc-14ba4b8a11c1@gmail.com>
Date:   Sun, 4 Dec 2022 21:57:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page console_codes.4
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090726.GA1347@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090726.GA1347@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------He9siHaF0V9wIKvLgWzTXtnX"
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
--------------He9siHaF0V9wIKvLgWzTXtnX
Content-Type: multipart/mixed; boundary="------------0CG5xowGg3G0lrHJMD6wfr54";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <11e6ab16-df2a-2036-24cc-14ba4b8a11c1@gmail.com>
Subject: Re: Issue in man page console_codes.4
References: <20221204090726.GA1347@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090726.GA1347@Debian-50-lenny-64-minimal>

--------------0CG5xowGg3G0lrHJMD6wfr54
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIE1pc3NpbmcgZnVsbCBzdG9wPw0KPiANCj4gIkN1cnNvciB0byBsb3dlciBsZWZ0IGNv
cm5lciBvZiBzY3JlZW4gKGlmIGVuYWJsZWRcbiINCj4gImJ5IEI8eHRlcm0+KDEpJ3MgQjxo
cExvd2VybGVmdEJ1Z0NvbXBhdD4gcmVzb3VyY2UpIg0KDQpGaXhlZC4gIFRoYW5rcy4vDQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------0CG5xowGg3G0lrHJMD6wfr54--

--------------He9siHaF0V9wIKvLgWzTXtnX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCb0ACgkQnowa+77/
2zJM+RAAkYrbmKJZgueF5wMIo8vYiX9+8VJNLGkiszuxOeDivMuNvthaeA3e/Npg
Zb1XElF8Fp5P2ylCJjlxFhdk1qI6ngrPbvyABBTUABAJZZG+cOaFedvoBX9hx69h
gdIgrTtZ2joMDATaaYcVwCnPPuicX16Hm0RHTQlRhzni3O9XC4hu/klsS+n1qJpT
GwVUx6Ptno+psYbmPhhzTcfve3rmr4gA4vzujTvcGuISTD/Lrtfj3ADuqjwFXxcI
rDbbPKG7JlA+5CoO2oB3YEChA2tzoQ3JZAbKBxJNyUZEg4/kCS/litjQJQXf5JrS
eLzH1t3ix2FUC1cf2XwSKjQxbMZHvzJi3Gj0a1XUZPqW9oJ0o83o0V5an3eOS7gV
QgFtG39qfDsJ3OTD+fKAZcOFfGAR25F9DCzkCso57SwYWpd1WaLqtVQ9uYy+Ol6M
vytO6XXzYT9GNeOCHQCUfF4/5B1+zQUUhmzSLTpSACUTxHTGQS6wpUM4aagmZmgK
x8e7eM1lAKzjxWpghj4ol+s443OzB9JXTn0cI1H9dzRuwbntsVPvCpOdEAWkM+jB
qVd+Gfhf+cTi8ZzAsa+NrI7kkRFLZR5PS2zFY6AotP5PJkrNCwKeJN1/myfqUz7L
QssDCkMqSDck3yKi7t0qMcGnRKgxnMxvexh5EO1a3t3xHu/mpIA=
=osU3
-----END PGP SIGNATURE-----

--------------He9siHaF0V9wIKvLgWzTXtnX--
