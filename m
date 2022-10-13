Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9A315FE57B
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 00:40:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbiJMWkK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 18:40:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229974AbiJMWjz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 18:39:55 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D11A9CE0
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 15:39:37 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id bu30so4963835wrb.8
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 15:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YAOBiaOVjZIsq95WSK7zwDppH4zwYILADXtPYMpP3e8=;
        b=hetycR79jGYFQcpeahBD85tvsP2F2VoJywpI74Vru9z94VtkCEkGX22cah2x+YOsaO
         bvZFP+g6G/NuXVcft43Nu47CfddLqSUjhl5tVBZ6VG+ogXmksC/RK2XLBLjRcXSjFcBs
         7tTyCiPI7e2opAfC13tnZikIAnlU7nJ3LCOB0Y3cGUb2S5LVwsjjcV+Vv315djKNGwef
         9SRyIV2shhfzmYIioaUG/m6y99gRdU2mXfZtuPpfkjr5eLpG8aRQ0zUXjfsUQKdRUwVl
         zA2EKd1ZKYbImCeFupaNz8Lug/mlQ79iB3GB+J9/+dpMT6ElxIarvgkCCsee8Cn0/i7s
         nIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YAOBiaOVjZIsq95WSK7zwDppH4zwYILADXtPYMpP3e8=;
        b=mwor1jTIROkW+z0mtY5lvreFsTXJsgrOYe2KpWZ2OhMKMfH5eDGgR2KMVtNfeVnIXY
         8ta/K4oftNm7eZlGr0FUrge7QR3fyMlOGQfjFHMh1h3bgthNh2BwkAIQmH+G6qjKcPDo
         Cdw32x6OiyP1NqSAQOTaWLxoAkBEFf5bSK44gojxiXHLIXJ/ifnsqL3/l+Otsl83Gz5E
         7RVwbEtqN+KXdTok1r7OBsv5vzRVWh3hF47L9CHjqM9kv+JSiLng2+39q7YvI5V1xU9Z
         ylnCx9Df/oshv6Wh0mGJhxj3q8sC4Y9Fd4C98JhgFok+0ojnvqyv3GtewVhuRwyxh0ml
         Ul0A==
X-Gm-Message-State: ACrzQf3LYYr2W+cmP8qUh/HBETrmnXOXxUmsbcmHAwJzY2ySLs7Pyawk
        bJBqnJ0yZAtT7kinfZy39YQyb+7ZJX8=
X-Google-Smtp-Source: AMsMyM5by4hYszsetKVwghyO8RsyUgat794TtU3KGVfks1EosmxZ8xuoUzRscPff86mLCxM2MsE4jg==
X-Received: by 2002:a05:6000:1b85:b0:230:3652:335 with SMTP id r5-20020a0560001b8500b0023036520335mr1329065wru.467.1665700776072;
        Thu, 13 Oct 2022 15:39:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q15-20020a05600c46cf00b003c3c2df83ddsm1785686wmo.26.2022.10.13.15.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 15:39:35 -0700 (PDT)
Message-ID: <94f27742-4322-9473-4fc0-2979a284cc5e@gmail.com>
Date:   Fri, 14 Oct 2022 00:39:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v3 1/2] time_t.3type: reference _TIME_BITS (time64)
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013205852.1551042-1-sam@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221013205852.1551042-1-sam@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pEDiibSzJGZLEJm1PsezgDo4"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pEDiibSzJGZLEJm1PsezgDo4
Content-Type: multipart/mixed; boundary="------------QijCItfsqr2Kt2UxAvgVeptR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <94f27742-4322-9473-4fc0-2979a284cc5e@gmail.com>
Subject: Re: [PATCH v3 1/2] time_t.3type: reference _TIME_BITS (time64)
References: <20221013205852.1551042-1-sam@gentoo.org>
In-Reply-To: <20221013205852.1551042-1-sam@gentoo.org>

