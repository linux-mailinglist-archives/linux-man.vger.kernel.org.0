Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A921C659146
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 20:51:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiL2TvJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 14:51:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230030AbiL2TvH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 14:51:07 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5165EF5A0
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:51:02 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id z16so1713099wrw.1
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A5CiiBjIMjtrsDgQ9TUJKrtEEhfnjdf6HXTAhG4BAx8=;
        b=k9i0aEKZ5b9Oc0To70r9hwbDsZENzO5trJDW+F81RkSLgU0AMVfhuvloPksPdq/Nex
         zwW1gfm2S2/m7PshfC1tYMtwCtz+89x6RcuujIuXNB5KOZb43a5z8HVzCm5QhPYJYXd1
         OQhuqJjumhqGcnyki5d7TUCDa0XByJ5Q/39HhpMlGFNDA0a9NOdAgK/NNG1/6Ws7JK/b
         Wl9nPwjZ/XTvcpEONMUn3FhVEP3AUSkAS6w/dYYiDvqLjKHK03BwxrAtBrTDjkF8A2Z3
         kNWjvosOcs5MvCcEByE+xjqwq+lXt+gcELprNzkyZg2vuxxS/IGU6httyoIFzYW6NebN
         vfhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A5CiiBjIMjtrsDgQ9TUJKrtEEhfnjdf6HXTAhG4BAx8=;
        b=Dxve1/1VH5p76cfuwLBap+SfoZUr+kxT8j4em5FF4cnWfIiIdWg9bX0zuUM/lHlYoX
         DeDuynO3v19t0oVm2442wbcwCmJpTAfR9TSFn3v7FR+EN7f2e+ie64pj3cSfKInvwF4C
         PVzSTPBl33dNMVWB6TOF8/KHVLnJOvkB5dVySscVluZtuVSyzw/LORlb6lkg7JgEAEPM
         T33hF34gCE/Rw6mN1mYGrkEnpjrXevnmtur6D+zqa4PC5KUwJ/Z56MoGhRPfpKJwqA1P
         pJIYVVWO6hWHqsZWT8Xj2foc85FjDY3V/PEnLb6xeLBMz0dODEWbPcH7No4WN23F5kuo
         Rnuw==
X-Gm-Message-State: AFqh2koTruVIcKsHCoIMLOYA04zeTTxFmUpo8lFxiESRKw44bC6Y79ko
        SOssWJpME/JCrxuNewypg68=
X-Google-Smtp-Source: AMrXdXt521Il6cx8DG/207qZGxKoY65I6l0zVPa4rFnr9YXsWiP038mN5NkEv5+9GcrRUGr0sg1zSA==
X-Received: by 2002:a5d:480e:0:b0:27d:dc76:7b34 with SMTP id l14-20020a5d480e000000b0027ddc767b34mr10432106wrq.14.1672343460768;
        Thu, 29 Dec 2022 11:51:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i1-20020adfb641000000b002425787c5easm18920051wre.96.2022.12.29.11.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 11:51:00 -0800 (PST)
Message-ID: <9b215805-202d-9267-1fd9-57f994036f6f@gmail.com>
Date:   Thu, 29 Dec 2022 20:50:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [manual]: rawmemchr(3) and UB
Content-Language: en-US
To:     =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
References: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
 <CAPBLoAc94b1XG2mEea3-BS=fqmGvqu_EeRtJLvNDqD3F7fMj=A@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAPBLoAc94b1XG2mEea3-BS=fqmGvqu_EeRtJLvNDqD3F7fMj=A@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LS05Bh9Fp0Wz3v8iA0s6nBKs"
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
--------------LS05Bh9Fp0Wz3v8iA0s6nBKs
Content-Type: multipart/mixed; boundary="------------xlb4xLFexgy1ZvLjswm6CmJ2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc: GNU C Library <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <9b215805-202d-9267-1fd9-57f994036f6f@gmail.com>
Subject: Re: [manual]: rawmemchr(3) and UB
References: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
 <CAPBLoAc94b1XG2mEea3-BS=fqmGvqu_EeRtJLvNDqD3F7fMj=A@mail.gmail.com>
In-Reply-To: <CAPBLoAc94b1XG2mEea3-BS=fqmGvqu_EeRtJLvNDqD3F7fMj=A@mail.gmail.com>

