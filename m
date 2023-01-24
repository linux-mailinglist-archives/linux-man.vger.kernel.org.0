Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A499B679EF7
	for <lists+linux-man@lfdr.de>; Tue, 24 Jan 2023 17:41:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233822AbjAXQk7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Jan 2023 11:40:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233467AbjAXQk7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Jan 2023 11:40:59 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EA02C14A
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:40:36 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id n7so14462386wrx.5
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Bz/P7Fa5ukX/VObKWzcvxT11Wfg9aLZn5ndMMNQu1c=;
        b=REWDEgsNzTaSSALxm1DelN5A3MwrP19UTVY0oO135jlBVNNNa1bB3c8mZjmkdoJeo3
         TWJQLZGAbVQ/aj8dBsqTSaza/m9VEajoCH0jJh8XebS+hJS8nzHVKjDhn1/+35uOL7M6
         ZXJPCWU7NjrENejLeXCt2URzqAmbk6AU1JPCqVSix2zvntDhxme3zjvoTCW4Jr0T3SNt
         7CDyxxRUxEcxsqQk9INGPVfBjhmT9AyCy8ER6Y5kZXf3JlXFDDs0xHS2wvK9BEOjfvRI
         q7dPRLtOuCoq8KirMV9JTCQRxMusGbILKKzbShz5SuylnyWoALAxKb4mUQrci4vJFToU
         IsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4Bz/P7Fa5ukX/VObKWzcvxT11Wfg9aLZn5ndMMNQu1c=;
        b=olnJRu44FLp5ISGyySezozmc6ag7TekKFBEfAKPtCLCcVoZjYKxLAC7KJx3wSdLC3O
         HXOvcPl/GLnzxW4rBbE6Uw+nuYljyiEjvMIZ5vfMCQ+mbOSROWjdMZO1fbF4oxGHa//H
         I4AKGE7H0ITH/uV6M3ZndRLfGaV0N+ySTGH0DUcw+RiurxE5d0lheJKHASArUT4jU3g3
         9INqS1FK64TDBFAwBEs1QFEyjQ2tw+YfH009Dz2dKmkYZeSCP+boymrHy/y60JQHyZdd
         h02iE3IPT2E04cxm4325QK0GujvgO5tD5gLh6cdZdJhkmmwz5XL7xew04aOfAqHT9PnR
         m81w==
X-Gm-Message-State: AFqh2koOsUhonTovOaqw9+OPhBaSrhCbZcI89qT1YxE5sFtQA15Z7mVb
        G7eSxdzkLfe/bAwu8Ay8vu0=
X-Google-Smtp-Source: AMrXdXtE75Sp6Dtb23ze5cnO+4dsQ26ZAQjUvcaPBMc2tqMWtQiPyxXg1vog+gSSBHzf6Z12PryjDg==
X-Received: by 2002:adf:f0c8:0:b0:2bf:9656:d1a8 with SMTP id x8-20020adff0c8000000b002bf9656d1a8mr13511608wro.32.1674578434866;
        Tue, 24 Jan 2023 08:40:34 -0800 (PST)
Received: from [192.168.43.80] ([46.222.154.138])
        by smtp.gmail.com with ESMTPSA id l10-20020a05600012ca00b002bfb02153d1sm2127221wrx.45.2023.01.24.08.40.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 08:40:34 -0800 (PST)
Message-ID: <34c803d2-d994-63cf-2a49-f57f9c0eb6fe@gmail.com>
Date:   Tue, 24 Jan 2023 17:40:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: struct sockaddr_storage
Content-Language: en-US
To:     Jakub Jelinek <jakub@redhat.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com> <Y8633MfNxeI9StbW@tucnak>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y8633MfNxeI9StbW@tucnak>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------81SaWijtjRXMD0Njgyjt0YZ0"
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
--------------81SaWijtjRXMD0Njgyjt0YZ0
Content-Type: multipart/mixed; boundary="------------f0sFWANQkcEb0eAVNVkY7Emq";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Jakub Jelinek <jakub@redhat.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>,
 GNU C Library <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
 Igor Sysoev <igor@sysoev.ru>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>
Message-ID: <34c803d2-d994-63cf-2a49-f57f9c0eb6fe@gmail.com>
Subject: Re: struct sockaddr_storage
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com> <Y8633MfNxeI9StbW@tucnak>
In-Reply-To: <Y8633MfNxeI9StbW@tucnak>

