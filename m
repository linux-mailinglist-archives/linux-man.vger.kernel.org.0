Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4436064950C
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 17:09:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbiLKQJQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 11:09:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230214AbiLKQJP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 11:09:15 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C788A452
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:09:14 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id f18so9664792wrj.5
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fbcNesrpVAf+JKIfAouGzxsCLtk/35sZlGL1erPiZGE=;
        b=FGnDBdVoZ6W2s0UplcKhwJUlJt2wes8j8yBqMEyCW3TEwoe+jCC7PShKSnWBlttjhU
         4e9jrGJ9f98j1g87iUSuFfFhNz8EtqDI0sKleBCQLThZioL75fXIRCXX4G0OepHW90p4
         g+rSxyjeLIjny7zorLGcOxJR1zl2bWUNzgQ2K0T9z4rH34lacsAzPDFswaIeh066zTTE
         44zvh/leOAeJfT/wZJVjhXcpmhO0EPjvQm1vjMw2tI3xRn1DjbY005QgTnOwr3WdoWqO
         AtxVBmbJkCCmwowXKmhaFwkvuf/mMaF8azIFpvCTPgTAt8Ci+B33LFV8bKetL6zfZxv6
         SbtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fbcNesrpVAf+JKIfAouGzxsCLtk/35sZlGL1erPiZGE=;
        b=dHQyRqlYjmIExPx5UiXnbGfNKgRhvgcuCDYQTjNtKfhDp2KgyJJMCsE+21ArkzJhEa
         mDvnu/DDaRUvr6dRKTuihIvYVygZ5w3osthQ47ZaRmy6ZlhTFhtKOvJvGkhEpgtLd8rP
         JGUiCt+8hrZJJ2gtKZIjKAHLoZWlcUHR9AvvkZOXzz1lexjuXy5skKU3MivNpbIxDZOp
         Ke5lg4ccvx8X3q4FxG4SOqj5sAIQDWdSFrNqa18vfpjAO3b2H2tmlB42cUggbHzqTz9X
         WiWQmIzZ4UCKh4GfOeb3ZFC1Zj9nbabsV/ZxpUiZu+2N377/g/2TR3zwzjQg0cQ4WU9E
         XQBw==
X-Gm-Message-State: ANoB5pmnO3KWfJw8GvgZWj3DYGXSwgjuViykYvy1WwXSVVMAB8TF9FW8
        pJoNdO59ySDnbns6zR5B150=
X-Google-Smtp-Source: AA0mqf5R0LqjxEqoGk2KSq/9IDdiQ2JQC9JYnSQHj1wpQZrAU6pH03JDGdDbFs53RdlEpLtHkh4e7A==
X-Received: by 2002:adf:e550:0:b0:242:1f22:df19 with SMTP id z16-20020adfe550000000b002421f22df19mr8903274wrm.51.1670774953178;
        Sun, 11 Dec 2022 08:09:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id ay9-20020a5d6f09000000b0022ae0965a8asm6573494wrb.24.2022.12.11.08.09.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 08:09:12 -0800 (PST)
Message-ID: <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com>
Date:   Sun, 11 Dec 2022 17:09:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
Content-Language: en-US
To:     Vladislav Ivanishin <vlad@ispras.ru>, linux-man@vger.kernel.org
References: <87v8n03coa.fsf@ispras.ru>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87v8n03coa.fsf@ispras.ru>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------w0WOXIH6vYg4i0dS5dYBMksl"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------w0WOXIH6vYg4i0dS5dYBMksl
Content-Type: multipart/mixed; boundary="------------3e4u0z9MyGGhiryjAyNwBoDq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Vladislav Ivanishin <vlad@ispras.ru>, linux-man@vger.kernel.org
Message-ID: <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com>
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
References: <87v8n03coa.fsf@ispras.ru>
In-Reply-To: <87v8n03coa.fsf@ispras.ru>

