Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 131026B620F
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbjCKXbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:31:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKXbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:31:41 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A2B94A1C6
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:31:40 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id g3so8213928wri.6
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577499;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3hGKDJsu8mzbW3V8S7DogDwWlKVJV6kpRzQlx8Eiors=;
        b=K23arDVIuz75f+EbXFpl3WM0Cz0Sy+Oer4Mlu+Eoz12/CzevJcreoscmfij25UuNhy
         mCtARB/UA907VFo3UuP8IIn2+5Xg+dKgE1GexD2w062M9svmdVPhkbhkmapWEd42R+zo
         9781xJBeGYjWE05xsbMlJXqnM6CINeyEJN1mf+trNspJ1SoIkVRLTsDOpVczn+Ahkyni
         sXKmixTM872FzjKoClDyZkqMbtY+MCB7dRrx5kIPSw1OENg1Vg4hHBtlguybtPlxsvxV
         /FyLP2mBNwHmUMvxdcOVyUr0oqSZy9tCOdGV8Bgq8g7C4blVKL43Jq0b6A99ypu803Ey
         TSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577499;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3hGKDJsu8mzbW3V8S7DogDwWlKVJV6kpRzQlx8Eiors=;
        b=jtvKJzHcd8LYiaq89fx53+WS5JC9iJ+8S9Pd86BV3xG16Pig0bWFE8sWpPxU3Qxo4H
         z29SRLsaZMjR0se1e+g4F6uy5cRQYF5mN2l2KJ7JjSj/AGWO85Kk8ZEqaUEKm3+0xehN
         c8RuBze/ElQEE13gLIKNx6kqYaGMbSsiW0db21IgzgORsDt8L6StYtp/qynTP1hNHc+9
         IBqJyoccmbMj/KXj+wJbLqOGMQgqBQpEbkLNKofEq9CRf7A8g8bEAFzUUsgAZ451jk8o
         2aLsBxHysCPLIPyObxlqWdPKbrWkAps2UBaL1YBhu5IswZ+5inFVGjIfGw4DM3doxoRk
         RWjg==
X-Gm-Message-State: AO0yUKW5dC6U500skxH1SlkTxK79v3u6njEhNRl0MGIVKoMwA73o7Ach
        MdxeRuQ1n08giu7WGGWsZU8sU3vRZv4=
X-Google-Smtp-Source: AK7set+Z2dRAm53nGf22brHyNaNhX+oagwv1weLZ/4oxk8WFSMe3Om3TuaRQmGLfrKNTqBLl1ssQmw==
X-Received: by 2002:adf:ce91:0:b0:2c3:fb3e:ae85 with SMTP id r17-20020adfce91000000b002c3fb3eae85mr20347111wrn.44.1678577498829;
        Sat, 11 Mar 2023 15:31:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t7-20020a5d6907000000b002cea8e1125csm1278745wru.77.2023.03.11.15.31.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:31:38 -0800 (PST)
Message-ID: <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
Date:   Sun, 12 Mar 2023 00:31:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page boot.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IBamJUS3jbvuvgrX0UU0iVIV"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------IBamJUS3jbvuvgrX0UU0iVIV
Content-Type: multipart/mixed; boundary="------------kp9EXtqfBOo1Ne2axPysD9fZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
Subject: Re: Issue in man page boot.7
References: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171357.GA4913@Debian-50-lenny-64-minimal>

--------------kp9EXtqfBOo1Ne2axPysD9fZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    This is true only on x86 and Lilo is probably not much used a=
nymore; also systemd has its own (?) bootloader

Please propose a fix for the wording.

Thanks,

Alex

>=20
> "In Linux, the OS loader is often either B<lilo>(8)  or B<grub>(8)."

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------kp9EXtqfBOo1Ne2axPysD9fZ--

--------------IBamJUS3jbvuvgrX0UU0iVIV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQND1kACgkQnowa+77/
2zJMbw/8Cmk95TJ4ZkSUdH6Mf3JvPtnuBXHWQ7JHpSm7aFaY/nXxdGrHRoFlfdh3
Bhfvq3bwxrqUXVJZpEundM5/P4tMyQ0RSmzXb/rcVh1/KwVBDziSNePnovT0tDSd
h7gYhLJxugR1qggINI9Z+oIqIUn/9Nxn7uzo5Fcbn17/DLT6Cd0PHHbRU6DZU/Nk
c46YRt0jE/3O6RZXWyeE7j9f40v+0qJMCCZZjMVOCD63T/pceLi3X8zFrHxNO9Xm
kIeF9nHVCQpI+SXJXJptTpmfqYmiCXAbHhL3MMwggkscuj8fMWhXs0XQ1pQTp8pU
fNwocRzFJSR0Wp0YcJaycOl+6+6LFskU+4uGSWiRks1o0JDbRLSkurWur+5rGc9I
qZQqr/N7P7ygzgw7LmIeHvHGnqYnqTrhf3WtHjHwBqcP5QBQ3tkJlEgU2FM+he/o
Xlrqcd1wjz11ND2322viCgRVdL/ISZlgOXHsllP9sCsavgrSGFgUvox6JIpIBzzI
U0JJ3v9VmNaDndYND61D4MOWKAeKVaNhmIN4eYqc0bsLtDUSiX8kLpE0fVDq+m50
2UCFX+5JkFp4TwLPTmy0e5zY/JBfXLXHXZmd6UqfBhtVhmoLQFCs981pWWhz6JUF
mAyIxo0zhr2XADr38xoac26T5psSybblMrJzPF9l2/rB6iu5vXQ=
=RIlA
-----END PGP SIGNATURE-----

--------------IBamJUS3jbvuvgrX0UU0iVIV--
