Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 846C9677244
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:17:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229879AbjAVURp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:17:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229807AbjAVURp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:17:45 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06E5D93FF
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:17:43 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id l8so7608634wms.3
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AaTrk9wKIH94HTg5ZrkkzehCw5zHIPbV0ap2JILGdiU=;
        b=DqDeQNbaLmf44h3b7EuhBkwjO9WCoo84uphrB8dhu9ZYOrAFQSTPGu3jB8Kn3l0hgy
         iVCbWOGXz5rNoQ39CFdq+NWpd4PrF69ofX4LgVVb/BpiBEOziiPhcOjGVuEgXHrDJOJU
         EDon/0/mmm/ThyqgO7xhV0wtgrzKPuyBlQTvrsqA/WYVXInj5GUz5VuYLqstIZ998lyi
         uOGAjWvOIo/4qID/rKxqRLUyFztSh92pv4p6GVc2RW+eMnm9DQPZ7aSVnfnrUz8irMGD
         A3K7gGdea1Xd1g9U3LHwdTwoUu83erHtMQgQb3/8Oq8+9y6z4VDUVyEnvTKDMXYkDZwZ
         X6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AaTrk9wKIH94HTg5ZrkkzehCw5zHIPbV0ap2JILGdiU=;
        b=B/z0GEBJKCzf5mi5bDkckhdfELhPQFsM/Tu//8/4PcqyZzAG57EA9XiPwBqbYErSDE
         OxY2ZCuGNxqtnd8XCRoP2bNaaVnMmL3FJr3wuuyONhhoh9NAnGrWSKHokbk3+WswA1p3
         s3MPFWzBjiu4sYE2vaSsrgWL+cPn4554lvmRpCAat4a0X0ahyE9ANMwvIdo9VmFOAz/J
         +MNWPedc31vpUcxtqNT5zUHiHvfRXnjK+OiV3gOolPG9adikainMHcHktpNWR6m2yU1I
         DoRv6D2LzzGExFdRnpDQB4BaShoM9UwYIS29NJdestxRIAU6exiTkEYtC08ZQrW2zETS
         kkzw==
X-Gm-Message-State: AFqh2kqUIg43gjijLUB7Z04ILMc4xJeiMXQE+RfHq1Sr2Grigyfwv0qx
        LSATwCs1ifx/kjUOPnNiNtE=
X-Google-Smtp-Source: AMrXdXsU4LKDCnEOhyuJiO6FMfGGXs6DxuBoeKar3liSrYsKNmsZ9N29mcNSUpW9oQgN8+djGggkwg==
X-Received: by 2002:a05:600c:920:b0:3da:22a6:7b6b with SMTP id m32-20020a05600c092000b003da22a67b6bmr21637336wmp.13.1674418662318;
        Sun, 22 Jan 2023 12:17:42 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m9-20020a7bca49000000b003c65c9a36dfsm8594015wml.48.2023.01.22.12.17.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:17:41 -0800 (PST)
Message-ID: <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
Date:   Sun, 22 Jan 2023 21:17:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tuwrBjF6pMze0pbBdIRHP2iU"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tuwrBjF6pMze0pbBdIRHP2iU
Content-Type: multipart/mixed; boundary="------------3bPFR000vbGOSr1pxZLGOs2F";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
Subject: Re: Issue in man page namespaces.7
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193125.GA28843@Debian-50-lenny-64-minimal>

