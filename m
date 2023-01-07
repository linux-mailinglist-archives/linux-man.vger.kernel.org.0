Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 415EC660AD7
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 01:34:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236566AbjAGAee (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 19:34:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236149AbjAGAe3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 19:34:29 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EA758CD25
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 16:34:24 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id bk16so2731722wrb.11
        for <linux-man@vger.kernel.org>; Fri, 06 Jan 2023 16:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fRCd3vrEl419N+SImSODGxjcfmvvv6NJ40YdJ7OQMu0=;
        b=BJWj4nfW9L60j4I/F0eE1I9LrMOpTb1qFPfjntfP9y6nRn+jAeuegH+9mMEmAOMgl6
         t0q1bIujCvmi0u2iFPhlv7AA6bh05VJh+dLxkXPG56HovHHnHq872vP+dEukqF01uB6P
         wI9RoFOJbtJRXdNcUF64k03ekBMJV1m+mcMuBjOxH8Pjg/ydnewpNc7enJq/B6fD3rkp
         VOQxgvX1NC+hFEjsf4TeX4n7GWg+GpoNOTYDgvXIJ562eFFmsddK8V3RLBOv0p5stlL6
         EKATJ+9bT8ufbYN6Ygu8p1X/e+TwyyK+7ZwYGNklRcuahkBfzgNpSL5JSeM8x95UpdGI
         liVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fRCd3vrEl419N+SImSODGxjcfmvvv6NJ40YdJ7OQMu0=;
        b=SUwvVQX3b8/smkQY40ArBApQ4q1TS5tToNKx1Q03kmqEmBou+HTscf1X/ZfKgsApBY
         H3HovYSF7d1nliRLLLb5cfpoG0C8kYUCmiUESTYK6snkaVHcOvwzPIWVdJKnjkXl9NXv
         lq3+1+q6pq0/ImyRLYVJglCn5y4nAGe6OzMiQ+u6HXQosrZx1Ee/Cd2R9lKHBdSanX1V
         LTSmBR7RALov1GaUDQWy7Lmk0AerNs87sVHVQnob529TnazvNbvhH1kwQ+/rA37QZW+N
         4F5lOra6TEH9a65AxEpePIU21KJZtUKAKCefjwDfiNhO2U0SK1mOS1a6UqSLvuplfMTK
         rFjw==
X-Gm-Message-State: AFqh2kr1wC6oT9ROMmpnaaquzKImL1Dn5hSTfEv/rvffXxrClXZ0FH+r
        8PrQJfjrnnO0lzRs6O/OM54=
X-Google-Smtp-Source: AMrXdXu8Zi8aEJLAUbb1eVWoDzMndVCLBr0BYpWXGLh5+G0ddCXg1lWWyE0ZZ1OoXH2xV6YPxQ9aVA==
X-Received: by 2002:a5d:58c5:0:b0:28f:c68f:f5ee with SMTP id o5-20020a5d58c5000000b0028fc68ff5eemr20991692wrf.28.1673051662820;
        Fri, 06 Jan 2023 16:34:22 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u14-20020a5d6ace000000b002422bc69111sm2834960wrw.9.2023.01.06.16.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 16:34:22 -0800 (PST)
Message-ID: <7e17cc0f-c6c8-276a-7d2a-efc3af814de2@gmail.com>
Date:   Sat, 7 Jan 2023 01:34:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Manual page sections shouting
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
References: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
In-Reply-To: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------eya0bsIk0nfUvARQHkkrTrYs"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------eya0bsIk0nfUvARQHkkrTrYs
Content-Type: multipart/mixed; boundary="------------pKJziBRQUJkA010TkqS1W7Ux";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Message-ID: <7e17cc0f-c6c8-276a-7d2a-efc3af814de2@gmail.com>
Subject: Re: Manual page sections shouting
References: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
In-Reply-To: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>

--------------pKJziBRQUJkA010TkqS1W7Ux
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAwMToyNSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIEJy
YW5kZW4sDQo+IA0KPiBJIGFncmVlIHdpdGggeW91IHRoYXQgSSdkIHByZWZlciB0aGF0IHNl
Y3Rpb24gaGVhZGluZ3MgZGlkbid0IHNob3V0IGF0IHRoZSANCj4gcmVhZGVyLsKgIEhvd2V2
ZXIsIEkndmUgd2FpdGVkIHRvIGRvIHN1Y2ggYSBjaGFuZ2UsIGJlY2F1c2UgSSdtIG5vdCBz
dXJlIGFib3V0IA0KPiBpdC7CoCBUaGVyZSdzIGEgZ29vZCB0aGluZyBhYm91dCBoYXZpbmcg
dGhlbSBpbiB1cHBlcmNhc2U6IHJlZmVyZW5jZXMgdG8gdGhlbSBhcmUgDQo+IGFsc28gaW4g
dXBwZXJjYXNlLCBhbmQgdGhhdCBtYWtlcyBpdCBlYXN5IHRvIGdyZXAgZm9yIHRoZW0gKEkg
bmVlZCB0byBkbyB0aGF0IA0KPiBmcm9tIHRpbWUgdG8gdGltZSkuDQo+IA0KPiBEbyB5b3Ug
aGF2ZSBhbnkgb3BpbmlvbiBvbiB0aGF0Pw0KDQpBbHNvLCB3aGVuIHJlZmVycmluZyB0byB0
aGUgc2VjdGlvbiB3aXRoaW4gYSBwYWdlLCB3b3VsZCB5b3UgcmVmZXIgaW4gbG93ZXJjYXNl
LCANCm9yIHRoZSBmaXJzdC11cHBlci10aGVuLWxvd2VyPyAgVXNpbmcgdXBwZXJjYXNlIGlz
IHVuYW1iaWd1b3VzLCB3aGlsZSB1c2luZyANCmxvd2VyY2FzZSBtaWdodCBuZWVkICJzZWN0
aW9uIiBuZXh0IHRvIHRoZSBzZWN0aW9uIG5hbWUuICBNYXliZSBpdCdzIG5vdCBzbyBlYXN5
IA0KdG8gZG8gdGhlIGNoYW5nZS4NCg0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiAN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------pKJziBRQUJkA010TkqS1W7Ux--

--------------eya0bsIk0nfUvARQHkkrTrYs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO4vg0ACgkQnowa+77/
2zKd/g//Sf3i6dziwjWtRyKguFjtaefWb5YVEAa1u98FiX/oWVbZzZZQqwhFDmOv
BH+st7gGtEHPIUyKd9SHuNZMfS4uQQEbLy1nEs2HV6ropJ+9znTimx4HCOYSqVLR
hGiwViyAoMLSnFI3bA/K6rC2izzPjMkynmIlqFlEtSXaTu4UomJOwVwnM6xedenF
/ofiPxXai+dvgq3PC7ekhee+QF3DqupVc4YerQ3qgqI7IOji+TREjGTySfYdyzGX
bCsnt7twLLAiZw+FrTulg43oP+7KQ99W+SeVaGJvgkcLTvJMsp3MH9OMNvd0eoTk
YLfHLgsdtr4owdWAB7ZgkK25j4uFTrfy7xeffJ/ryk3LliJ9L8XoIHKLo49Yi/6X
SGbW0MujsibFXpsYd8Mf44T53tsd0+PtEeot+NbCrgj97+nOOLE0SnuwAEqQxS5A
4S7ahrlN2CtMgrsxkQu0Z/ipi2b4ejUgMSyhZohKAsHV9OESThLMNPMNh/CIK2T2
rWx4i6aKMp+3Eb4zonW4E57zlbzHnq11j4xADra6Ccmev/zrPqsIi/8k1eZMwIK3
dI7cZ/Zy/FwShY2AKb4/qOi69Wya/shm0X+ZGIgIcGYi/8JDSOh05Aj84tpRqkzB
G4IRdMGz8PiMSjm3emiQMC7nMpKcYhCX0TP0C/T08xVMjby46Tc=
=Ayk0
-----END PGP SIGNATURE-----

--------------eya0bsIk0nfUvARQHkkrTrYs--
