Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7E2622D1B
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 15:04:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbiKIOEG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 09:04:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbiKIOEF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 09:04:05 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE888DEB1
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 06:04:03 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id o30so10885336wms.2
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 06:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XXX81lQv9nG5ZKWI7qzANYUsYMLMZj1Ff6Pq6UuaAMc=;
        b=HHvEcJnB3N8ssbPQ1rDxHqz058t8LhiPCZmX9vTLrbIqONYBAZKImrBI0eXR5jWGvv
         YZ/z3Nu4WrgNPewfZ/G31+ZFNpwK/twL1Z96j3cosfgnqqkDIfgQvd/LRSKjpRvo91zN
         ZGNPH+GK17/npwYA2jd02BSTIXE8NZBy6+K5J2u2yuGbxq3Px/KZKJF9wDUZuvkHlw9t
         ae1dv7NWS9zqN86AAH8oEqEsT7pFXYxo7m5HdD2WJjRXFCe83lU/iIw7AmS91/bEstQd
         3WvKbtNMJd5N4XuUtGdowfj8C+3pUCmyGZqWuTwCe2icx16ikq48OXGzcp66RmhZyb+d
         ErgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XXX81lQv9nG5ZKWI7qzANYUsYMLMZj1Ff6Pq6UuaAMc=;
        b=SHD1Za9CafWVCt19ljJFVAvBu2zpLlZFMzCgPKX6wUKjsqWVLVe3DdLoFrQjaGQJps
         WshWocHwSr3QHDq9+S1t4K80CJg+Wl7BjRJOcaHftxWMdfgVjcuQAOokuDr9n8rU7ORz
         OejODDq/KxnvML08W4iuva+fuuWRMcsi2U/cnUpFIflJ3Zplyv2VJhuGWzvM9m7Yy354
         khC54OqZxPn3KqNpQMUZj8JfIua7kI6rr89OZO2JWkJXl3r5bRGKtD4h18sZsYIfS3T+
         +ts+k1tKTp2kO8YVJUK96j2BiFB0eFVpRNzFgc8MzyuLZPJx2WprNeOuImnYRO5fd+nu
         plvA==
X-Gm-Message-State: ANoB5pkcgb0FWyBO7GzijT2wE4IC4EiS6B7sDQZw4vI0En6Trq0Dpgcb
        z43oOPlE9jl7ejg+ADgglN//PcVH7pA=
X-Google-Smtp-Source: AA0mqf67eeMUsImnXWaBaxvBZNuG1vRjPouF8o6YOc4e/bbApVdSws92vBRt9AC5Q4pp4jJWr6eBcg==
X-Received: by 2002:a05:600c:4e0b:b0:3cf:b3c0:2380 with SMTP id b11-20020a05600c4e0b00b003cfb3c02380mr8469310wmq.134.1668002642392;
        Wed, 09 Nov 2022 06:04:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o4-20020a05600c510400b003c6d21a19a0sm1990911wms.29.2022.11.09.06.04.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 06:04:01 -0800 (PST)
Message-ID: <3b5d04cf-8fd7-18f3-9ec3-e23dd3511288@gmail.com>
Date:   Wed, 9 Nov 2022 15:04:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Ken Brown <kbrown@cornell.edu>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Michael T. Kerrisk" <mtk@man7.org>
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
 <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>
In-Reply-To: <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ybeB0aEZq0DfKjoIQmr4no4C"
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
--------------ybeB0aEZq0DfKjoIQmr4no4C
Content-Type: multipart/mixed; boundary="------------3AadkwaumzrkpLnbwg4lWbS4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
 linux-man <linux-man@vger.kernel.org>
Cc: Ken Brown <kbrown@cornell.edu>, Michael Kerrisk <mtk.manpages@gmail.com>,
 "Michael T. Kerrisk" <mtk@man7.org>
Message-ID: <3b5d04cf-8fd7-18f3-9ec3-e23dd3511288@gmail.com>
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
 <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>
In-Reply-To: <b929dad7-6339-c1f4-52d1-eb1394376f2a@gmail.com>

--------------3AadkwaumzrkpLnbwg4lWbS4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

