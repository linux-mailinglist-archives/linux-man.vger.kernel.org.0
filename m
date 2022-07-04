Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BBE0565F49
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 00:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233240AbiGDV7s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jul 2022 17:59:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229790AbiGDV7s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jul 2022 17:59:48 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 656BACE21
        for <linux-man@vger.kernel.org>; Mon,  4 Jul 2022 14:59:47 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id h17so1876686wrx.0
        for <linux-man@vger.kernel.org>; Mon, 04 Jul 2022 14:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=+XE4uhhK27Ql9NbTARAJ1RFY5f09TFCCHNZrdad33IA=;
        b=TNAz+YljOdZm2FOeGAmS1fd2tJ5dcwX8/AF8cM/bovZhMkrcURUG4s6Fg+riiYVsBr
         IKtaQKMQLtys15R82blHSvXvBtg3w0QHInOGWxzmz5l5966ReyFKvk9Nosyx8XJKhQsh
         ikf+8WUMCoupamIwQaD45Vmza2M3D87v3Dynb7a3zaWJ1a7Af88gz1VpEfv9h96TNFtT
         RxwF5Zy8z2wvtCoNry6CjfjHhNc77P0oFupCJnmazp/IRASwDA7Zpl8avyQfNLnDhWzQ
         ulHbfpgFSokA4O5/5hVG4RVhe/mfP/CoOZY3qt769Pf5wdSGkubGd+uohtPxicHi0TA3
         iFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=+XE4uhhK27Ql9NbTARAJ1RFY5f09TFCCHNZrdad33IA=;
        b=jiaLt41AbkNUGetngxVQv9PYJPU9I+vLg8pj3QNtuP40jom51XXysLhN/TrGulJjK+
         +f9azi8dVf6zmusKveDN9/cmzBMa5sV/IUubUMWDZfEM9JrQacbMm75Hiog2pmkdhMj4
         4QzF1LWNr67fB9DnjbE4ZoGPr+fz1unInn+0/lzw89r/ZmELVd+SVHtJVBE+J9JwQso1
         LYHx+318EhuZXmS3PyDrzYO00Ckqteu3FjJjQByeu4qJBMeUkMoG42X764hNNBO2MSaf
         YwA1cdA194kk4ochKcEo1IFmZux4xpWyXjoHL9tfFDWXctnWBDeIJ9/FNRYEtLHqvb8U
         zbAg==
X-Gm-Message-State: AJIora9PpoL72FgVxRQsTzcO53GxizRxbD/bON24leeshvGm5q81o6m8
        5aAdwjZs7CMWOxCdDGF7rgA=
X-Google-Smtp-Source: AGRyM1tQltKnT1uOaU0cyFjcz7wmyNO0xdxStcEdH+n4ZMjV1gFHu9vBNzIuUbGyp6n5h5forpJEow==
X-Received: by 2002:a5d:6487:0:b0:21b:983c:5508 with SMTP id o7-20020a5d6487000000b0021b983c5508mr28426902wri.185.1656971985959;
        Mon, 04 Jul 2022 14:59:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p2-20020a056000018200b002103cfd2fbasm31270949wrx.65.2022.07.04.14.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 14:59:45 -0700 (PDT)
Message-ID: <6c12e03c-3343-b204-910b-6ceca766c93f@gmail.com>
Date:   Mon, 4 Jul 2022 23:59:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 3/4] fts.3: wfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <8206bab7d0d4fa33be11396521c665a19a381f84.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <8206bab7d0d4fa33be11396521c665a19a381f84.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WU2PFiBbAVbTGDdrxJ0ZtqMY"
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
--------------WU2PFiBbAVbTGDdrxJ0ZtqMY
Content-Type: multipart/mixed; boundary="------------7K2pqdd4Ze5FkmWYEVh5RkV0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <6c12e03c-3343-b204-910b-6ceca766c93f@gmail.com>
Subject: Re: [PATCH 3/4] fts.3: wfix
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <8206bab7d0d4fa33be11396521c665a19a381f84.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <8206bab7d0d4fa33be11396521c665a19a381f84.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>

