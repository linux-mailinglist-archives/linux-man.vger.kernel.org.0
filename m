Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7E23641CA3
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 12:30:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbiLDLag (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 06:30:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbiLDLag (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 06:30:36 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E11216588
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 03:30:35 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 125-20020a1c0283000000b003d076ee89d6so7132222wmc.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 03:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4dxF1SqXpARC/mBPtaIo4++/xGyPyzz6DNzGSgzHSG4=;
        b=atP3fboNmWVog0IWLtcMmXvRCai6nbSpzbMlivz+U+cOtzKwxLYV6umRqotYWG9Yie
         GJsBf7dMk/Pa+LEqzCbnyYCK3/ppFhfA4bCcxIwEKYEKkhBD2CXEzxbxydUHKO4RVouN
         wVpb8vVad6ELALOhNWen0Fy4KwFNwBdOMoJNY1byJGoRrRG2VoNGKQ7A5UNtTpZsJJFv
         z7ksIVEH0Kdu4VCI8S1IbdiyKxJjxu5YATmUNfmjXT/izxmGGXBUtjgAW8UQDDsU1/O2
         H2DHJk4/5nGTekxjQRxFNOpj32rJVyjAMNQZ4Wi3ewvJKSL+vwVO9AFJT5YnCUKGPgsi
         SczQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4dxF1SqXpARC/mBPtaIo4++/xGyPyzz6DNzGSgzHSG4=;
        b=o2LLJ/ILxMS+LZgubBTzkwr/BNBLqu0szowwxON7JRZbDkK2tCcmihECVG9jLTCbYs
         M2vd/3F8rJHx/23on0lmJ0Rm2UCE02Ul4YFZt/ULkADiQ+6sYmYiofSCNd4i4GwitDMF
         pwBJ0TapLPgFLg9/3U1iSPd8CdFJOSDJuqP2zSPMud1flyBm5exeodzFy4Rv7nd9rl9o
         4ish2BenzuK611K4Egx/bPdhJoCdXy7UcsBqcmUePepbL9I49/undPqBBmrnlY6w3Gf5
         yBY+fd1nPeQEul+6wc/nYd54uvy4fU5rkbgAsInOCdLwEti/NCOOWSywhRT0nPtHLeSr
         zR7A==
X-Gm-Message-State: ANoB5pmqddBpTni0O0lmCq7Eo3vTWtbyvnFElhsXH8fMzoyN/icQqyBt
        hy2i2CLQ3cNYCPxubHnHAhc=
X-Google-Smtp-Source: AA0mqf5umOcyg2SIJJm5pmw5S4oBEunQ1LKyLwQ8T/3yRjiRsTDxm3BUJ5W4i7+DUHV1rsh6Sd7CcQ==
X-Received: by 2002:a05:600c:538d:b0:3d0:47c:b2ac with SMTP id hg13-20020a05600c538d00b003d0047cb2acmr43974064wmb.52.1670153433927;
        Sun, 04 Dec 2022 03:30:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bs4-20020a056000070400b0023677081f3asm11652747wrb.42.2022.12.04.03.30.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 03:30:33 -0800 (PST)
Message-ID: <8fe67b92-5140-14dc-e447-488150ff4229@gmail.com>
Date:   Sun, 4 Dec 2022 12:30:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page errno.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090708.GA32612@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090708.GA32612@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JnXhlLSIAw6VOows4XJfdZh0"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JnXhlLSIAw6VOows4XJfdZh0
Content-Type: multipart/mixed; boundary="------------XLnIIJCuN1iIToqyIVEofNik";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <8fe67b92-5140-14dc-e447-488150ff4229@gmail.com>
Subject: Re: Issue in man page errno.3
References: <20221204090708.GA32612@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090708.GA32612@Debian-50-lenny-64-minimal>

--------------XLnIIJCuN1iIToqyIVEofNik
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTIvNC8yMiAxMDowNywgSGVsZ2UgS3JldXR6bWFubiB3cm90ZToNCj4gV2l0aG91dCBm
dXJ0aGVyIGFkbywgdGhlIGZvbGxvd2luZyB3YXMgZm91bmQ6DQo+IA0KPiBJc3N1ZTogICAg
RGlmZmVyZW50IHRoYW4gZXJybm8gLWwNCj4gDQo+ICJJbXByb3BlciBsaW5rIChQT1NJWC4x
LTIwMDEpLiINCg0KRml4ZWQuIFRoYW5rcy4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQo=

--------------XLnIIJCuN1iIToqyIVEofNik--

--------------JnXhlLSIAw6VOows4XJfdZh0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMhNgACgkQnowa+77/
2zJ0ThAAnl2iEqdsTmMGYytb1NHZe+YWCn+mnWCD9N2zEG9ycIYQ/uRyK2oEkAqx
CH4iDD4vHTX2ISjwA9VzxOlKajC3u/kgwYsayAEg5HBWHKM3qszl9EKrer9bmF4T
2PKxImsVmB05hRM5DNRpZETme2eV8biZtEf0lsuWOpqRTqYLgE45H7CtwKEsivrW
rU82anz1kx7ITb/Max9yCzpOjXoihZHzsH7gvzwd94lt9RTNBTr5nbZhuaWeuWxx
zV66iJauSTDpbXqhUI9HM1GZS5JHIlKosYg5lxqqcMK0uoS9gtcWAaaDf6b9B3tA
D6vvhcBjUX1soOQC+C8A2l/fHemT0xnj7CYtCpzhP5BQxGPPSvOrus8PztI3TP/I
K96Gc7KGRnWRbCywGIpzOuX49wARyc0nOX7SVaSmeoKszeZ13WSotjyimcb08jFQ
ssH3B1cDXgVohFdK6yh5VW12mibaGHIacgVkksAlj/MKckIV8G6LetElPpbKpr3k
L9dtAa6ixVrBNzjZwPL9dh1la4bCVQTMxOUS6gUD4jzRDW53ZiY3A+xDmg7BR48w
b+z3GiAFarJubK87IdcCE/snLgPZt7/7YWIs21AClIi/pqxLEVcr5RRHOo4XUppD
x9QCf+lmKnsls+cgLf/FxQaC6Iz5l5QRmBt829tbpHcxgemkqWM=
=oRgR
-----END PGP SIGNATURE-----

--------------JnXhlLSIAw6VOows4XJfdZh0--