--------------QijCItfsqr2Kt2UxAvgVeptR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMTMvMjIgMjI6NTgsIFNhbSBKYW1lcyB3cm90ZToNCj4gSnVzdCBsaWtlIHdlIGRv
IHdpdGggX0ZJTEVfT0ZGU0VUX0JJVFMgaW4gb2ZmX3QuM3R5cGUuDQo+IA0KPiBSZWZlcmVu
Y2U6IGh0dHBzOi8vd2lraS5nZW50b28ub3JnL3dpa2kvUHJvamVjdDpUb29sY2hhaW4vdGlt
ZTY0X21pZ3JhdGlvbg0KPiBSZWZlcmVuY2U6IGh0dHBzOi8vc291cmNld2FyZS5vcmcvcGlw
ZXJtYWlsL2xpYmMtYWxwaGEvMjAyMi1KYW51YXJ5LzEzNDk4NS5odG1sDQo+IFNpZ25lZC1v
ZmYtYnk6IFNhbSBKYW1lcyA8c2FtQGdlbnRvby5vcmc+DQoNClBhdGNoIGFwcGxpZWQuDQoN
ClRoYW5rcywNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4zdHlwZS90aW1lX3QuM3R5cGUgfCA2
ICsrKysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gDQo+IGRp
ZmYgLS1naXQgYS9tYW4zdHlwZS90aW1lX3QuM3R5cGUgYi9tYW4zdHlwZS90aW1lX3QuM3R5
cGUNCj4gaW5kZXggZDQwZGQwYzBkLi45YjhmMDczNTYgMTAwNjQ0DQo+IC0tLSBhL21hbjN0
eXBlL3RpbWVfdC4zdHlwZQ0KPiArKysgYi9tYW4zdHlwZS90aW1lX3QuM3R5cGUNCj4gQEAg
LTcwLDYgKzcwLDEyIEBAIFBPU0lYLjEtMjAwMSBhbmQgbGF0ZXIuDQo+ICAgUE9TSVguMS0y
MDAxIGFuZCBsYXRlci4NCj4gICAuUEQNCj4gICAuU0ggTk9URVMNCj4gK09uIHNvbWUgYXJj
aGl0ZWN0dXJlcywNCj4gK3RoZSB3aWR0aCBvZg0KPiArLkkgdGltZV90DQo+ICtjYW4gYmUg
Y29udHJvbGxlZCB3aXRoIHRoZSBmZWF0dXJlIHRlc3QgbWFjcm8NCj4gKy5CUiBfVElNRV9C
SVRTIC4NCj4gKy5QUA0KDQpUaGlzIC5QUCB3YXMgdW5uZWNlc3NhcnksIHNvIEkgcmVtb3Zl
ZCBpdC4gIEJvdGggUFAgYW5kIFRQIGFyZSANCnBhcmFncmFwaGluZyBtYWNyb3MuICBUUCBk
b2VzIHdoYXQgUFAgZG9lcyBhbmQgbW9yZS4gIFNlZSBncm9mZl9tYW4oNykuDQoNCj4gICAu
VFANCj4gICAuSSB0aW1lX3QNCj4gICBUaGUgZm9sbG93aW5nIGhlYWRlcnMgYWxzbyBwcm92
aWRlDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------QijCItfsqr2Kt2UxAvgVeptR--

--------------pEDiibSzJGZLEJm1PsezgDo4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIk6YACgkQnowa+77/
2zKvwhAAqHwRELrPfGvIBxcUe+APY5jVGzeYn8VwB+X5RN1odJ24nLzA/8IBHhwm
lynReEFjOw63WBs4r3bcgAne51Dv5BrB/jt3sUpoC0tuPmbZX8l2B41qcXD/iQpr
Oq8YriczCb8dEiciMNx5RfbKsp83kyR55TDAiqdduSsfCT3AQnKmFyqawgJRBKmo
ba5KJSDP84JE+SIhFGssYkEGTgFoubVsCTWKa5c08YdYNT088xWufhW6X1lsNs1V
OrlAMwWvowbYzecg1prwgNMZaHldq6tf9mfCG1xBykINvavZbfZ36vYKLGiRgXbG
hw4CIOLmGzTS/tAF4bBo/V4N1/GVYSQZggrjAXAKWw/+aXw7cQsayfQozzyNclHW
TmwSZ/O+MYroNeNKwezFStYfCDFqfhew5WTuKQP57ke4beo5I1n+rywUFCpGAFts
t1YrCdDHNEEQLJlrQqUTSSxy5YHpLam4tkFL8+GTUsMZG4/xDP0NebVAo3+BY85A
/PY/gn4evdn9ClfIIzdjCDZxBQNVDoCzSCQxyJROIot41dCb5m9hyHHxP8DIkgZz
mv861TbgYXBl56JuJKKtHYKat/ipl6+YvL8uYVEChwpTllw5KiE6kUUziUu2JA/v
F2/rXsySNBY0ZVD78b3Pg/KuKTioadoNAT4mDBXjXN0XWiY/YYw=
=fa5V
-----END PGP SIGNATURE-----

--------------pEDiibSzJGZLEJm1PsezgDo4--
