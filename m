Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA7675AE709
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233433AbiIFL6S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233335AbiIFL6R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:58:17 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D452872FE4
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:58:14 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t7so10055249wrm.10
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 04:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=xCxLuOR+Mj1rVbVORGcIhD717zL2KHCWLhSH3OOUCp4=;
        b=WKyitSlBHNyGWg+AqwzuXfRJgd6NoGNm1m5seEQ77aTM22ZtT60JarsPruh1WtumpH
         pvEJl+IAiOmbkeRL68l+dxiXC9NWfwRdS3kObwSmfhNkq8b1RhdxEoW/T5MuO/3jcy1z
         Fa7eW+UQ0hvczKBmYq7VGrUpD2cxjY0E0LmWIIv2ydJ7w05Hkr38FPFSvfhTbo+8oIaQ
         Div0a4bdKac1GSbO9qURuv1IHfTk7scMa15e8gIcIwr4MuTFEPqjVDbzc1X+OERKqTJR
         UuHCDzNJv9lbqNC80ibgTTdeYmyyEm3iKpX2t7OIguBZcYAWZPlf/pqGgwAnDuIq6Ic4
         LxZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=xCxLuOR+Mj1rVbVORGcIhD717zL2KHCWLhSH3OOUCp4=;
        b=Hz8HoYLvexWikA4h+IEHjm6UzSH8IGWkqWfORCrZ7B5TlWjkntivRO197BTXIBABwA
         X2w8AqZ6PzVDZlatbHXCQJAxI1M1/xxmyWcqGel14413rym/GvUtQhHFwx53bx2ebtc4
         a5yXQFbDWVXB2kTOldtpHoK6o4JQGJLfqzHc+VdeOJ2iFsYdxjZzKT4eJtxuIimolC9T
         0nUOpXQtxBIAVMOFAclQ0NqTl8LgvyJ1UVQuEx1pG4eR73PYfUJw1ZuJehm8Hn6S7KPe
         /mXNIQT2p3hxBQNA9BF8ZTuIE+ocOwrOM1gF35thZCwgyEGhkaMW4wYkgijr46Ik602J
         FSvA==
X-Gm-Message-State: ACgBeo0Mu/rdIX0nsmeelwx4ceQ6iIzUSLkMbZ2UUw6Ng5JnfV1OMlVl
        p1uZlEZ84DAHPUH0wH2jamI=
X-Google-Smtp-Source: AA6agR773OlaQAfWJfPMzAjnvJ150WL90Q+wIsQgNt+ImbJ7JQyZ2tR6UB9QhlOmCB21J5ViUp7EEw==
X-Received: by 2002:a05:6000:1c14:b0:226:deb1:d7cc with SMTP id ba20-20020a0560001c1400b00226deb1d7ccmr22960717wrb.494.1662465493465;
        Tue, 06 Sep 2022 04:58:13 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w10-20020a05600c474a00b003a608d69a64sm21403251wmo.21.2022.09.06.04.58.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 04:58:13 -0700 (PDT)
Message-ID: <464d8152-23ef-6543-e3cc-d22dafcd8cf9@gmail.com>
Date:   Tue, 6 Sep 2022 13:58:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Petr Vorel <pvorel@suse.cz>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
 <d63cf698-e15c-1fe6-5952-22afc7916904@gmail.com>
In-Reply-To: <d63cf698-e15c-1fe6-5952-22afc7916904@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RU7wwB88ZTUmoXt6CwsFaUGh"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------RU7wwB88ZTUmoXt6CwsFaUGh
Content-Type: multipart/mixed; boundary="------------VI42RhvltbUWvhzFrBJytZ0d";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <464d8152-23ef-6543-e3cc-d22dafcd8cf9@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
References: <YxcV4h+Xn7cd6+q2@pevik>
 <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
 <d63cf698-e15c-1fe6-5952-22afc7916904@gmail.com>
In-Reply-To: <d63cf698-e15c-1fe6-5952-22afc7916904@gmail.com>

