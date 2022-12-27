Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A3C8657152
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 00:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbiL0XlJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 18:41:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230141AbiL0Xkr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 18:40:47 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02439FD30
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 15:36:04 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so7917576wms.0
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 15:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AD0yDiTfTdP8vokEpFfbqcoOOfQthv6pAKoZkG8OA4M=;
        b=emrAksRsUGY92uo+AdDuWCOL/831r0lgLrqNQhzp9q1LyV/j2YF4j9YmwgZzWYuJgE
         PJBk1wy2VIuvdniUq89/X25GgV8+6kjU/2bnmz1SO4GBc5tvXGAqRaXiJ5FubP9/ahtc
         e1mLWVJ7uRA8z6bBwu7aq6CzqZ0rF0YpeTyMY2uZ7uddHleT0n1V4qAKkccOeuOltv7J
         cgFebaQ5vl+xceHUjMxB/9Gk1vE0U5yODBq2KD2u73QOJeYh233k9TR5ORSVLWJTu4yi
         iy22oUZdDMt72vtIn6kVl4OcXHI3XZrXTnurDz2wmRMMHhe4pOlAxcW787d3H9zjGGTG
         wXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AD0yDiTfTdP8vokEpFfbqcoOOfQthv6pAKoZkG8OA4M=;
        b=G5Way08w/SKR5x5o6+MApRP9o0LyBc94qbu7M+VhtEc6yhQNvHSWvo0uem36djeyCx
         mMIvtAYEcOhU1j1hZ4GQk0v5kF1fbK5IlkffClZR8xAa9TCJe0sEzhzsteG2rPbB0xfh
         t/jB6M0QDYpgBrzH37IIuRU9uiF2hJD4rpKoDtfxYUks01QM7ZScUWDZxVFEm1RA2AR0
         x2QfDZ6nxjSuVdV5MHJ1zujXpMfltF71C3BMvZjaPwIHdKDgifJ5QXEDUXUmuP4tAWF3
         DwHGmYm7auNYNNOvhqYga70OfqCJadfiRHRGdhEwKB8l9nvKXmfcJKzSc4mN1YU+OzBM
         VxDA==
X-Gm-Message-State: AFqh2kr96tHvm/dqeAXgKr1C12CYyfqbkJiQjEGsvGj+zKNvWZ8YOFoK
        EYQ9xfyNwT3IN8V0llfoAtLpqBWKgpk=
X-Google-Smtp-Source: AMrXdXvn2CKUkcGzsU1E+3gEGUksS9gL3uI54SSb+dpSOVXrXsfg/+wszuB5gOuzy3vJWLt591/Rhg==
X-Received: by 2002:a05:600c:1f11:b0:3d0:57ea:319c with SMTP id bd17-20020a05600c1f1100b003d057ea319cmr16438354wmb.13.1672184157594;
        Tue, 27 Dec 2022 15:35:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c468c00b003cf5ec79bf9sm15938157wmo.40.2022.12.27.15.35.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 15:35:57 -0800 (PST)
Message-ID: <fb386c86-16a0-9cdf-b48f-08442a7f3ad1@gmail.com>
Date:   Wed, 28 Dec 2022 00:35:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH man-pages] charsets.7: tfix
Content-Language: en-US
To:     Lennart Jablonka <humm@ljabl.com>, alx@kernel.org
Cc:     linux-man@vger.kernel.org
References: <Y6tK7Tlgsetp3Geo@beryllium>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y6tK7Tlgsetp3Geo@beryllium>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1UllgARBTtenBT4PJnT8bayN"
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
--------------1UllgARBTtenBT4PJnT8bayN
Content-Type: multipart/mixed; boundary="------------C5hKn8cb0K0rno3WbtgV58PW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Lennart Jablonka <humm@ljabl.com>, alx@kernel.org
Cc: linux-man@vger.kernel.org
Message-ID: <fb386c86-16a0-9cdf-b48f-08442a7f3ad1@gmail.com>
Subject: Re: [PATCH man-pages] charsets.7: tfix
References: <Y6tK7Tlgsetp3Geo@beryllium>
In-Reply-To: <Y6tK7Tlgsetp3Geo@beryllium>

