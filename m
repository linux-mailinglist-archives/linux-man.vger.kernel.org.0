Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABC88641FB1
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:59:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbiLDU7k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:59:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230108AbiLDU7j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:59:39 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D3112A98
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:59:38 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id y16so15925308wrm.2
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjhAvmrQVIuxKcldXsM1AIKs1mD2jDFYpjtxcRh/MOA=;
        b=lFMM7p49fhtNz0qoCm4k+s4FAAX+48JHyDiIV5yxAio8DfJb4/4hVZ0UWvRK8IPrP+
         WvG58bCOBVkwZeCzL8/8YTk3CqT3jeEoLITnf/tGzFcDECueWq0LTewqq7l46ImVBRtw
         jEyTvox0Bgh1Y/6GaE8rfTTo5ZS4LhXaOUSGs9Fb9vM9mXMBVEDq9CL1PUOv2tFg/hOq
         QpMipXl/mPoYfSneaa+pqkJY4oCxvW4aboRkOOwdlul6CsLGye0qBg+gM1+ncXd4C9OU
         nGNBkyQAWWb2mmc/Pa5Qzm1MYcHsSvIv1k1F+rN72c38jNwKXf41bmA6jK/HkrCG7Tr8
         aQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bjhAvmrQVIuxKcldXsM1AIKs1mD2jDFYpjtxcRh/MOA=;
        b=goDDFbNbbQpfVzCKLa4+9ecsdmNzK8LFecpx0PPyOXbA3jLLxVRb5U8ND3kfB6csDb
         6OOA9LP1/EhXd7hKAqLU+yzxOqFUz+0LiaSjnPo5UoMFyFCPcCA5V2CWrV0TPDCX74L3
         jjSbkNtG4eCJIidM81kOiQNvHAb0SzLStuYfSR/2ZJLQOOf1SrhQtWZEkNXWwjqS/imI
         zP2GyVE0vAn/HLqb5LP3tomkDOT/ZSpLKgPRmqG1/2jxDNyc4/8AFV+KmP79KV/V4yQ8
         ZeYLNkZa1GVzDjwNmooLiiAKsTfeqO1LRdfcDIgeONzZ00y1keokmRCa9RtsiAkaZC5h
         Zxgg==
X-Gm-Message-State: ANoB5plVhjBE1kFoijwBro60dfEv8YptF/e5aV/5+0r1Qo3OadC9EVeb
        i5oWMe8XCx7MAlwj+f5yTk0=
X-Google-Smtp-Source: AA0mqf4q+qlHoLVUU3JS7DxgRIabwXzkGckSoDTDdDPUabsOhUIUsD6boEyb9dMHarDvpHpZ7L27aQ==
X-Received: by 2002:a5d:5a8c:0:b0:242:5d58:3422 with SMTP id bp12-20020a5d5a8c000000b002425d583422mr2219061wrb.22.1670187576884;
        Sun, 04 Dec 2022 12:59:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l22-20020a05600c4f1600b003cf54b77bfesm21420632wmq.28.2022.12.04.12.59.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:59:36 -0800 (PST)
Message-ID: <e77108eb-13ca-eb3a-fe42-88efa6add511@gmail.com>
Date:   Sun, 4 Dec 2022 21:59:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page credentials.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090727.GA1416@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090727.GA1416@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------T0uKz3LL9YY3brdgVbE9XnjG"
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
--------------T0uKz3LL9YY3brdgVbE9XnjG
Content-Type: multipart/mixed; boundary="------------0jz0MvDEiibaTVMB5kGMxIce";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <e77108eb-13ca-eb3a-fe42-88efa6add511@gmail.com>
Subject: Re: Issue in man page credentials.7
References: <20221204090727.GA1416@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090727.GA1416@Debian-50-lenny-64-minimal>

