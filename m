Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D6E6A2614
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:04:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbjBYBE2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:04:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjBYBE2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:04:28 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 923411B2DE
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:04:26 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r7so959165wrz.6
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x3cfolKDrEl/sBsFDTI4withptotBefFR+7uX0m3KM0=;
        b=VIYXo4hElnJ7S+uHtf2BvZQXVGzBoHlnvrI+MR4N900jP+xk7B0iaOFocj5SDxELLI
         z9cWvnxzaBxwVDqFkoXCBzzN10HzKN04vinYIMZ0G1Kwr2MSZd7wcd9S3rH3mvxBQWwt
         3su4nD5aSv+CTu5+0WgR19tkzdyb1IJXAVEdqcGpbpY2S0LnGNpIQnCYp97FJPuu06yg
         IEBQ4RHPwk/pNHzkULWY++Vi9yjDvVZEK1clgIcrblv26ang2Az5tubKbIjMMf/Z/XeB
         wjlQDHGxd0mp5EqBvCYzlv5Kdz+gAzJzQjMGejH6/FaqNB8H6UNPOQkHtTU/6MZG90Gk
         OJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x3cfolKDrEl/sBsFDTI4withptotBefFR+7uX0m3KM0=;
        b=ZOmz0oFhoZtlALtm9RujQKbku3tS3sKjT0g+NfVVx9X+ImbhUKPrrDosXDLfo6A5L4
         2fHkcl/0DnTPMDapNNMWMbqLV9utlbTE3mLXvthrL6E2ZulxpHdomSHz+5syC0Mzacbp
         W0kE9ov8rNaoh0DJHeEnJgg3ikkqsXSKDGQqbvZY3RWjTvzGEGSMwkEzG8lzx2LO6I2z
         G7bM1FUeYoBDTN6vACpKXoewcAnoa0fzhzCgx8nHoeKvTOKTOqMrsOq3NLBKVTtHedlS
         N5aOcwCjxGLyZJbai5TOXWofNqT4S0bgJJiIEI80Kw3TAdnbpLTwKXTf2TnxzxYCEfXF
         8CZQ==
X-Gm-Message-State: AO0yUKWK5wB7M96evbaaAfJgb0u3wHoRUyVV9Bn1P80TuodUnQO9Lb04
        2RADnYJpNnL3NplXbH8wKg+Rcqoa9ec=
X-Google-Smtp-Source: AK7set+NyqBtl5Utt2yTo/5wFCqz3Q7ENEbONqE4Jchz7E6f8ZUE6wbYJIso7FkYY31WPhodUw9FQQ==
X-Received: by 2002:a5d:458b:0:b0:2c7:7b3:36c6 with SMTP id p11-20020a5d458b000000b002c707b336c6mr10462120wrq.52.1677287065073;
        Fri, 24 Feb 2023 17:04:25 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id z3-20020a5d6543000000b002c7b8a0c423sm322696wrv.0.2023.02.24.17.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:04:24 -0800 (PST)
Message-ID: <e7f4a2ad-7b84-d678-921c-ec1e790b3614@gmail.com>
Date:   Sat, 25 Feb 2023 02:04:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Jack Pearson <jack@pearson.onl>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
References: <20221214212849.17388-1-jack@pearson.onl>
 <9e2b4a99-7e68-844f-bffb-3c8efcc277fe@pearson.onl>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <9e2b4a99-7e68-844f-bffb-3c8efcc277fe@pearson.onl>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sBfKPHR0GeB0ebbiVdjC3B6u"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------sBfKPHR0GeB0ebbiVdjC3B6u
Content-Type: multipart/mixed; boundary="------------XpNjer3vwtjBqYdpWGdvyptW";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Jack Pearson <jack@pearson.onl>
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>,
 Carlos O'Donell <carlos@redhat.com>
Message-ID: <e7f4a2ad-7b84-d678-921c-ec1e790b3614@gmail.com>
Subject: Re: [PATCH v2] clone.2: note EINVAL when exit_signal + bad flags
References: <20221214212849.17388-1-jack@pearson.onl>
 <9e2b4a99-7e68-844f-bffb-3c8efcc277fe@pearson.onl>
In-Reply-To: <9e2b4a99-7e68-844f-bffb-3c8efcc277fe@pearson.onl>