LS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6IFJlOiBTaW1w
bGUgY2hhbmdlcyB0byBzZWxlY3QoMikgYW5kIHBpcGUoNykNCkRhdGU6IFR1ZSwgOCBOb3Yg
MjAyMiAxNTo1ODoxNiArMDEwMA0KRnJvbTogSi5ILiB2ZCBXYXRlciA8aGVucmkudmFuLmRl
LndhdGVyQHhzNGFsbC5ubD4NClRvOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4Lm1hbnBhZ2Vz
QGdtYWlsLmNvbT4NCkNDOiBtdGsubWFucGFnZXNAZ21haWwuY29tDQoNCk9uIDExLzgvMjIg
MTM6MjAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KID4gT24gMTEvNi8yMiAxOTo1Mywg
Si5ILiB2ZCBXYXRlciB3cm90ZToNCltzbmlwXQ0KDQogPj4gbWFuIDIgc2VsZWN0ICAuLi4g
REVTQ1JJUFRJT04gcmVhZHM6DQogPj4NCiA+PiAic2VsZWN0KCkgYWxsb3dzIGEgcHJvZ3Jh
bSB0byBtb25pdG9yIG11bHRpcGxlIGZpbGUgZGVzY3JpcHRvcnMsIHdhaXRpbmcNCiA+PiAg
IHVudGlsIG9uZSBvciBtb3JlIG9mIHRoZSBmaWxlIGRlc2NyaXB0b3JzIGJlY29tZSAicmVh
ZHkiIGZvciBzb21lIGNsYXNzIG9mDQogPj4gICBJL08gb3BlcmF0aW9uIChlLmcuLCBpbnB1
dCBwb3NzaWJsZSkuIEEgZmlsZSBkZXNjcmlwdG9yIGlzIGNvbnNpZGVyZWQNCiA+PiAgIHJl
YWR5IGlmIGl0IGlzICBwb3NzaWJsZSB0byBwZXJmb3JtIGEgY29ycmVzcG9uZGluZyBJL08g
b3BlcmF0aW9uDQogPj4gICAoZS5nLiwgcmVhZCgyKSwgb3IgYSBzdWZmaWNpZW50bHkgc21h
bGwgd3JpdGUoMikpIHdpdGhvdXQgYmxvY2tpbmcuIg0KID4+DQogPj4gSSBzdWdnZXN0IHRv
IGFkZCB0aGUgZm9sbG93aW5nIGxpbmU6DQogPj4NCiA+PiAiSG93ZXZlciwgbm90ZSB0aGF0
IHNlbGVjdCgyKSB3aWxsIGJsb2NrIG9uIHRoZSByZWFkIGVuZCBvZiBhIHBpcGUvZmlmbywg
aWYNCiA+PiAgIHRoZSB3cml0ZSBlbmQgb2YgdGhlIHBpcGUvZmlmbyBoYXMgbmV2ZXIgYmVl
biBvcGVuZWQgYmVmb3JlLCB1bmxpa2UgcmVhZCgyKQ0KID4+ICAgKHJlYWQoMikgd2lsbCBh
bHdheXMgcmV0dXJuIHdpdGggemVybyBpZiB0aGUgd3JpdGUgZW5kIG9mIHRoZSBwaXBlL2Zp
Zm8gaXMNCiA+PiAgIGNsb3NlZCAtIHNlZSBwaXBlKDcpIHdoZXJlIHRoZSB0ZXh0IHN0YXJ0
cyB3aXRoIEkvTyBvbiBwaXBlcyBhbmQgZmlmb3MpLg0KID4NCiA+IEl0IGlzIGludGVyZXN0
aW5nLiAgQ291bGQgeW91IHBsZWFzZSBzaGFyZSBhIHNtYWxsIGV4YW1wbGUgcHJvZ3JhbQ0K
ID4gdGhhdCBkZW1vbnN0cmF0ZXMgdGhpcyBiZWhhdmlvcj8gIFRoYXQgd291bGQgY2VydGFp
bmx5IGhlbHAgYSBsb3QNCiA+IHJldmlld2luZyB0aGUgY2hhbmdlLg0KDQpIaSBBbGV4LA0K
DQpBcyBhIHN0YXJ0ZXIgSSB3aWxsIHNlbmQgeW91IGEgY29weSBvZiB0aGUgbWVzc2FnZSB0
aGF0IEkgc2VudCB0byBNaWNoYWVsIHNvbWUNCnRpbWUgYWdvIChIZSBkaWQgbm90IHJlc3Bv
bmQgLSBoZSBtdXN0IGJlIHRvbyBidXN5KS4NCg0KQXMgSSB3cm90ZSB0byBNLiwgSSB2ZXJp
ZmllZCB0aGUgZmluZGluZ3MgYnkgS2VuIEJyb3duIG9uIExpbnV4IChGZWRvcmEgMzUpLg0K
DQpLZW4gQnJvd24ncyAod3d3LmN5Z3dpbi5jb20pIGltcGxlbWVudGF0aW9uIG9mIHNlbGVj
dCgyKSB3YXMgYmFzZWQgb24gd2hhdCBoZQ0KbGVhcm5lZCBmcm9tIHRoZSBtYW4gcGFnZXMg
KGFuZCBNLksuJ3MgTFBJKS4NCg0KS2VuIHdhcyB2ZXJ5IHN1cnByaXNlZCB3aGVuIGhlIGxl
YXJuZWQgYWJvdXQgc2VsZWN0J3MgYmVoYXZpb3VyIHdoZW4gdGhlIHdyaXRlDQplbmQgb2Yg
dGhlIHBpcGUgaGFkIG5vdCBiZWVuIG9wZW5lZCBiZWZvcmUgKGFuZCBzbyB3YXMgSSkuDQoN
CktlbiBjb3JyZWN0ZWQgaGlzIGltcGxlbWVudGF0aW9uIG9mIHNlbGVjdCgyKSBhbmQgKG9m
IGNvdXJzZSkgcHJvdmlkZWQgYSB0ZXN0DQpwcm9ncmFtIGluIG9yZGVyIHRvIHZlcmlmeSBo
aXMgY29ycmVjdGlvbi4NCg0KWW91IHdpbGwgZmluZCB0aGF0IHRlc3QgcHJvZ3JhbSBpbiB0
aGUgdGhyZWFkIHRoYXQgaXMgbWVudGlvbmVkIGluIG15IG1lc3NhZ2UNCnRvIE0uDQoNClJl
Z2FyZHMsDQpIZW5yaQ0K

