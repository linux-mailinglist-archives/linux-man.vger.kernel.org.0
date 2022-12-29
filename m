Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B0B1658C43
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 12:38:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbiL2LiE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 06:38:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbiL2LiD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 06:38:03 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 250201159
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 03:38:02 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id j17so11799471wrr.7
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 03:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KtSazvB+bNbtKRe44+efYM+4n9pl2kDMt0mzarGgugc=;
        b=CbE7cf2C7jY/KlB5VLYIrIq2YBcA1gxcSYhZdLS1zR/HG0aeKf8ue5dm0TAhVABKhK
         d1v0XJRz0GyNHTl1q1Dlvs1UIPTLWuDSDBdtk+x9w4iXmm9D2zEUO93FOrXmFQn6cO/F
         XXmVrF/T8T32y/9Cg3pDhxmAKvF0KfhVaK4JFcVSIEBV1uGr/Ag4JRz8iUvoqGXDcAoZ
         q4p2vKE04F4O0osjTtfD+fdkVvsD/Yy6aoL3hfGtjUsKaacLu8GNWxkh4thPE/mSfHJr
         gsm/Zz1YBaO932jUT5Y2CL1prXvoQmMVoeTOivpUhjL9Nx9LQ2C8cHE9epuyy+UVqqV+
         SBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KtSazvB+bNbtKRe44+efYM+4n9pl2kDMt0mzarGgugc=;
        b=sx86CciDQgRjwWqBbm/NG4H2KycqiJja5qcVPLetekCRPhowa+1pnSP9hQAUtLwTEv
         clEjIhv/+6ZzskeRYdL4tgNv6Gl0GVN+wUxFy2JrQnAqrSE5IfLvmk/k63XfsCQEVI/7
         7DXw8rCBwwJ0f3N5JvCEnZir3BUkfvt5mAgPy1YdgilU56de6+oY+2icN9b9vslF/vK7
         AUihFumpjatxWG0En2NGgbzOJLpMoLKXizZ8aM5PvwtSeNlutha9nMAUt2pDjfvWhrww
         ErQ5PHugAOkKcSndy55f7EaFlgSu6yY0aIsDIqRKNyTSNF+CGWA6cBXc+MImbbQ16TQI
         MCdQ==
X-Gm-Message-State: AFqh2kqB/xow4NNXiQtSCA9nW9g/ypWf2PkO7R2SYEQgsSAN98qgfABa
        quwIYxBEjRn+qo2Xlxx31kF67iSCqPE=
X-Google-Smtp-Source: AMrXdXsoKQ3YKbFQJLGfKN1UG8D6VpXwzHoYZ09z/8Vb5ZeeTqN+bbTD6wkBEtY/I1qxCykiQvvBlg==
X-Received: by 2002:adf:dd48:0:b0:242:70f0:9196 with SMTP id u8-20020adfdd48000000b0024270f09196mr18535134wrm.45.1672313880676;
        Thu, 29 Dec 2022 03:38:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a5d4011000000b00288ebd8dc10sm3687702wrp.62.2022.12.29.03.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 03:38:00 -0800 (PST)
Message-ID: <a927c23d-aca7-ddfc-9f64-cca0f36fff04@gmail.com>
Date:   Thu, 29 Dec 2022 12:37:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] scanf.3, sscanf.3, vsscanf.3: Split the page, one for
 strings and one for FILEs
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
        Zack Weinberg <zack@owlfolio.org>
References: <20221229112635.4684-1-alx@kernel.org>
In-Reply-To: <20221229112635.4684-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Yh7IPmwMRbZdRTz6c2ZIhmkV"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Yh7IPmwMRbZdRTz6c2ZIhmkV
Content-Type: multipart/mixed; boundary="------------cje1B8FqWOUcdZXAI6AZvfO8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Zack Weinberg <zack@owlfolio.org>
Message-ID: <a927c23d-aca7-ddfc-9f64-cca0f36fff04@gmail.com>
Subject: Re: [PATCH] scanf.3, sscanf.3, vsscanf.3: Split the page, one for
 strings and one for FILEs
References: <20221229112635.4684-1-alx@kernel.org>
In-Reply-To: <20221229112635.4684-1-alx@kernel.org>

