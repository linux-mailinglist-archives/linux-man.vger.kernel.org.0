Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7149F641D1F
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:53:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiLDMxu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:53:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDMxs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:53:48 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD32140DE
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:53:44 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id n16-20020a05600c3b9000b003d08febff59so3166928wms.3
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u66+8ihAuOf1ZjrmXCwXcBBcumSN8VzJLeduR6LzZow=;
        b=MJ76wWDlNwlSBZewEKEHdNeHdDFmQzPAebQHXbnmHD0QrLimtltK7VBCRswGxUdC1H
         a8TAdtreMMFWjdMZSCiveoPYuohUMpacXwaQ79yFi9Dtfk9jZXzFtUW6QE/UIAZx9Wnc
         t4AHFK6zYK4BtF8sgMiHR11NDk43sTgj/aYJ0CFEpFr3Spz1/A3ZCJVxCUpxvG8jxOlt
         bWFVUGWtcVjkwJeHXvnx263huHoTXA3n+H4lBl0VUUu5SaUc3daT+66UMLORWFthJ/UU
         82H9SpT/9nLjpl7o4/bpG21lG4qJ6JamDU7BjpKgOMYveM7ffOaF+AsoHY7188hV5OB+
         Zc+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u66+8ihAuOf1ZjrmXCwXcBBcumSN8VzJLeduR6LzZow=;
        b=jSFZA2ATo6E7L5xvC/gmIRyOjoiIv61+ANMcGrg0McZqSCq29ukapLxAawRIUbotdE
         rf84PeMfKkx+R9qtjUxU8kM/CmZd5Rw54p7/eyNDYlWBZgVSu8DzWqrYkQGztMbB1xKQ
         31FkTLMHmmTG366ctmwvzz5zJjMNgMkEEG7oNIyaT6s3Sh537gknqU3P0FaQcbockjKp
         hy6FUWDV7OAaPuXGG0dwBbUzsRmxoN9KHLCVdxsCF6XNNOtnpZdEsNgSTgdHfURSpKlT
         +1mqho2ONrN9yIBY+/DVKozEVP7NWXPUeouBaZAMqdZYyhHPIJ537cR2ExuA7sjgoC6G
         dr8Q==
X-Gm-Message-State: ANoB5pmyNRx872O5tWpo+xHp2a/OJ2VhX2WSvjkR7JXkmankrZplup4E
        F7jqlFXAfMvmsZ3d4AQRowk=
X-Google-Smtp-Source: AA0mqf7RfFhKAQkfiO4HRWSET/wbWOCrK6GsvH59BX0NqgncyUZ+tuH3M/hCrO+1iSzVxB1BUFuoWQ==
X-Received: by 2002:a05:600c:188a:b0:3cf:8e62:f769 with SMTP id x10-20020a05600c188a00b003cf8e62f769mr61484355wmp.52.1670158423085;
        Sun, 04 Dec 2022 04:53:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z12-20020a5d44cc000000b002362f6fcaf5sm11682440wrr.48.2022.12.04.04.53.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:53:42 -0800 (PST)
Message-ID: <7753c4c2-6239-bc98-1506-09c2d2eeb484@gmail.com>
Date:   Sun, 4 Dec 2022 13:53:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page ascii.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090714.GA610@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090714.GA610@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9my0x4N27Ma0bg0c15gAzyqd"
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
--------------9my0x4N27Ma0bg0c15gAzyqd
Content-Type: multipart/mixed; boundary="------------QNj7BZoR3OwIo7a3rmZLOHtc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <7753c4c2-6239-bc98-1506-09c2d2eeb484@gmail.com>
Subject: Re: Issue in man page ascii.7
References: <20221204090714.GA610@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090714.GA610@Debian-50-lenny-64-minimal>