--------------C5hKn8cb0K0rno3WbtgV58PW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTGVubmFydCwNCg0KT24gMTIvMjcvMjIgMjA6NDMsIExlbm5hcnQgSmFibG9ua2Egd3Jv
dGU6DQo+IFNpZ25lZC1vZmYtYnk6IExlbm5hcnQgSmFibG9ua2EgPGh1bW1AbGphYmwuY29t
Pg0KDQpQYXRjaCBhcHBsaWVkLiAgVGhhbmtzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFu
Ny9jaGFyc2V0cy43IHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjcvY2hhcnNldHMuNyBi
L21hbjcvY2hhcnNldHMuNw0KPiBpbmRleCAzZTQ2YWI5Y2QuLmNlZGY1OGVkNSAxMDA2NDQN
Cj4gLS0tIGEvbWFuNy9jaGFyc2V0cy43DQo+ICsrKyBiL21hbjcvY2hhcnNldHMuNw0KPiBA
QCAtNDYsNyArNDYsNyBAQCBpbiB0aGVpciBsb3cgKDctYml0KSBoYWxmLCBpbnZpc2libGUg
Y29udHJvbCBjaGFyYWN0ZXJzIGluIHBvc2l0aW9ucw0KPiAgIDEyOCB0byAxNTksIGFuZCA5
NiBmaXhlZC13aWR0aCBncmFwaGljcyBpbiBwb3NpdGlvbnMgMTYwXChlbjI1NS4NCj4gICAu
UFANCj4gICBPZiB0aGVzZSwgdGhlIG1vc3QgaW1wb3J0YW50IGlzIElTTyA4ODU5LTENCj4g
LSgiTGF0aW4gQWxwaGFiZXQgTm8gLjEiIC8gTGF0aW4tMSkuDQo+ICsoIkxhdGluIEFscGhh
YmV0IE5vLiAxIiAvIExhdGluLTEpLg0KPiAgIEl0IHdhcyB3aWRlbHkgYWRvcHRlZCBhbmQg
c3VwcG9ydGVkIGJ5IGRpZmZlcmVudCBzeXN0ZW1zLA0KPiAgIGFuZCBpcyBncmFkdWFsbHkg
YmVpbmcgcmVwbGFjZWQgd2l0aCBVbmljb2RlLg0KPiAgIFRoZSBJU08gODg1OS0xIGNoYXJh
Y3RlcnMgYXJlIGFsc28gdGhlIGZpcnN0IDI1NiBjaGFyYWN0ZXJzIG9mIFVuaWNvZGUuDQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------C5hKn8cb0K0rno3WbtgV58PW--

--------------1UllgARBTtenBT4PJnT8bayN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOrgVwACgkQnowa+77/
2zLDRw//W1bijONf2Z44EmX0vybOgOjVOTMd+DhaDFV7R1TA5F137yePJB7nu7i2
b2FkA16pHQnsQ+O+1jzSJVc2CguBHxshiiTF33Ya1UX9T6D1vOVkNCcxHUSG1o9d
bKjhRKamO6kYQoSukcmAxIJKeB9dyPtgEkTh4L31Xkdu1VhUAXjooYaXzbcIYIww
NqEUQ//7EwsIdoaLd82T+88bYqPhiYkpOJ2zSeI8z/Aj6JfeTXUIjQt5Alb5LDRF
fGz3uHGNMpQgwbOTS6FZ2J7LeeCsLPKq3xvsm6XwjcoZMZThF2cdlrhEoL61VYzs
GyjzPwWla9hy/ai/7UAuk2dL9snQtyDPR11aTEglTax6dpHaGLWauk0MyU0DEy1O
xvmq7LdSgNALNa7qcCwwNXnpIZknKDEv0m4NjQMZWfoz5pg+kvflly1Dt98DuE2M
fjGYdfrlckHzTBtP2ovl2/ecOniGbUtpnh+cbeeShnfqhCe6/Df/ZKWZxKe5Bo/u
NOQc0l/B+Z4t4H/Bbi0evRXnK1i7YEiDQps0u/oDI1Ui6WutEcVi+nwqYatP4zxq
8zbDtjB8quhz5nanT9xzxzFPzg6+Nn8gtluI5Vq05D5kkH5L2d8H79seMe4b6o/Y
8nEzle02BXAgupTcgDgBXTcVUZQX2edZPc0HkX212JZuahOjodQ=
=lmL2
-----END PGP SIGNATURE-----

--------------1UllgARBTtenBT4PJnT8bayN--
