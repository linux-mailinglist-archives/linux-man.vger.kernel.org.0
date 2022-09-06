Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1B65AE72C
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 14:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234166AbiIFMEB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 08:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233571AbiIFMEA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 08:04:00 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FC1A78580
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 05:03:59 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bj14so1836603wrb.12
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 05:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=kzjYMcpgfHjIrx4dy/gG5AGcY1oD/pLLKHKX9PwDYU8=;
        b=G13yYxRZ87e8Hq61R1n0LdC/M+Ox1pjv+9Z/Aa8f8bREEGxz2PWOrWZbWoyJN8lJHE
         3aCsuBqIhXL7n6zEd/GAR8xwgb2sXnVlYXCqpCMdxHGAx3+3GRFuDvMI0gfGiJKFnnjp
         +7/jaoyJ0kretHrPYuD1B4xxqTZuKdQ7JuTn7AUmooaUFmPqrGSA+lT1DQ2yHl/D/dpz
         elQZqxmdyGEIa3BKTliHYPTRLwKdxSb5S0BBuaTRGUeyuUTFmoNcT8ZoIdTt/3deTVyM
         tAC+3chaluqh8rlt3jpZDFKB2w/54zJ8gn3y0lMjoWW9UI/RShTSQSoDW3kZWkEf/uDa
         Wrpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=kzjYMcpgfHjIrx4dy/gG5AGcY1oD/pLLKHKX9PwDYU8=;
        b=t68UD/OXhmVQ420H7Hz7QFIUL195PNtax2xBj/vyKMDCZoeInryhw+zFjHqOVKeA5x
         rtKcq9/7F7Us41SSZrbl/BOdQKSzKKfkSxXed/5vThoTmY4KYZbN6pRvY/RnTzQ//QkT
         wvlAVXITUeh+x35XMrgxCHuK3K6Rovj7/ZDAP+/CfvHWtQZLPcaPSJL66Fx5jld8XXeH
         Aj0eVwteyIsC3k7eXmtOfOIJ3cGXOAjVc5oxoDOWVwwVFEB2zgwJnyyYdVmVmQYtRDcM
         EwtPX4tww20Uw2O0Z4g3HLQlMn6PGXEcT4Y1R06cntMr/QmfjgyNNfm5VKEZFh9Gtj1w
         Sy6w==
X-Gm-Message-State: ACgBeo0D/TRm8xPSLAw8GBGOQUVrSsy9zvzYzVY3xa76GwVxxvYkOg7V
        UJJ7v1DEzps2qsXprQJ5zA4aPynStnw=
X-Google-Smtp-Source: AA6agR7EPz3+U5gM75FRuI+dXFbz1Ct2sZAD0Fl1BIvuuxqW+gnB9rIlyVaXsHTxrpSW6IRTbnCyJg==
X-Received: by 2002:a5d:6d0e:0:b0:21e:fc95:3dfc with SMTP id e14-20020a5d6d0e000000b0021efc953dfcmr27441244wrq.112.1662465837962;
        Tue, 06 Sep 2022 05:03:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d11-20020adfe84b000000b0021f131de6aesm12429031wrn.34.2022.09.06.05.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 05:03:56 -0700 (PDT)
Message-ID: <4c3df615-ce8c-35ae-7a0e-d69e563ec00c@gmail.com>
Date:   Tue, 6 Sep 2022 14:03:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [patch] unshare.2: Add note about potential capabilities
 confusion
Content-Language: en-US
To:     Patrick Reader <_@pxeger.com>, linux-man@vger.kernel.org
References: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>
 <294ebefd-48a7-e53d-7569-2efa1c717bf7@gmail.com>
 <0102018312aa4b17-59210806-b085-41ce-b346-2d30f99effe7-000000@eu-west-1.amazonses.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0102018312aa4b17-59210806-b085-41ce-b346-2d30f99effe7-000000@eu-west-1.amazonses.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YyKN3WMbSlSjOhItj7hKB303"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YyKN3WMbSlSjOhItj7hKB303
Content-Type: multipart/mixed; boundary="------------xxiMHJrh3ZQxGqDowT00Ugm7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Patrick Reader <_@pxeger.com>, linux-man@vger.kernel.org
Message-ID: <4c3df615-ce8c-35ae-7a0e-d69e563ec00c@gmail.com>
Subject: Re: [patch] unshare.2: Add note about potential capabilities
 confusion
