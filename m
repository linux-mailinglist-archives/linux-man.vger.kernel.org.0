Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6703E649505
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 17:03:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbiLKQDF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 11:03:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbiLKQDE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 11:03:04 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D58BD13E
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:03:03 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h16so700447wrz.12
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pjfMkeSWUB8EIGydG7hJyK8jD6K/OM6n2oW1DxfY/b4=;
        b=LOHBocZ0nJNuhGjirWmM5JXSYdeeMsPJQBjOOedwjdlWS1AIk5LW+XfNqJmBWMVNr0
         rV9WYI0nv7Gu5AkdT88HtMGkoztCVUAkXrD971nmaDktEa0XxTOanaNkFxw2OZhGuZSk
         P0PklbQ7K+UfxO2cj69DTe07ToBvjoK0GUHs5sOFDlCt3Tn3WapVIaBCoAakwxSKGaqn
         cobPofBw/AkRmHGFL0v0lc3IkyV7vBeh/Z+596ArBhYQWaa2Mm9gMl/XzDufWS6cH+gZ
         ps/rvVVCyecEg5P+ykRt7veHaLTGM9eiPyv1rZIuYyVuQmt/bLA2TtCgsPlsp5wVeW4k
         uEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pjfMkeSWUB8EIGydG7hJyK8jD6K/OM6n2oW1DxfY/b4=;
        b=f/yQ9+Tx/mHEpSja+rqSMySqK25oi4M/oRZoXkCfuT7tUDZ3f388+o0umoWJCP/fNt
         Q7a5HQw2FVvUYWLzF0rdfuMA8BwyjN2F8K3roNmsdlHjAyDYRUpRrxrgHEzroZKRwiBY
         2rUgK4xTtLNpOnNXb4LxwN5N8oy2/zEtFfklz2Xx5G1ansfyyQZi7EABNz6I+Z4wnaIC
         yfaIQ2/IIahWzKDLlzNKo73XXjOfesqdKvWOB+KV4Opt3ohvF95KyHWBGEYKZD/6BYdQ
         vbu+NU55zgiZd8sMXLrWehQ3CnX1fGKA+ihHTNuoRgmI7wsK53ObpJHalVdMcD4fekV/
         mqwA==
X-Gm-Message-State: ANoB5pkR+9WEQEuZ0BsTYEoL91zyF/icNdzGGdw5jQ3K6oOpWDwd20kI
        lc3qsw6hreqR45s1O8MqNKA=
X-Google-Smtp-Source: AA0mqf5Yd0glY7HeVUozwBZOzZPNT6hsvgIe9YrwWFmA3nD/1VxEXIQswICm4mI6OQaDFJ6csStrCA==
X-Received: by 2002:adf:aa81:0:b0:242:2436:bd05 with SMTP id h1-20020adfaa81000000b002422436bd05mr8454850wrc.43.1670774581695;
        Sun, 11 Dec 2022 08:03:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d7-20020adffd87000000b002422bc69111sm7839529wrr.9.2022.12.11.08.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 08:03:01 -0800 (PST)
Message-ID: <c6c44a0a-534b-e1e8-d84a-4ec4350b6065@gmail.com>
Date:   Sun, 11 Dec 2022 17:03:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Zack Weinberg <zack@owlfolio.org>, libc-alpha@sourceware.org,
        'linux-man' <linux-man@vger.kernel.org>
Cc:     Ian Abbott <abbotti@mev.co.uk>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
In-Reply-To: <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KLhCF6TCrcVIBycPVQeUys3p"
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
--------------KLhCF6TCrcVIBycPVQeUys3p
Content-Type: multipart/mixed; boundary="------------L0s6fVoBdV07oxhDzPHhTxPp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>, libc-alpha@sourceware.org,
 'linux-man' <linux-man@vger.kernel.org>
Cc: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <c6c44a0a-534b-e1e8-d84a-4ec4350b6065@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
In-Reply-To: <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>