--------------cje1B8FqWOUcdZXAI6AZvfO8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

c2NhbmYoMykgICAgICAgICAgICAgICAgICAgTGlicmFyeSBGdW5jdGlvbnMgTWFudWFsICAg
ICAgICAgICAgICAgICAgIHNjYW5mKDMpDQoNCk5BTUUNCiAgICAgICAgc2NhbmYsIGZzY2Fu
ZiwgdnNjYW5mLCB2ZnNjYW5mIC0gaW5wdXQgRklMRSBmb3JtYXQgY29udmVyc2lvbg0KDQpM
SUJSQVJZDQogICAgICAgIFN0YW5kYXJkIEMgbGlicmFyeSAobGliYywgLWxjKQ0KDQpTWU5P
UFNJUw0KICAgICAgICAjaW5jbHVkZSA8c3RkaW8uaD4NCg0KICAgICAgICBpbnQgc2NhbmYo
Y29uc3QgY2hhciAqcmVzdHJpY3QgZm9ybWF0LCAuLi4pOw0KICAgICAgICBpbnQgZnNjYW5m
KEZJTEUgKnJlc3RyaWN0IHN0cmVhbSwNCiAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFy
ICpyZXN0cmljdCBmb3JtYXQsIC4uLik7DQoNCiAgICAgICAgI2luY2x1ZGUgPHN0ZGFyZy5o
Pg0KDQogICAgICAgIGludCB2c2NhbmYoY29uc3QgY2hhciAqcmVzdHJpY3QgZm9ybWF0LCB2
YV9saXN0IGFwKTsNCiAgICAgICAgaW50IHZmc2NhbmYoRklMRSAqcmVzdHJpY3Qgc3RyZWFt
LA0KICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKnJlc3RyaWN0IGZvcm1hdCwgdmFf
bGlzdCBhcCk7DQoNCiAgICBGZWF0dXJlIFRlc3QgTWFjcm8gUmVxdWlyZW1lbnRzIGZvciBn
bGliYyAoc2VlIGZlYXR1cmVfdGVzdF9tYWNyb3MoNykpOg0KDQogICAgICAgIHZzY2FuZigp
LCB2ZnNjYW5mKCk6DQogICAgICAgICAgICBfSVNPQzk5X1NPVVJDRSB8fCBfUE9TSVhfQ19T
T1VSQ0UgPj0gMjAwMTEyTA0KDQpERVNDUklQVElPTg0KICAgICAgICBUaGUgIHNjYW5mKCkg
IGZhbWlseSAgb2YgZnVuY3Rpb25zIHNjYW5zIGlucHV0IGxpa2Ugc3NjYW5mKDMpLCBidXQg
cmVhZA0KICAgICAgICBmcm9tIGEgRklMRS4gIEl0IGlzIHZlcnkgZGlmZmljdWx0IHRvIHVz
ZSAgdGhlc2UgIGZ1bmN0aW9ucyAgY29ycmVjdGx5LA0KICAgICAgICBhbmQgIGl0ICBpcyBw
cmVmZXJhYmxlIHRvIHJlYWQgZW50aXJlIGxpbmVzIHdpdGggZmdldHMoMykgb3IgZ2V0bGlu
ZSgzKQ0KICAgICAgICBhbmQgcGFyc2UgdGhlbSBsYXRlciB3aXRoIHNzY2FuZigzKSBvciBt
b3JlIHNwZWNpYWxpemVkIGZ1bmN0aW9ucyAgc3VjaA0KICAgICAgICBhcyBzdHJ0b2woMyku
DQoNCiAgICAgICAgVGhlICBzY2FuZigpICBmdW5jdGlvbiByZWFkcyBpbnB1dCBmcm9tIHRo
ZSBzdGFuZGFyZCBpbnB1dCBzdHJlYW0gc3RkaW4NCiAgICAgICAgYW5kIGZzY2FuZigpIHJl
YWRzIGlucHV0IGZyb20gdGhlIHN0cmVhbSBwb2ludGVyIHN0cmVhbS4NCg0KICAgICAgICBU
aGUgdmZzY2FuZigpIGZ1bmN0aW9uIGlzIGFuYWxvZ291cyB0byB2ZnByaW50ZigzKSBhbmQg
cmVhZHMgaW5wdXQgZnJvbQ0KICAgICAgICB0aGUgc3RyZWFtIHBvaW50ZXIgc3RyZWFtIHVz
aW5nIGEgdmFyaWFibGUgYXJndW1lbnQgIGxpc3QgIG9mICBwb2ludGVycw0KICAgICAgICAo
c2VlICBzdGRhcmcoMykuICAgVGhlIHZzY2FuZigpIGZ1bmN0aW9uIGlzIGFuYWxvZ291cyB0
byB2cHJpbnRmKDMpIGFuZA0KICAgICAgICByZWFkcyBmcm9tIHRoZSBzdGFuZGFyZCBpbnB1
dC4NCg0KUkVUVVJOIFZBTFVFDQogICAgICAgIE9uIHN1Y2Nlc3MsIHRoZXNlIGZ1bmN0aW9u
cyByZXR1cm4gdGhlIG51bWJlciBvZiBpbnB1dCAgaXRlbXMgIHN1Y2Nlc3PigJANCiAgICAg
ICAgZnVsbHkgIG1hdGNoZWQgIGFuZCAgYXNzaWduZWQ7ICB0aGlzIGNhbiBiZSBmZXdlciB0
aGFuIHByb3ZpZGVkIGZvciwgb3INCiAgICAgICAgZXZlbiB6ZXJvLCBpbiB0aGUgZXZlbnQg
b2YgYW4gZWFybHkgbWF0Y2hpbmcgZmFpbHVyZS4NCg0KICAgICAgICBUaGUgdmFsdWUgRU9G
IGlzIHJldHVybmVkIGlmIHRoZSBlbmQgb2YgaW5wdXQgaXMgcmVhY2hlZCBiZWZvcmUgIGVp
dGhlcg0KICAgICAgICB0aGUgIGZpcnN0ICBzdWNjZXNzZnVsIGNvbnZlcnNpb24gb3IgYSBt
YXRjaGluZyBmYWlsdXJlIG9jY3Vycy4gIEVPRiBpcw0KICAgICAgICBhbHNvIHJldHVybmVk
IGlmIGEgcmVhZCBlcnJvciBvY2N1cnMsIGluIHdoaWNoIGNhc2UgdGhlIGVycm9yIGluZGlj
YXRvcg0KICAgICAgICBmb3IgdGhlIHN0cmVhbSAoc2VlIGZlcnJvcigzKSkgaXMgc2V0LCBh
bmQgZXJybm8gaXMgc2V0IHRvIGluZGljYXRlIHRoZQ0KICAgICAgICBlcnJvci4NCg0KRVJS
T1JTDQogICAgICAgIEVBR0FJTiBUaGUgZmlsZSBkZXNjcmlwdG9yIHVuZGVybHlpbmcgc3Ry
ZWFtIGlzIG1hcmtlZCBub25ibG9ja2luZywgYW5kDQogICAgICAgICAgICAgICB0aGUgcmVh
ZCBvcGVyYXRpb24gd291bGQgYmxvY2suDQoNCiAgICAgICAgRUJBREYgIFRoZSBmaWxlIGRl
c2NyaXB0b3IgdW5kZXJseWluZyBzdHJlYW0gaXMgaW52YWxpZCwgIG9yICBub3QgIG9wZW4N
CiAgICAgICAgICAgICAgIGZvciByZWFkaW5nLg0KDQogICAgICAgIEVJTFNFUSBJbnB1dCBi
eXRlIHNlcXVlbmNlIGRvZXMgbm90IGZvcm0gYSB2YWxpZCBjaGFyYWN0ZXIuDQoNCiAgICAg
ICAgRUlOVFIgIFRoZSByZWFkIG9wZXJhdGlvbiB3YXMgaW50ZXJydXB0ZWQgYnkgYSBzaWdu
YWw7IHNlZSBzaWduYWwoNykuDQoNCiAgICAgICAgRUlOVkFMIE5vdCBlbm91Z2ggYXJndW1l
bnRzOyBvciBmb3JtYXQgaXMgTlVMTC4NCg0KICAgICAgICBFTk9NRU0gT3V0IG9mIG1lbW9y
eS4NCg0KQVRUUklCVVRFUw0KICAgICAgICBGb3IgIGFuICBleHBsYW5hdGlvbiAgb2YgIHRo
ZSAgdGVybXMgIHVzZWQgaW4gdGhpcyBzZWN0aW9uLCBzZWUgYXR0cmli4oCQDQogICAgICAg
IHV0ZXMoNykuDQogICAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUrOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUrOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUkA0KICAgICAgICDilIJJbnRlcmZhY2UgICAgICAgICAgICAg
ICAgICAgICAgICAgICAg4pSCIEF0dHJpYnV0ZSAgICAg4pSCIFZhbHVlICAgICAgICAgIOKU
gg0KICAgICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilLzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilLzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilKQNCiAgICAgICAg4pSCc2NhbmYoKSwgZnNjYW5mKCksIHZzY2FuZigpLCAg
ICAgICAgIOKUgiBUaHJlYWQgc2FmZXR5IOKUgiBNVOKAkFNhZmUgbG9jYWxlIOKUgg0KICAg
ICAgICDilIJ2ZnNjYW5mKCkgICAgICAgICAgICAgICAgICAgICAgICAgICAg4pSCICAgICAg
ICAgICAgICAg4pSCICAgICAgICAgICAgICAgIOKUgg0KICAgICAgICDilJTilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilLTilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilLTilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgNCg0KU1RBTkRBUkRT
DQogICAgICAgIFRoZXNlIGZ1bmN0aW9ucyBjb25mb3JtIHRvIEM5OSBhbmQgUE9TSVguMeKA
kDIwMDEuDQoNClNFRSBBTFNPDQogICAgICAgIGZnZXRzKDMpLCBnZXRsaW5lKDMpLCBzc2Nh
bmYoMykNCg0KTGludXggbWFu4oCQcGFnZXMgKHVucmVsZWFzZWQpICAgICAgICAoZGF0ZSkg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc2NhbmYoMykNCg==

