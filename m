Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C5C2649604
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 20:21:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbiLKTVj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 14:21:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiLKTVi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 14:21:38 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AD58C754
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 11:21:37 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id h16so1053468wrz.12
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 11:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b59iE0dibmsjOUHwTlKHIVGRhrzJQiiXq73Kgctzr1U=;
        b=QrRII83d0vOWfoiAYRBkJEYCcxWyLob96I3WLlAChd+NIyZbL7bAZLP6BHJa2vS8Om
         7P4xn1z+4kYXxLiSHaxfnM8cp4Mc1Utwx1hy7/yxGxd2ooe6bNtOPKV+ro+iFw9CNUDt
         OAkiy4pxtGCeTqW5ZXqJH9UnTs7ixMsbk1Xin9ZF0ka92f+hgF2mXTjDeB6WCbJx7zDb
         gaw2vprsyvQ9HXmzrGqhXHC7M+WqymUcDswXRmzA2FNS5epaKDKQoPWeCQlJtj9VugR3
         Kk5f3RQlsZ2EQSgn1xDWQY29Q+Ulyt6jibpBinIzUzjq0cJyZuRk3kZBXgkLXF5Nlzbu
         Ijwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b59iE0dibmsjOUHwTlKHIVGRhrzJQiiXq73Kgctzr1U=;
        b=qwCgsjQF/dGA/Sl44vAUFlEymUN+YK+fjbYrn8fp0w93AlEkMLy/RO/z48fhpQ4+jV
         BcXP3ng+A//hF5XcZfK5R3hUBQEG50WxOT5hA00jA9zdrb8ylJp2SFKX7OcT+4aGxDhF
         YIv4cEhBCgeftzP+8KPI2JsmifpxNaDuY6y0yeIFGdCAIOnJU2RsXkHyE6oT//bITbQI
         z2A8RYE4cZQTXXkFL+UyotUdEQMnWq0kHgpZ6UNjp3utTgVgc1EK54IW8ayxzm6yQmLU
         ga2/sbDwKwYLoReXYur6aWtOaDWUpIm7l0k8oUy2nTtlcVzCinju9oUij8hAfwF2ehPX
         BYUA==
X-Gm-Message-State: ANoB5pmSv/HocP1dPgI++jkXNc+B8HKpVpf7q/v4h+HnKzgWjWzgcRrI
        80mH+VXyFM79d2Zm0/mAZa8=
X-Google-Smtp-Source: AA0mqf5m8QOxjKbw29L+rnb+qZU8Hh8i7sIzDJRdWSNqVkRfI8B7F+MMatTOgL4fYAF6t+H3uVRmtw==
X-Received: by 2002:adf:fb4f:0:b0:236:621a:984c with SMTP id c15-20020adffb4f000000b00236621a984cmr8467398wrs.36.1670786495985;
        Sun, 11 Dec 2022 11:21:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d13-20020adfef8d000000b00241e5b917d0sm8313250wro.36.2022.12.11.11.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 11:21:35 -0800 (PST)
Message-ID: <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
Date:   Sun, 11 Dec 2022 20:21:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
Content-Language: en-US
To:     Michael Haardt <michael@moria.de>
Cc:     Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com> <E1p4Rdx-0002PO-Kl@moria.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <E1p4Rdx-0002PO-Kl@moria.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7PFhfsc7Y0BZk30ELu6x0FxF"
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
--------------7PFhfsc7Y0BZk30ELu6x0FxF
Content-Type: multipart/mixed; boundary="------------RwuB9x3YUN0qFUTE9M9rtpej";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Michael Haardt <michael@moria.de>
Cc: Colin Watson <cjwatson@debian.org>, Ingo Schwarze <schwarze@usta.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
 Andries Brouwer <Andries.Brouwer@cwi.nl>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
 "Andries E. Brouwer" <aeb@cwi.nl>
Message-ID: <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com> <E1p4Rdx-0002PO-Kl@moria.de>
In-Reply-To: <E1p4Rdx-0002PO-Kl@moria.de>

