Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 799B6600D92
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 13:17:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiJQLRX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 07:17:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbiJQLRK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 07:17:10 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C4F5F22B
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 04:17:08 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a3so18021277wrt.0
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 04:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q5E5OdDaDQI7F4tj9OpvgjW+Zui6c8me9fNk4dXUeEQ=;
        b=Y3cjYCvBnLTDcA45H8IWhHb3gdkrtfO7F3Y/UttpgOV9uNymgzdF3iqRARuwIp0qnR
         ZsChLcXTN9L5EOZ/tRCkh9RzT9RkJCeULiwc67p1ts5U3/bVoCS2vG3y1iaVS7tY7aCT
         Z5vCA4fHQw+RMFMtJe9JDBE0lvjZWIZDBt2C0Nf2hDaGxYNYjKnH4GdvWZHi9QvIatdR
         QegFK4MxtJkPsELsldaHyVjasv303GRtxO/JWzvs9msICxcbHOe9IEjSqwhVKO9uEPrR
         ehKeG9akKOCei3Qyfrvrn/4RHyTu/ajB1g3/W97UUyqrYJutY///MjoEiXIm4hjlvL0P
         jg6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q5E5OdDaDQI7F4tj9OpvgjW+Zui6c8me9fNk4dXUeEQ=;
        b=6Tle+rKPRko71KbpOpnFqC2EHrt0D1XBFvnTwUyrKElxkWLFF+BTXIzaPmUwTQqPRK
         0yAXZJrP2yggUrgnUfkKGCj+FWncpwt5LEXeALNQga/E5cNxdM7xvYIKB2HRzm1AyXHm
         3hyyMNQCWkHXLzConLG5tZTO8wPYup/S7RTYmWwg7qSsf0ReRxM1Nitir6oH3PQGERrj
         aWkOBtGo3IOkU7ZwA9UwiTvV7nLAPfOUZdG5uVh3sOL0Oj0t+gmZgGaoubza9SNMBmqF
         /qn7mlH7yHq3K2kn80eLo166YyFldqJF9DJ3Eccq6+51/SM/j8DffQUNiqo4p9m71oDf
         T5Bw==
X-Gm-Message-State: ACrzQf2cgvWVgVkkQgmSWwg3Kb7A/DmATcp/WMhDp1nAYeOBYAHP7g0M
        BTvIQ0Tc7AdvtxBJhkXhY98=
X-Google-Smtp-Source: AMsMyM70tF/HhlEUAiNev6LrahioIrvxsVdnQYdcGzZvIXL7bpigV7Z1YBymjY3SXkutYKnbXg13VA==
X-Received: by 2002:a05:6000:16c3:b0:22e:c6fd:2676 with SMTP id h3-20020a05600016c300b0022ec6fd2676mr5785549wrf.141.1666005427461;
        Mon, 17 Oct 2022 04:17:07 -0700 (PDT)
Received: from [192.168.43.80] ([31.221.171.215])
        by smtp.gmail.com with ESMTPSA id r14-20020a056000014e00b0022e51c5222esm8095244wrx.86.2022.10.17.04.17.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 04:17:06 -0700 (PDT)
Message-ID: <b1557166-2da6-57b6-e15f-122acfb8ba37@gmail.com>
Date:   Mon, 17 Oct 2022 13:17:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: Subdirs of man*/ (was: [PATCH] ascii.7: chase down History to
 earliest) (refers: man -M tcl)
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Groff <groff@gnu.org>
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
In-Reply-To: <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FjpTUVgK0zUDuqwIc0LO07CS"
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
--------------FjpTUVgK0zUDuqwIc0LO07CS
Content-Type: multipart/mixed; boundary="------------FTehW30AO3DO90DZUYhLDsBQ";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, Groff <groff@gnu.org>
Message-ID: <b1557166-2da6-57b6-e15f-122acfb8ba37@gmail.com>
Subject: Re: Subdirs of man*/ (was: [PATCH] ascii.7: chase down History to
 earliest) (refers: man -M tcl)
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
In-Reply-To: <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>

