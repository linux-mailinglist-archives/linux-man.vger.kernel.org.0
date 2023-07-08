Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A9F374BE8A
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 19:05:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbjGHRFA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 13:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHRE7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 13:04:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D487A191
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 10:04:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 70A3460DD9
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 17:04:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1D70C433C8;
        Sat,  8 Jul 2023 17:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688835897;
        bh=1iHSE9hXm8GMwPH/h5wEn3ydsjO3sTftgZHr6uh3lUI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=bsVWXb1aDxNF2iIXlUjI3b+tiuHrUgm11ZxILihG1977ZQBm27komYSQyVHkYG+/n
         rQa5GxtuaMzyDpFn/hNV4SbxLfAaz2ixLUBHdghi3fQtBivWNXUJ/MVOvRJN0DkExq
         NWeomOWErAmLkOvnPjJFZynyfevpHMTJUsE8JPNQlucQj3u5mr6U7BuXb2FFWAPkwr
         9G6vwNfUuqMshYSJnyR87DfkAcJEJBA3P2EiosK7/Xbic8Ehj3NcFYb2KW4BREf63R
         SQ3J1+40BcC68TemYv0qAAuaa7MaL2YTtrTGhvSPitIMRiMDc+VC2KpQbAJFLYPVZt
         pp8oabjsnZQqw==
Message-ID: <c10adfd8-a3af-c730-96d9-2f103f3e91c6@kernel.org>
Date:   Sat, 8 Jul 2023 19:04:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] landlock_add_rule.2: tfix
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        linux-man@vger.kernel.org
References: <20230704075934.568507-1-gnoack@google.com>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <20230704075934.568507-1-gnoack@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HFsiRzGhsUR8KLdYDqHDJpnx"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------HFsiRzGhsUR8KLdYDqHDJpnx
Content-Type: multipart/mixed; boundary="------------pIv0LIcyHeT10NEwXOzhm3WT";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
Cc: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 linux-man@vger.kernel.org
Message-ID: <c10adfd8-a3af-c730-96d9-2f103f3e91c6@kernel.org>
Subject: Re: [PATCH] landlock_add_rule.2: tfix
References: <20230704075934.568507-1-gnoack@google.com>
In-Reply-To: <20230704075934.568507-1-gnoack@google.com>

--------------pIv0LIcyHeT10NEwXOzhm3WT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy80LzIzIDA5OjU5LCBHw7xudGhlciBOb2FjayB3cm90ZToNCj4gLS0tDQoNCkhpIEfD
vG50aGVyIQ0KDQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQpBbGV4DQoNCj4gICBtYW4y
L2xhbmRsb2NrX2FkZF9ydWxlLjIgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9sYW5k
bG9ja19hZGRfcnVsZS4yIGIvbWFuMi9sYW5kbG9ja19hZGRfcnVsZS4yDQo+IGluZGV4IDQz
YTcwYTJhNS4uYWEyNDQ4Njc3IDEwMDY0NA0KPiAtLS0gYS9tYW4yL2xhbmRsb2NrX2FkZF9y
dWxlLjINCj4gKysrIGIvbWFuMi9sYW5kbG9ja19hZGRfcnVsZS4yDQo+IEBAIC04MSw3ICs4
MSw3IEBAIE9uIHN1Y2Nlc3MsDQo+ICAgcmV0dXJucyAwLg0KPiAgIC5TSCBFUlJPUlMNCj4g
ICAuQlIgbGFuZGxvY2tfYWRkX3J1bGUgKCkNCj4gLWNhbiBmYWlsZWQgZm9yIHRoZSBmb2xs
b3dpbmcgcmVhc29uczoNCj4gK2NhbiBmYWlsIGZvciB0aGUgZm9sbG93aW5nIHJlYXNvbnM6
DQo+ICAgLlRQDQo+ICAgLkIgRU9QTk9UU1VQUA0KPiAgIExhbmRsb2NrIGlzIHN1cHBvcnRl
ZCBieSB0aGUga2VybmVsIGJ1dCBkaXNhYmxlZCBhdCBib290IHRpbWUuDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDog
QTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------pIv0LIcyHeT10NEwXOzhm3WT--

--------------HFsiRzGhsUR8KLdYDqHDJpnx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSplzUACgkQnowa+77/
2zIO7Q/9Gr3mF8DLFrqb7E5oqjFAU9aZGS1YWbSASRLI5wAFE2b2x5uBfB0/MUxq
mxW3TaksQjeSzG7/a/U/OReHphKiIQqzM7qzaiRg1h1lDyXiNJow+Vl48PLsqXtj
uwvPQ9HqQBJFanlqyR/GBYlRqZ0g3C2qBNe9Agj4nfQ+xeu7luI7kSlvTF9mhhRR
p6/yvKHTzcC56SvtDDoud6wBg6jMqKY1ho9n6EvET5DkTPBn9OgJE1WEVFhn6wqQ
w3HtDLXcsdoh4bMxPvwffZnJt8URj5qVrSjIrMn8clnvYz6nN1f7Joxpz0m+dF64
a36lkTL+hI3zOtj19uIoClqK4r/DEIAZhjA9y7ADFzsO83S5Z9QXFH+9ApLflLUg
EeMq1F1b0ZLevGvuYEt7HW83zDGFyvY046ZB2dhwOsOA6uC72TMwTDp+pnyaR9Wj
HFw6EMQ0K3Efn7UUlQQVfvg8JriO0R2WNtKwdfD+cY9+wsyMK46tYHG2IXX1PsVN
xJRZcW2Hm1vWXUfiHUnwRCtJay3N8Kff5QvkwRGJwfqeQNa1va1w0lJIIVEoviiJ
6p5FcGBPu/wyDb52M1w6kMlCH3yr5xBDsC3T5OskdeusCOVaaRjBDhTt+PRI1N4b
qGn2wViQFGo7F3Qznfj5MgsFenU35BPHevOM70qgPMe5W5Q5qXU=
=nJqD
-----END PGP SIGNATURE-----

--------------HFsiRzGhsUR8KLdYDqHDJpnx--
