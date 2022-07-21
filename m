Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 368B557CDA6
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 16:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231361AbiGUO3f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 10:29:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231978AbiGUO3c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 10:29:32 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B24481B2D
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 07:29:31 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id x23-20020a05600c179700b003a30e3e7989so939258wmo.0
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 07:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:cc;
        bh=ZGcxYg+kIDwAbZTlR7NTD1o4TGuumm2GFdEe5jr017c=;
        b=Qdhp4j8O0336Wr75iSqxzhlFuYTe/ayscvQcbj4jSB3CQx8PHwBKSDcuqqWz1Xwwls
         d5qLNqbs7TT7h3Dmn5XAFwIG87ztSnr87nqPQ6rOo4DQ+ehPjBu4ZXplMsMRC3U8kX4s
         ZFIphrOWoAHa/FJjFrDJeNY/FOE6nzQtkZU5AvuGuALvNXmL2HXBRBXpNsn1DV8QOUi8
         /Z33RE/rM5LZCQ4FgmEyI+VCW6M3uNoCipK91hDYsCvxu1iIUWi9nK9zn286J/y6C8wz
         Gt/zxoCMX0Q0DUiwBw61nbFVfMI7fJ87w/0axkZK5OH5tr3eadWYL1GNa2pQ4I5VqBEI
         vg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:cc;
        bh=ZGcxYg+kIDwAbZTlR7NTD1o4TGuumm2GFdEe5jr017c=;
        b=qzIISmlC77ay+8QF8MKiw1sE5WsyN1N+UEqFvdV+SWIHVd4SrHClBOXg4/aJ7lgvz1
         USSlxc32/6QznGGd5x4lgb/xAGi0XqEeGMTzrIht39uC/1G3M8uiTDurAIFjzdxvBFME
         Xn3+Qe2t+6SXyESFCb/GVQAT5fG11pWoTNYjmhRBvmXKVW7KPTw51m3UE71ssHWj2kv5
         cc0Qg7JZJSwYjOMumyHljSleIThB2FMTzEKfKzSPzkuHFYW+Fqrmw4c73yDxAyvf/No9
         NN1SQUjdnV27Pp5S6bp006x0oXHpHjfYzGVE9zrAwwOKgoALG78+1ZSwd7Ut9JJNiR4r
         b9yA==
X-Gm-Message-State: AJIora+Co+xBDj5a6g1/cdyMLZA3FGDqkJvGd/FjL+aLUdm/FnZCPs3u
        +mn8ekmOVEf9sc48FxzMX7c=
X-Google-Smtp-Source: AGRyM1vgupLC2cwTrVkL1mWADReTbQnKPxPpERQmiKnFoqN2iaKe6O5jP10KjfXbjFsO4m+mQNtq4A==
X-Received: by 2002:a05:600c:a4c:b0:39c:6517:1136 with SMTP id c12-20020a05600c0a4c00b0039c65171136mr8730186wmq.12.1658413769502;
        Thu, 21 Jul 2022 07:29:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c25-20020a7bc859000000b003a0375c4f73sm1902813wml.44.2022.07.21.07.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 07:29:29 -0700 (PDT)
Message-ID: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
Date:   Thu, 21 Jul 2022 16:29:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: All caps .TH page name
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------I64owcX2LLKQ9l8hfeEmtKd8"
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
--------------I64owcX2LLKQ9l8hfeEmtKd8
Content-Type: multipart/mixed; boundary="------------5IEVTjkwNyPsM0Z02im89mQV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>,
 "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
Subject: All caps .TH page name

