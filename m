Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1711C6586EC
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:11:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbiL1VLr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:11:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbiL1VLq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:11:46 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85F9513D18
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:11:45 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id g25-20020a7bc4d9000000b003d97c8d4941so6408140wmk.4
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HE1CIdrki/xQSKZLfevoWhNriCU3bVHFTxcVcl4wqiI=;
        b=nh1EBTd46BKWUMhte87r6dMtjB2d+kFczx2O22B4LqA/JbDSYUjYeb+iMzQ9uM/2r9
         fkoEizusol7Qg5bt2ZMaHCVNfYDGtSGfWJhPfdVbRt2JWoXOGSlpTTStdIBa20MJUjpG
         NKxCqj3ARnnFZdzOG7x809C7dp7gQs9x77c+ffmh7b69wGWRZsn3NbzbR4Y8EVlnKQxD
         uTt64ItbGLt03fW3arv3x5B49D1vSfCP4MwnbGgYGjgX6jgYNAPD8rQ/xvwknF0sqYsK
         T7Cyeg6sLHC8+L+HkUo7rDfkz6+eLAVsXg8iabSmTsc3NhzzUAXFURvDfR1Eyrbi/0OC
         mtBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HE1CIdrki/xQSKZLfevoWhNriCU3bVHFTxcVcl4wqiI=;
        b=FeZN46G0DRctIO4xcmsB1CNLHB/1hXmdBMiW1aCBfMbv7JWoIG2wWfcELurGoPN15R
         uG46CaNs7mS7m46VNUMBjZBbMcjY6+ZAIeLQEidcnl72g4gwT3cEJRd1pyKb3Qbb0s9C
         PNE0RKQTnH19CnGjwpKAdTwENHNc6z7ul0Ogy4M1Jf30rD1Npo7bCxNQehcYrUxhcXGM
         UCXhmUN5sxCPY58JQG3ufA6D50iXMVkolU3OHKh/JL388CM4hdvJtW2E9MFCml/8vORM
         49OMbYseJcL2fbePygz8h8UMUew81V5s9C9jIBu37SA+U6Dp5HcKlw1IgceTZ7e+Jms9
         S7QQ==
X-Gm-Message-State: AFqh2kpA36kb/ocw11/KfoHTnZlF2PMHczM08666dnXlYQsvRN8DFYc/
        olqSUFGBMtSjkUx3WJl8h7k=
X-Google-Smtp-Source: AMrXdXtZYdoE0IHTVHBwrHXGrV/7GcooyiLTxjeMXYuisJAB7TWS72c18HL/KMYHXZxl65+iOuObAg==
X-Received: by 2002:a05:600c:3d12:b0:3d0:bd9:edd4 with SMTP id bh18-20020a05600c3d1200b003d00bd9edd4mr18493958wmb.0.1672261903929;
        Wed, 28 Dec 2022 13:11:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x15-20020a1c7c0f000000b003c6bbe910fdsm33953219wmc.9.2022.12.28.13.11.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:11:43 -0800 (PST)
Message-ID: <d1fcf042-6032-5000-af6b-96bd5b256616@gmail.com>
Date:   Wed, 28 Dec 2022 22:11:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     Jonny Grant <jg@jguk.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xt3X9UlT02RDH1txBdWq4IzK"
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
--------------xt3X9UlT02RDH1txBdWq4IzK
Content-Type: multipart/mixed; boundary="------------t5Q7zqI1W302eXy6064PoIC8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc: Jonny Grant <jg@jguk.org>, Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <d1fcf042-6032-5000-af6b-96bd5b256616@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
In-Reply-To: <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>