--------------L0s6fVoBdV07oxhDzPHhTxPp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzExLzIyIDE2OjU4LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gW0ND
ICs9IElhbl0NCj4gDQo+IEhpIFphY2ssDQo+IA0KPiBPbiAxMi85LzIyIDIyOjQxLCBaYWNr
IFdlaW5iZXJnIHZpYSBMaWJjLWFscGhhIHdyb3RlOg0KPj4gT24gMjAyMi0xMi0wOSAyOjMz
IFBNLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgTGliYy1hbHBoYSB3cm90ZToNCj4+Pj4gVGVj
aG5pY2FsbHksIHRoZSBiZWhhdmlvciBpcyB1bmRlZmluZWQgaWYgdGhlIHJlc3VsdCBvZiB0
aGUgY29udmVyc2lvbiANCj4+Pj4gY2Fubm90IGJlIHJlcHJlc2VudGVkIGluIHRoZSBvYmpl
Y3QgYmVpbmcgYXNzaWduZWQgdG8gYnkgc2NhbmYuwqAgKEluIHRoZSANCj4+Pj4gY2FzZSBv
ZiBnbGliYywgdGhhdCBwcm9iYWJseSByZXN1bHRzIGluIGVpdGhlciB0aGUgaW50ZWdlciBv
YmplY3QgYmVpbmcgc2V0IA0KPj4+PiB0byBhIHRydW5jYXRlZCB2ZXJzaW9uIG9mIHRoZSBp
bnB1dCBpbnRlZ2VyLCBvciB0aGUgaW50ZWdlciBvYmplY3QgYmVpbmcgc2V0IA0KPj4+PiB0
byBhIHRydW5jYXRlZCB2ZXJzaW9uIG9mIExPTkdfTUlOIG9yIExPTkdfTUFYLCBkZXBlbmRp
bmcgb24gdGhlIGFjdHVhbCANCj4+Pj4gbnVtYmVyLikNCj4+Pg0KPj4+IEhtbSwgVUIuwqAg
VW5kZXIgVUIsIGFueXRoaW5nIGNhbiBjaGFuZ2UsIHNvIGVycm9yIHJlcG9ydGluZyBpcyBh
bHJlYWR5IA0KPj4+IHVucmVsaWFibGUuwqAgSWYgRU9GK0VSQU5HRSBjYW4gX29ubHlfIGhh
cHBlbiB1bmRlciBVQiwgSSdkIHJhdGhlciByZW1vdmUgdGhlIA0KPj4+IHBhcmFncmFwaC7C
oCBQbGVhc2UgY29uZmlybS4NCj4+DQo+PiBCVUdTDQo+Pg0KPj4gVGhlIGBzY2FuZmAgZnVu
Y3Rpb25zIGhhdmUgdW5kZWZpbmVkIGJlaGF2aW9yIGlmIG51bWVyaWMgaW5wdXQgb3ZlcmZs
b3dzLiAgDQo+PiBUaGlzIG1lYW5zIGl0IGlzICppbXBvc3NpYmxlKiB0byBkZXRlY3QgbWFs
Zm9ybWVkIGlucHV0IHJlbGlhYmx5IHVzaW5nIHRoZXNlIA0KPj4gZnVuY3Rpb25zLg0KPj4N
Cj4+IE1hbnkgaW5wdXQgc3BlY2lmaWNhdGlvbnMgKGUuZy4gYCVzYCwgYCVbXlxuXWApIHJl
YWQgYSBzZXF1ZW5jZSBvZiBjaGFyYWN0ZXJzIA0KPj4gaW50byBhIGRlc3RpbmF0aW9uIGJ1
ZmZlciB3aG9zZSBzaXplIGlzIHVuc3BlY2lmaWVkOyBhbnkgdXNlIG9mIHN1Y2ggDQo+PiBz
cGVjaWZpY2F0aW9ucyByZW5kZXJzIGBzY2FuZmAgZXZlcnkgYml0IGFzIGRhbmdlcm91cyBh
cyBgZ2V0c2AuDQo+IA0KPiBUaGFua3MgZm9yIHJlbWluZGluZyB0aGF0IcKgIFNpbmNlIEkg
ZG9uJ3QgdXNlIHRoZXNlIGZ1bmN0aW9ucywgSSBkb24ndCByZW1lbWJlciANCj4gaG93IGJh
ZCB0aGV5IGFyZSA6KQ0KPiANCj4+DQo+PiBCZXN0IHByYWN0aWNlIGlzIG5vdCB0byB1c2Ug
YW55IG9mIHRoZXNlIGZ1bmN0aW9ucyBhdCBhbGwuDQo+Pg0KPj4gencgKG5vLCB0aGlzIGlz
IG5vdCBhIGpva2UpDQo+IA0KPiBJJ20gaW5jbGluZWQgdG8gYWRkIHRoYXQgaW4gdGhhdCBt
YW51YWwgcGFnZS7CoCBJcyB0aGVyZSBhbnl0aGluZyB0aGF0IGNhbiBiZSANCj4gc2F2ZWQg
ZnJvbSB0aGF0IHBhZ2UsIG9yIHNob3VsZCB3ZSBidXJuIGl0IGFsbD/CoCBUbyBiZSBtb3Jl
IHNwZWNpZmljOg0KPiANCj4gLcKgIEFyZSB0aGVyZSBhbnkgZnVuY3Rpb25zIGluIHRoYXQg
cGFnZSB0aGF0IGFyZSBzdGlsbCB1c2VmdWwgZm9yIGFueSBjb3JuZXIgDQo+IGNhc2VzLCBv
ciBhcmUgdGhleSBhbGwgdXNlbGVzcz8NCj4gLcKgIEFyZSB0aGVyZSBhbnkgY29udmVyc2lv
biBzcGVjaWZpZXJzIHRoYXQgY2FuIGJlIHVzZWQgc2FmZWx5Pw0KPiANCj4gT3IgdGhlIGNv
bnZlcnNlIHF1ZXN0aW9uczoNCj4gDQo+IC3CoCBXaGljaCBjb252ZXJzaW9uIHNwZWNpZmll
cnMgKG9yIG1vZGlmaWVycykgYXJlIGltcG9zc2libGUgdG8gdXNlIHNhZmVseSBhcyANCj4g
Z2V0cygzKSBhbmQgc2hvdWxkIHRoZXJlZm9yZSBiZSBtYXJrZWQgYXMgZGVwcmVjYXRlZCBp
biB0aGUgbWFudWFsIHBhZ2UgKGFuZCANCj4gcHJvYmFibHkgd2FybmVkIGluIEdDQyk/DQo+
IC3CoCBXaGljaCBmdW5jdGlvbnMgaW4gdGhhdCBwYWdlIGFyZSBpbXBvc3NpYmxlIHRvIHVz
ZSBzYWZlbHkgYW5kIHNob3VsZCANCj4gdGhlcmVmb3JlIGJlIG1hcmtlZCBhcyBkZXByZWNh
dGVkPw0KDQpUaGlzIGluY2x1ZGVzIGZ1bmN0aW9ucyB0aGF0IGNhbiBvbmx5IGJlIHVzZWQg
c2FmZWx5IGZvciB0aGUgbW9zdCBiYXNpYyBiZWhhdmlvciANCmZvciB3aGljaCBiZXR0ZXIg
ZnVuY3Rpb25zIHN1Y2ggYXMgZmdldHMoMykgYXJlIHN1cGVyaW9yLiAgSSdkIGFsc28gZGVw
cmVjYXRlIHRob3NlLg0KDQo+IA0KPiBXb3VsZCB5b3UgcGxlYXNlIG1hcmsgdGhlbSBhcyBb
W2RlcHJlY2F0ZWRdXSBpbiBnbGliYyB0b28/wqAgVGhpcyBpcyBub3QgDQo+IGVzc2VudGlh
bCB0byBtZSwgc2luY2UgSSBjYW4gbWFyayB0aGVtIGFzIGRlcHJlY2F0ZWQgaW4gdGhlIG1h
bnVhbCBwYWdlcyB3aXRob3V0IA0KPiB0aGF0IGhhcHBlbmluZywgYnV0IGl0J2QgaGVscC4N
Cj4gDQo+IENoZWVycywNCj4gDQo+IEFsZXgNCj4gDQo+Pg0KPiANCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------L0s6fVoBdV07oxhDzPHhTxPp--