--------------XpNjer3vwtjBqYdpWGdvyptW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFjaywNCg0KT24gMi8yMi8yMyAwMzoyOCwgSmFjayBQZWFyc29uIHdyb3RlOg0KPiBI
ZWxsbywNCj4gDQo+IEluIHRoaXMgcGF0Y2gsIEkgaW5jbHVkZWQgbXkgdGVzdCBwcm9ncmFt
IGZvciB0aGUgYWJzZW5jZSBvZiB0aGlzIA0KPiBiZWhhdmlvciB3aXRoDQo+IG5vcm1hbCBg
Y2xvbmVgIHBlciBBbGV4J3MgcmVxdWVzdDoNCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LW1hbi9mYmEzZGU1Mi05MWNjLTZjYmUtYjRhZS03MTQwNTY0ZTlhZDJAcGVh
cnNvbi5vbmwvVC8jbWRlNjNhNjQyZTljOGQwYjRlMzY3YjBhMjgxNzI0OGU4ZTBiMjlhNTAN
Cj4gDQo+IExldCBtZSBrbm93IGlmIHRoZXJlJ3MgYW55dGhpbmcgZWxzZSBJIHNob3VsZCBk
by4NCg0KQ291bGQgeW91IHBsZWFzZSByZXNlbmQgdGhlIHBhdGNoIChrZWVwaW5nIGFsbCBD
Q3MpLCBhbmQgSSdsbCBoYXZlIGEgDQpsb29rIGF0IGl0IGFnYWluPw0KDQpUaGFua3MgZm9y
IHRoZSBwaW5nLA0KDQpBbGV4DQoNCj4gDQo+IFRoYW5rcywNCj4gSmFjaw0KPiANCj4gT24g
MTIvMTQvMjIgMTM6MjgsIEphY2sgUGVhcnNvbiB3cm90ZToNCj4+IERvY3VtZW50IHRoYXQg
TGludXggd2lsbCByZXBvcnQgRUlOVkFMIHdoZW4gZXhpdF9zaWduYWwgaXMgc3BlY2lmaWVk
IGFuZA0KPj4gZWl0aGVyIENMT05FX1RIUkVBRCBvciBDTE9ORV9QQVJFTlQgaXMgc3BlY2lm
aWVkLg0KPj4NCj4gLi4uDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3
NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------XpNjer3vwtjBqYdpWGdvyptW--

--------------sBfKPHR0GeB0ebbiVdjC3B6u
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5XpcACgkQnowa+77/
2zIlkg/8D7UIhofy40ZCJuFcuDZ7wtszeJKybNN8kdF3/ALdBt2mhP+A1nteGTnT
x1X2wyuR3nzxSKQQvFcFIDDjX0OClS3jc1bV1f0WBaBiWXWIx8L7DPRaFchkKRAt
E342XvN8WTGonBMx57D5GeaknEiDOBmN5sMyi8Vsp/DwkM7IzKgZbkBNhAiXvXql
LomCGKvY0uIjn1cwVSC3Tm8aJxbGB51sM1nVAnHckUet35Y49LEGPXMWiRI4kkKJ
YDdwrPQnmemCgkQQ0XPmm5gOGTf+8c7wIUkYepRB02CHbcqb/MzWai+SBjvowsGb
63enlzRe/JaYuv52g2oSF+Q6uwUxjh7duY2ayVCVy1CzZJIvRGW+6VcxWgYoedf4
9wr6ZI3X9Bg1wdKdCoSu8b1udwzbFNMoqoZ1A1nxtL92SpTLFlUdwmSCfMZcJWnm
lVwaoOCpNCCCEK/nUTOzpMvpV5tGsqC1vD5KpgkR0XpY2dm6PiIt0g7iqYdcXAjv
0JzoTDPOhk8QizwvbPHFxwq/8jnhXjtk4taJAY8qVxpe+NajtNYue1Zw6VBbVPN8
TT/e5JCZTF6IJagyCaeMpZsK4YZRWuJtsesbTumfm7KcucikkJIsVPsBj4gmiHxT
sSo+D3tJHtSBbM6FLbFCJQWA5hm6h0sgu13X3AnsaobB+WQkTdg=
=LPWf
-----END PGP SIGNATURE-----

--------------sBfKPHR0GeB0ebbiVdjC3B6u--
