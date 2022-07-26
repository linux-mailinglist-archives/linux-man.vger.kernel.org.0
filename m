Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD7E6581195
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 13:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232994AbiGZLGQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 07:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbiGZLGP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 07:06:15 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 906B52DAB7
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 04:06:14 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id bn9so8763166wrb.9
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 04:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=+4/J2Au6y4qTkd2RYhHzawgm4CMpFaRf7nl5hBknu/0=;
        b=VnFPseZk2S+2FXjzddzAuZ+pAaaMKQsN0rwd5vwO+5WLwKGU45ubnCXowtk14tYxPF
         K4srFaoPB38xEVOj3iCBeJy6Yh+DeWdz1b43iJGRmKycjaA1QfeKtGdh41MU3J1fmr79
         GzD1pzBiQbOI475vo1pgZOIbrl2Ix3uagJrV0WSKzG4ewFZNkkkx9l8O+HVybjdOsW5Q
         OTB/rCX9NZXYYacBkjNNiiqbYjH7XELO/JOhP8D4evNGoorJW7yyNxOEzumqoOOy8yv5
         hJk/XJJ6FK9fRbgsqhXLoTdiSsw/qrRXtdnC2TJYMJP22vfSq960qIErx2jsxw9/0XSa
         pVkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=+4/J2Au6y4qTkd2RYhHzawgm4CMpFaRf7nl5hBknu/0=;
        b=a9NdDsHl1L4mOQFTu8UGQjvi8zLj6ngzBBurIINMy57UhHiQDo9RoORcj1n7C/6sOQ
         jG4gm3/3QYz4j8u6W6M43CMU4LCf2ah8qV6nZqzknAbcH63oqDE/UkkIBBGBv0flXHVJ
         KlBeQd+IaqkGcIWqon6pQmfGElNKUeTiA7L0fDIlFO5yil7plevhgkgQ0wHTbD2M7E4P
         qVeKzrRzvYY6DnLbf5lqopxq3PGXJtDlzPeYnI8KINinIS/j3cIrCaq0CoR2LkBEF283
         nQyNLEW7R6Odt6lbPNQkNhvAHWk1kLHexQYNFuBclBwa2jLsD51OfOtkwcTwCq7uTOOk
         o/vQ==
X-Gm-Message-State: AJIora+WNpy0gEr65cPuGJT3VjzSR7sgziNOCqQCmmyXrRfuVTUJEGGg
        1o+Elyz/jShD3nXLpYRLl7Q=
X-Google-Smtp-Source: AGRyM1tQlywKeJCHmbPtlDcGKNCGfXad/ktkZdqztVkq+MQR6786DjoPb2vNRV71Tpx77CXev3v0KA==
X-Received: by 2002:a5d:588f:0:b0:21d:a516:f57b with SMTP id n15-20020a5d588f000000b0021da516f57bmr10448204wrf.685.1658833573059;
        Tue, 26 Jul 2022 04:06:13 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003a17ab4e7c8sm25734928wmp.39.2022.07.26.04.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 04:06:12 -0700 (PDT)
Message-ID: <7f200367-3751-d110-4c9e-2c0a677eb548@gmail.com>
Date:   Tue, 26 Jul 2022 13:06:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] pthread_atfork.3: wfix.
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
 <874k8k8m5s.fsf@oldenburg.str.redhat.com>
 <9dcab95b-ec77-b82b-22cf-ce082af033fb@gmail.com>
 <CAJgzZoovvrPuvL43bbj39QvH3KLO7ZO800j76T=bea+iHrvqBQ@mail.gmail.com>
 <48e15fa1-bdcf-a21f-1aa1-5c5168c67422@gmail.com>
 <CAJgzZoqDAMuk8j-kwzxkKMSbs4z2ZiGzbQuUkrouXitgW+RYmg@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZoqDAMuk8j-kwzxkKMSbs4z2ZiGzbQuUkrouXitgW+RYmg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CM58DvEV7bmn364jFS5ssc0f"
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
--------------CM58DvEV7bmn364jFS5ssc0f
Content-Type: multipart/mixed; boundary="------------uWLi9Evge3knP0oBr43MkVVH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
 "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <7f200367-3751-d110-4c9e-2c0a677eb548@gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: wfix.
