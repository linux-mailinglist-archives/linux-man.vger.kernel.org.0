Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED9DC69D0F6
	for <lists+linux-man@lfdr.de>; Mon, 20 Feb 2023 16:53:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231790AbjBTPwl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Feb 2023 10:52:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231661AbjBTPwY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Feb 2023 10:52:24 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95DA41F5CC
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 07:52:23 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id j2so1514452wrh.9
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 07:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwqlEKXWyBlTc1Rek2GhtCgO7RwYiL5h6nFahT2q4Gg=;
        b=ggaDOb3mwLRkgM9K5NatZbWGdrRBEC7SuGhKpuN/ZiRtbNjGvZUSRnP+u5amqo0QM1
         3ezAPEf0z7Dy8dh9vw/748rhTgcMMzK9FHCHulO66RGF06LGmt2oxDEwvtN/s7kTCytw
         ZrwwsD5uE4a90dUzvpDH/P2HSnXBfJx9WcwWf0ZkOZaIcdim0KkklYarSePcJjo2Ni1H
         yIOlBfFO2h/ChVytJ6e1bZ8nBJLMRdlPW1dDg9c9MYsCk+6x+4bRMUQAfj4WBGqjC5H7
         /06omAiX/xBHtbwZ8fxvKLRLZd5qh7z63YZv4SURSXDApqesqUVIcT6LxYS+TYBLJPzC
         LmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SwqlEKXWyBlTc1Rek2GhtCgO7RwYiL5h6nFahT2q4Gg=;
        b=RUXCvfJcITv20OqQXjZIY/0usFcpiacIrL+pdIvW+PiHsLtMxcBmVts/EDP2w8a/Cv
         mWJKLOpL1Qzl87wVwEg7lkca5ASTtqmyvRltQlN3s/Bl44f1UzaZjHh16LtZ9kkSlw38
         3cUhzOgbsAvrHL/HRR0bYJ8Z+KtJVGoV4Io96aLj3Ph1shoooqQgXNN5nNHkaxWaP2fu
         Nf8EVt92YXrEQHdHka87a+gcHm538HCl7mFPeUQCu+XKCirL1UqHrB9PYmB8GxT0wILM
         rIMGDOdTD9OylnhN0jX0b/e71LvZKMCpfwiOc1VX9XxNbZtYH7Y+hc4sX+nfzsWgI0vo
         EEyQ==
X-Gm-Message-State: AO0yUKV+T4RgNTSdak6Fq78p7prmqw4NUAbAm6bHsJo2qB0EsOCWWdKF
        kBFEwnzumm4RWLDtctkynfwvN93jaOY=
X-Google-Smtp-Source: AK7set9irdlX9aEgdpUWLE2PLpuLPTFdHznsLSKDnirvdz0TMNCPQ0gdNm8U2XXdHC6kgAfEFW3eQQ==
X-Received: by 2002:a5d:508e:0:b0:2c3:eaff:aaeb with SMTP id a14-20020a5d508e000000b002c3eaffaaebmr2340873wrt.21.1676908342102;
        Mon, 20 Feb 2023 07:52:22 -0800 (PST)
Received: from [192.168.43.80] ([46.222.156.230])
        by smtp.gmail.com with ESMTPSA id x10-20020adff0ca000000b002c54c9bd71fsm12532996wro.93.2023.02.20.07.52.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 07:52:21 -0800 (PST)
Message-ID: <d50e6acf-bf10-f72d-b04b-e0fe8b2d1f20@gmail.com>
Date:   Mon, 20 Feb 2023 16:51:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process
 group
Content-Language: en-US
To:     Guy Shefy <guyshefyb@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <Y/OWxEajSbwD8UsL@T14s-004530>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y/OWxEajSbwD8UsL@T14s-004530>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------h0Q0zSFewtKHfR9FV0VrCWtD"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------h0Q0zSFewtKHfR9FV0VrCWtD
Content-Type: multipart/mixed; boundary="------------e8oVH0pj287znADaiTT20f3T";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Guy Shefy <guyshefyb@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <d50e6acf-bf10-f72d-b04b-e0fe8b2d1f20@gmail.com>
Subject: Re: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process
 group
