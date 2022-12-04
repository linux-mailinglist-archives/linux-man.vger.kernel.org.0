Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA9BD641F6F
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:14:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbiLDUOy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:14:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230294AbiLDUOx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:14:53 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48C311130
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:14:52 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id q7so15808360wrr.8
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jbu+x6hEj66DqGCxcTAflJMbTvacUK4MrVuPISNVAmY=;
        b=bOCIPgtGnTtqZd31rWOjwEX8m0suasbcHfYDM+suF7QVnSHvd6DJHts3cZRUnrD8ff
         DMjuZGIU3hX2D1QBPfI2XNoAiTGbUwcUaYpfwo2xXtWzWv4PYPzvyQtQVbhKi6MMIoA3
         Xzkrv4GnhrpPutV+KhRD8stqcNFe4Uy2X6RvNLs6mPFx3v9bQKU7st+EXJgYUlEIQ2fY
         Cnnu4kBw4sS+drEQMeBEPS5zkA1zkQgoi9UGu8VrdmejBR5vCufxhyq1T+XLCtli/ibc
         ySpSoQEjEO1gw5elkLZpekoBIn0WWTfZ6yNL5k/NGHsHnCKkZ6b8sHtHlNPIYupOGB9R
         ++XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jbu+x6hEj66DqGCxcTAflJMbTvacUK4MrVuPISNVAmY=;
        b=JCDvX1+tJ26/D7o0dBCKo72vGdy/lIZpj24G0UK0l0ljyZAx8d6zN/em7/UpDcx6g3
         h+TuAFEjYWMLl6HqilMZ1xaPYkne2lN9wfovsHDI6Azrw8csFBEGYdtL2A6LMD9cZ4jk
         yGNS7k3DSoTK5aQGxSaiZxC3bAPrKwmUB+lMCa1Dt+PrtUKav24KJRVMWLMSh2tfjj3V
         YMS8eSu5LlVCutyQwdM7PDfwwQjj589rhOLWlXJCmF4X4tTu4Kei1Tpv6yS2jMpCpbho
         JhZOIq8EtpL9Xe7xLJjOFbHFA4YelxTT56Fvbnk6zb/HtEDvJcc4iPNEJuF6GHvpC5xk
         cEhQ==
X-Gm-Message-State: ANoB5plDz+4tsDsbZWcumM018gN6YlxDl3ZH1+93piLdO57oUZPGADCP
        2QOugmd+QRBFFTHCbW/YLy8=
X-Google-Smtp-Source: AA0mqf5W229knP4f5AieSz6NKcYFNn1ih4o5Rls1bxmer1GINhKGnVj8DsJawHLzhK9sswQbFK/Aiw==
X-Received: by 2002:adf:da42:0:b0:22e:3ebc:7074 with SMTP id r2-20020adfda42000000b0022e3ebc7074mr42261951wrl.354.1670184890865;
        Sun, 04 Dec 2022 12:14:50 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600c199100b003c7087f6c9asm20396733wmq.32.2022.12.04.12.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:14:50 -0800 (PST)
Message-ID: <09103d96-eea2-27bd-1fde-af5f2055899d@gmail.com>
Date:   Sun, 4 Dec 2022 21:14:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page user_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090720.GA979@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090720.GA979@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Lh3kj7uRs70VTgt4FI8q1rRt"
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
--------------Lh3kj7uRs70VTgt4FI8q1rRt
Content-Type: multipart/mixed; boundary="------------kKzwUrbphYj1DewOcOKzSN1l";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <09103d96-eea2-27bd-1fde-af5f2055899d@gmail.com>
Subject: Re: Issue in man page user_namespaces.7
References: <20221204090720.GA979@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090720.GA979@Debian-50-lenny-64-minimal>