--------------t5Q7zqI1W302eXy6064PoIC8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ3Jpc3RpYW4sDQoNCk9uIDEyLzI4LzIyIDIyOjA0LCBDcmlzdGlhbiBSb2Ryw61ndWV6
IHdyb3RlOg0KPiBPbiBXZWQsIERlYyAyOCwgMjAyMiBhdCA1OjU3IFBNIEFsZWphbmRybyBD
b2xvbWFyIHZpYSBMaWJjLWFscGhhDQo+IDxsaWJjLWFscGhhQHNvdXJjZXdhcmUub3JnPiB3
cm90ZToNCj4gDQo+PiBBaGgsIEkgZGlkbid0IGNvbm5lY3QgdGhlIGRvdHMgdGhlIG90aGVy
IGRheSEgIFdlIGRvbid0IG5lZWQgdG8gd2FpdCBmb3IgZ2xpYmMuDQo+PiBsaWJic2QgYWxy
ZWFkeSBwcm92aWRlcyBhcmM0cmFuZG9tIG9uIEdOVS9MaW51eCBzeXN0ZW1zLCBzbyBJIGNh
biBhbHJlYWR5DQo+PiByZWNvbW1lbmQgdXNpbmcgYXJjNHJhbmRvbSB0byBzZWVkIHNyYW5k
KDMpLg0KPj4NCj4+IEknbGwgcHJlcGFyZSBhIHBhdGNoLi4uDQo+Pg0KPiANCj4gSSB3b3Vs
ZCBzdWdnZXN0IGF2b2lkaW5nIHRoYXQsIGFzIGl0IHN1ZmZlcnMgZnJvbSBhbGwgdGhlIHBy
b2JsZW1zDQo+IHByZXZpb3VzbHkgZGlzY3Vzc2VkIG9uIHRoaXMgbGlzdCAsIG9uIHRoZSBy
ZWxldmFudCBhcmM0cmFuZG9tIHRocmVhZA0KPiANCj4gdGw7ZHIgLCBpdCBjYW4ndCBiZSBz
YWZlIHdpdGhvdXQga2VybmVsIHN1cHBvcnQsIGFzIHlvdSBuZWVkIHRvIGtub3cNCj4gd2hl
biB0byBkcm9wIHRoZSBidWZmZXIuIChvbiBmb3JrLCBvbiByZXN1bWUgcGx1cyBvbiAkZGVp
dHkga25vd3MNCj4gY29uZGl0aW9uIGZvciB3aGljaCB0aGVyZSBpcyBubyBrZXJuZWwgbm90
aWZpY2F0aW9uIGFib3V0KQ0KDQpJIGRvbid0IGNvbnNpZGVyIHJhbmQoMykgYW55dGhpbmcg
c2FmZSBvciByZWFsbHkgcmFuZG9tLCBidXQgcmF0aGVyIGEgdG9vbCBmb3IgDQpzaW11bGF0
aW9ucyBvciBkZWJ1Z2dpbmcgd2hlcmUgcmVwZWF0YWJpbGl0eSBtYXR0ZXJzIG1vcmUgdGhh
biBhbnl0aGluZyBlbHNlLg0KDQpGb3IgYW55dGhpbmcgd2hlcmUgcmFuZG9tbmVzcyBtYXR0
ZXJzLCBhcmM0cmFuZG9tKDMpIGlzIHRoZSB3YXkgdG8gZ28uICBCdXQgDQpyYW5kb21uZXNz
IGlzIG5vdCBhbHdheXMgd2hhdCB5b3Ugd2FudC4gIFdoYXQgd291bGQgeW91IHJlY29tbWVu
ZCBmb3Igc29tZSANCnNvZnR3YXJlIHdoZXJlIHlvdSBuZWVkIHRvIHRlc3Qvc2ltdWxhdGUg
bWFueSBkaWZmZXJlbnQgY2FzZXMsIHdoZXJlIHlvdSB3YW50IHRvIA0KYmUgYWJsZSB0byBy
ZXBlYXQgdGhlIHRlc3RzPw0KDQpNYXliZSB3ZSBzaG91bGQgbWFrZSBjbGVhciB0aGF0IHJh
bmQoMykgc2hvdWxkIG5ldmVyIGJlIHVzZWQgdW5sZXNzIHlvdSB3YW50IA0KcmVwZWF0YWJs
ZSByZXN1bHRzLiAgQW5kIHdoZW4gcmFuZG9tbmVzcyBtYXR0ZXJzIGluIHNvbWUgY2FzZXMs
IHlvdSBjb3VsZCBhZGQgYSANCm1hY3JvIHdyYXBwaW5nIGJvdGggcmFuZCgzKSBhbmQgYXJj
NHJhbmRvbSgzKSwgYW5kIHVzZSB0aGUgYXBwcm9wcmlhdGUgb25lLg0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------t5Q7zqI1W302eXy6064PoIC8--

--------------xt3X9UlT02RDH1txBdWq4IzK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOssQ4ACgkQnowa+77/
2zKWExAAnVABuC30XnrXao6g3VzrIu09QAGDOAtq/k/HQ3p3it/PhYRny2Hn7NTo
trMjsOLEqDo1ax8XXJiopBBakOi1XXv9b8leKpyAtG8eUXvJKc8c/Zcl5fpZnUXJ
dfLT7U5xAzi2iQHNohrQY+eu1cMiwhYAYi6GovN2seTQa//H2hPVo0Sjaxm3bY+x
ovJqkgwPXykcPXqj0tcHND/tMIJb3GAcuQ0Pf7r/6nmJLx3lToIjiHw/QGV07nuZ
RJoPC+mI1CzFDeoV5DulBAM6RfxjBFs9PtaZs6jHGpGV045Ht+jUd+7SCAqqzN5C
cZxK7Rcs+s3BXc5BphlBz8xYfXZMPjHCCPIRE672lfklJjtaydbQpquXttcyc2Mu
5mFjc93ooFRLAQaUqSm0HSlwRTTeAevPh/6w3FYJ2eO5KIBK/WXYio/BpFc6XbuN
/zvsJ7Zns5fgG9DQ97eN9kox8eWutSY+Lxd3t+wCkQd0bG4GPCnYx5xCXupU7S45
Sq+xu1qoCiCpBJP503wbmN9nSmO5KVKHiKUGhPdj1afeKsjsUO1TTGtQ6kWcvICx
0eUkyHIoofmct63Y8ArZ52xhPre3XKc/d6FtdiVPaMwXi3phlRUY7n7iHX1142Rr
z6/qzUQg4bYm4ocM+MbojSMJevSsSXQ4ctJoYkSLyiedres5eFc=
=eXtA
-----END PGP SIGNATURE-----

--------------xt3X9UlT02RDH1txBdWq4IzK--