--------------RwuB9x3YUN0qFUTE9M9rtpej
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWljaGFlbCwNCg0KT24gMTIvMTEvMjIgMjA6MDUsIE1pY2hhZWwgSGFhcmR0IHdyb3Rl
Og0KPiBJIGp1c3QgY2hlY2tlZCB3aGF0IGlzIGVhc2lseSBhdmFpbGFibGUgdG8gbWU6ID4N
Cj4gdjcgY2FsbHMgdGhlbSBzZWN0aW9ucyBpbiBpbnRybyBwYWdlcywgYnV0IGNoYXB0ZXJz
IGluIG1hbigxKSBhbmQgbWFuKDcpLg0KPiANCj4gQ2VsZXJpdHkgQ29tcHV0aW5nIFVOSVgg
KGxvb2tzIGxpa2UgYSBCU0QgcG9ydCkgY2FsbHMgdGhlbSBzZWN0aW9ucyBpbg0KPiBpbnRy
byBwYWdlcyBhbmQgbWFuKDcpLCBidXQgY2hhcHRlciBpbiBtYW52KDcpIChkdHJvZmYgdmVy
c2lvbiBvZiBtYW4oNykpLg0KPiANCj4gU3VuT1MgNC4xLjEgY2FsbHMgdGhlbSBzZWN0aW9u
cyBldmVyeXdoZXJlLg0KPiANCj4gSFAtVVggMTEuMTEgY2FsbHMgdGhlbSBzZWN0aW9ucyBl
dmVyeXdoZXJlLg0KDQpUaGFua3MgZm9yIGNoZWNraW5nIQ0KDQo+IA0KPiBHaXZlbiB0aGUg
Y2hhbmdlcyBpdCBsb29rcyBsaWtlIHlvdSBhcmUgbm90IHRoZSBmaXJzdCBwZXJzb24gdG8g
bm90ZSBhbg0KPiBpbmNvbnNpc3RlbmN5IGhlcmUsIGJ1dCBJIHNlZSBhIG1ham9yaXR5IGNh
bGxpbmcgdGhlbSBzZWN0aW9ucyBhbmQNCj4gZ2V0dGluZyByaWQgb2YgdGhlIHRlcm0gY2hh
cHRlciBvdmVyIHRpbWUuDQoNCkl0IHNlZW1zIGxpa2UgYSByZWdyZXNzaW9uIHRvIG1lLiAg
VGhlIG9sZCB0ZXJtIHdhcywgYXQgbGVhc3QgaW4gdGVybXMgb2YgDQphbWJpZ3VpdHksIGJl
dHRlci4NCg0KRG8gd2UgbmVlZCB0byBmaXggYSBkZWNhZGVzLW9sZCByZWdyZXNzaW9uIGlu
IHRoZSBtYW51YWwgcGFnZXM/ICBXZWxsLCBfbmVlZF8gaXMgDQphIHN0cm9uZyB3b3JkIGZv
ciB0aGF0Lg0KDQo+IA0KPiBOb3cgYWxsIG9mIHRoZSBhYm92ZSBpcyBjb21tZXJjaWFsbHkg
b2Jzb2xldGUgYnkgbm93IGFuZCBMaW51eA0KPiBkb21pbmF0ZXMsIGJ1dCBJIGRvbid0IHNl
ZSBhIGdvb2QgcmVhc29uIHRvIGJyZWFrIGFuIGVzdGFibGlzaGVkIHRlcm0NCj4gYW5kIGlu
c3RlYWQgc3VnZ2VzdCB0byBmb2xsb3cgdGhlIGFib3ZlIGFuZCBzL2NoYXB0ZXIvc2VjdGlv
bi9nLg0KDQpBZG1pdHRlZGx5LCBpdCdzIGhhcmQgdG8gZGVmZW5kIG15IHByb3Bvc2FsIGFz
IF9uZWNlc3NhcnlfLiAgRXNwZWNpYWxseSBhZnRlciANCnRoZSB3b3JsZCBoYXMgbGl2ZWQg
Zm9yIGRlY2FkZXMgd2l0aCB0aGUgYW1iaWd1aXR5IG9mIGhhdmluZyBjaGFwdGVycyBhcyAN
CnNlY3Rpb25zIGFuZCBzZWN0aW9ucyBhbHNvIGFzLi4uIHNlY3Rpb25zLg0KDQpJIGhhdmUg
c2V2ZXJhbCB0aW1lcyBoYWQgdG8gY29tZSB1cCB3aXRoIGltYWdpbmF0aXZlIHdheXMgdG8g
ZGlzYW1iaWd1YXRlIHRoZSANCnRlcm0gc2VjdGlvbi4gIEFtIEkgYSBjb3JuZXIgY2FzZSB0
aGF0IGhhcyB0byBsaXZlIHdpdGggdGhhdCBhbWJpZ3VpdHkgd2F5IG1vcmUgDQp0aGFuIHRo
ZSBhdmVyYWdlIHByb2dyYW1tZXI/ICBRdWl0ZSBsaWtlbHkuDQoNClNpbmNlIEknbGwgc29t
ZSBkYXkgKGxpa2VseSBmb3IgNi4wMiwgdGhhdCdzIDIgeWVhcnMgZnJvbSBub3cpIGJlIHB1
Ymxpc2hpbmcgdGhlIA0KTGludXggbWFuLXBhZ2VzIGFzIGEgc2luZ2xlLXZvbHVtZSBQREYs
IHRoZSB0ZXJtIGNoYXB0ZXIgd2lsbCByZWdhaW4gc2lnbmlmaWNhbmNlLg0KDQpJTU8sIHRo
ZXJlJ3MgdW5kb3VidGVkbHkgYSByZWFzb24gdG8gZml4IHRoZSByZWdyZXNzaW9uLCBhbmQg
cmVmb3JtIHRoZSBvbGQgDQp0ZXJtLiAgSG93ZXZlciwgdGhlIHJlYXNvbiBpcyBub3QgdmVy
eSBzdHJvbmcsIHNvIGl0IGFsbCBkZXBlbmRzIG9uIHJlYWNoaW5nIGFuIA0KYWdyZWVtZW50
IHdpdGggYWxsIG9mIG1hbi1kYiwgbWFuZG9jKDEpLCBhbmQgZ3JvZmYoMSkuICBUaGF0IHdv
dWxkIHByb2JhYmx5IGhhdmUgDQp0aGUgc2lkZS1lZmZlY3QgdGhhdCB3ZSBhbHNvIGhhdmUg
YWdyZWVtZW50IHdpdGggT3BlbkJTRC4gIFRoYXQgd291bGQgYmUgYSBsYXJnZSANCnN1YnNl
dCBvZiB0aGUgcmVsZXZhbnQgcGFydGllcy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------RwuB9x3YUN0qFUTE9M9rtpej--