--------------f0sFWANQkcEb0eAVNVkY7Emq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEvMjMvMjMgMTc6MzcsIEpha3ViIEplbGluZWsgd3JvdGU6DQo+
IFBsZWFzZSBzZWUgdHJhbnNwYXJlbnRfdW5pb24gZG9jdW1lbnRhdGlvbiBpbiBHQ0MgZG9j
dW1lbnRhdGlvbi4NCj4gRS5nLiBodHRwczovL2djYy5nbnUub3JnL29ubGluZWRvY3MvZ2Nj
LTEyLjIuMC9nY2MvQ29tbW9uLVR5cGUtQXR0cmlidXRlcy5odG1sI2luZGV4LXRyYW5zcGFy
ZW50XzAwNWZ1bmlvbi10eXBlLWF0dHJpYnV0ZQ0KPiB0cmFuc3BhcmVudF91bmlvbiBkb2Vz
bid0IGNoYW5nZSBhbnl0aGluZyByZWdhcmRpbmcgdHlwZSBwdW5uaW5nLCBpdCBpcw0KPiBz
b2xlbHkgYWJvdXQgZnVuY3Rpb24gYXJndW1lbnRzLCBob3cgYXJndW1lbnRzIG9mIHRoYXQg
dHlwZSBhcmUgcGFzc2VkDQo+IChhcyBmaXJzdCB1bmlvbiBtZW1iZXIpIGFuZCB0aGF0IG5v
IGNhc3RzIHRvIHRoZSB1bmlvbiBhcmUgbmVlZGVkIGZyb20NCj4gdGhlIG1lbWJlciB0eXBl
cy4NCg0KWWVwLCB3aGVuIEkgd3JvdGUgdGhhdCBJIGRpZG4ndCBmdWxseSB1bmRlcnN0YW5k
IGl0LiAgTm93IEkgZ290IGl0LiANCkknbGwgcHJlcGFyZSBzb21lIGJldHRlciBzdWdnZXN0
aW9uIGFib3V0IGEgZml4Lg0KDQpUaGFua3MuDQoNCj4gQW5kLCB3aXRoIExUTyBUVSBib3Vu
ZGFyaWVzIGFyZSBsb3N0LCBpbmxpbmluZyBvciBvdGhlciBJUEEgb3B0aW1pemF0aW9ucw0K
PiAoaW5jbHVkaW5nIHNheSBtb2RyZWYpIHdvcmsgaW4gYmV0d2VlbiBUVXMuDQoNClllYWgs
IHRoYXQncyB3aHkgd2UgbmVlZCBhIGZpeC4gIENvbXBpbGVycyB3aWxsIG9ubHkgZ2V0IGJl
dHRlciBhdCANCm9wdGltaXppbmcsIHNvIFVCIHdpbGwgc29vbmVyIG9yIGxhdGVyIGJlIGEg
cHJvYmxlbS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------f0sFWANQkcEb0eAVNVkY7Emq--

--------------81SaWijtjRXMD0Njgyjt0YZ0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPQCgAACgkQnowa+77/
2zJ33BAAqVOcZECh16xRCQFT9jlIInPyOSPcnJ1JVD0A2BAtHWr6ez4/UZi52h2q
CBcqv+MOPq715XxkpZDSMAsnHBbRnTYBFI8jjmeW7CsKCHl3uI+t8nggrKWSk/GN
ZuYAXSy0Hd/HA5ZmLq6+HCz3fmhDGmqsh7Pm4cCYJcz3WrtihBx+W8hrQ3kGDC2c
YuBKdriXM4jDTdG1ZJMsbZ4lWcPC2J+abcrbwjVPqWO7yRBwAXYemiStnFV0rYBO
dcweYyA0xFJFkMWbJK6VY8M09NC7iR2n6HvRpVnb8hozA3bk2W3gwpo5PleAR3PC
LFC9sanW/2Jg2S7Y8k4pCUOstyLMlHjydGiZ0TCbDh6QjX99NxZr9Y6VibSmXn8h
KO5SxoLOk109GV4Uk5C9UarNzETWMXsVnI1EYs/6OUOI5jwQJNR0JNAKUo5uOrhb
r1qlLTu7sCATUJ0lsN9E2tSksj9/6mprLdgn6aGtSHlKHIRlaCs47QMAw50eu8qO
u1WzitCQPi/QBLXnFp9bXIPNSRBOqNRUpXufnTWiibLSXrCkngzapmx/gBZQdvJz
TQJ0XONmo79nfySfwn+cytVQp3pRgS04Cufc11dyEljWyC3op4/WhVum68J/QiKk
Ufv52EEuF3R4Fz6piObvVrgx28Koohdl/VoAcuQqi+MIqMCgKU0=
=tjpG
-----END PGP SIGNATURE-----

--------------81SaWijtjRXMD0Njgyjt0YZ0--
