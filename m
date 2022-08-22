Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC7F959C7D0
	for <lists+linux-man@lfdr.de>; Mon, 22 Aug 2022 21:03:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237722AbiHVTDH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Aug 2022 15:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236997AbiHVTDE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Aug 2022 15:03:04 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F9DAFD8
        for <linux-man@vger.kernel.org>; Mon, 22 Aug 2022 12:02:58 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id k17so6072210wmr.2
        for <linux-man@vger.kernel.org>; Mon, 22 Aug 2022 12:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=+Q74a+KNtGhGIss+eZG3Sgez34t6OKe1D4ESQUmc2ww=;
        b=Lw4+SgYoFMjv+KdDRVCrntjXZbMhKmXR6KeuWr6MdqFFAj9fDefz6w8oCyvRYOFaNk
         /u7OMEZZu0JPC4V5SfUdr8zTlTfz4dBqnfXTAOhhgTkhbh/aUUSby43diLHucbk9Qhfx
         tkZzU359ImzczWxOI6aoXH6KIVEea28gdl6joaO+fkBs6q6R9Aq7mmn+Gj1VxysQFQZo
         +Z/ATCStzA4+SDmX2gku/H06fhZ6TiTX8XK2LnQGiGIAhMhSVXPr1nIL/wmVZeHywSCr
         7UCJlPt00hpw7nv3G+b+qRnj3r4a7J3s1u4+cmygYb07c6Xx8WKT6ULUfAieIfgnpiTc
         MmQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=+Q74a+KNtGhGIss+eZG3Sgez34t6OKe1D4ESQUmc2ww=;
        b=GBcOg5RlU81pYl/vUF2Bt4nnqIZnNYDSLCvEutDaE+c+o2uclfU2QlD32BZjMdH3Lt
         q1ksdY31qJx9a3Jyl9ZSZeyWCNSMltgBh1bj0a17VM7bViOmQx0dnMGwtJDy43jcJVDR
         lXYYGRpnqBRYk7vYsZXzzVPP5UdoVbPG/WLrj8qq5cb3RgXToZ73iXgylSqCd6pI3Agf
         yU2aVI5W+zSUsNwujnJkvQBWaQbLknaLtlFlqaKAyYXws3OIC/S18iY8W+AQE4cTAU+9
         LNIdLO9SpCs+WP2tDeBEyPtRHWq4KgnVUoBoJ7qniFLdUMdtg4u3G5BHtxbZdyC6SOuF
         bbrA==
X-Gm-Message-State: ACgBeo3mEPpSYbAfMy2EBihDUtwg6FGBrW9bzhFv9bD0YRi/tyyyPzIy
        j51+PeeUWt3KsNoCkQRmZ74=
X-Google-Smtp-Source: AA6agR4knQNMA54T9Cs84YKte9qroN/xet6qx8uZT6uhRZ3EN86j+qk9gxvUAJh0YINlVN5ieosMPQ==
X-Received: by 2002:a05:600c:2f88:b0:3a5:4014:4b47 with SMTP id t8-20020a05600c2f8800b003a540144b47mr16178085wmn.96.1661194977059;
        Mon, 22 Aug 2022 12:02:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w13-20020a5d680d000000b002254b912727sm6657645wru.26.2022.08.22.12.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 12:02:56 -0700 (PDT)
Message-ID: <e09eb500-d32b-1334-fff3-64803e62b11f@gmail.com>
Date:   Mon, 22 Aug 2022 21:02:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20220819190859.6248-1-jwilk@jwilk.net>
 <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
 <20220822182140.ttqdmboeuznr6qa6@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220822182140.ttqdmboeuznr6qa6@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dnOdWue0NhIhgsTaiZt0hEpo"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------dnOdWue0NhIhgsTaiZt0hEpo
Content-Type: multipart/mixed; boundary="------------rt79N9iDCoo7fkMxNx5H6Lp3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <e09eb500-d32b-1334-fff3-64803e62b11f@gmail.com>
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
References: <20220819190859.6248-1-jwilk@jwilk.net>
 <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
 <20220822182140.ttqdmboeuznr6qa6@jwilk.net>
In-Reply-To: <20220822182140.ttqdmboeuznr6qa6@jwilk.net>