--------------3AadkwaumzrkpLnbwg4lWbS4--

--------------ybeB0aEZq0DfKjoIQmr4no4C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrs1AACgkQnowa+77/
2zL0FRAAkdlWT9AoyfbfiAr8hkAzcA9gtLWxhr3Zg1S3BuBJC3SWxgHFTMlL6JJr
fVTA+sLCoONYE9zWyx1qydDK6Ghe3afMHl8jLrTOOg+V3mJyJ/4isxBcpcOJH5xf
B72qem/TGultZQ/ekrGr6R7p3D4c9CKtgP7bAY9mzgn15MMMoAAZ5QK5XG49DjOT
iDil7JKjftUT42oGOU2M8z+2V/ATIW8xyzjNEr2MlQlZdSx5hmdmVx80boyNeuUY
Ysc9wkidg5XOWhM2guf3AH5kJTUgwYNrdCFFYYEf++RDnoLQv+xhPveLxfPrKB5q
73j1qFFX7Nh4eXeNOiYHtcl8gzTFL89BXQh3G35CiJXWUp3Uv7bkuR5q7I9agoeO
d6AuLHeYr1K1YfQdU+/bJwO2XY31UE6LOixFvlJd850ZQsjzItJkJj9yc0Ss+au7
/K5sHd4QgKN/Ggf4SRScHwLEcF6ldiunDjQNq3TYZrK0M+hKajgSfa7TLj68N+S2
pxbNbZSQNmUf7ne4n7zObNwGMx59zfHwgOb1ptLUwjKBzvzzG6KIAbjgrJCBLfk5
U5TBN1UEvhe4x93qG4t9rx89mjqHQdV+jgEmFYiUX9scn8Z161e+2GPZiipJom8y
+86axPSDEk+KcVmn2nDUtfapmMuKMjGGahS9xHm2wPk+0QI17Ss=
=GWTr
-----END PGP SIGNATURE-----

--------------ybeB0aEZq0DfKjoIQmr4no4C--