--------------5IEVTjkwNyPsM0Z02im89mQV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiBhbmQgSW5nbyENCg0KSSd2ZSBuZXZlciBiZWVuIGNvbnZpbmNlZCBhYm91
dCB0aGUgcGFnZSB0aXRsZSBiZWluZyBpbiBhbGwgY2FwcyBpbiB0aGUgDQouVEggbGluZS4g
IEZyb20gcmVjZW50IGdyb2ZmQCBkaXNjdXNzaW9ucywgSSBndWVzcyB0aGF0IG5laXRoZXIg
b2YgeW91IA0KYXJlIGVpdGhlci4NCg0KSSdkIGxpa2UgdG8ga25vdyB3aHkgdGhpcyBoYXMg
YmVlbiB0aGUgY2FzZSBoaXN0b3JpY2FsbHksIGFuZCBhbnkgDQpvcGluaW9ucyB5b3UgbWln
aHQgaGF2ZSBhYm91dCBtZSBjaGFuZ2luZyB0aGUgbWFuLXBhZ2VzIHRvIHVzZSB0aGUgc2Ft
ZSANCmNhcHMgYXMgdGhlIGFjdHVhbCBpZGVudGlmaWVyIHRoYXQgSSdtIGRvY3VtZW50aW5n
IChtb3N0IG9mIHRoZSB0aW1lIA0KdGhhdCB3b3VsZCBtZWFuIGxvd2VyY2FzZSkuICBCYXNp
Y2FsbHksIHRoZSBzYW1lIHJ1bGVzIGFzIHdpdGhpbiAuU0ggTkFNRS4NCg0KQWxzbywgZG9l
cyBpdCBoYXZlIGFueSBmdW5jdGlvbmFsIGltcGxpY2F0aW9ucz8gIEknbSBlc3BlY2lhbGx5
IA0KaW50ZXJlc3RlZCBpbiBrbm93aW5nIGlmIHRoYXQgbWF5IGFmZmVjdCBpbiBhbnkgd2F5
IHRoZSBhYmlsaXR5IG9mIA0KbWFuKDEpIHRvIGZpbmQgYSBwYWdlIHdoZW4gaW52b2tlZCBh
cyBgbWFuIFRJTUVTUEVDYCBmb3IgZXhhbXBsZS4gIEknbSANCm5vdCBzYXlpbmcgbmVjZXNz
YXJpbHkgdGhhdCBJJ2QgbGlrZSB0byBrZWVwIHRoYXQgYmVoYXZpb3IuICBJIHdvdWxkbid0
IA0KbWluZCBicmVha2luZyBpdCwgaWYgaXQgbWVhbnMgdGhhdCB1c2VycyB3aWxsIGJlIGFi
bGUgdG8gZGlmZmVyZW50aWF0ZSANCnVwcGVyLSBhbmQgbG93ZXJjYXNlIHBhZ2VzLiAgV2Un
cmUgbm90IGluIFdpbmRvd3MgKG5vciBNYWNPUyksIGFueXdheS4NCg0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------5IEVTjkwNyPsM0Z02im89mQV--

--------------I64owcX2LLKQ9l8hfeEmtKd8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLZYsEACgkQnowa+77/
2zLCPA/8COlk2/nW4hclzK9EyZdCrSyEqvu8mYcBX/O2C6zRxsaeORmzf95J4G8t
yP9XRW82f/99+8O0coN/0toGfJ/XnIPKN6HzUPt5pRyGWNHY27ZWzsnRAdiGvIf1
pkS2zl30GyAVwjM4RMFYHtQpvGZm+juhB8I8hyz9xufWjU8yYugfDAAWAoy1adXX
8HqshKIWsfPMq8Z3kJtyE8eVN3m1vCPQVPtyYKRWcUrjrBmriiWG7rT0pKmyHTYT
k2WOhA0sfHdYCMVZdRjqsa7PaeSPeYNyWgVe+V7eoro4vKEzT9Rg6GRZkY3r1sAk
SS87lyV2wDHBT+ZpSfS7ny+vNnMVDuGYE1CVRdoHf9XPzLqDTs5IXFHfcokaMrQT
5Dye9lMGRRGYehFeJGG4GFafpqA3MurcX3brcumSLoK97IK3aUqODfwJf8pKBBJe
vd1PyfCrowOYyyYTLqb79A6hHatijmv3aqVlNhvD9TCC9ANFGiOV9F7N0LT8svpP
Azc00w1Ho8Nypzohsp7nYjpMdJ2efyzSMbMWtS3eu2Ita0kkDBYp6yAc34BIKhlO
50QtTtbOO+IE3wlOldkMp45SulzFUoeJrqE81rHh8P18AOJM519SGE9fGvvKOXp5
w//eycf5TmswMFW3ahZ/UAj21DtZDPz0y0roPJrvS6M9EittZ8E=
=dEqs
-----END PGP SIGNATURE-----

--------------I64owcX2LLKQ9l8hfeEmtKd8--