--------------3bPFR000vbGOSr1pxZLGOs2F
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8yMi8yMyAyMDozMSwgSGVsZ2UgS3JldXR6bWFubiB3cm90
ZToNCj4gV2l0aG91dCBmdXJ0aGVyIGFkbywgdGhlIGZvbGxvd2luZyB3YXMgZm91bmQ6DQo+
IA0KPiBJc3N1ZTogICAgL3Byb2Mvc3lzL3VzZXIg4oaSIEk8L3Byb2Mvc3lzL3VzZXI+DQoN
ClBsZWFzZSByZXZpZXcgdGhlIGZvbGxvd2luZyBwYXRjaC4NCg0KQ2hlZXJzLA0KDQpBbGV4
DQo+IA0KPiAiVGhlIC9wcm9jL3N5cy91c2VyIGRpcmVjdG9yeSINCg0KLS0tDQoNCmRpZmYg
LS1naXQgYS9tYW43L25hbWVzcGFjZXMuNyBiL21hbjcvbmFtZXNwYWNlcy43DQppbmRleCA1
YjExZjYxODYuLjg4MTFmOWFmOSAxMDA2NDQNCi0tLSBhL21hbjcvbmFtZXNwYWNlcy43DQor
KysgYi9tYW43L25hbWVzcGFjZXMuNw0KQEAgLTI3MCw3ICsyNzAsNyBAQCAuU1MgVGhlIC9w
cm9jL1twaWRdL25zLyBkaXJlY3RvcnkNCiAgLlwiDQogIC5cIiA9PT09PT09PT09PT09PT09
PT09PSBUaGUgL3Byb2Mvc3lzL3VzZXIgZGlyZWN0b3J5ID09PT09PT09PT09PT09PT09PT09
DQogIC5cIg0KLS5TUyBUaGUgL3Byb2Mvc3lzL3VzZXIgZGlyZWN0b3J5DQorLlNTIFRoZSBc
ZkkvcHJvYy9zeXMvdXNlclxmUiBkaXJlY3RvcnkNCiAgVGhlIGZpbGVzIGluIHRoZQ0KICAu
SSAvcHJvYy9zeXMvdXNlcg0KICBkaXJlY3RvcnkgKHdoaWNoIGlzIHByZXNlbnQgc2luY2Ug
TGludXggNC45KSBleHBvc2UgbGltaXRzDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQo=

--------------3bPFR000vbGOSr1pxZLGOs2F--

--------------tuwrBjF6pMze0pbBdIRHP2iU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNmeQACgkQnowa+77/
2zLg1BAAi2pC9yljhzEb3nBtrDJ6odRzhcRo6+YDoh/SkQP2IzJ1A/NiEUcEU7Ik
BR12N60MlO+01WlR6LN3brSMziNp2IJ3Q/SD42M3xo3wzUu6Or91/SChqN4QfnTY
B5xIE2oSZAsh+iq01rZxZBiR7WXuujcZZvTT9r9qh2MP0BOLMU68G/n5Syzq8Y/Q
QfPtauxGziUTB1k1cWwpnUNKdG6NjMKa4wi3weQoBVLJ4AHkR52LmyuhDnCAl7Dx
Cu1PanyphF0I0u3KmHd5jSLHXtF1eEgoVvRkNE9txzCgSiQwLyR/yWHjbXUGpRT1
pNIkWg5vn4pnHljZf5liI0xTju9ZjTO3RtwsC0A2OpDSvdvB88InEjG8HRbTALJR
dhQec7jhqmuMjbxSQUE/4bsMZAoLZNEma2Kj5dbtw8QcojUCmO1NpUbfvbCeirqU
WYhehlVMf/5WuCOtJNBz2LltTTgMcFMdTRPaCPAtAu4HBEVWpvf3bHaT7lasizbf
PuK3+KJ0xmHPKe8T1gWwi+kEqr9D6dmU8O8cIEW+q6EDZzdIXqtpNgKVBlJ68adZ
//yU0QXeDKqdDKzZmLJC6tswXCuhDBZtPgbclI2Tu58oYDKXANdMTQU32BiFK/qK
qfP6j649zqZifW/+biIVFktdI8SE7osReA0kmULBMlTA4QnuMI8=
=FuCN
-----END PGP SIGNATURE-----

--------------tuwrBjF6pMze0pbBdIRHP2iU--
