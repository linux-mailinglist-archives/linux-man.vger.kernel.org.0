Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A6B7532A74
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 14:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232680AbiEXMgY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 08:36:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237428AbiEXMgF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 08:36:05 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11C6C10C6
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 05:36:03 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n124-20020a1c2782000000b003972dfca96cso1304613wmn.4
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 05:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=2d4evT+lv/0Zo3p8YQyYNlTfew3lJYVoI/4l4md+8eo=;
        b=KM/9/7c+YgarIdjvRk4Xu6QopaAKCDNGEhf/pZnbXPx8ZNKjD3kkAAmKGDhlTCJ5PZ
         vQKwamfANRLY4T041Q+rql2ao67tsVJ8Yp5J3yWnvZf263tNlrz8q/IwGZ/oOCntFo/l
         EQJEeVzY6eSnIpGOJYTH+WJQ6LJXUxgAxbe8Wo6mHAE4xF9tmRrcsvuuHENTBgOh5DTL
         SVSMj/FzbbZhkFPYyuDIrbgF3wjHBUw48L71wxe0Vczi13Eat+ycbOiHGFe/N3WLMmz6
         kzSwXIPgG2b2Yyp1H5zAgEFUu1wo0t10n+8Ljy9SshiEogtQO4jtLDW18Ms+IuVAG212
         qcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=2d4evT+lv/0Zo3p8YQyYNlTfew3lJYVoI/4l4md+8eo=;
        b=JeLWn8hq22efRktaWgR9Kc0bjhI20rMr5XVSd/OZiEvECxxAV6XHtn4FhJRjKeNYn2
         3P1+x90wmtnxXTQIYRtXWMWwbWFLqyVFTXeGrV95EWIc4e+/Ud0TjyDW6FAPEW+m29Gd
         x0coTKPpZBj2CoQzJLSQX2TRyHz6DsTRuyz+pc7cKKpGIGSQzrq1uQZpK3hXkbq1ShxK
         2VKfbQaxw+wrfOcYYlXAmMNcUXi/zbOSYMM1//R5xN9OvFMBWosLhmTzTBanl59do9Q/
         yWoUGR/fvtcvcFjeAIK4h4n0Rb85A4GhMnct/TWKKh9SYayBQNRSZOI9Wh8AkKK+TKF+
         Cnmw==
X-Gm-Message-State: AOAM532hAGByotq93g7lKIrDaW6kxRSQOj9iwZOcFsbiSnzRGOmqxl19
        l05uDWuVR7+Vuw72ot8JPNU=
X-Google-Smtp-Source: ABdhPJwF53BlQQgoiJeUdWbE9gBstKX8LhuE3RjzbzkT662oeHb0oO6M8OK6p+GSWbuWsWQbssVvIQ==
X-Received: by 2002:a05:600c:28cb:b0:397:6493:379f with SMTP id h11-20020a05600c28cb00b003976493379fmr608364wmd.6.1653395761538;
        Tue, 24 May 2022 05:36:01 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q14-20020adfab0e000000b0020d0c9c95d3sm12897138wrc.77.2022.05.24.05.36.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 05:36:00 -0700 (PDT)
Message-ID: <8a7ae307-77a2-b2cb-0af4-7ec3ad6ca032@gmail.com>
Date:   Tue, 24 May 2022 14:35:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v6] fanotify: Document FAN_REPORT_PIDFD Feature
Content-Language: en-US
To:     Florian Weimer <fweimer@redhat.com>,
        Matthew Bobrowski <repnop@google.com>
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com,
        krisman@collabora.com
References: <83b96ea91e5da1bdc092b34ab92bd5d1db4dbee0.1653371709.git.repnop@google.com>
 <87v8tvtakv.fsf@oldenburg.str.redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87v8tvtakv.fsf@oldenburg.str.redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wzLiNV8spYpoDJwhkolARAxU"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wzLiNV8spYpoDJwhkolARAxU
Content-Type: multipart/mixed; boundary="------------CTRjLRIIQzFmID8zukUrVK9Y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>, Matthew Bobrowski <repnop@google.com>
Cc: linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com,
 krisman@collabora.com