--------------cje1B8FqWOUcdZXAI6AZvfO8--

--------------Yh7IPmwMRbZdRTz6c2ZIhmkV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOtfAoACgkQnowa+77/
2zKRvw//TIYh9lXtMrqDkSCNSMXbMngTkPhh/8MyXneVAH+ukU/0WsYKxYRxuqIC
yFzYb5AMRXRFMhN2zWt0WougOaIKRJdcjQdPBnNx8AWMiTVc3MNiz9SJaxLK9d2H
XDpNdIXOrrm1sl6YG2ZTgouGbhdpUmvsYWbPZu1Gibfg0m/WLV/n+fKy9EoAFKmI
stE9RpiZlrqzUhmgOhjkIc2diCUCQoMUP3JJ5EaN99bKxkQ8KYjIPailFFbIu73c
hkCpGDgh6IvZfk6TsMnuf3Qb1PFIQz1QaM3EvHaXyW+XHj4t32lKg7r3FDZ40t/W
N3nAVGfgeb6Sc5rEvn0BAB8mHlRNRSZnJC2Fz7XcVhCx1fpkAeVhW1dOtM0Rh/SF
XrTnVO+vUkg3OmMR7GAfvMjOdKWlo3Grv+LLowMho2hLh4jI3C19yDlfkYhqQtj3
EJn+3JCAbc4ptRXdUf/dB8c7zqmYkjnpkao7l89LTTkV+3zcXdt8X995XHnEtSig
giTUYwGZQCd7kuffDCHJ9z4nRwk+r848ZmWouZ/3+OPHwIckdJ5MrFX6FrUKX7By
uyKULvTAglgs2XsLfo+0QL1unWdLNaGh0SKnUfaj0LfprgAdQ47I/0U2/yRRv9rD
0umI9Khg0SvE7LjKAVnMQvxFo593cH3GLrsC3aNwgkR6Ru5rGjk=
=nVNH
-----END PGP SIGNATURE-----

--------------Yh7IPmwMRbZdRTz6c2ZIhmkV--