--------------KLhCF6TCrcVIBycPVQeUys3p
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOV/zQACgkQnowa+77/
2zIcFBAAiToxbMF1buaX9yEWS/egMFDL7PSxyG3hAnFOtSpmcppahsjnn5y062j7
4Ye1Hcy++/zMkFCEGl+nziXdODImJ4X+KwBwLAMLpk2tP6LcT8U19lMXB/ESd9Ie
Q6aR+lx9m5hYsQTXHwWu4c5jxZaGWRqUEWPYOFKIcvtO5TFjWt7Bt+5hfVHlbhrF
fnDl7BZvw8TPpSA3e/z/N6kSrML6HnZ0ZtR7a8VFvGc/kdddNejg5axp2pr/549Z
hzAYLAxzySq2wDgru8SM71OC7/b6gUAloVAB6ZtScOGQPtonDIXmTsDomY2nHPbJ
L4Sx3kepmqP8eRn/yLSvSTe2Cx1OAkQ2SME933u3hXQDH6wvBYH6f6oiY+ZbZuTf
xCsNinoUxh8AznkAXE7/lMO2aAxHQmBHY9KRba5syXU4mZpgpYflQ2j/CaCyFHQg
rzovRaLRQWGhgXPcBGExrMXRiKquCxfaPada2ZdfBDBfhDRkEKMAe091Fvy6I0zl
4Y8I7+uxzvjmXh0jwZq/sQ/ps64DkmpefjnXug6ASDvll1CjsKEox4L/aqpwDy/A
/nTND/6oJvlbBNpDl2+vK24+o2H9/QYjs7F3pGQSfoP1bJrHW5mMHunha3sVwWNE
EDLJf0WV6dRgriw/8hbbn3HD5+XGSpJXZKYe4hP4cQNfpkr+OH0=
=dofS
-----END PGP SIGNATURE-----

--------------KLhCF6TCrcVIBycPVQeUys3p--