--------------0jz0MvDEiibaTVMB5kGMxIce
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIGZyb20gYmFja2dyb3VuZCBqb2Ig4oaSIGZyb20gYSBiYWNrZ3JvdW5k
IGpvYg0KDQpJIGRpZCAiYmFja2dyb3VuZCBqb2JzIi4gIEZpeGVkLiAgVGhhbmtzIQ0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gIkF0IG1vc3Qgb25lIG9mIHRoZSBqb2JzIGluIGEg
c2Vzc2lvbiBtYXkgYmUgdGhlIEk8Zm9yZWdyb3VuZCBqb2I+OyBvdGhlciINCj4gImpvYnMg
aW4gdGhlIHNlc3Npb24gYXJlIEk8YmFja2dyb3VuZCBqb2JzPi4gIE9ubHkgdGhlIGZvcmVn
cm91bmQgam9iIG1heSINCj4gInJlYWQgZnJvbSB0aGUgdGVybWluYWw7IHdoZW4gYSBwcm9j
ZXNzIGluIHRoZSBiYWNrZ3JvdW5kIGF0dGVtcHRzIHRvIHJlYWQiDQo+ICJmcm9tIHRoZSB0
ZXJtaW5hbCwgaXRzIHByb2Nlc3MgZ3JvdXAgaXMgc2VudCBhIEI8U0lHVFRJTj4gc2lnbmFs
LCB3aGljaCINCj4gInN1c3BlbmRzIHRoZSBqb2IuICBJZiB0aGUgQjxUT1NUT1A+IGZsYWcg
aGFzIGJlZW4gc2V0IGZvciB0aGUgdGVybWluYWwgKHNlZSINCj4gIkI8dGVybWlvcz4oMykp
LCB0aGVuIG9ubHkgdGhlIGZvcmVncm91bmQgam9iIG1heSB3cml0ZSB0byB0aGUgdGVybWlu
YWw7Ig0KPiAid3JpdGVzIGZyb20gYmFja2dyb3VuZCBqb2IgY2F1c2UgYSBCPFNJR1RUT1U+
IHNpZ25hbCB0byBiZSBnZW5lcmF0ZWQsIHdoaWNoIg0KPiAic3VzcGVuZHMgdGhlIGpvYi4g
IFdoZW4gdGVybWluYWwga2V5cyB0aGF0IGdlbmVyYXRlIGEgc2lnbmFsIChzdWNoIGFzIHRo
ZSINCj4gIkk8aW50ZXJydXB0PiBrZXksIG5vcm1hbGx5IGNvbnRyb2wtQykgIGFyZSBwcmVz
c2VkLCB0aGUgc2lnbmFsIGlzIHNlbnQgdG8iDQo+ICJ0aGUgcHJvY2Vzc2VzIGluIHRoZSBm
b3JlZ3JvdW5kIGpvYi4iDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------0jz0MvDEiibaTVMB5kGMxIce--

--------------T0uKz3LL9YY3brdgVbE9XnjG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCjcACgkQnowa+77/
2zJ8aA//TA3y6tpnjTMCavOsJiDT96uWWF4syYHOUTKu/dSGhvou2UwIQpe7EUwd
4DhZcFZFF8pWFBGRRvADSq0C6ENUav5gDqX6ePgQTfvGA1EWCvIYZRcMx1fZcLXg
9gTxBtjE/c4GXPrgbUujcgT78BzxtCmNA7dTXRGojVtWAEHcc9BMPCk9QOWT14ID
teDl+nNEeeApUolqn4WuFmYaHVvgowcDUbEMuznX1a7luCqpyP7J9y1ra67EyzE4
SxvyDLDkTOMWnhBon3HuxUZszWt3bbVQoy6VeCOpCf0gbL7/REvJ2Pc+nHFLkwAs
xZE0YpglYZ+6PJ4eBxbhOjt6jLAn6UF0BLJQq9+XuP+lfvmdvYeVrqEca9go/K4j
mM5XjzxHMJTfA1NlBAa2EdFXrfKiQkWhaQcZLn1Q7dIKVcbqfPzvTeKOFF8zwF52
wacnMeGM5RO+Uk5V3ikG3rqRoiJTQX6LB7UVOs2ft19BabWNfrIfcTUylEFy41V5
sQFXQh5JyUntDclynlDyKAtO9myWTAds7+7x73zgIpT4csNQy2AYDl+Ss0w54SnT
RZxaB6HbFeWYTZ2wfUCVUon0TO6y2DIvaDh94BAIS2OvZCIYz9mOkvHZTuabCYOk
5q+A9VuFZ3dHdf0HEbrFAZb/nYSn6hpPcn1JeGANr903DqiGpzg=
=Shc9
-----END PGP SIGNATURE-----

--------------T0uKz3LL9YY3brdgVbE9XnjG--