--------------7PFhfsc7Y0BZk30ELu6x0FxF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWLbcACgkQnowa+77/
2zIBnw//WQKlbP8pENtGbMqIr3vDlR1MzPLN/79TxgaBkLVmpJN+PwiAa4/eh1Vt
B7TBd6mZoKBg3osOqVgvmvr3p7F6z8IO4NdP8YJqfaHSoZnBLyO4KNVJXkUjXTUy
BsgsNPCojf5V8aOzJ9acofvqFIcZ8ofh8IHHvuW9iH7lkh6uuMfXf10O6vQAJFEs
RoFaHaHfNVay4qRNYWO/afqOCF7goVwr0J8DbpAXp1Wuw/GW8/HEyM8kTRQhvsGM
u5ZoU0HayTZgutZ0rqgzzW0FdfjKsq3mxsYUavillfw/jER0WKgZo2sXrj3n0vNb
pz8HxrRK+j7ZOGfCE9h0oFm5gg6sPlAIrO2WC+6dP4XG3pRm1fsm/Dx1T63nh9eZ
XyQCTEH01agYliajRp2ZlXIos0jiArFlcTIZ6WI3N2HM4ubd4jL8f83go6pvYqov
hjd2u2OVWsVxIfXqUnpyjKXJohyLq59VRyH0r8Wo0D1VJV/CyTAC03x3HrtbQSmw
RjxZ3jhFPOBVLJBO5qW9lhvV4FrRaiYJJLXqfk7cS67l+v0tWqMBnuNeIbwmayVp
ylaEleVIiTRMt89o3xCDOqLBTPBk3vE8fx0DhYuFS0JJ32PJ5ur4MQ/DmBUxMiYB
pM/lZ02ZDpIFCaZRNpV35tz/qMRzYo9L4lTjwuZamEfWsupTRx0=
=cfet
-----END PGP SIGNATURE-----

--------------7PFhfsc7Y0BZk30ELu6x0FxF--