--------------QNj7BZoR3OwIo7a3rmZLOHtc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIEluIHRoZSByaWdodCB0YWJsZSwgcGxlYXNlIGFkZCBcJiBtYXJrdXAg
Zm9yIGVuZCBvZiBzZW50ZW5jZSBjaGFyYWN0ZXJzICg/ICEgLikgdG8gZ2V0IHByb3BlciBm
b3JtYXR0aW5nIGluIG90aGVyIGxvY2FsZXMuIFRoYW5rcyENCg0KSSdtIG5vdCBzdXJlIHdo
YXQncyB0aGUgaW50ZW5kZWQgY2hhbmdlLiAgU2luY2UgdGhpcyBpcyBtb3JlIGRlbGljYXRl
LCBJIHRoaW5rIA0Kc2VuZGluZyBhIHBhdGNoIHdvdWxkIGJlIGlkZWFsLiAgUGxlYXNlIGZv
bGxvdyB0aGUgQ09OVFJJQlVUSU5HIGZpbGU6DQoNCjxodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC90cmVlL0NPTlRSSUJVVElO
Rz4NCg0KQW5kIHNpbmNlIGl0J3MgYWJvdXQgZm9ybWF0dGluZywgcGxlYXNlIGFsc28gQ0Mg
dGhlIGZvbGxvd2luZyBpbiB5b3VyIHBhdGNoOg0KDQogICAgIENDOiAiRy4gQnJhbmRlbiBS
b2JpbnNvbiIgPGcuYnJhbmRlbi5yb2JpbnNvbkBnbWFpbC5jb20+DQogICAgIENDOiA8Z3Jv
ZmZAZ251Lm9yZz4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KPiANCj4gIiAgIDIgMyA0IDUg
NiA3ICAgICAgIDMwIDQwIDUwIDYwIDcwIDgwIDkwIDEwMCAxMTAgMTIwXG4iDQo+ICIgLS0t
LS0tLS0tLS0tLSAgICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxuIg0K
PiAiMDogICAwIEAgUCBcXGAgcCAgICAgMDogICAgKCAgMiAgRTxsdD4gIEYgIFAgIFogIGQg
ICBuICAgeFxuIg0KPiAiMTogISAxIEEgUSBhIHEgICAgIDE6ICAgICkgIDMgID0gIEcgIFEg
IFsgIGUgICBvICAgeVxuIg0KPiAiMjogXCIgMiBCIFIgYiByICAgICAyOiAgICAqICA0ICBF
PGd0PiAgSCAgUiAgXFxlICBmICAgcCAgIHpcbiINCj4gIjM6ICMgMyBDIFMgYyBzICAgICAz
OiAhICArICA1ICA/ICBJICBTICBdICBnICAgcSAgIHtcbiINCj4gIjQ6ICQgNCBEIFQgZCB0
ICAgICA0OiBcIiAgLCAgNiAgQCAgSiAgVCAgXFwoaGEgIGggICByICAgfFxuIg0KPiAiNTog
JSA1IEUgVSBlIHUgICAgIDU6ICMgIC0gIDcgIEEgIEsgIFUgIF8gIGkgICBzICAgfVxuIg0K
PiAiNjogJiA2IEYgViBmIHYgICAgIDY6ICQgIC4gIDggIEIgIEwgIFYgIFxcYCAgaiAgIHQg
ICBcXCh0aVxuIg0KPiAiNzogXFwoYXEgNyBHIFcgZyB3ICAgICA3OiAlICAvICA5ICBDICBN
ICBXICBhICBrICAgdSAgREVMXG4iDQo+ICI4OiAoIDggSCBYIGggeCAgICAgODogJiAgMCAg
OiAgRCAgTiAgWCAgYiAgbCAgIHZcbiINCj4gIjk6ICkgOSBJIFkgaSB5ICAgICA5OiBcXChh
cSAgMSAgOyAgRSAgTyAgWSAgYyAgbSAgIHdcbiINCj4gIkE6ICogOiBKIFogaiB6XG4iDQo+
ICJCOiArIDsgSyBbIGsge1xuIg0KPiAiQzogLCBFPGx0PiBMIFxcZSBsIHxcbiINCj4gIkQ6
IC0gPSBNIF0gbSB9XG4iDQo+ICJFOiAuIEU8Z3Q+IE4gXFwoaGEgbiBcXCh0aVxuIg0KPiAi
RjogLyA/IE8gXyBvIERFTFxuIg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------QNj7BZoR3OwIo7a3rmZLOHtc--

--------------9my0x4N27Ma0bg0c15gAzyqd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMmFUACgkQnowa+77/
2zIFQA/+Kbs4KSsZ5FN3oekbZrcmhNLxWtAnGDidfeZCsz1VXqfvPTJ7LMsIi/2A
SkU37tFEBo8xWfGqsb29Hc9uz2je0dNIBhj6uzVh4bJrl2o2jbptlwvh6pJb0Kti
yEn8IOwq4MY2CaB5/XRu3Bjw9RNGe5GRX9jAVEYaF3pBEObNnd9gP0fI8RSEFmVp
Y6SfNKmOa+msn39EgISFE1USyyCNZzS5hc8ON63MNXBQYvvCiMUaEFV5M/dO+G6D
zOPRhR2S4Qwf5vvcVaw/oWNFUvSAkRxjP0ZNLGnZTdfr82oFwiw7FLD5ZlMbZ81+
30v+TogSb/c+v31Q5tiqHL5jjCqs+IOCVfI7p2OKjrtQwjxLNGs6jE5PToPi5oHb
M7EUtCuwhD03qoRZWmVl0J37BWjDcuVnsHNrxcdEGFthe6yP4OeEEiLdSuclXHKt
tMq4tGIRWP1uaefZg8/H8dZMmFmbrj5NMRZddg0mYG/XF08QBcABT1bZtZbArndZ
2aTZy7AXANS69Pme3Syor27uxUcbLbvzbo6dr849kYyID/x69tZThFPqJVDP3hgo
WpxB54z2VjSC06/QhZnOa+8Z4FcE2InKhRXBN+qcuuQglVMs5swF5fKC7s8cucO8
hR6RO2EbUEGVXgEIWQnZMIUBRj9onXEkdzfZVFMhlOxz33LcjQ4=
=UTCG
-----END PGP SIGNATURE-----

--------------9my0x4N27Ma0bg0c15gAzyqd--
