Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C127E677285
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:03:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbjAVVDu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:03:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbjAVVDu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:03:50 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30D4D1F930
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:03:49 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id o17-20020a05600c511100b003db021ef437so7215558wms.4
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MASRIJ3zxx3NyjrjQ5EGgcBBpBp0kgHjaOsO4e6RIfg=;
        b=UoQXFJwmdVE5NrC5H43bKAfCcqNTs5Ja/udXeUUTcaPz3OSZuc4yvtLGtcHcHODfHm
         kQCkeVvosUvv3IIZO8N36DV48pm0cEK/Gm1tZQtXPtYkgma4YjCd+e+SAq4ok9kSozlo
         x0nEaeVAfkSTiTl+yXbRcWGv6F6XEdTtsoU0f8TUkfsAkfGRP46f0Xv30WnJZ3o6Xw9O
         yZHL1tE1QvSTOOitwCOFYpWiWvyQW2V251R9T0Q2h2npIoHFNfQOfHAR28NgZT3ElDpv
         JkpEM4EtZHYMsWDG+z2RH3javhwTKWvRztu2pnVZkpoaEz9rgof0wdkfKBfSer0agjKz
         X5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MASRIJ3zxx3NyjrjQ5EGgcBBpBp0kgHjaOsO4e6RIfg=;
        b=FW8Wut+D+lqHG0BOgDs2BUwPC5kqrIyqT/L/c9tVi4aoaZajmhGWUYoioyTMHofLFe
         N/6rSVZZkAxBhCS1a+/I2ASsb6H4v2udO2rmYhfh/zH2+L+M0380SpJCpQSwAysWXfB3
         HnjsU+i3jTTFdla1s3v8K8NGnByTR2X9nMVkidUUC2FMOd/u0Oh4Im1sdeHv6ZOyAVjc
         fHMHT5KDJdKDlZ4r0ypamVktcWPXtxxD9mNiTihsXZKNQ8TWHDdRXrXWd+O9D24E455W
         atA4gP0ibgBmJIWt671oKoUNecLpHR0/TPV5Lik+lnO7InC5tKNeFcJUfVBqWIYvl7RS
         Bspw==
X-Gm-Message-State: AFqh2kqGudXSwNdYnRCW/DmgDNQeF099aI75eZ9oVtMFVgxA/zPNMRs8
        Y5nAOd9dlvJt//Hu2SfxSeM=
X-Google-Smtp-Source: AMrXdXtauwkgVqF0cJ2dScF9p4fCy56dLE4lXhs6fmkECenpqESmyarQFW5L4RPL2K2UDCgbASY8Qw==
X-Received: by 2002:a05:600c:5118:b0:3db:1e4f:7cdc with SMTP id o24-20020a05600c511800b003db1e4f7cdcmr13805741wms.15.1674421427773;
        Sun, 22 Jan 2023 13:03:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l12-20020a1c790c000000b003db15b1fb3csm8656930wme.13.2023.01.22.13.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:03:47 -0800 (PST)
Message-ID: <923d1f91-0e5b-d770-db4f-15588f3c2d23@gmail.com>
Date:   Sun, 22 Jan 2023 22:03:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page regex.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230122193128.GA29030@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193128.GA29030@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jl03tkdsuhIDjeVlg07e4d2y"
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
--------------jl03tkdsuhIDjeVlg07e4d2y
Content-Type: multipart/mixed; boundary="------------0Ic1UErc07BFKjPyu9TWAN30";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <923d1f91-0e5b-d770-db4f-15588f3c2d23@gmail.com>
Subject: Re: Issue in man page regex.3
References: <20230122193128.GA29030@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193128.GA29030@Debian-50-lenny-64-minimal>