--------------kKzwUrbphYj1DewOcOKzSN1l
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWUg
MTogIFRoZSBzYW1lIGlzIGFsc28gb2Ygb3RoZXIg4oaSIFRoZSBzYW1lIGlzIHRydWUgYWxz
byBmb3Igb3RoZXINCj4gSXNzdWUgMjogIE1pc3NpbmcgZnVsbCBzdG9wIGF0IHRoZSBlbmQN
Cj4gDQo+ICJJbiBvcmRlciB0byBkZXRlcm1pbmUgcGVybWlzc2lvbnMgd2hlbiBhbiB1bnBy
aXZpbGVnZWQgcHJvY2VzcyBhY2Nlc3NlcyBhIg0KPiAiZmlsZSwgdGhlIHByb2Nlc3MgY3Jl
ZGVudGlhbHMgKFVJRCwgR0lEKSBhbmQgdGhlIGZpbGUgY3JlZGVudGlhbHMgYXJlIGluIg0K
PiAiZWZmZWN0IG1hcHBlZCBiYWNrIHRvIHdoYXQgdGhleSB3b3VsZCBiZSBpbiB0aGUgaW5p
dGlhbCB1c2VyIG5hbWVzcGFjZSBhbmQiDQo+ICJ0aGVuIGNvbXBhcmVkIHRvIGRldGVybWlu
ZSB0aGUgcGVybWlzc2lvbnMgdGhhdCB0aGUgcHJvY2VzcyBoYXMgb24gdGhlIg0KPiAiZmls
ZS4gIFRoZSBzYW1lIGlzIGFsc28gb2Ygb3RoZXIgb2JqZWN0cyB0aGF0IGVtcGxveSB0aGUg
Y3JlZGVudGlhbHMgcGx1cyINCj4gInBlcm1pc3Npb25zIG1hc2sgYWNjZXNzaWJpbGl0eSBt
b2RlbCwgc3VjaCBhcyBTeXN0ZW0gViBJUEMgb2JqZWN0cyINCg0KRml4ZWQuICBUaGFua3Mu
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------kKzwUrbphYj1DewOcOKzSN1l--

--------------Lh3kj7uRs70VTgt4FI8q1rRt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/7kACgkQnowa+77/
2zKShA//don9RG0P//vXrLZFq27gOq+GMESH2LXDLkOuV6WB0pZr8rF5aI1Jaij+
/pvziZ2IAYsrfai7LITc9qn6JcaB0n/kxo0Va+FQ04Id+pE+yJxrBSMCpu2uY3iF
tQC+Mdb0vxapmti6rz2Qh/9+YdtSwRtrm8A9Jtm5Y9amSkBizhPDe+vetpWX39dM
ahUQR/BQMBQvGGMRLeeitEq5nLmaNcAbI7E9xF+XSaIbUOq87k0xj/AEKXAdLSTz
HG2yd8qD4Jbs6LgDTAw/ngDGkfb8tk8xjlPQwLgHTu/4WGyujX9kyLo2A/QIA62o
00xQPTUKRGVAhyo/UNWyTvR+UJO5P/cV3bpOiGQ074g+Gs1nrAE1HqXUoFRifBr2
oqllpF0Fkhz8/BZgFeiPRoqsDUVoEuHP1N/WzkUt8qPTFfDmBvHBMbra7bEmnK94
y2sizw++H3HSIonO8ixKVAp67NwEVlK3qIm+5qq06DN9citjlWRI4yFCXbfLnber
LCBPK20KlqF8cdcYxFrLSNjrnNuBFJoFdGpcGRBJmhpblcIfW/H8+8UONuD6EPRs
YnleP7OkJ49gsA/NSoFoE6If6+oCC+gHORchKRyM2RAAiO0etC0Bkc/hHgvNEddw
qRRBWGnzMmfSrawcUGiOxzTo1nDDQIWn3NzWv8vrv74ljoBvr9U=
=RTIm
-----END PGP SIGNATURE-----

--------------Lh3kj7uRs70VTgt4FI8q1rRt--
