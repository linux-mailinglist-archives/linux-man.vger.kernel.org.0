Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66CC45695B2
	for <lists+linux-man@lfdr.de>; Thu,  7 Jul 2022 01:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232797AbiGFXPK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jul 2022 19:15:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbiGFXPJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jul 2022 19:15:09 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 358A2DD8
        for <linux-man@vger.kernel.org>; Wed,  6 Jul 2022 16:15:08 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id be14-20020a05600c1e8e00b003a04a458c54so9751318wmb.3
        for <linux-man@vger.kernel.org>; Wed, 06 Jul 2022 16:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=9cb+hmDUjxlnh0UFC2FpOdAxqP1OywHb7LvmgPXS1JU=;
        b=SQlnEyp6w34BtWo93fMm+CAZ2GyA0uwHjZ67yR45zj0ZiyLP9J7wV+y5BQwPg459yP
         3FfpIIQx7Ug44MHQaSpHquoEGw9rECxaWqgF1Qi17nTc7cuCMyG6ltRvSu4425F5BHJa
         s4BAwHzaajT7W+eioCwSSkqXKYBq8rs4SRtqlTsfPnaC2JzMsbCrbEa9ximWufhQfeJx
         +D/eixBMrLTk5cp9u4t7rtoB0G5DXbnlC932c+4lmw4CQg/By+wWMNoV/+KVCdrjz7MP
         HqhTwrkWtRjbjg4d+JDee7cOEBOShGfG14rNZVOfciEyZ+pezFyvRdFMsE8UE4tS0zAa
         rTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=9cb+hmDUjxlnh0UFC2FpOdAxqP1OywHb7LvmgPXS1JU=;
        b=Sow6Quk9IhXClRCXBCcQIdXHw6KxEpRc7gn38HLIooEe61nSRqBqm74PPWoSkNMg3u
         Cmrvk1oU43QZ3HS1BcR2g02/Gv8uMJW/20AvU0iI6+ewyD3yci+5FNZIfEuXzVs9zEJh
         oaNlETK9REgoq70CBAG9zNF8ROE3MQOWRdKNPY2W8O7zKprjTtWFckSU6ASi+9TyWoEF
         O6NpzBUxC3Esz0Rk98XLnsfYvMYcu3RNI9E4H4WveWolznxBaLCxpKn0jp2PReKLM4wx
         lAsgNHackucLcalBVlNdzZN5QXzpT0uwm8ltm7K0hb5N0tSm1VHtcV3J6x+8cxmE1Owy
         T1zQ==
X-Gm-Message-State: AJIora+3zme8DIVwpc87GRFGApHhV2Wev9n8pagvHW3Xx884auP1WprW
        ceMxU22pH2e1Pu6Ej98u7I/x51pODUA=
X-Google-Smtp-Source: AGRyM1tEkLR6I0ZfqHiXWuJds5EJgMMOYkfYAVlS/EkhUuRdL0l6yRZ4ybc9n/JyG1ncqsX8/7PBRA==
X-Received: by 2002:a05:600c:3399:b0:3a1:967a:78af with SMTP id o25-20020a05600c339900b003a1967a78afmr1009382wmp.29.1657149306628;
        Wed, 06 Jul 2022 16:15:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bd16-20020a05600c1f1000b003a18ecfcd8csm18279632wmb.19.2022.07.06.16.15.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 16:15:05 -0700 (PDT)
Message-ID: <bb07d533-2d93-200a-b43c-8ca67c18ef8b@gmail.com>
Date:   Thu, 7 Jul 2022 01:14:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [patch] for the printf.3 man page
Content-Language: en-US
To:     =?UTF-8?Q?Dr=2e_J=c3=bcrgen_Sauermann?= 
        <mail@xn--jrgen-sauermann-zvb.de>, linux-man@vger.kernel.org
References: <d1bb4b12-935e-9fdb-9f60-7fa6ee7bea25@xn--jrgen-sauermann-zvb.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d1bb4b12-935e-9fdb-9f60-7fa6ee7bea25@xn--jrgen-sauermann-zvb.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BTgM4NoIaAwR6m4luI673dzG"
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
--------------BTgM4NoIaAwR6m4luI673dzG
Content-Type: multipart/mixed; boundary="------------d1RWNSHiGH3ecjkmYipFglEj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Dr=2e_J=c3=bcrgen_Sauermann?=
 <mail@xn--jrgen-sauermann-zvb.de>, linux-man@vger.kernel.org