References: <0102018312086c29-13598a55-2c20-47eb-a288-a5bbe6f1caff-000000@eu-west-1.amazonses.com>
 <294ebefd-48a7-e53d-7569-2efa1c717bf7@gmail.com>
 <0102018312aa4b17-59210806-b085-41ce-b346-2d30f99effe7-000000@eu-west-1.amazonses.com>
In-Reply-To: <0102018312aa4b17-59210806-b085-41ce-b346-2d30f99effe7-000000@eu-west-1.amazonses.com>

--------------xxiMHJrh3ZQxGqDowT00Ugm7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGF0cmljaywNCg0KT24gOS82LzIyIDEzOjU4LCBQYXRyaWNrIFJlYWRlciB3cm90ZToN
Cj4gT24gMDYvMDkvMjAyMiAxMjo1MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBX
b3VsZCB5b3UgbWluZCBmaXhpbmcgdGhvc2Ugc21hbGwgaXNzdWVzIGFuZCBzZW5kIGFuIHYy
Pw0KPiANCj4gVm9pbMOgIQ0KPiANCj4gIEZyb20gYTYzYzA5OWQzMWM4ZmQyN2FmNjQyOGM0
ZDkxOTFkZjY5OGIyYzBlNyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCj4gRnJvbTogUGF0
cmljayBSZWFkZXIgPF9AcHhlZ2VyLmNvbT4NCj4gRGF0ZTogVHVlLCA2IFNlcCAyMDIyIDEy
OjU2OjEyICswMTAwDQo+IFN1YmplY3Q6IFtQQVRDSCAyLzJdIGZpeCBmb3JtYXR0aW5nDQoN
Ckkgd2FzIGdvaW5nIHRvIGFwcGx5IHlvdXIgcGF0Y2hlcywgd2hlbiBJIGdvdCBhIHdhcm5p
bmcgZnJvbSBnaXQtYW0oMSk6DQoNCndhcm5pbmc6IFBhdGNoIHNlbnQgd2l0aCBmb3JtYXQ9
Zmxvd2VkOyBzcGFjZSBhdCB0aGUgZW5kIG9mIGxpbmVzIG1pZ2h0IA0KYmUgbG9zdC4NCkFw
cGx5aW5nOiB1bnNoYXJlLjI6IEFkZCBub3RlIGFib3V0IHBvdGVudGlhbCBjYXBhYmlsaXRp
ZXMgY29uZnVzaW9uDQplcnJvcjogY29ycnVwdCBwYXRjaCBhdCBsaW5lIDEwDQoNCkkgZ3Vl
c3MgeW91IGNvcGllZCB0aGUgcGF0Y2hlcyBpbnRvIHlvdXIgbWFpbGVyLCBhbmQgaXQgc2Ny
ZXdlZCBpdC4gIElmIA0KeW91IGNvdWxkIHJlLXNlbmQgeW91ciBwYXRjaGVzIHdpdGggZ2l0
LXNlbmQtZW1haWwoMSkgb3Igc29tZSBvdGhlciB0b29sIA0KdGhhdCBjYW4gc2VuZCB0aGVt
IHByaXN0aW5lLCB0aGF0IHdvdWxkIGJlIGdyZWF0LiAgT3RoZXJ3aXNlLCBJIGNhbiB0cnkg
DQp0byBhcHBseSB5b3VyIGNoYW5nZXMgbWFudWFsbHkuDQoNCkNoZWVycywNCg0KQWxleA0K
DQo+IA0KPiAtLS0NCj4gIMKgbWFuL21hbjIvdW5zaGFyZS4yIHwgNyArKysrLS0tDQo+ICDC
oDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvbWFuL21hbjIvdW5zaGFyZS4yIGIvbWFuL21hbjIvdW5zaGFyZS4y
DQo+IGluZGV4IDg1MTEyOTAyMi4uNzlhOTYwNzI4IDEwMDY0NA0KPiAtLS0gYS9tYW4vbWFu
Mi91bnNoYXJlLjINCj4gKysrIGIvbWFuL21hbjIvdW5zaGFyZS4yDQo+IEBAIC00NjQsOSAr
NDY0LDEwIEBAIFN1Y2ggZnVuY3Rpb25hbGl0eSBtYXkgYmUgYWRkZWQgaW4gdGhlIGZ1dHVy
ZSwgaWYgDQo+IHJlcXVpcmVkLg0KPiAgwqAuUFANCj4gIMKgQ3JlYXRpbmcgYWxsIGtpbmRz
IG9mIG5hbWVzcGFjZSwgZXhjZXB0IHVzZXIgbmFtZXNwYWNlcywgcmVxdWlyZXMgdGhlDQo+
ICDCoC5CIENBUF9TWVNfQURNSU4NCj4gLWNhcGFiaWxpdHkuIEhvd2V2ZXIsIHNpbmNlIGNy
ZWF0aW5nIGEgdXNlciBuYW1lc3BhY2UgYXV0b21hdGljYWxseSANCj4gY29uZmVycyBhDQo+
IC1mdWxsIHNldCBvZiBjYXBhYmlsaXRpZXMsIGNyZWF0aW5nIGJvdGggYSB1c2VyIG5hbWVz
cGFjZSBhbmQgYW55IG90aGVyIA0KPiB0eXBlDQo+IC1vZiBuYW1lc3BhY2UgaW4gdGhlIHNh
bWUNCj4gK2NhcGFiaWxpdHkuDQo+ICtIb3dldmVyLCBzaW5jZSBjcmVhdGluZyBhIHVzZXIg
bmFtZXNwYWNlIGF1dG9tYXRpY2FsbHkgY29uZmVycyBhIGZ1bGwgDQo+IHNldCBvZg0KPiAr
Y2FwYWJpbGl0aWVzLA0KPiArY3JlYXRpbmcgYm90aCBhIHVzZXIgbmFtZXNwYWNlIGFuZCBh
bnkgb3RoZXIgdHlwZSBvZiBuYW1lc3BhY2UgaW4gdGhlIHNhbWUNCj4gIMKgLkJSIHVuc2hh
cmUgKCkNCj4gIMKgY2FsbCBkb2VzIG5vdCByZXF1aXJlIHRoZQ0KPiAgwqAuQiBDQVBfU1lT
X0FETUlODQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------xxiMHJrh3ZQxGqDowT00Ugm7--