References: <Y/OWxEajSbwD8UsL@T14s-004530>
In-Reply-To: <Y/OWxEajSbwD8UsL@T14s-004530>

--------------e8oVH0pj287znADaiTT20f3T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gR3V5LA0KDQpPbiAyLzIwLzIzIDE2OjUwLCBHdXkgU2hlZnkgd3JvdGU6DQo+IFNp
Z25lZC1vZmYtYnk6IEd1eSBTaGVmeSA8Z3V5c2hlZnliQGdtYWlsLmNvbT4NCj4gLS0tDQo+
ICAgbWFuMi9zZXRwZ2lkLjIgfCA1ICsrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvc2V0cGdpZC4yIGIvbWFuMi9z
ZXRwZ2lkLjINCj4gaW5kZXggNTJjNWJkNWZjLi4wYjAxODJlYjkgMTAwNjQ0DQo+IC0tLSBh
L21hbjIvc2V0cGdpZC4yDQo+ICsrKyBiL21hbjIvc2V0cGdpZC4yDQo+IEBAIC0yMTQsNiAr
MjE0LDExIEBAIGEgc2Vzc2lvbiBsZWFkZXINCj4gICAuUkIgKCBzZXRwZ2lkICgpLA0KPiAg
IC5CUiBzZXRwZ3JwICgpKS4NCj4gICAuVFANCj4gKy5CIEVQRVJNDQo+ICtUaGUgdGFyZ2V0
IHByb2Nlc3MgZ3JvdXAgZG9lcyBub3QgZXhpc3RzLg0KPiArLlJCICggc2V0cGdpZCAoKSwN
Cj4gKy5CUiBzZXRwZ3JwICgpKS4NCj4gKy5UUA0KDQpDb3VsZCB5b3UgcGxlYXNlIGRvY3Vt
ZW50IGhvdyB5b3UgZm91bmQgdGhpcyBpbiB0aGUgY29tbWl0IG1lc3NhZ2U/DQoNClRoYW5r
cywNCg0KQWxleA0KDQo+ICAgLkIgRVNSQ0gNCj4gICBGb3INCj4gICAuQlIgZ2V0cGdpZCAo
KToNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5
IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1
DQoNCg==

--------------e8oVH0pj287znADaiTT20f3T--

--------------h0Q0zSFewtKHfR9FV0VrCWtD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPzlxkACgkQnowa+77/
2zKZ3A/9GIXBjKDrVD4+TsQZ2iPDpqEIGgbDWXscsx66nDOPNgsFZUXvm/bN/ue1
nLWqN17g/wSSZqHX9mDvzU7Nwy7R8TWJCcJLyaH2ItQEGtx15k48s9pRQPT4ftLk
a68FISp5fpWRorJlyce9gOIQlgQczrTuWuHAyvxevHYZk/FoK2zV/nemIhuszR2r
2ngAX7o6bChP+C91IzpMysTGegsbxcjPcQXjmLTe3xdfxvvYw79quw3IsdDbfNHB
k8kIXjHHTVKjhA14PygPerwash7OIbu8HU9rpxWysy3+s9FjHZqfwLNnFYZ8WGTf
ErFS/NBCUkRfEorvF0KzUazt1R4oNH4XZpDJufwQ0Ibgv5atZX0R23YlfUq11n1y
JL5mF5HTQvg1RaDyY5d4oT0dni1kx6NaS5YbLhs1S/ixffi0Enkzr/i6WBw63kgM
QvNbX5QM6eVXBdhfnn76as5C5QjYdfyS5/fLErrX9bFbiLspV/RI+QVvyekdjmwN
mLbxKPOaTPb1ikOdnfqJrdhNX8sMZMmEgZV8o+WorB8/26uRrcUIC+qVWeV4y+t4
3GiPxf/QZqsco+kNhJEvom8NvArKzAnfJ2z4RgHASwk8bpB9UfazSv2ThSlT1alp
HdaRDBIeaZwXozmveEZDEcB5DaQehahEke/+O4QVDCJ1PnWxIDs=
=hddq
-----END PGP SIGNATURE-----

--------------h0Q0zSFewtKHfR9FV0VrCWtD--
