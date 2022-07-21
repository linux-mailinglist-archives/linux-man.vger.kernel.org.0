Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5D2D57CC18
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 15:38:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiGUNi6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 09:38:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbiGUNi5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 09:38:57 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC20E7E331
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 06:38:56 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id u5so2330909wrm.4
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 06:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:cc:from
         :subject;
        bh=yrWCbjYbG6lSlLqbjPNt7jozBdAiRgcbh0DzTDSRECY=;
        b=VDEKn7K3eX2mWs/T2DKw04kdnJmyNp0x9FlFZLYikuOd/Z6TEUijUtRsMkn88ix0We
         eL3ghfP94s1+4K1/uu2FJ1tTHzhYOMSenGgIqreEevpwiZsELHoke7kVNtOLq2dS1tS+
         3PO/T8DLC2ZpDPk+7Eqd3vXcMNSHqRoNlBU/MSNup7LLKUrX1X6st+W1+q+LEiPon4VA
         bhlYiju4V01RLn2O7fiDn5N9H/9/UNK4/EOKZSfbvN7pZaZhvntLMJjfA4h0MDvIGZzx
         GNULVcAYMYmvRYgzLILsk4X1GLjg8qQ9k2djurEK6zqOGS1/djXWgACLdfotGET5IuyF
         vGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:from:subject;
        bh=yrWCbjYbG6lSlLqbjPNt7jozBdAiRgcbh0DzTDSRECY=;
        b=7qyegS/douuIcMs19l4wndxxB/pyyGu7IW4OjRup87lCrunCueynyI1JuPB0oRrLe2
         DAlSRgVavGCzk/u+tb4X55YIcjsuvftkcwasQcWMOtT1w52mFHJiriUqc2xZcIYyL9VC
         U3HwlQxRewc3EEAnTEB2C+H8MKEc5oxNza76AxXb/Xpa8ZTuQrk/LK/P+2eDTcbxMlyK
         yA6ZOvg/KG1wg/z4sKoNdqEncXnIsnkAhpUckJgDIMznvckG1xlLctRVrz+qoFpfYG1R
         D9bcjsSSY27nWutXYXGe+mTmXxKvLUZnWLs0T2UCFMJURSK4LP+yLBZyjszc24kQUFiL
         /eSQ==
X-Gm-Message-State: AJIora9YILf5nzEAqn52RpFaXvJJ3V+CjSJsQKGrsBGOczjei41WPdSn
        ciqfcL5XMx7Vtp4dl1Ll8/8=
X-Google-Smtp-Source: AGRyM1slYRCCuMSUm/bI0qQU3oINNv70dHHgcD+oFwmNEtTZOGO3nu16VrfaJSwmdOsjhtoGXDjQJw==
X-Received: by 2002:a5d:4607:0:b0:21d:93fb:aace with SMTP id t7-20020a5d4607000000b0021d93fbaacemr34763654wrq.704.1658410735192;
        Thu, 21 Jul 2022 06:38:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x15-20020adfdd8f000000b0021d60994b0asm1883152wrl.100.2022.07.21.06.38.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 06:38:54 -0700 (PDT)
Message-ID: <9ce9d847-07ec-967f-4ebb-2f27a7f042c3@gmail.com>
Date:   Thu, 21 Jul 2022 15:38:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Probably incorrect formatting in timespec.3type
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UBxrVcncM4cvmE71WAzRkDg5"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UBxrVcncM4cvmE71WAzRkDg5
Content-Type: multipart/mixed; boundary="------------eflsx0obMV9isv0MNeN50aGr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <9ce9d847-07ec-967f-4ebb-2f27a7f042c3@gmail.com>
Subject: Probably incorrect formatting in timespec.3type

--------------eflsx0obMV9isv0MNeN50aGr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxIQ0KDQpJIHdhcyBtb3ZpbmcgdGltZXNwZWMgdG8gYSBzZXBhcmF0ZSB0eXBl
LCB3aGVuIEkgbm90aWNlZCBhIGZvcm1hdHRpbmcgDQooLkkpIHRoYXQgSSB0aGluayBpcyBt
aXNwbGFjZWQuICBJIGRpZG4ndCBmaXggaXQsIGJlY2F1c2UgSSB3YW50ZWQgdG8gDQpjb25m
aXJtIHdpdGggeW91IHdoYXQgd2FzIHRoZSBpbnRlbnRpb24uDQoNCkNoZWNrIHRpbWVzcGVj
KDN0eXBlKSBhbmQgc2VhcmNoIGZvciAnc3lzY2FsbCcsIGZvbGxvd2VkIGJ5ICdsb25nJywg
YW5kIA0KY29uZmlybSBpZiB0aGUgZm9ybWF0dGluZyBpcyB3aGF0IHlvdSB3YW50ZWQgdG8g
cHV0IG9yIG5vdC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9t
YXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------eflsx0obMV9isv0MNeN50aGr--

--------------UBxrVcncM4cvmE71WAzRkDg5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLZVucACgkQnowa+77/
2zIikhAAiSKLNS7KZX+gAHwM5EMZEiZSGbDuBUVc24T24FJ4fQpyySHdFzTBDfge
xlVUY18CmYsUvODmjtyIlxFvzVSZ+3imW6PO1Hzbd2BsD7y2ZrL6C49PCDlaN2ga
C9l9iADOjQ4cgLODj322moZUzRXNjYoY0Anfea5mCcPqNbq/TFucpHDTQy7DzFDK
JP22z2KVyOBuUZxNQcghhZhA0R2qvXgKVh6FLXQ/m6cZxinuy2rJuB/BSgiAmljm
/sGprMZB1zFZhachKfOuT5EHvLnP3vtI7jiOkC9MjOeRXSjlmV+cbJ0KA+PW+kWc
2WLT4iw5l9+cX5DieUTOglqNGWnLsW2FXt9Di83dz9hMD1Ll7ZnNPipi3OHI7oiV
mIus3MEhYbzDKvAyGKoEUiYSe5sFmdTzIP1OLegaejV7B88EN2EvXX+0/5XEKN/j
/tPCSPYUqAam7RbwcRLQutX2Io4BrFMFIx99r2lWV+nsql8PtdDGfZ5LcUWGOjQd
IzsBlL9fIxMaSO2ZdsO2UU74qqn85xdRIctkhhe3eH7jVLSUPcSKvl1COxPVhbxL
2Gxdpz11zWQZNsBQTtHQRe7gLGCyZjQaUtSinqmc64FqLyvbGb517+THvMaOKbD3
+giGjFQpn1T96xvtkT/5t+nx203I2hawg5L3ZOKvjTA0T9Z81Kk=
=gTx+
-----END PGP SIGNATURE-----

--------------UBxrVcncM4cvmE71WAzRkDg5--