--------------FTehW30AO3DO90DZUYhLDsBQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMTcvMjIgMTM6MTAsIEFsZXggQ29sb21hciB3cm90ZToNCj4gW0NDICs9IGdyb2Zm
QCwgc2luY2UgaXQgd2FzIENDZCBpbiB0aGUgb2xkIGNvbnZlcnNhdGlvbiByZWZlcnJlZCB0
byBoZXJlXQ0KPiANCj4gSGkgSW5nbywNCj4gDQo+IE9uIDcvMjcvMjIgMTc6MzIsIEluZ28g
U2Nod2FyemUgd3JvdGU6DQo+ICA+IEFsZWphbmRybyBDb2xvbWFyIHdyb3RlIG9uIFN1biwg
SnVsIDI0LCAyMDIyIGF0IDA2OjE3OjQwUE0gKzAyMDA6DQo+ICA+PiBJIHdvbmRlcmVkIGZv
ciBhIGxvbmcgdGltZSB3aGF0IGhhcHBlbnMgaWYgeW91IGNyZWF0ZSBzdWJkaXJzIHdpdGhp
biBhDQo+ICA+PiBtYW4/IHNlY3Rpb24uwqAgSG93IGRvIG1hbigxKXMgaGFuZGxlIA0KPiA8
L3Vzci9zaGFyZS9tYW4vbWFuMy9weXRob24vZm9vLjM+Pw0KPiAgPiBPbiAqQlNEIHN5c3Rl
bXMsIHRoYXQgdHlwaWNhbGx5IG1lYW5zOg0KPiAgPg0KPiAgPsKgwqDCoCBUaGUgYXJjaGl0
ZWN0dXJlLXNwZWNpZmljIGxpYnJhcnkgZnVuY3Rpb24gZm9vKDMpDQo+ICA+wqDCoMKgIGZv
ciB0aGUgInB5dGhvbiIgaGFyZHdhcmUgYXJjaGl0ZWN0dXJlLg0KPiAgPg0KPiAgPiBIZXJl
IGFyZSBhIGZldyBleGFtcGxlcyBmcm9tIE9wZW5CU0Q6DQo+ICA+DQo+ICA+wqDCoMKgIC91
c3Ivc2hhcmUvbWFuL21hbjEvc3BhcmM2NC9ta3N1bmNkLjENCj4gID7CoMKgwqAgL3Vzci9z
aGFyZS9tYW4vbWFuMi9hcm12Ny9hcm1fc3luY19pY2FjaGUuMg0KPiAgPsKgwqDCoCAvdXNy
L3NoYXJlL21hbi9tYW4yL2kzODYvaTM4Nl9pb3BsLjINCj4gID7CoMKgwqAgL3Vzci9zaGFy
ZS9tYW4vbWFuMy9vY3Rlb24vY2FjaGVmbHVzaC4zDQo+ICA+wqDCoMKgIC91c3Ivc2hhcmUv
bWFuL21hbjMvc2dpL2dldF9mcGNfY3NyLjMNCj4gID7CoMKgwqAgL3Vzci9zaGFyZS9tYW4v
bWFuNC9hbHBoYS9pcm9uZ2F0ZS40DQo+ICA+wqDCoMKgIC91c3Ivc2hhcmUvbWFuL21hbjQv
YW1kNjQvbXBiaW9zLjQNCj4gID7CoMKgwqAgL3Vzci9zaGFyZS9tYW4vbWFuNC9sdW5hODhr
L2NidXMuNA0KPiAgPsKgwqDCoCAvdXNyL3NoYXJlL21hbi9tYW40L21hY3BwYy9vcGVucGlj
LjQNCj4gID7CoMKgwqAgL3Vzci9zaGFyZS9tYW4vbWFuNC9wb3dlcnBjNjQvb3BhbGNvbnMu
NA0KPiAgPsKgwqDCoCAvdXNyL3NoYXJlL21hbi9tYW40L3Jpc2N2NjQvc2ZncGlvLjQNCj4g
ID7CoMKgwqAgL3Vzci9zaGFyZS9tYW4vbWFuNS9zcGFyYzY0L2xkb20uY29uZi41DQo+ICA+
wqDCoMKgIC91c3Ivc2hhcmUvbWFuL21hbjgvaHBwYS9ib290LjgNCj4gID7CoMKgwqAgL3Vz
ci9zaGFyZS9tYW4vbWFuOC9tYWNwcGMvcGRpc2suOA0KPiAgPsKgwqDCoCAvdXNyL3NoYXJl
L21hbi9tYW44L3NnaS9zZ2l2b2wuOA0KPiAgPsKgwqDCoCAvdXNyL3NoYXJlL21hbi9tYW44
L3NwYXJjNjQvbGRvbWN0bC44DQo+IA0KPiANCj4gT24gMTAvMTcvMjIgMDM6MjIsINC90LDQ
sSB3cm90ZToNCj4+IENmLiwgd2VsbCwgdGhlIFVOSVggUHJvZ3JhbW1lcidzIE1hbnVhbDoN
Cj4+ICAgIA0KPj4gaHR0cHM6Ly93d3cudHVocy5vcmcvQXJjaGl2ZS9EaXN0cmlidXRpb25z
L1Jlc2VhcmNoL0Rlbm5pc192MS9VTklYX1Byb2dyYW1tZXJzTWFudWFsX05vdjcxLnBkZg0K
Pj4gUERGIHBhZ2UgMTkxOyB5ZXMsIHRoZSB0eXBvZ3JhcGhpY2FsIGNvbnZlbnRpb24gaGVy
ZSBpcyBpbnNhbmUsIGFuZA0KPj4gdGhlIGNvbnRlbXByYXJ5LWNvcnJlY3Qgd2F5IHRvIHJl
ZmVyIHRvIHRoaXMgcGFnZSBmcm9tIHdpdGhpbiB0aGUgbWFudWFsDQo+PiB3b3VsZCBiZSAv
anVzdC8gIi9ldGMvYXNjaWkiLCBidXQsIGdpdmVuIHRoZSBjb250ZXh0LCAiL2V0Yy9hc2Np
aSAoVklJKSINCj4+IG1ha2VzIHRoZSBtb3N0IHNlbnNlIHRvIG1lDQo+IA0KPiBJIGp1c3Qg
c2F3IHRoaXMgYW5kIHdvbmRlcmVkIGlmIHRoZSBzdWJkaXJzIGluIHRoZSBwYXN0IHdlcmUg
dXNlZCBhcyANCj4ganVzdCBwYXJ0IG9mIHRoZSBtYW51YWwgcGFnZSBuYW1lLi4uDQo+IA0K
PiBJIGhhdmUgYmVlbiByZW1lbWJlcmluZyBldmVyeSBub3cgYW5kIHRoZW4gdGhlIGRpc2N1
c3Npb24gd2UgaGFkIGFib3V0IGEgDQo+IGh5cG90aGV0aWNhbCAtTSwgYW5kIHRoaW5rIHdl
IG5lZWQgaXQgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC7CoCBJIGd1ZXNzIA0KPiBzdWJkaXJz
IGFyZSBub3QgcG9zc2libGUgbm93YWRheXMgYmVjYXVzZSBvZiB0aGUgdHJhbnNsYXRpb24g
dXNhZ2UsIGJ1dCANCnMvdHJhbnNsYXRpb24vYXJjaC8NCj4gSSdtIGN1cmlvdXMgYWJvdXQg
aWYgdGhhdCB3YXMgZGlmZmVyZW50IGluIHRoZSBwYXN0IG9yIHdoYXQuDQo+IA0KPiBEb2Vz
IGFueW9uZSBrbm93Pw0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------FTehW30AO3DO90DZUYhLDsBQ--