--------------3e4u0z9MyGGhiryjAyNwBoDq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVmxhZGlzbGF2LA0KDQpPbiAxMS8yNy8yMiAxMTozOCwgVmxhZGlzbGF2IEl2YW5pc2hp
biB3cm90ZToNCj4gdW5peF9zZXFwYWNrZXRfcmVjdm1zZygpIGNhbGxzIHVuaXhfZGdyYW1f
cmVjdm1zZygpIHdoaWNoIGhhbmRsZXMNCj4gTVNHX1RSVU5DLiBUaGlzIGhhcyBiZWVuIHRo
ZSBjYXNlIHNpbmNlIHRoZSBzdXBwb3J0IGZvciB0aGlzIGZsYWcgd2FzDQo+IGltcGxlbWVu
dGVkIGluIHRoZSBsYXR0ZXI7IHRoZSBzZXF1ZW50aWFsLXBhY2tldCBzb2NrZXQgdHlwZSBz
ZWVtcyB0bw0KPiBoYXZlIGJlZW4gbGVmdCBvdXQgZnJvbSB0aGUgZGVzY3JpcHRpb24gYnkg
YW4gb3ZlcnNpZ2h0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmxhZGlzbGF2IEl2YW5pc2hp
bjx2bGFkQGlzcHJhcy5ydT4NCg0KQ291bGQgeW91IHBsZWFzZSBwb2ludCB0byB0aGUgcmVs
ZXZhbnQga2VybmVsIGNvbW1pdHMsIG9yIHF1b3RlIHRoZSByZWxldmFudCANCmxpbmVzIG9m
IGNvZGUsIGluIHRoZSBjb21taXQgbWVzc2FnZT8NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4g
LS0tDQo+ICAgbWFuMi9yZWN2LjIgfCAzICsrLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL3Jl
Y3YuMiBiL21hbjIvcmVjdi4yDQo+IGluZGV4IGQ0OTI5NzZjNC4uYzVmMWE5ZDcwIDEwMDY0
NA0KPiAtLS0gYS9tYW4yL3JlY3YuMg0KPiArKysgYi9tYW4yL3JlY3YuMg0KPiBAQCAtMjI2
LDcgKzIyNiw4IEBAIHN1YnNlcXVlbnQgcmVjZWl2ZSBjYWxsIHdpbGwgcmV0dXJuIHRoZSBz
YW1lIGRhdGEuDQo+ICAgRm9yIHJhdw0KPiAgIC5SQiAoIEFGX1BBQ0tFVCApLA0KPiAgIElu
dGVybmV0IGRhdGFncmFtIChzaW5jZSBMaW51eCAyLjQuMjcvMi42LjgpLA0KPiAtbmV0bGlu
ayAoc2luY2UgTGludXggMi42LjIyKSwgYW5kIFVOSVggZGF0YWdyYW0NCj4gK25ldGxpbmsg
KHNpbmNlIExpbnV4IDIuNi4yMiksDQo+ICthbmQgVU5JWCBkYXRhZ3JhbSBhcyB3ZWxsIGFz
IHNlcXVlbmNlZC1wYWNrZXQNCj4gICAuXCIgY29tbWl0IDlmNmY5YWY3Njk0ZWRlNjMxNGJl
ZDI4MWVlYzc0ZDU4OGJhOTQ3NGYNCj4gICAoc2luY2UgTGludXggMy40KSBzb2NrZXRzOg0K
PiAgIHJldHVybiB0aGUgcmVhbCBsZW5ndGggb2YgdGhlIHBhY2tldCBvciBkYXRhZ3JhbSwN
Cj4gLS0gMi4zNy4zDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------3e4u0z9MyGGhiryjAyNwBoDq--

--------------w0WOXIH6vYg4i0dS5dYBMksl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWAKcACgkQnowa+77/
2zJIxhAAjUkvBzkIc/dqSwH7wyOg0FP10BJSpnc0zwe9CzqscccMzgGlbg/Cyf5y
GHeM7uKhZC3xdioQ2t9Fzp+XayxewRjf2/UmZYmDpOvp2eBPSqrbJ90+ZZxYyMSp
W2WQBETyW19Y78JQVUg/oeHRbMgI4zWLQ1v57XVLU+JPvUVETi8xko5cQ9RoAo3P
X2SKjlPvO/5wdC6Z3xic5583DETtKDyBlppXZSVejNrIG2L3qrHfNWs8RJzBH8Hz
UDL3GI8ZQw7pPH5tztqa6cxdcZCxftXkIeRkTDYuX4aUzg/r6wHGFzSFCkQXXLC3
Xrc2Vdj3XeVkQvhdYAgS2+Mxpy301B6/oq9rpghMtKkh+rnGrFb8thGhx71kONiC
BrY1yjORb1r9gzlTYTHwJ1Wl8V5t71hW338EjtgksxUQFAUU9jKGbxjqb/16bhW+
ju0RUmUQv1uDX/6z5zLadizJG58t7w9XyIYVOuFYjwbM1znOs87+cJNgwl4EAF+1
9Hbc/TWxIyS/bkqWV7n1QPfPngq07mPcaKekpP3M096jLJqEuf6tVj+QG1vKOAyq
+uo9wvqEs4Ar6xV4dqJYHSLsLenI9HZF+Ie/VSsNAkfWDoNi4YsU5M5AnO6pkvUK
IE8wDZfx784+n8xMTc0HjVFDd63SdiA/l+qU9ritDTcbZatzulQ=
=WmS5
-----END PGP SIGNATURE-----

--------------w0WOXIH6vYg4i0dS5dYBMksl--