Message-ID: <8a7ae307-77a2-b2cb-0af4-7ec3ad6ca032@gmail.com>
Subject: Re: [PATCH v6] fanotify: Document FAN_REPORT_PIDFD Feature
References: <83b96ea91e5da1bdc092b34ab92bd5d1db4dbee0.1653371709.git.repnop@google.com>
 <87v8tvtakv.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87v8tvtakv.fsf@oldenburg.str.redhat.com>

--------------CTRjLRIIQzFmID8zukUrVK9Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRmxvcmlhbiwNCg0KT24gNS8yNC8yMiAxMzo0OSwgRmxvcmlhbiBXZWltZXIgd3JvdGU6
DQo+ICogTWF0dGhldyBCb2Jyb3dza2k6DQo+IA0KPj4gZGlmZiAtLWdpdCBhL21hbjIvZmFu
b3RpZnlfaW5pdC4yIGIvbWFuMi9mYW5vdGlmeV9pbml0LjINCj4+IGluZGV4IDdmOWEyMWE1
Mi4uMDNkMGIxNzExIDEwMDY0NA0KPj4gLS0tIGEvbWFuMi9mYW5vdGlmeV9pbml0LjINCj4+
ICsrKyBiL21hbjIvZmFub3RpZnlfaW5pdC4yDQo+IA0KPj4gKy5CUiBwaWRmZF9vcGVuKDIp
Lg0KPiANCj4gSSB0aGluayB0aGlzIHNob3VsZCBiZToNCj4gDQo+IC5CUiBwaWRmZF9vcGVu
ICgyKS4NClsuLi5dDQo+IFRoZSB3aGl0ZXNwYWNlIGlzIHNpZ25pZmljYW50OiBpdCBzd2l0
Y2hlcyBiZXR3ZWVuIGhpZ2hsaWdodGVkIGFuZA0KPiByZWd1bGFyIHBhcnRzLCB3aXRob3V0
IGFkZGluZyBhbnkgd2hpdGVzcGFjZS4NCg0KVGhhbmtzIGZvciBjYXRjaGluZyB0aG9zZSEN
CkknbGwgYXBwbHkgdjYsIGFuZCBhbWVuZCB0aGVtIG15c2VsZi4NCg0KQ2hlZXJzLA0KDQpB
bGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------CTRjLRIIQzFmID8zukUrVK9Y--

--------------wzLiNV8spYpoDJwhkolARAxU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKM0ScACgkQnowa+77/
2zKGmw/+MTdfT7x6EjKK7MYMQlSPNpaAfNM5PrFhYbgnvVncfcWezVeosy5wXm0I
l36AOfu3Zn4WLbYx250JIr1o+dRoRLpugXPGil/n0QUzWQZ/eyFH/WrCmlQ9TGoU
Q4CS2eplHMGhPBAYwmHEQW6TLSvmyIN/YDfCC7MRx3Pn2Fs+C4Nlq5U3UyAZDenH
C86Qv47yltRqJ4AIxGyeWPj2AjGHeOocU65OAaiubIW3hEYmaytm7GId6uC97DXj
4t9Ci5ShI2boGHJnYDf+4A41Kr1UNR4GR+6da5XV8qio68BnPlmxZAelnH+PkUmg
qGUdVm/6ArjTTZE8YhQOMPYIzZHMo9E4I250WjT4lwjv0o0ldsFpPlAZ8g7ax08w
VN3N6J6WGqr0+VMWNm7boJjGvhcr6KZKvHmuc6zHo1KxeUxWIJo18oZNf79ACHMe
392JC3KWGmMnqP4KTrlTBK+OpULSxIm22hALsh2yFDI65UpjQPeV+AgXtNkzm5Yd
0xKJhl+lI4W/azav9qZM/tnExEddcMXeYKrFjXzHTTiWz7R0SJiacWcKvYz4sX73
bDG2Z/yUgA9pozbRsa8T7+XlDXVTJ2mPoZHMqsZhg57RaNxvEH0X7IWbMhNICFrw
rdflZBe0ScXq5O/8nyiHRUGKsuSiJIhAENrU5R82pti1pWHZfXA=
=CduH
-----END PGP SIGNATURE-----

--------------wzLiNV8spYpoDJwhkolARAxU--