--------------0Ic1UErc07BFKjPyu9TWAN30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIEhvdyBjYW4gYSB2YXJpYWJsZSAoSTxwcmVnPikgZnJlZSBtZW1vcnk/
IElzbid0IGl0IEI8cmVnZnJlZT4oKSB3aGljaCBmcmVlcyB0aGUgbWVtb3J5Pw0KDQpIb3cg
YWJvdXQgdGhlIHBhdGNoIGJlbG93Pw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gIlN1
cHBseWluZyBCPHJlZ2ZyZWU+KCkgIHdpdGggYSBwcmVjb21waWxlZCBwYXR0ZXJuIGJ1ZmZl
ciwgSTxwcmVnPiB3aWxsIGZyZWUiDQo+ICJ0aGUgbWVtb3J5IGFsbG9jYXRlZCB0byB0aGUg
cGF0dGVybiBidWZmZXIgYnkgdGhlIGNvbXBpbGluZyBwcm9jZXNzLCINCj4gIkI8cmVnY29t
cD4oKS4iDQoNCg0KZGlmZiAtLWdpdCBhL21hbjMvcmVnZXguMyBiL21hbjMvcmVnZXguMw0K
aW5kZXggNmY1ODMxZjI0Li5mNmZhZjYyNDAgMTAwNjQ0DQotLS0gYS9tYW4zL3JlZ2V4LjMN
CisrKyBiL21hbjMvcmVnZXguMw0KQEAgLTI0MCw3ICsyNDAsNyBAQCAuU1MgUE9TSVggcGF0
dGVybiBidWZmZXIgZnJlZWluZw0KICBTdXBwbHlpbmcNCiAgLkJSIHJlZ2ZyZWUgKCkNCiAg
d2l0aCBhIHByZWNvbXBpbGVkIHBhdHRlcm4gYnVmZmVyLA0KLS5JIHByZWcNCisuSVIgcHJl
ZyAsDQogIHdpbGwgZnJlZSB0aGUgbWVtb3J5IGFsbG9jYXRlZCB0byB0aGUgcGF0dGVybiBi
dWZmZXIgYnkgdGhlIGNvbXBpbGluZw0KICBwcm9jZXNzLA0KICAuQlIgcmVnY29tcCAoKS4N
Cg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------0Ic1UErc07BFKjPyu9TWAN30--

--------------jl03tkdsuhIDjeVlg07e4d2y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNpLIACgkQnowa+77/
2zIZVQ/9Fj1PEPuqp3EPtMR8ZT4/oi74KFPk5E+fvZew6k9g9cLtuSW5K9FnUP+D
1akKOn9nZuean9LM1shfe9ksoTIvS1/pIOfJsjtHl3Cw0w1dqUo5O3wJodSwic0h
JwW4obrmjiE7q226hSXSR9VlYnBMNYEZMDLpi3qZ0gU97Iuexp4sxPFwWH8ERir+
I4GLH1tZHFk3dAfYoRf9fTWJRuSngrVnM4SWtfBS3hJfD0LnMqGee5SFGidtgZs3
0mvYzeSDzwFaZqlsZ4oV3j+Va8IyTfb6Xa5ZrRhMbqWlG8JzhM1ULPgoeB61DR4H
tKI1k42U7x+IlNI0kuR3M7WSMOqsYpDVYbcCLDEnYkeo77R+91bYCzb/SGVMHMpj
VBRUayjtr7kXtLsIJFScLqhcRJu7WKkk3F7l/nQmNUivmR7dIr7r7gU9BYyQ4Pvs
neL7XAiUOJeVwT+VfIGQXdAodoiXtZD9wt8UnxTQYVkWJdFL+e6tiCH8UcDpMKg8
OFFtyLFRD8BJ7VGec36U2MtNhnSHgn5i0Ey9jhET7QZFuuieUVkBI2uQ623R4Ki7
ocWjkZqYAs/1EW4wxe4GiiMjzf0vKvU2fIcRmkJNw//m1U50YF5tnS8PCZLuuEqJ
0SvRFENG/0Jcwro/QIdDmsh+qDew/Owxsb7FKNj0Qi3+bBLs9UI=
=3l6h
-----END PGP SIGNATURE-----

--------------jl03tkdsuhIDjeVlg07e4d2y--