--------------xlb4xLFexgy1ZvLjswm6CmJ2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ3Jpc3RpYW4sDQoNCk9uIDEyLzI5LzIyIDIwOjQ1LCBDcmlzdGlhbiBSb2Ryw61ndWV6
IHdyb3RlOg0KPiBPbiBUaHUsIERlYyAyOSwgMjAyMiBhdCA0OjIwIFBNIEFsZWphbmRybyBD
b2xvbWFyIHZpYSBMaWJjLWFscGhhDQo+IDxsaWJjLWFscGhhQHNvdXJjZXdhcmUub3JnPiB3
cm90ZToNCj4+DQo+PiBIaSwNCj4+DQo+PiBJIHdhcyByZWFkaW5nIHJhd21lbWNocigzKSwg
YW5kIGZvdW5kIHNvbWUgZnVubnkgdGV4dDoNCj4+DQo+PiBSRVRVUk4gVkFMVUUNCj4+ICAg
ICAgICAgIFRoZSAgbWVtY2hyKCkgIGFuZCBtZW1yY2hyKCkgZnVuY3Rpb25zIHJldHVybiBh
IHBvaW50ZXIgdG8gdGhlIG1hdGNoaW5nDQo+PiAgICAgICAgICBieXRlIG9yIE5VTEwgaWYg
dGhlIGNoYXJhY3RlciBkb2VzIG5vdCBvY2N1ciBpbiB0aGUgZ2l2ZW4gbWVtb3J5IGFyZWEu
DQo+Pg0KPj4gICAgICAgICAgVGhlIHJhd21lbWNocigpIGZ1bmN0aW9uIHJldHVybnMgYSBw
b2ludGVyIHRvIHRoZSBtYXRjaGluZyBieXRlLCBpZiBvbmUNCj4+ICAgICAgICAgIGlzIGZv
dW5kLiAgSWYgbm8gbWF0Y2hpbmcgYnl0ZSBpcyBmb3VuZCwgdGhlIHJlc3VsdCBpcyB1bnNw
ZWNpZmllZC4NCj4+DQo+Pg0KPj4gT2YgY291cnNlLCBpZiB0aGUgYnl0ZSBpcyBub3QgZm91
bmQsIHRoZSByZXN1bHQgaXMgbm90IHVuc3BlY2lmaWVkLCBidXQgcmF0aGVyDQo+PiB1bmRl
ZmluZWQsIGFuZCBhIGNyYXNoIGlzIHZlcnkgbGlrZWx5IHNvIG1heWJlIHRoZXJlJ3Mgbm90
IGV2ZW4gYSByZXN1bHQuICBJDQo+PiB0aG91Z2h0IHRoaXMgbWlnaHQgYmUgYSB0aGlua28g
b2YgdGhlIG1hbnVhbCBwYWdlLCBidXQgdGhlIGdsaWJjIG1hbnVhbCBzZWVtcyB0bw0KPj4g
aGF2ZSBzaW1pbGFyIHRleHQ6DQo+Pg0KPiANCj4gVGhlIGxpYnJhcnkgaXRzZWxmIHVzZXMg
dGhpcyBmdW5jdGlvbiBtb3N0bHkgdG8gZmluZCBOVUxMIGFzIGFuDQo+IG9wdGltaXphdGlv
bi4gVGhpcyBpcyBhbGwgYmVmb3JlIEdDQyBoYW5kbGVkIGFsbCBvZiB0aGlzIHNvIGl0IGlz
DQo+IG1vc3RseSBvYnNvbGV0ZS4NCj4gZ2NjIHJlcGxhY2VzIG51bGwgYnl0ZSBzZWFyY2hl
cyB0aGF0IHVzZSBzdHIqY2hyIHdpdGggcyArIHN0cmxlbihzKQ0KPiBhbmQgZXhwYW5kcyBt
ZW1jaHIgYz1udWxsICBhbmQgcmF3bWVtY2hyLWxpa2UgcGF0dGVybnMgaW5saW5lLg0KDQpZ
b3UgbWVhbiB0aGF0IEdDQyBkb2VzIHRoZSBmb2xsb3dpbmc/Og0KDQoNCmlubGluZSBzaXpl
X3QNCnN0cmxlbihjb25zdCBjaGFyICpzKQ0Kew0KCXJldHVybiByYXdtZW1jaHIocywgJ1ww
Jyk7DQp9DQoNCg0KSWYgc28sIGdyZWF0LCBiZWNhdXNlIEkgYW0gd3JpdGluZyBhIGxpYmMg
cmVwbGFjZW1lbnQsIGFuZCB3YXMgaW1wbGVtZW50aW5nIA0Kc3RybGVuKDMpIGV4YWN0bHkg
bGlrZSB0aGF0LCB3aGljaCBpcyB3aHkgSSBuZWVkZWQgdGhlIGRvY3MuICBJdCBtYXkgYmUg
DQpzb21ldGhpbmcgbm90IHZlcnkgdXNlZnVsLCBidXQgSSBndWVzcyBpdCdzIHN0aWxsIHZl
cnkgdXNlZnVsIGZvciBsaWJjIGludGVybmFscy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------xlb4xLFexgy1ZvLjswm6CmJ2--

--------------LS05Bh9Fp0Wz3v8iA0s6nBKs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOt75wACgkQnowa+77/
2zJIqA/8C9X1t4k5P5KUN7mDuV2iJkRGndXDf9awZq/jrys+pb/hLU9DgBksQz6I
MIq1mqNtLfAkqKGCODNp5yk708BFKogVB3Z7043Yp7LOBJ2h0WahlLzhobz5kiiO
gJLsA+5EkSPsKQjkf/js0dZzEzyvNyErpATU/cu0Hk0Y1Z7b/L5bpmYBjq/ABKDq
CniIcUHZq3Fc6QK4yliPtTRM8mHPhfThFdFdB0NW/cNvGg56o474YBEQKlO5ZrtL
ntZZ9MZ55FqSxzBOQuQea2/KD3t3N4lSpgJUh0gXglGrwv7YvjbFm0vYiB4IwU5d
WDb+94Z9hK4bskHXsNuUQzApaprDrGWpvMWn0sbuFhTGWW7Q3dh6hVoyteWGJ0mz
iCj2LwmHuJcXLZ9hV3esC2UhKL0nWnE2uhx72+ISDJnpf8OFrH7o1lmTJF9aGkkL
VUa2ocmTqLExQL1XPkc9weUdcLQtEHIpcU4fkUpsjI+GkRSTYcgSneq+s4Csv6Pk
jwX34BdxpRiErTZPlEAYS5tv8xWSEur+3w0axzpak2QFh+WfFmDw6PeQROcY/OA0
8JtaVyyrjppeyRt/zoE/PbjWLKAk0UY6drjmdQRNi2nwykqgYNETs2cMQC+Chl1F
7Ct3SAmKnXuK3wsYasR+YYEcIPcFKIaxGWbb5BkjsxBlvA/Gm/M=
=SPmv
-----END PGP SIGNATURE-----

--------------LS05Bh9Fp0Wz3v8iA0s6nBKs--
