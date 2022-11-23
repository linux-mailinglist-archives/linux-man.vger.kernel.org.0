Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCAD56369E6
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 20:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235297AbiKWTcR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 14:32:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233908AbiKWTcQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 14:32:16 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 011F668C79
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:32:14 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id n3so14386672wrp.5
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CWRjS73E/ar49pCAMJt4hdFypxzA1NMNejQy0UrUfdY=;
        b=HlFrKP3+PnOiflIW9Z+j5DhLTa2FoQlRvUqYD5c2h5RBs+351mp8lNRCsNfTV2Dsrt
         D4HHfXUeyRMDKj2+rWDIpBbeBz0/xc8LCPB/0DbOY9Nri4C1harHImzjYwcNxwfjBiJr
         3hwg75QmQkUTlyntS0+xxgYN6m3vEvHpBmZNbpL/HgL1rHWKeGRtzmGGGEWw5RIwysDQ
         iCCqHtRiksvVE0MQmRpNGruyWla0i2VX6tRc3U7QPukuJm04MmcCGKd6q8Y0K5mOYGAz
         1PPA+beCBtYOU8Ice35L4k+tGEkNi/cN86qIx1O6n2uZUBtemyXu9hLH3yd04v0G26QP
         Db/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CWRjS73E/ar49pCAMJt4hdFypxzA1NMNejQy0UrUfdY=;
        b=q27Bqw7KsSEv6Ld2u3/rozn+DJFDoav6HR+EmsxnuOIowDXR4jYbzX7ua6lQqq/QEz
         p/3CqoNtxLdCS+T3TY0riLMgXNWAqyGJs0WLCwHZyIHS7/1+518bP+F+6p47AJ9zOlU/
         tu7UJ+/w5CfAnHd9NInxtRsZqQXPU1fPGtZFmdKDi9671A/14Y0a661+VLkbAxsIh08k
         uTZCUoadepsRvLeyvdSnqi4XVjCkF4umSNQdSBy8qD4qTgnS6snye/WywjRvdlPdQZs/
         0ZaSsw7CWjrMbe4EY8h/hMLhlQd9hTJZ6vvlTDDKQI7A8zkMYm0LsELwVgZeFgXIYz1W
         iNMA==
X-Gm-Message-State: ANoB5pnrOXNpFcrMvgrVyQvIUalhaVj7DsINaL8DAmYpO1R+j8QmUeNZ
        IEMbCm+5f7KpwzZhFv7nmbABeEKaegk=
X-Google-Smtp-Source: AA0mqf6aMn5QjrFQJaKK+aIlXWS+lOJkz8jvTNcfHeMHn1ZQeiRYt0VBhl7M4gXBhaieor3ilD8Now==
X-Received: by 2002:adf:d841:0:b0:236:5655:13a5 with SMTP id k1-20020adfd841000000b00236565513a5mr17891769wrl.477.1669231933530;
        Wed, 23 Nov 2022 11:32:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d16-20020a5d6dd0000000b0022584c82c80sm17111949wrz.19.2022.11.23.11.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 11:32:13 -0800 (PST)
Message-ID: <88abc104-1317-bd56-88f3-92f70f0776f1@gmail.com>
Date:   Wed, 23 Nov 2022 20:32:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 1/4] zic.8: Add public domain notice
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>, tz@iana.org
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20221123134827.10420-1-alx@kernel.org>
 <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>
 <423d19dd-211a-1acc-eb9b-a86153c19f94@gmail.com>
 <fe28e39d-64ed-75bc-e652-734a67b8259c@cs.ucla.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <fe28e39d-64ed-75bc-e652-734a67b8259c@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------63tiYFqHQ040hzppMZHORL2C"
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
--------------63tiYFqHQ040hzppMZHORL2C
Content-Type: multipart/mixed; boundary="------------x7CCqGup0P2L6unvj3nRnHfT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>, tz@iana.org
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <88abc104-1317-bd56-88f3-92f70f0776f1@gmail.com>
Subject: Re: [PATCH v2 1/4] zic.8: Add public domain notice
References: <20221123134827.10420-1-alx@kernel.org>
 <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>
 <423d19dd-211a-1acc-eb9b-a86153c19f94@gmail.com>
 <fe28e39d-64ed-75bc-e652-734a67b8259c@cs.ucla.edu>
In-Reply-To: <fe28e39d-64ed-75bc-e652-734a67b8259c@cs.ucla.edu>

--------------x7CCqGup0P2L6unvj3nRnHfT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvMjMvMjIgMjA6MTksIFBhdWwgRWdnZXJ0IHdyb3RlOg0KPiBPbiAyMDIyLTExLTIz
IDExOjAxLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IFdvdWxkIHlvdSBtaW5kIG1v
dmluZyBpdCB0byB0aGUgdG9wIG9mIHRoZSBmaWxlLCBhcyBpcyBjb21tb24gd2l0aCB0aGVz
ZSBub3RpY2VzPw0KPiANCj4gU3VyZSwgdGhhdCdzIGVhc3kuIERvbmUgYnkgaW5zdGFsbGlu
ZyB0aGUgYXR0YWNoZWQuDQoNClRoYW5rcyA6KQ0KDQotLSANCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------x7CCqGup0P2L6unvj3nRnHfT--

--------------63tiYFqHQ040hzppMZHORL2C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN+dTsACgkQnowa+77/
2zI1ThAAkc/yl1/pBYPrfvrnq7rFLeS8/Gzh5a58sVe3Q0iv2bBSMULMoz3Lhiwo
ZJ0knSujy0uK205VEoeEsVlZR7w00v+XPoi9VSJMVlYsm2ZzO4HMizHStoIZDw8f
42PWsYlDxrw2HOuY4n7lCSazLD3DCEXSjkpUK2bGjzhbNFPGDiZ3xDWXlWY+U7mJ
J59m3A+74+icK5Qe1m4YCmzIBtU4RN+bNQ/TvFuGxaNN/RxAF1SMIJOExwZ3AAUR
ggRdpyjAQtgng6XbkeZQtM9o5sHLNmFVCZFq+CkHQsKXxYg+SJuTknGS9nd2jh1o
tOqL5bNv89aCkPro5XVwViLj1jGygThOa86dn3D9GFMoqc3HH5Xr5bR1tMd62g4X
eQLV+2tafa/ludkqAFoVncI3FXMarPAPM4ulLohE/39szg8UWvLFPHFRE+R+g5ho
GUXDlt+Au0TdNSk18GRopKuj7df0s1iAai4T9q0YDaJBSkkaYD6lPrEIkXqLIeqq
M/Dd6uF13BKFzoVRk1wQYwagxXXOoYNDGprPLuDulSxBQNiq5lat0fVXZugq2JEV
yjAy8v0r2YPYC/J0ohl93zEi4JDChidF+gByhu+eOaJ83Xs/atTI/DmcntTQnecb
6b1zRpsa+bNtY6H7O6vEbaq4R4LbWVyfqFNxzXwuoODmSVQ4moc=
=ze8D
-----END PGP SIGNATURE-----

--------------63tiYFqHQ040hzppMZHORL2C--
