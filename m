Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ABEB641CEA
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:34:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbiLDMet (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:34:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDMes (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:34:48 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3426613DC5
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:34:47 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id ay8-20020a05600c1e0800b003d0808d2826so4534773wmb.1
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDZvDVBaDISOXvVRQpXXn3E6mUyl23Bjc/lFOHO2SPo=;
        b=DNCDULgltckfGygYt5rfm4unhFu9HJiz6IUgIVrTVX7ORnDi4ChDioY9U4a7WKFViI
         vuMYZrKRtXy3K9jk72aCdDEESRaikOXtzeaM2jvKLOny7Brkt2yqN3VUa3c5tyXoAUIg
         tlD7620sJj71j2wPeYP2TKgqlyu+0c4+OUwah1ywlS7Hmxe0oQIxobvcdK2ORKIAXelJ
         +UUZrUC8acmDWw+BzAEvMy+cLSvs2wkGnPD5D/LWZ9KrnMarQeuwV4Osd6HQN6EbxQ45
         KGGJwGYA3n1zlc6CkO0e9x2h5rqxy7UTkWAeldPsvinep6OH6e62WIdbRty6pwwr/Yr9
         fLww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qDZvDVBaDISOXvVRQpXXn3E6mUyl23Bjc/lFOHO2SPo=;
        b=7VRBWEHv9w05A1vxvy107eGmys+K3QgcZA5c3uKUqU9B3sdW/7CaJOGjpOw19euqcK
         V1N+JScXzwmhtbr9cpe/bVo1MnQ5gmko2HSQVlSFjXeQGL+Hl//mpoUcdBJBpBCRjQHT
         EGTSw+ydBC1XVS0M7l/i4cbj79Q9BxytkeP9FytVp959zy3hZzeRTDo9Lf5FUqKQ7oCn
         kcLX3VK8YEdMLYKtFFEBmsrhDxSlqrYBwkk5IqKa3SBrk4hYM1RVV4IAnE2ebeaf7CXN
         AvouD8aVzzJxto4yhtAyyym/HbIfjvOkObhLa/0u2oL628tl6EVU6SVHLuHrNuL9HT43
         +BMw==
X-Gm-Message-State: ANoB5pnzY1HVqu5YfTOLCzLVg8f3stEJrSNFPuur1NjJyBltR6rxTXQz
        6XGAO/IYqoamMmved6u3p6I=
X-Google-Smtp-Source: AA0mqf5bXDwZdh+Ou7l0MLRwEyd23SegABpegZb9mFbyB2rOJfogP5j07j4ji0D3cQzbq+v73QUL6Q==
X-Received: by 2002:a7b:ca45:0:b0:3c4:bda1:7c57 with SMTP id m5-20020a7bca45000000b003c4bda17c57mr61200687wml.6.1670157285705;
        Sun, 04 Dec 2022 04:34:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c2cb000b003c6bbe910fdsm22595222wmc.9.2022.12.04.04.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:34:45 -0800 (PST)
Message-ID: <796a4611-9030-0d3a-e3e6-5b23ca66672b@gmail.com>
Date:   Sun, 4 Dec 2022 13:34:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Italics in SS (was: Issue in man page namespaces.7)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090713.GA512@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090713.GA512@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KPX0NSdbANFBeiP6PK6aiqQd"
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
--------------KPX0NSdbANFBeiP6PK6aiqQd
Content-Type: multipart/mixed; boundary="------------TyjJFivQ8M5sPt94V35x4gTM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 groff <groff@gnu.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
 linux-man@vger.kernel.org
Message-ID: <796a4611-9030-0d3a-e3e6-5b23ca66672b@gmail.com>
Subject: Italics in SS (was: Issue in man page namespaces.7)
References: <20221204090713.GA512@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090713.GA512@Debian-50-lenny-64-minimal>

--------------TyjJFivQ8M5sPt94V35x4gTM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gMTIvNC8yMiAxMDowNywgSGVsZ2UgS3JldXR6bWFubiB3cm90
ZToNCj4gV2l0aG91dCBmdXJ0aGVyIGFkbywgdGhlIGZvbGxvd2luZyB3YXMgZm91bmQ6DQo+
IA0KPiBJc3N1ZTogICAgL3Byb2Mvc3lzL3VzZXIg4oaSIEk8L3Byb2Mvc3lzL3VzZXI+DQo+
IA0KPiAiVGhlIC9wcm9jL3N5cy91c2VyIGRpcmVjdG9yeSINCg0KVGhhdCBpcyBhIHN1YnNl
Y3Rpb24sIHdoaWNoIGlzIG9mIGNvdXJzZSBib2xkIGJ5IGRlZmF1bHQuICBJbiB0aGUgU1Mg
dGl0bGUsIA0KdGhlcmUncyB0ZXh0IHRoYXQgd291bGQgYmUgZm9ybWF0dGVkIGlmIGl0IGFw
cGVhcmVkIGVsc2V3aGVyZSBpbiB0aGUgcGFnZSwgYnV0IA0Kd2UgZG9uJ3QgZm9ybWF0IGl0
IGluIFNTIHRpdGxlcyAoSSdtIGd1ZXNzaW5nIGZvciBsYXppbmVzcyBvZiB1c2luZyB0aGUg
ZHJlYWRlZCANClxmIGVzY2FwZSkuICBXb3VsZCB5b3UgcmVjb21tZW5kIHVzaW5nIGl0PyAg
SSB0cmllZCBpdCwgYW5kIGl0IHNob3dzIGluIA0KYm9sZCtpdGFsaWNzLCB3aGljaCBpcyBv
a2F5IHRvIG15IHRhc3RlLCBhbmQgYWxzbyBpbmNyZWFzZXMgY29uc2lzdGVuY3kgb2YgDQpm
b3JtYXR0aW5nLCBzbyBJJ20gZmluZSB3aXRoIGl0Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0K
DQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------TyjJFivQ8M5sPt94V35x4gTM--

--------------KPX0NSdbANFBeiP6PK6aiqQd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMk+MACgkQnowa+77/
2zIk3BAApmlapS7hRAA5HonuNQrnpMotLAfvG9vNLAPStt9vUhgymm1H6kr217MG
70Zhvck4NG6hfspgYx9ck6XtqTTL6t4fpLAyM2MfjKbszeJhHejT1Tq1vSawUC9g
0vSj/dJMJ4aBzUQP2cgzB6mTrxpQa/1+qDMBXr3apS6zu3EoaQq8rmmb/t8loN0d
lmIJvssaseughCjo9p3MJNED9Z8cKVicKEPnlpiXr3lmaJXCEV9dqqeGlO0CA3vM
Kn6s0g1bLh4q9+DS6rDTAUgXXN1+YJT7fbtCk9oBfLoskh17rdz7wX2N9eNMs113
3Fa2z5xIUrfOc6B+oFG4ksl5T0paHV9wRt4f4laWUTGfpndMTL2zaL4ejMA2fHhd
zXUAZ+7V2a5fDiMRIqqTMWED2L+4ngn5SshVjr5rOuiLVM0qseMKjKoZSCy74iA3
mMScXE8TMGy/eiph9zGQGmEaOYBliSLRJmDYs+YYs6bs8McmP0VdYP1Cya5xB7cM
YtWCFip/et3pUcVKyIhNqCCgXZu+ULmB38O9woZ+cS28W7IcCr3Oj3mb2LqO8BRN
PSmDbhI8yhtJGKMMX7p7BMq2jslYIfiRCRR7N3knApDyvyZJ49ciyumF93jiUgZ1
LChkF1AvEVIx6AeqgdEaJUmzD2n/1gsJdKs7cJwX6+Cq6x78DTI=
=UrwR
-----END PGP SIGNATURE-----

--------------KPX0NSdbANFBeiP6PK6aiqQd--
