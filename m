Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BD14661160
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 20:39:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjAGTjN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 14:39:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229904AbjAGTjM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 14:39:12 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91E5740C16
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 11:39:11 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so5919351wms.0
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 11:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DIhUCBNI/R2N+LVKNvVVPQl0OOeJBsyZ42f5UJ4LbwE=;
        b=DilPJeAV2IIwPyBnuHThcZ+9MXFnBd+eP9K4CfTWISfK1rB9SXHhCab3iXqlW092Cy
         4as2DoyG4UCpvv3ldUpcxITIVJ1S+GDYOzJHzCf+/vc3O0F6jefy4v8egKOrqRxKmehx
         3uJ6gk5cSjQwQIJ11hFTWo2AckwIXjSL3Vmv5PEBMdx1JeIFEDUcJTTxKbUYZJ9PK++J
         1DQM/RUUhLJqbzNyK+L9JUrLCDcC8v0Xa7kP+mkTYObPCvvLMGK3dm0/I06s5LRENjC7
         OlY0BzFER+bgaPpFlo3s4ZJ60iOO07MckKhI3qPoryputjYnCEMMs4a4RI03mzOwKNDs
         zT4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DIhUCBNI/R2N+LVKNvVVPQl0OOeJBsyZ42f5UJ4LbwE=;
        b=e2wxw3lPadCgJp2o8Ml1v0N7AAzEfNHW/8cVjhRyzGqonllvIpIvMoFA0FULKc6I9+
         NMsW4/weqj2T5V9GMhAdIe3sjRXmXa1joD/kOgycmY0ps/zuayE/BXUta9k09HxYT9+e
         6xZvSAVA/sDRgrI3Dg8nF8BOs0VfG6MqgFHaz4J5cmIW0dj/9gd628clFhgTtC56CW2c
         EOZQNSrpysn3firiGM+p73eBAl4/6WVin16Ar6XWGcrkLjut2nreAdDvvJleOI2M6/S9
         uStlw/K19uzgvce+saMVXVNpNkrAapr1EYLFiewyq+MtZqMs3q+K6a6M9APWXdY3rvaw
         oMHg==
X-Gm-Message-State: AFqh2krEZcr77mE+zahsEFkmsmq/mAw6ROl5BkUVMmE00bKZz2dmlpQJ
        ozuC49gUfrD50avcEn/x6OA=
X-Google-Smtp-Source: AMrXdXvebzTWEDrlQvO5tqmrO1Ad72QCGDvBj+IkxdKwGH0VOVS5i0UnypmhbXe7rzCEIIHkZzXTMQ==
X-Received: by 2002:a05:600c:4fcf:b0:3d1:d396:1ade with SMTP id o15-20020a05600c4fcf00b003d1d3961ademr42275500wmq.9.1673120349999;
        Sat, 07 Jan 2023 11:39:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05600c3caa00b003b4cba4ef71sm12216030wmb.41.2023.01.07.11.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 11:39:09 -0800 (PST)
Message-ID: <a7647f84-d15f-aab9-94ea-2ddddf397407@gmail.com>
Date:   Sat, 7 Jan 2023 20:39:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 02/10] ldconfig.8: Revise and update for glibc 2.32
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095422.44loq4pzsfjktvpz@illithid>
 <43a8427b-4038-054e-cea1-c54417bf65bb@gmail.com>
 <20230107165324.c2t2senoh3loyof4@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107165324.c2t2senoh3loyof4@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AFYulXVrhCS1segPEpbLBeT9"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AFYulXVrhCS1segPEpbLBeT9
Content-Type: multipart/mixed; boundary="------------lnSz0YwhvsIMl5xZRItB6ebJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <a7647f84-d15f-aab9-94ea-2ddddf397407@gmail.com>
Subject: Re: [PATCH v4 02/10] ldconfig.8: Revise and update for glibc 2.32
References: <20230107095422.44loq4pzsfjktvpz@illithid>
 <43a8427b-4038-054e-cea1-c54417bf65bb@gmail.com>
 <20230107165324.c2t2senoh3loyof4@illithid>
In-Reply-To: <20230107165324.c2t2senoh3loyof4@illithid>

