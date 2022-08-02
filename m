Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0D3F587AB2
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 12:30:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232487AbiHBKaA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 06:30:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231836AbiHBK37 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 06:29:59 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8942722B3D
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 03:29:57 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id bk11so7459554wrb.10
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 03:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=o82eBJ2N4UnFEhJFj481pqaI2FC0mT0wVyG4lGpuIuA=;
        b=pcMxhw/XF/3wwW0V5/wqfVcktKM0BJYUoUwK/AxZRtPBFPbP80yj+o7PNC3zWeQLZZ
         rs/LlwmFPmWMKm6IU4butzM+bFPc4qWRr5IaPvkvrfJxNh2zric5hoKd/pzalKnDahIo
         7O8Aebby/aQnimWHpSS/pVNnz5LvthZ2DF0MPfQDiirGqRYk5JTbBSM8C1p0I/qqcFqg
         HAp23GwMhHzfTnrHQxTiD6d+QmpWVWnCp1gRlrKAZtd8nsdKz07+hNsCl+AUMajpRxUi
         vCPiHTn37BVDNOGAzBY+gF1QeMx0e9jPpdlmeIm0tbeAoLVIhj6mRa8iKOE6Hl8wSSIe
         hxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=o82eBJ2N4UnFEhJFj481pqaI2FC0mT0wVyG4lGpuIuA=;
        b=zSqGnDOGzgFkfP2cwkRyrMF2hLSNyHzZEmnX2/a5aWF0P8s9Le1x9gm8umodBu9hDA
         LRR72F/bpfkHeMjlyLb8ASROo2tGQdAvjkruPC0ZGhnDl9yzQ+9U3akSa8TT6P9ptMFi
         zuz/Ce0sLJVQk1yukRLqeFPU0Hq4uLhUCyc4pXAuINPu981aAGznbqxJNspEYXTk4e8s
         YslIZaBddOXWBRAyNbkzLjyvbVvAs6Kxl8rYHtGxcCKqtlZn1rF4hSPe4qS9EddPOt86
         7WdUP9Ep83OLZe+hhAhhTieITlW2cf0hrldBItVodtWs7zb/L7upj1DqZS4UfszuJDW6
         mBtQ==
X-Gm-Message-State: AJIora9/6M22toi0U74pTOiYPovY57C1SrLTcs/G7GqD2LLZLPJ450zv
        GYbkY7Zhxfz8TkzVEKPFRS5No5kZcrA=
X-Google-Smtp-Source: AGRyM1tJs7CpEc+XySn8hQKKfhRpjQ0T7ORLVvKWCmUxGnDDwagv84ed+j4GfyOVl7f06ogH/V/tyw==
X-Received: by 2002:a05:600c:5120:b0:3a3:2ae4:fb20 with SMTP id o32-20020a05600c512000b003a32ae4fb20mr13168781wms.81.1659436196039;
        Tue, 02 Aug 2022 03:29:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g17-20020a5d4891000000b0021f0558e51asm14932082wrq.55.2022.08.02.03.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 03:29:55 -0700 (PDT)
Message-ID: <5d401f91-3c12-d97f-8934-2f72e73a0470@gmail.com>
Date:   Tue, 2 Aug 2022 12:29:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: .so colophon.man
Content-Language: en-US
To:     Bernd Petrovitsch <bernd@petrovitsch.priv.at>
Cc:     g.branden.robinson@gmail.com, groff@gnu.org,
        linux-man@vger.kernel.org, Ingo Schwarze <schwarze@usta.de>
References: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
 <YuZzh7w4d5y9b/Jf@asta-kit.de>
 <ca864af1-e4d1-8042-4f50-1633b301a8be@gmail.com>
 <98debad8-80ed-b6e9-b926-44c07b09325e@petrovitsch.priv.at>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <98debad8-80ed-b6e9-b926-44c07b09325e@petrovitsch.priv.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LY4KDTmV1GBBcF3ajvZJdcds"
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
--------------LY4KDTmV1GBBcF3ajvZJdcds
Content-Type: multipart/mixed; boundary="------------DV9nYB9JLRyrFU0ZDGVbAiG1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Bernd Petrovitsch <bernd@petrovitsch.priv.at>
Cc: g.branden.robinson@gmail.com, groff@gnu.org, linux-man@vger.kernel.org,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <5d401f91-3c12-d97f-8934-2f72e73a0470@gmail.com>
Subject: Re: .so colophon.man
References: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
 <YuZzh7w4d5y9b/Jf@asta-kit.de>
 <ca864af1-e4d1-8042-4f50-1633b301a8be@gmail.com>
 <98debad8-80ed-b6e9-b926-44c07b09325e@petrovitsch.priv.at>
In-Reply-To: <98debad8-80ed-b6e9-b926-44c07b09325e@petrovitsch.priv.at>

