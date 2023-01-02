Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8519665B4E5
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 17:13:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbjABQNH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 11:13:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234494AbjABQMy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 11:12:54 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D61D83B7
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 08:12:52 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id z10so26695184wrh.10
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 08:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+S5YVga7l9+KhBygCsDeZ7ZZ1O1GdHPgOto7ac0H/uU=;
        b=hz5k+VCh7ydT8gWgZopfUlhXLVIcFGmTpb0m68y7gy9wm+QHYVh0jN4ezoj0HqQvly
         ij3McIucEf6y5Lt7M5UsAzW066d+lYJbjAbuGJT3ya8FFNhcJiJ7Hn09339uPxZjhyLB
         +ggpFn7E9cAx60lL+jnG9qHUMa8Swvekzbjxu1CwTPAqn88yJYFBmPiYDYkHHNUwRZqP
         aKp8l+TLuAzeIfqE5aQvzguJgD1EmRl4aTKum0tKcispkqZ6dpLaFM3a7Dti9UVk0wmQ
         jkdF85r+f9tDbtTzSqLj14ylIdzhGVbtw8jWGzEG0HCxbYotYCWWNH8Cf0L97nlWfYd6
         dYZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+S5YVga7l9+KhBygCsDeZ7ZZ1O1GdHPgOto7ac0H/uU=;
        b=5oz42bsYq1Nd7KtdQm53atVnOEt85UxwGwW4JRcwtpOoKCaxanLw7r3/BibRQ0H4wE
         2GOa7DMIzHFRsDS2NVPw8VJ4sbffGVPT9sAimIXOmlW0iqezkhJh9aa1lFhVICnpb1qg
         YdmNyze8tppWRHCSF2mLynMgTMYIzfeGQvFWA54CJ4dqFawaxDtAWyKddOR5New5obep
         kXyVsrB56NHXKYxpvchdnHV20VpYmW7ZG9Q7HMjMFp2cGEJuL+ko1+kp4dSohPyvE0I3
         RvxeTAGvS5WRzbDpN98VmbV69Igzx3lbs2oBAidYEg8aMAhbK9bxn4OCzDln1Qc9o1ca
         v1Gw==
X-Gm-Message-State: AFqh2kpS35EDCLdTchfYuwlA85IMtLF468Pn861HC1VlPjOGKvl4TCeQ
        gsndDIYR+47fSjJalCZ2e1ph3OIo9OI=
X-Google-Smtp-Source: AMrXdXsZZ/Y5SvM/OBKtL/KJ+JTG2nYQjN1a30LJmLtHLGJoeApTyJZ/im396nRLvceU14FeLehb1Q==
X-Received: by 2002:a5d:5544:0:b0:26d:2af7:420 with SMTP id g4-20020a5d5544000000b0026d2af70420mr25042341wrw.33.1672675971485;
        Mon, 02 Jan 2023 08:12:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b9-20020adff909000000b00267bcb1bbe5sm28805346wrr.56.2023.01.02.08.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 08:12:51 -0800 (PST)
Message-ID: <a83253f6-9fc3-2ba5-bc30-8774717d90d0@gmail.com>
Date:   Mon, 2 Jan 2023 17:12:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [Bug 216876] New: prototype for execveat() in the documentation
 appears wrong
Content-Language: en-US
To:     Florian Weimer <fweimer@redhat.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     bugzilla-daemon@kernel.org, markgaleck@gmail.com,
        linux-man <linux-man@vger.kernel.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>
References: <bug-216876-216477@https.bugzilla.kernel.org/>
 <1fed37b4-0bf6-0e20-56ff-2e006928989c@gmail.com>
 <87y1qllzz4.fsf@oldenburg.str.redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87y1qllzz4.fsf@oldenburg.str.redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3ws4StB293mW7bCv8ISlltO8"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3ws4StB293mW7bCv8ISlltO8
Content-Type: multipart/mixed; boundary="------------73gyOQ7bJeZiCA1M8MsEV7z0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>,
 Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc: bugzilla-daemon@kernel.org, markgaleck@gmail.com,
 linux-man <linux-man@vger.kernel.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <a83253f6-9fc3-2ba5-bc30-8774717d90d0@gmail.com>
Subject: Re: [Bug 216876] New: prototype for execveat() in the documentation
 appears wrong
References: <bug-216876-216477@https.bugzilla.kernel.org/>
 <1fed37b4-0bf6-0e20-56ff-2e006928989c@gmail.com>
 <87y1qllzz4.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87y1qllzz4.fsf@oldenburg.str.redhat.com>