References: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
 <874k8k8m5s.fsf@oldenburg.str.redhat.com>
 <9dcab95b-ec77-b82b-22cf-ce082af033fb@gmail.com>
 <CAJgzZoovvrPuvL43bbj39QvH3KLO7ZO800j76T=bea+iHrvqBQ@mail.gmail.com>
 <48e15fa1-bdcf-a21f-1aa1-5c5168c67422@gmail.com>
 <CAJgzZoqDAMuk8j-kwzxkKMSbs4z2ZiGzbQuUkrouXitgW+RYmg@mail.gmail.com>
In-Reply-To: <CAJgzZoqDAMuk8j-kwzxkKMSbs4z2ZiGzbQuUkrouXitgW+RYmg@mail.gmail.com>

--------------uWLi9Evge3knP0oBr43MkVVH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgZW5oLA0KDQpPbiA3LzI1LzIyIDIzOjAwLCBlbmggd3JvdGU6DQo+IGludGVyZXN0aW5n
bHksIGkgc2VlIHRoYXQgY29tbWl0IGluIHRoZSBsb2c6IA0KPiBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9sb2cvbWFuMy9w
dGhyZWFkX2F0Zm9yay4zIDxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9t
YW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9sb2cvbWFuMy9wdGhyZWFkX2F0Zm9yay4zPg0KPiAN
Cj4gYnV0IGl0IGRvZXNuJ3Qgc2VlbSB0byBoYXZlIG1hZGUgaXQgdG8gdGhlIHdlYj8gDQo+
IGh0dHBzOi8vbWFuNy5vcmcvbGludXgvbWFuLXBhZ2VzL21hbjMvcHRocmVhZF9hdGZvcmsu
My5odG1sIA0KPiA8aHR0cHM6Ly9tYW43Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuMy9wdGhy
ZWFkX2F0Zm9yay4zLmh0bWw+DQo+IA0KPiBpcyB0aGVyZSBhIGtub3duIGlzc3VlIHdpdGgg
bWFuNy5vcmcgPGh0dHA6Ly9tYW43Lm9yZz4gYmVpbmcgb3V0IG9mIGRhdGU/DQoNCm1hbjcu
b3JnIHNob3dzIHRoZSBsYXRlc3QgcmVsZWFzZS4gIFNpbmNlIHdlIGhhdmVuJ3QgcmVsZWFz
ZWQgc2luY2UgDQptYW4tcGFnZXMgNS4xMywgdGhlcmUgYXJlIG1hbnkgY2hhbmdlcyBpbiB0
aGUgZ2l0IHJlcG8gdGhhdCBhcmVuJ3QgZm91bmQgDQppbiB0aGF0IHdlYnNpdGUuDQoNCkNo
ZWVycywNCg0KQWxleA0KDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------uWLi9Evge3knP0oBr43MkVVH--

--------------CM58DvEV7bmn364jFS5ssc0f
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLfypsACgkQnowa+77/
2zIKxw//dafSEJFNEhhBAuxx0D3kYDZfoD/OUQG3g97zpdRO0LH8KN3WCVjzGKO4
c6ii2G86rDT7VWQdMC4CTCHCEKHslwC6kSPOnlVavNN93sFUDA1v8La15Gzo0VaF
zW1zmUKrhpX1WUqHwOptqkZRXFCtAAQNgb60usEd00jOYGHs8vN34DuFcTe/nqSM
PuzIUhWwQwO6vshvTa1E2iEX+gFNKKwxyodac2UCREEuTyHSj+TEjT4M0cOvh9F9
PA/cxeGO5tnyWVlmydWHQd/dFzhst5bWd1Z71Mq6nw6BKztWrFVygxEYziluUO/M
cmzlf7wU5na7vr85gN0nzEUhlxOEkEOFdYyu4P4Lz4cDSvaERiUz7MNpe0FuiaEi
VbdAtaydvAo915nNw+PAO4oxvW2Xp9UeNog6TCEbyWY5iueg6wkTfBNpwqFh4QzC
srZwGSZbSTD5H6Ytwa6fxo/JnRTEQQcGxxl1LotwrC2F85hfenzSOVmXtUvIFY0N
Rm1edsXXS7lZtnrsZrHBXS86lbNnxY5indnUzoGxWnHDl3JkRqrBeZSpnTSWRCyG
YXCy1P/Aq7RRDkWJuF0nW9o5k95Eaq1UTsB9i8UfZVa06xbD/Ikzx0SFw+fjZThq
S4A/BdA09opxEXffQ3p/HmXPa+e8zelHcTTn9ycxa2BsgKkbcsU=
=sq6s
-----END PGP SIGNATURE-----

--------------CM58DvEV7bmn364jFS5ssc0f--