Message-ID: <bb07d533-2d93-200a-b43c-8ca67c18ef8b@gmail.com>
Subject: Re: [patch] for the printf.3 man page
References: <d1bb4b12-935e-9fdb-9f60-7fa6ee7bea25@xn--jrgen-sauermann-zvb.de>
In-Reply-To: <d1bb4b12-935e-9fdb-9f60-7fa6ee7bea25@xn--jrgen-sauermann-zvb.de>

--------------d1RWNSHiGH3ecjkmYipFglEj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSsO8cmdlbiwNCg0KT24gNy82LzIyIDE1OjMxLCBEci4gSsO8cmdlbiBTYXVlcm1hbm4g
d3JvdGU6DQo+IEhpLA0KPiANCj4gSSB3b3VsZCBsaWtlIHRvIHByb3Bvc2UgdGhlIGF0dGFj
aGVkIHBhdGNoIGZvciB0aGUgcHJpbnRmKDMpIG1hbiBwYWdlLg0KPiANCj4gVGhlIHBhdGNo
IGFkZHMgdGhlIGZvbGxvd2luZyBzZW50ZW5jZSB0byB0aGUgZGVzY3JpcHRpb24gb2YgdGhl
ICcgZmxhZyANCj4gKGFrYS4gdGhvdXNhbmRzIHNlcGFyYXRvcik6DQo+IA0KPiBOb3RlwqAg
YWxzb8KgIHRoYXQgdGhlIGRlZmF1bHQgbG9jYWxlIG9mIGEgQyBwcm9ncmFtIGlzICJDIiB3
aG9zZQ0KPiBsb2NhbGUgaW5mb3JtYXRpb24gaW5kaWNhdGVzIG5vIHRob3VzYW5kcycgZ3Jv
dXBpbmfCoCBjaGFyYWN0ZXIuDQo+IFRoZXJlZm9yZSzCoCB3aXRob3V0IGEgcHJpb3Igc2V0
bG9jYWxlKDMpIG5vIHRob3VzYW5kcycgZ3JvdXBpbmcNCj4gIMKgY2hhcmFjdGVycyB3aWxs
IGJlIHByaW50ZWQuDQoNClBsZWFzZSBzZW5kIHlvdXIgcGF0Y2ggaW4gZGlmZiAtdSBmb3Jt
YXQuICBTZWUNCjxodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvcGF0Y2hl
cy5odG1sPg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiANCj4gDQo+IEJlc3QgUmVnYXJkcywN
Cj4gSsO8cmdlbiBTYXVlcm1hbm4NCj4gDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------d1RWNSHiGH3ecjkmYipFglEj--

--------------BTgM4NoIaAwR6m4luI673dzG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLGF3AACgkQnowa+77/
2zLIYA/+L6E/8driwDHd5w0rEPU02DFl3n2D730eu0dBEPhehAyze1fbiERJPaGy
6OmgFb7FzpBqHsCX5bnTUR9vF58mzXc2mlElmklG14M2HyjBB5nXx7joXjFQa0m2
4rpBeLVALjrm5JXTtqvVq54BFCuGuccSKgeL2UnQo5LurXBI3f+Rpt+XmwzNIp2A
dlvX+bw7SOZFT1ViHPT5EV9n6QMJro3pZFuuvFgZKdS3L8aBevFxYxCxLeWcJjnp
Axt3Scm8pQM2F8fIupJUNHpJ1Zlfyx0E5Z3LyNdA/55ZCg/b+t+6zL2SD2PnV7K4
Z+z1IAjNiPtuY+PgHSm029En+SohkeqG0oRnz14SFWUXhrBrsoSYOBtuxl2vwjQb
wUByTFbD98oSiQPtOKQj24t/67eh191jSAbaOK2Xtw7V0E5DHN/oASvIs3+Lh7Xv
hd2jXc7byoJNswGsrV8P1ll+Pyjazd1k+lo6vzkVbMlQmd+VAmU3Cr7k2z4I6g9i
L4XCrwUpmj4/uc+fbtPVvUMnm4qI6hnlTY6Jf6rASrseA75vT8eLmCvkaSkzn3hS
s2Y9PvfkAEDY5wm9rWlLbWdS2CS1vo6s1HYpEWUG/4D1PBESAifYVYyqZ/lfOT39
355ye1mTalbKUGCqkQX8BAvWTFKva0JM0GwPDqbQiJ3oiGQ4LsA=
=AeZH
-----END PGP SIGNATURE-----

--------------BTgM4NoIaAwR6m4luI673dzG--