--------------YyKN3WMbSlSjOhItj7hKB303
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMXNysACgkQnowa+77/
2zLISw//bJBXGxLoE9gbzMuFUqeVzYtk5AsMJtK2I1kRIJxEG0h7UHb3OHcAdQNs
I2OjteyP0DZHkOAOM5hJyaENSnZhFXkPXVgxYuHKLVN33hfz4gfcbTNB0Ww4K+4M
GUQTmHVUJ4RPtBU9SZk+bxJZbnWK3Z65ggBoxNkNaByEFnAQX92t94YuZKcbyD12
jcbuVp67eJV9TBu33RhwFzP4aEezmetb+dQhZ7K6+Q7BWE7/mauaJhJVVWLRz9Vl
vpcm8kwJjX2tlq558ali4RnwvllWhR0M3owSs8YatHxejwVCP57PwqDB5nIs7dcA
2Yu68Nfay8mEyEEyarK/6pn2qLW9QlVNdpnNWoCtUUrzRR3TdPtRgnC57BKeogbZ
W7nkmvm1I2YZs2nXmqE+stTeSSHSfz/JM4MwmGrmrVBIdYt4dj0mx7KpQ1QDySXR
qE+VYrqlQlWUEAGkRxSceXgq4+7oKIYePaygQeGR2ze2dhxXL26ebdK3tkO8RypN
dxjHrOGWSrHVtSvyH46mumONCJojNTCVaeXIM6TTA2ob1nsDGCFxPeE9QzCHgn2k
Bf9Drm16kgoFghc0MM4T+banpzpLWP+pzm5YAi/Spw8pp8fFUIczWCEoazzp5PMe
hnq/M55zJNDC7JOwq0tADnsyJSwLm0gPxG20pjS65z/UAa4s75k=
=i56Z
-----END PGP SIGNATURE-----

--------------YyKN3WMbSlSjOhItj7hKB303--