--------------VI42RhvltbUWvhzFrBJytZ0d
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDkvNi8yMiAxMzo1NywgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IE9uIDkv
Ni8yMiAxMzoxOSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBJIHJhcmVseSBjZC7C
oCBJIGVkaXQgcGFnZXMgZnJvbSB0aGUgcm9vdCBvZiB0aGUgcmVwbyB3aXRoIChpbiBteSAN
Cj4+IGV4YW1wbGUsIEknbGwgcHJldGVuZCB0byBlZGl0IG1lbWJhcnJpZXIoMikpOg0KPj4N
Cj4+IChwcmV2aW91cyB0byBzdWJzZWN0aW9ucyk6DQo+PiB2aSBtW1RBQl0yW1RBQl1tZW1i
W1RBQl0NCj4+DQo+PiAoYWZ0ZXIgc3Vic2VjdGlvbnMgd2VyZSBpbnRyb2R1Y2VkLCBidXQg
YmVmb3JlIHRoaXMgY2hhbmdlKToNCj4+IHZpIG1bVEFCXTIvbWVtYltUQUJdDQo+Pg0KPj4g
KGFmdGVyIHRoaXMgcGF0Y2gpOg0KPj4gdmkgbVtUQUJdbVtUQUJdMi9tZW1iW1RBQl0NCj4g
DQo+IFNvcnJ5LCBpdCdzIHJlYWxseQ0KPiANCj4gdmkgbVtUQUJdL21bVEFCXTIvbWVtYltU
QUJdDQo+IA0KPiBkdWUgdG8gdGhlIEFubm91bmNlIGFuZCBsc20gZmlsZXMuwqAgU28gMyBl
eHRyYSBrZXlzdHJva2VzLg0KDQpBaGgsIG5vLCBJIGNhbiByZW1vdmUgYSBrZXlzdHJva2U6
DQoNCnZpIG1bVEFCXS9bVEFCXTIvbWVtYltUQUJdDQoNCnNvIDIgYWdhaW4uDQoNCj4gDQo+
Pg0KPj4NCj4+IEkgYWdyZWUgaXQncyB0d28gbW9yZSBrZXlzdHJva2VzLCBhbmQgaXQgdG9v
ayBtZSBzbyBsb25nIHRvIGRlY2lkZSB0byANCj4+IGNoYW5nZSBpdCBiZWNhdXNlIHR3byBr
ZXlzdHJva2VzIGFsbCB0aGUgdGltZSBhcmUgbm90IHRoZSBtb3N0IA0KPj4gZnJpZW5kbHkg
dGhpbmcgaW4gdGhlIHdvcmxkLCBidXQgSSB0aGluayBJIGNvdWxkIGxpdmUgd2l0aCB0aGVt
Lg0KPj4NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------VI42RhvltbUWvhzFrBJytZ0d--

--------------RU7wwB88ZTUmoXt6CwsFaUGh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMXNdQACgkQnowa+77/
2zIYIBAAls8qjdFtcgi41aQN0ICzZ+G/0Ejsyl1WtCk10dOTe2cU5wh+BQoBCS4H
PTwqyEUDXgn/nXNrSwao5tLfyLS2F+jLvKGIkTsRSPhDvTkvqe8bBNOzrtQGAjYo
V7w5U5nrHDwIFuhnemnpfxcKuQz8OMlSZMjW38qRVL/XP8dGCxE2A04lz32H009P
f6I/MXp7sKqsAQR1nCxfSeWh6eLR8+r3NZejenJ9wkFfiAK0iU7ES/NSLsvBriix
Cfk3bXRiw3nkGcXQsJU6qu32096ddJWBcR3n62YZTGT973maNNEg6uMCda0/gd9t
FRlSKnFUEZjbRZIyXhnpRjAt24u8JeTVYuXtGGaAyNpLMMX4BwZgT+AaOHg4hp3Q
sVBuvGcBGypGUHS1kIRQhoxgG4nXGimidYI6IHm4l08bd0EKRpBPiMJvfM2WXpXK
GmY4WhQGGr7avtBN8DR6Rb1tk5pTlZaPf1xeqRn64k92J87uPrXHuuW2vO38TPyz
kONIr2tZ4RokmXye4LohKQ41a0ORXSEgR5fV5/40Z/w3QgSUNx4r/3z2KzHTTmmi
nnH5A1k4Xikzk5E3L/dsJipQPsFFDk0rnHiggkBBvcmafimmvXm3HAT9XWG4LSlX
udKN9ayFQNhQd6XVmvAomhELWNXyrmroqX0gG6PVry6fBuxUGe0=
=hE7T
-----END PGP SIGNATURE-----

--------------RU7wwB88ZTUmoXt6CwsFaUGh--