--------------lnSz0YwhvsIMl5xZRItB6ebJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS83LzIzIDE3OjUzLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wN1QxNDoxMDoxMiswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+PiAqIEV4cGFuZCBkZXNjcmlwdGlvbiBvZiAi
bGQuc28uY29uZiIgZmlsZSB0byBkaXNjdXNzICJpbmNsdWRlIiBhbmQNCj4+PiAgICAiaHdj
YXAiIGZlYXR1cmVzLiAgRGVzY3JpYmUgdGhlc2UgYXMgImRpcmVjdGl2ZXMiICh0aG91Z2gg
dGhlDQo+Pj4gICAgbGF0dGVyIGRpZWQgdXBzdHJlYW0gaW4gZ2xpYmMgMi4zMiBiZWZvcmUg
d2UgZ290IGFyb3VuZCB0bw0KPj4+ICAgIGRvY3VtZW50aW5nIGl0KS4gIERvY3VtZW50IGxk
LnNvLmNvbmYncyBjb21tZW50IHN5bnRheC4NCj4+DQo+PiBJIHRoaW5rIGxkLnNvLmNvbmYo
NCkgbWlnaHQgYmUgYSBnb29kIG1hbnVhbCBwYWdlIG9uIGl0cyBvd24sIGFuZA0KPj4gbGRj
b25maWcoMSkgcmVmZXIgdG8gaXQuDQo+IA0KPiBzLzEvODtzLzQvNQ0KDQpEJ29oIQ0KDQo+
IA0KPiBUaGF0IHNlZW1zIHJlYXNvbmFibGUuICBDYW4gSSB0YWNrbGUgdGhhdCBfYWZ0ZXJf
IHRoZSBjdXJyZW50IGJhdGNoIGlzDQo+IG9mZiBteSBwbGF0ZT8gIDotTw0KDQpZb3UgbWVh
biBhcHBseSB0aGlzIHBhdGNoLCB0aGVuIHByZXBhcmUgYSBuZXcgcGFnZT8gIElmIHNvLCB5
ZXMsIHRoYXQgbWFrZXMgc2Vuc2UuDQoNCj4gDQo+PiBBbmQgbWF5YmUgYWxzbyBmb3IgbGQu
c28uY2FjaGUoNCkuDQo+IA0KPiAoYXNzdW1pbmcgcy80LzUpDQoNCiouKg0KDQo+IA0KPiBI
ZXJlIEkgZG9uJ3QgYWdyZWUuICBUaGUgZm9ybWF0IG9mIHRoZSBjYWNoZSBmaWxlIGlzIGFu
IGludGVybmFsDQo+IGltcGxlbWVudGF0aW9uIGRldGFpbDsgdGhlIHVzZXIgY2FuIHNlbGVj
dCBhIGZvcm1hdCAocG9zc2libHkgZm9yDQo+IGZpbGUtc2hhcmluZyBwdXJwb3Nlc1sxXSks
IGJ1dCBiZXlvbmQgdGhlIG5hbWUgb2YgZWFjaCBmb3JtYXQgKCJvbGQiLA0KPiAiY29tcGF0
IiwgIm5ldyIpLCB0aGVzZSBhcmUgb3BhcXVlLg0KPiANCj4gSW4gbXkgb3BpbmlvbiBhIGZp
bGUgZm9ybWF0IG5lZWQgYmUgZG9jdW1lbnRlZCBpbiBzZWN0aW9uIDUgb25seSBpZiBpdA0K
PiBpcyAoZGVsaWJlcmF0ZWx5KSBleHBvc2VkIHRvIG1hbmlwdWxhdGlvbiBieSBvdGhlciB0
b29scy4NCg0KTWFrZXMgc2Vuc2UuDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCg0K
Q2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------lnSz0YwhvsIMl5xZRItB6ebJ--

--------------AFYulXVrhCS1segPEpbLBeT9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5ylUACgkQnowa+77/
2zI+Ww/+OG3ZLWqIjIgG7rqjydT8Gg5v3tDL1DA3VpJ1ZgkLwLJGy6O2uCrk6scO
siaGATyGm+NV4JyOkds5akoVZR9Bo7Ri/eXoWWLDl1ok4S85gIXrEBegOm/YL6Mi
tBqqqhQeqQCLTRX6I2yOkXEtimCqFdPlEKsKAu+YKOvWhIQNBH2vqMruyQWwDEyo
7BydxSU5gv1Rd51Y0yV7aqno6GGAnVQfkl7tuaJK9PjTrI0P2sNmSzyhpd7kVj1d
p2/9M5nt3SPoKH5Ndg6kXN4Go2OIUihdcgQzgIgjc88TuFgt3+AWFrjdg7Pt/A/i
o3/GNoIE2u/DX5MaEXoB4b4dGLA8OQf6wuBD6PhVsweb7zSv8uRLaygqw05f2S5F
i8L51pg4Dg47hc4yV/Ug5etFQVu/6flrawp/uV8Z2CKIHuyuAzGVroAzbwO18zJ/
49HiZuQQgahohPO/COwEGNWfLuIQMmUv76Km+kDgtfGzJRA0iBh7ia8YSneQrybS
5nGRCOqsTxtz08tWlmE67uEhgxMVnMA4Fg9+qk2qF4QVPOIFM8+HbLwYBchn+1fl
qWvlKj6tSMbpWUj3CCeOobF/nLXBh2yZaG0ycDwnMpgNnDw0xlvgv7xAN1aJdTmW
RnvJkT/qrgwJDivOo3I1Q+3pfdYbYQhMx8VzOu8FaecPS7Wfe94=
=Orca
-----END PGP SIGNATURE-----

--------------AFYulXVrhCS1segPEpbLBeT9--