--------------7K2pqdd4Ze5FkmWYEVh5RkV0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy80LzIyIDAwOjIzLCDQvdCw0LEgd3JvdGU6DQo+IFRoaXMgbGlzdCBjb25zaXN0ZW50
bHkgdXNlcyAidGhpcyBvcHRpb24iLCBmb3JjZSB0aGF0IGZvciBGVFNfTk9DSERJUg0KPiB0
b28NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFj
emxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQoNClBhdGNoIGFwcGxpZWQsINC90LDQsS4N
Cg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMy9mdHMuMyB8IDMgKy0tDQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL21hbjMvZnRzLjMgYi9tYW4zL2Z0cy4zDQo+IGluZGV4IDQ0NDY1
YjgxNS4uNjI3YmI1YWZjIDEwMDY0NA0KPiAtLS0gYS9tYW4zL2Z0cy4zDQo+ICsrKyBiL21h
bjMvZnRzLjMNCj4gQEAgLTQxOSw4ICs0MTksNyBAQCBBcyBhIHBlcmZvcm1hbmNlIG9wdGlt
aXphdGlvbiwgdGhlDQo+ICAgZnRzIGZ1bmN0aW9ucyBjaGFuZ2UgZGlyZWN0b3JpZXMgYXMg
dGhleSB3YWxrIHRoZSBmaWxlIGhpZXJhcmNoeS4NCj4gICBUaGlzIGhhcyB0aGUgc2lkZS1l
ZmZlY3QgdGhhdCBhbiBhcHBsaWNhdGlvbiBjYW5ub3QgcmVseSBvbiBiZWluZw0KPiAgIGlu
IGFueSBwYXJ0aWN1bGFyIGRpcmVjdG9yeSBkdXJpbmcgdGhlIHRyYXZlcnNhbC4NCj4gLVRo
ZQ0KPiAtLkIgRlRTX05PQ0hESVINCj4gK1RoaXMNCj4gICBvcHRpb24gdHVybnMgb2ZmIHRo
aXMgb3B0aW1pemF0aW9uLCBhbmQgdGhlDQo+ICAgZnRzIGZ1bmN0aW9ucyB3aWxsIG5vdCBj
aGFuZ2UgdGhlIGN1cnJlbnQgZGlyZWN0b3J5Lg0KPiAgIE5vdGUgdGhhdCBhcHBsaWNhdGlv
bnMgc2hvdWxkIG5vdCB0aGVtc2VsdmVzIGNoYW5nZSB0aGVpciBjdXJyZW50IGRpcmVjdG9y
eQ0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------7K2pqdd4Ze5FkmWYEVh5RkV0--

--------------WU2PFiBbAVbTGDdrxJ0ZtqMY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLDYtAACgkQnowa+77/
2zJ+2xAAiFHhu1n4Sj6FO1gisuQjheKptU63lL5m+ofL2QH8zYA+gOHditiF6uMD
pFPotPrtjsmQgudeOqbSgEMGlpMeWOS6ZlCVnt+Yhv6HHNKqDmqzWk182qTuz7hN
y6u266FDLhQcgTf8MDwUgwbbtHaxmSrYiEm5lnJ34V1CEiaDzEdWFNIdQkBkJfJD
3/FqTwSjLIf/jav9TSNExerN3o9ucnjDYTPfGfVP8dxLWSAAsx6MhbtZdHW4NW1Z
8km10SuY8M/eVPC/VXchuw6IZ1pxFLdZpk6rc8/RelAGgWOewoAf6jsESmF08Bdw
ScEGoeSS2eYhlSWNU/DGlsKR4Oc8QzeI/sGixd5QtvE8Qw1nA7UqC27ORVEbJXm9
/lYYqW0/GIhSCnE1y5nD136Lwfrd/Bj91mziSNvks/0bpcZJXRl263iNLMrrRxMh
VK1UdbhSE4amZpesY2bg+Yv/V+2jYPOZAwEhsoYkAGYrG6K4N3BNMF0J+VTcFQoz
jVMes2G2Fe8eMsups8WJ+0iD9/RNLZBGQECQI7W6g3jvjm1C7jGVq5tJs7YiOrEe
6nbe9FvgT2AmmsC+t0T95ViCj/9fqlqiCD/oiy6iMa/5+mgI6FCRkoWZqBs+OMmo
VsMDaBNxvlBrT+7vqntE3LefTyCPoDhGgEt47v0CfK3P0lAvuSA=
=p1RC
-----END PGP SIGNATURE-----

--------------WU2PFiBbAVbTGDdrxJ0ZtqMY--