--------------FjpTUVgK0zUDuqwIc0LO07CS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNNObEACgkQnowa+77/
2zJpgA//dwD9TrH9+eRmffqp4ez6jXMrY43oK5H2Qf/iWEXdzu9+N3s6TecRjq6R
fZbJiQwDZJq2JCMLt92jYOPE54Yr1DubY++GK8k0Nf323Cox6avtUef+2pB7cYBV
DX/5Ju+5NeSE3+arVaheUDW67+gthTBvzZ643N7fvCOVRP18a/rWI+fvkRj2lgiD
bTs/e/D/3sNnRQMRgdCHq/mYSVCksE55ElzGSatdzpIy91HC/0A10OUe44zBtldm
dKFN904/63jj7wj0QVi2oKrivNRsq2YzaYLKELJtgYoO83l7KUNogJAfcVFhPhcE
qF5aEzxZHJqvXZeSTgfX3+5KoY1UMcQhzFrB342HKVOpZFUfrfrEWuT9PUL/XxFS
HEKNJcxWcNv4uqYn4Txg9lCMtmagZ+kS5sgJeYSjtSP1Fwb1BTOQOgEOLrLebA0r
8m6s5LpVRRFYccYQqQkvwT/exT6DiT+cZ2puEsqHmIVCvLVGlx+fkHot12kOVnFB
wiMMcjtLNQqRLTBjpbuilacTqHCA5+3bAO/i5P863t174Qcvw1GJdyuvCWGR5f3A
PwxsdF49JkuwYrfXcZ9xbIkaXsUQcbwFD0hNKN49+eK3ApRgpZ5ddGeMi8tjVXSk
nR+qTxLIn4Fxr31FTrm2RYY9UmIpjzhT0G+TzeXtikm5vycHcTk=
=dcUv
-----END PGP SIGNATURE-----

--------------FjpTUVgK0zUDuqwIc0LO07CS--