--------------DV9nYB9JLRyrFU0ZDGVbAiG1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQmVybmQsDQoNCk9uIDgvMi8yMiAxMjoyNCwgQmVybmQgUGV0cm92aXRzY2ggd3JvdGU6
DQo+IEhpIGFsbCENCj4gDQo+IE9uIDMxLzA3LzIwMjIgMTQ6MzgsIEFsZWphbmRybyBDb2xv
bWFyIChtYW4tcGFnZXMpIHdyb3RlOg0KPiBbLi4uXQ0KPj4gSSB0aGluayBJJ2xsIHJlbW92
ZSB0aGUgQ09MT1BIT04uwqAgT25lIGxlc3MgcHJvYmxlbS4NCj4gDQo+IE9yIGFkZCBhbm90
aGVyIHByZXByb2Nlc3Npbmcgc3RlcCB3aGljaCByZXNvbHZlcyBhbm90aGVyIHR5cGUNCj4g
b2YgaW5jbHVkZSBmb3Igc3VjaCBjYXNlcy4NCj4gDQo+IElkayBpZiByZXNvbHZpbmcgdGhl
IC9eXC5zbyAvIHdpdGggYSBzaW1wbGUgcGVybC93aGF0ZXZlciBzY3JpcHQNCj4gc2VlbXMg
dXNlZnVsIHNlbnNpYmxlIG9yIGtpbGxzIHNvbWUgb3RoZXIgZmVhdHVyZS4NCj4gDQo+IEtp
bmQgcmVnYXJkcywNCj4gIMKgwqDCoMKgQmVybmQNCg0KQWN0dWFsbHksIEknbSBhcHBlbmRp
bmcgdGhlIENPTE9QSE9OIHJpZ2h0IG5vdyBpbiBhIHZlcnkgc2ltcGxlIHdheSAobm8gDQpu
ZWVkIGZvciBwZXJsKDEpIGlmIHNoKDEpIGNhbiBkbyBpdCk6DQoNCg0KZmluZCBtYW4/LyAt
bm90IC10eXBlIGQgXA0KfHhhcmdzIHNlZCAtaSAiXCRhIFxcDQouU0ggQ09MT1BIT05cXA0K
VGhpcyBwYWdlIGlzIHBhcnQgb2YgcmVsZWFzZVxcDQokKGdpdCBkZXNjcmliZSB8IHNlZCAn
cy9ebWFuLXBhZ2VzLS8vJylcXA0Kb2YgdGhlIExpbnV4XFwNCi5JIG1hbi1wYWdlc1xcDQpw
cm9qZWN0LlxcDQpBIGRlc2NyaXB0aW9uIG9mIHRoZSBwcm9qZWN0LFxcDQppbmZvcm1hdGlv
biBhYm91dCByZXBvcnRpbmcgYnVncyxcXA0KYW5kIHRoZSBsYXRlc3QgdmVyc2lvbiBvZiB0
aGlzIHBhZ2UsXFwNCmNhbiBiZSBmb3VuZCBhdFxcDQouVVIgaHR0cHM6Ly93d3cua2VybmVs
Lm9yZy9kb2MvbWFuLXBhZ2VzL1xcDQouVUUgLg0KIg0KDQpPaCwgYW5kIEkganVzdCByZWFs
aXplZCB0aGF0IEknbSBhbHNvIGFwcGVuZGluZyBpdCB0byBsaW5rIHBhZ2VzLiAgSSANCnNo
b3VsZCBmaXggdGhhdCENCg0KDQpJJ20gc3RpbGwgbm90IGNvbnZpbmNlZCBhYm91dCB3aGF0
IHRvIGRvIHdpdGggdGhlIENPTE9QSE9OLCBzbyBJJ2xsIA0KbGVhdmUgdGhlIHNjcmlwdCBh
cm91bmQgZm9yIG5vdy4gIEJ1dCBpdCBtYXkgaGFwcGVuIHRoYXQgSSBzaW1wbHkgZHJvcCAN
Cml0IGluIHRoZSBmdXR1cmUuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRy
byBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------DV9nYB9JLRyrFU0ZDGVbAiG1--

--------------LY4KDTmV1GBBcF3ajvZJdcds
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLo/JsACgkQnowa+77/
2zJF8BAAmUUyKBXrla/llwbeQMdYHXMLE0/XN1NszzYfkoQ2GPyu9+hFNl8Gl+QE
KkbwR+cBEeucFdLCV0AQi1899GIYD3jq0s4TNGiFvMmuUsqB7Im4VJOoPMfPd29r
Ibosu94Mey2c0Y2bTAj6zKlQbvAU15YPyaHopkvpuYrektzIWf7t7qYHdTGsAAy3
fkfWGVamYOoKdjZlf7djsdAffBFXplEuhQ5x/VCKHtsDWNh8I+MqAy+QjmSoK8FV
24Jg8bYt/xgG73wOQTv1oZ4jtFfR3zXUNdlN3vYJfFjrGVvRIuuf3CG1B3RbKVJr
XMiBvn0FrWq7k+Yx6CFxfuLGGiw7tPx+RSEHPdHOFyv103siyvFMHEBgbPsg+ghI
vpzWmm4chkrInGXcJqMj7t5t4XSZTPR2n0AA0qV2xWOnKfr++zd+QPKWVIZ2dunm
MpEeU79PmeurVuwnxdniJdKMQMJCF9OZ5pp7+l18JFpu8dwhUOKCfUEdLH590GKG
VYn1/3edl4OdAarnW+dfmAzAcZ20eyv1SR9xZuLGX814fT68ZL8OwaaW+7WJss2g
U9WesZ1yomX0uVJmIjt8wKvm6vDk16LeWw7wp6+pVwIHPHPMCuifA2xL6wohjpSY
42XJNF6EX/+BwXM+XImQRTDFk/diCWyVXlH4ans40p5h2idpKuU=
=HMGX
-----END PGP SIGNATURE-----

--------------LY4KDTmV1GBBcF3ajvZJdcds--