--------------rt79N9iDCoo7fkMxNx5H6Lp3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDgvMjIvMjIgMjA6MjEsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
QWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+LCAyMDIyLTA4LTIw
IDAxOjI4Og0KPj4gQlRXLCBJIG5vdGljZWQgeW91IGZpbmQgYSBsb3Qgb2YgdHlwb3MuwqAg
SSdtIGN1cmlvdXM6IGRvIHlvdSBmaW5kIHRoZW0gDQo+PiB3aGVuIHJlYWRpbmcsIG9yIHlv
dSBydW4gYSB0b29sIHRoYXQgZmluZHMgdGhlbT8NCj4gDQo+IEkgaGF2ZSB0d28gdW5jb252
ZW50aW9uYWwgc3BlbGxjaGVja2VycyBpbiBteSB0b29sYm94Og0KPiANCj4gaHR0cHM6Ly9q
d2lsay5uZXQvc29mdHdhcmUvbXdpYw0KPiBodHRwczovL2p3aWxrLm5ldC9zb2Z0d2FyZS9h
bm9yYWNrDQo+IA0KPiBJIHVzdWFsbHkgcnVuIHRoZW0gb24gZGlmZnMsIGxpa2UgdGhpczoN
Cj4gDQo+ICDCoCAkIGdpdCBwdWxsDQo+ICDCoCAuLi4NCj4gIMKgICQgZ2l0IGRpZmYgQHsx
fSB8IGdyZXAgXisgfCBtd2ljDQo+ICDCoCBbd2FkZSB0aHJvdWdoIHRoZSBqdW5nbGUgb2Yg
ZmFsc2UgcG9zaXRpdmVzXQ0KPiANCg0KSW50ZXJlc3RpbmcuICBJIHJ1biBib3RoIHRocm91
Z2ggdGhlIGVudGlyZSByZXBvLg0KDQphbm9yYWNrKDEpIHNlZW1zIHRvIGJlIHJlYXNvbmFi
bGUsIGluIHRoYXQgaXQgcnVucyBpbiB1bmRlciAxIHNlY29uZCwgDQphbmQgb25seSBoYXMg
MTM4IG1hdGNoZXMuICBNYW55IG9mIHRoZW0gYXJlIGZhbHNlIHBvc2l0aXZlcywgYnV0IGl0
J3MgDQpub3QgdW5yZWFzb25hYmxlIHRvIGdvIHRocm91Z2ggdGhlbSBhbGwuDQoNCiQgdGlt
ZSBmaW5kIG1hbiogLXR5cGUgZiB8IHhhcmdzIGFub3JhY2sgfCB3YyAtbA0KMTM4DQoNCnJl
YWwJMG0wLjk3MXMNCnVzZXIJMG0wLjY5MXMNCnN5cwkwbTAuMDI0cw0KDQoNCkkgY291bGQg
YWRkIGEgYG1ha2UgbGludC1zcGVsbC1hbm9yYWNrYCB0YXJnZXQgdG8gcnVuIGl0IGZyb20g
dGltZSB0byANCnRpbWUuICBNYXliZSB5b3UgY291bGQgc3BlY2lhbC1jYXNlIHNvbWUgb2Yg
dGhvc2UgZmFsc2UgcG9zaXRpdmVzIHRvIA0KbWFrZSBpdCBldmVuIGJldHRlcj8NCg0KbXdp
Y2soMSkgc2VlbXMgdG8gaGF2ZSBhbiB1bnJlYXNvbmFibHkgaHVnZSBudW1iZXIgb2YgZmFs
c2UgcG9zaXRpdmVzOg0KDQokIHRpbWUgZmluZCBtYW4qIC10eXBlIGYgfCB4YXJncyAgbXdp
YyB8IHdjIC1sDQoxMzk3NjANCg0KcmVhbAkwbTM4Ljg2MnMNCnVzZXIJMG0zOC42NTNzDQpz
eXMJMG0wLjIyNHMNCg0KSXQgc2VlbXMgaXQgY291bGQgZ2V0IHNvbWUgaGVscCBvZiB1bmRl
cnN0YW5kaW5nIG1hbig3KSBzeW50YXggdG8gbGltaXQgDQppdHNlbGYgdG8gdGV4dC4gIEkn
bSBkZWZpbml0ZWx5IG5vdCBhZGRpbmcgdGhpcyBvbmUgZm9yIG5vdy4NCg0KQWxzbywgaXQg
d291bGQgYmUgbmljZSBpZiBib3RoIG9mIHRoZW0gaGFkIGEgd2F5IG9mIHJlcG9ydGluZyBl
cnJvcnMgdG8gDQptYWtlKDEpIHRocm91Z2ggYW4gRVhJVCBTVEFUVVMsIHdoaWNoIGNvdWxk
IGFsc28gYmUgZG9jdW1lbnRlZCBpbiB0aGVpciANCm1hbnVhbCBwYWdlcy4NCg0KDQpDaGVl
cnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------rt79N9iDCoo7fkMxNx5H6Lp3--

--------------dnOdWue0NhIhgsTaiZt0hEpo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMD0tgACgkQnowa+77/
2zJmEA/+LAi2t8M8fjdOgE+gxnA4fZvl2Bdp11fdQfYZWRLhDGQCHlYLChZC+156
/3L8ZKhO0URNk8/eyd1IpNYe0kWDacFuhvOSAWnBPAUjXKQDAOHPG1jruz7sdavE
l2Bp8s3UjPVmgfhwUa/pwULD05o3GSlJV/U/bCnLwoGWk7t+rySZWtZhJpPlLbm6
r5wB1UqKKmDpkbtw+jFgTPKBbLWEpBrSvT53JbxdwXh8NYLYTC0jU2UZtcfi5dBo
3ztoZlt/r3YcQIX4jiwdhv1Z2qwdmsXvtoQrwuY4ns/Y76vZM8iKNYMB7+9IS6+H
ALnwJdLHrOQwaxxtnHrsATVN5U4Rj6yiW9Pt1jNvEM1Pc3Bkx3VsVdwoNYbH/pn3
0cr8WcXWEUy0XRjweoWxSNld47D/YkhJt81VdF99ZsWbjX3xS0Qa2+bnW0oR6TKj
dN+423lUYi4Gn7WdBg3aR1jOq1LLTtPEfvnhMysz2NPRP/+u9CauaK2CIM85NYL4
BhLAWnjKnavQps9YjQsrEjz/1AjGR4fkVGXqG4KDUmoBDSF7roi+ONy81xAMMR+j
7r5CvO3ZiHQWdOJsEEDbGPl3ERMhp9TsN2jWrdQgtp1rsXPBq8Oj7BGraCk7T3NE
18JUxuJAgKutgbUy1reYFKHPCT1rvWJbEXR03Tn789GystJGVyY=
=i3HR
-----END PGP SIGNATURE-----

--------------dnOdWue0NhIhgsTaiZt0hEpo--