--------------73gyOQ7bJeZiCA1M8MsEV7z0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRmxvcmlhbiwNCg0KT24gMS8yLzIzIDE2OjI2LCBGbG9yaWFuIFdlaW1lciB3cm90ZToN
Cj4gKiBBbGVqYW5kcm8gQ29sb21hciB2aWEgTGliYy1hbHBoYToNCj4gDQo+PiBJdCBzZWVt
cyB0aGF0IGdsaWJjIGFkZGVkIGEgd3JhcHBlciByZWNlbnRseSwgYW5kIEkgZGlkbid0IGNo
ZWNrIHRoYXQNCj4+IHRoZSBwcm90b3R5cGUgY2hhbmdlZDoNCj4+DQo+PiBhbHhAYXN1czU3
NzU6fi9zcmMvZ251L2dsaWJjJCBncmVwYyBleGVjdmVhdA0KPj4gLi9wb3NpeC91bmlzdGQu
aDozMDA6DQo+PiBleHRlcm4gaW50IGV4ZWN2ZWF0IChpbnQgX19mZCwgY29uc3QgY2hhciAq
X19wYXRoLCBjaGFyICpjb25zdCBfX2FyZ3ZbXSwNCj4+ICAgICAgICAgICAgICAgICAgICAg
ICBjaGFyICpjb25zdCBfX2VudnBbXSwgaW50IF9fZmxhZ3MpDQo+PiAgICAgIF9fVEhST1cg
X19ub25udWxsICgoMiwgMykpOw0KPj4NCj4+DQo+PiAuL3N5c2RlcHMvdW5peC9zeXN2L2xp
bnV4L2V4ZWN2ZWF0LmM6MjU6DQo+PiBpbnQNCj4+IGV4ZWN2ZWF0IChpbnQgZGlyZmQsIGNv
bnN0IGNoYXIgKnBhdGgsIGNoYXIgKmNvbnN0IGFyZ3ZbXSwgY2hhciAqY29uc3QgZW52cFtd
LA0KPj4gICAgICAgICAgICBpbnQgZmxhZ3MpDQo+PiB7DQo+PiAgICAvKiBBdm9pZCBpbXBs
aWNpdCBhcnJheSBjb2VyY2lvbiBpbiBzeXNjYWxsIG1hY3Jvcy4gICovDQo+PiAgICByZXR1
cm4gSU5MSU5FX1NZU0NBTExfQ0FMTCAoZXhlY3ZlYXQsIGRpcmZkLCBwYXRoLCAmYXJndlsw
XSwgJmVudnBbMF0sDQo+PiAJCQkgICAgICBmbGFncyk7DQo+PiB9DQo+Pg0KPj4NCj4+IEkg
Q0NkIGdsaWJjIHNvIHRoYXQgdGhleSBjYW4gY29tbWVudC4NCj4gDQo+IFBPU0lYIHVzZXMg
dGhlc2UgdHlwZXMgZm9yIGZleGVjdmUgYW5kIGV4ZWN2ZSwgYW5kIGl0IHNlZW1lZCByaWdo
dCB0byBiZQ0KPiBjb25zaXN0ZW50IHdpdGggdGhhdC4NCj4gDQo+IFRoZXJlIGFyZSBzZXZl
cmFsIG1vcmUgbWFudWFsIHBhZ2VzIHdoaWNoIGRvIG5vdCBzcGVjaWZ5IHRoZSBjb3JyZWN0
DQo+IHByb3RvdHlwZTogb3Blbiwgb3BlbmF0LCBwcmN0bC4gIEkgaGF2ZSByZWNlaXZlZCBj
b21waWxlciBidWcgcmVwb3J0cw0KPiB3aGVuIHBlb3BsZSB1c2VkIGZ1bmN0aW9uIHBvaW50
ZXJzIG1vZGVsZWQgYWZ0ZXIgdGhlIGRlY2xhcmF0aW9ucyBvZg0KPiBvcGVuIGFuZCBwcmN0
bCBpbiB0aGUgbWFudWFsIHBhZ2VzIGJlY2F1c2Ugb2YgdGhlIEFCSSBtaXNtYXRjaCB3aXRo
IHRoZQ0KPiBnbGliYyBpbXBsZW1lbnRhdGlvbnMuICBUaGUgZXhlY3ZlYXQgZGlmZmVyZW5j
ZSBpcyBoYXJtbGVzcyBpbg0KPiBjb21wYXJpc29uLg0KDQpUaGF0IG1ha2VzIHNlbnNlLCBh
bmQgaXMgd2hhdCBJIGd1ZXNzZWQuICBJIGp1c3Qgd2FudGVkIHRvIG1ha2Ugc3VyZSB0aGF0
IGl0IHdhcyANCmludGVudGlvbmFsLiAgSSd2ZSB1cGRhdGVkIHRoZSBwYWdlIHRvIHJlZmxl
Y3QgdGhlIGdsaWJjIHdyYXBwZXIuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBUaGFu
a3MsDQo+IEZsb3JpYW4NCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------73gyOQ7bJeZiCA1M8MsEV7z0--

--------------3ws4StB293mW7bCv8ISlltO8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOzAnsACgkQnowa+77/
2zKT/RAAkNN3CjqZCA0xUENSM3nCO1cU1urHsvzwKBGMNus4/l8KiBj8hQ/mcH/Z
VuIhCp5IWL/BnzPAgx3LZI+KQQ/RGXFX84XJtgfkEcymKeUomUO/v9xeSUAzXrTS
ocbu40XuB0IZh0xzwpzZPQxmuNaIRSsRBnp1sXYPQqsfioJtD/p6dpErw6OLoMbP
orXbri/j0dUwlxQP05WwGybRDsCR2Az5GA0GZe61/zEceduXCnV18zvf6dhTS4Gq
wBQhj3jgsYsl68vBDXyPFmzHN8CqujZ/gfvql9ukbiECudQmyCBMYZi4A2kwvLO3
VR5D6pKclCgTSdlVbHCMGosbSqCujAInsgfUDz+WP80nY3L/2+lnbB0Cltv6ilOh
xMPYffyToX31NS1o80/qxBqgRZ0rmLvIWEmdVBk/a4GBrxAIduuk90fP9EFcP/Rq
JnWs4Oqk9cCiVhzN9JA0mzRiedIb0qxpdtOyX6TmGvlm01LUu5xJ8HxkknWm773f
PBKKs8BzTXencw7AHpkIZQo/RG5kFU1zTTu2ID2kyVfT8ULKR93XGBOeZT2iSfcB
BNNuctYVhh3TsdJauJEYsGUjLCDxyWhXoqAB/6wpg55KEbCVngtyEGloxniR5cI3
0a+29zfTJkklQiwKvnvQyd43esHy1xq714VbgLaZq9D5ATJaKmU=
=vuVo
-----END PGP SIGNATURE-----

--------------3ws4StB293mW7bCv8ISlltO8--
