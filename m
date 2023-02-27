Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE3F6A459A
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 16:08:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230130AbjB0PIr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 10:08:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230145AbjB0PIq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 10:08:46 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C99A1BB86
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 07:08:44 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id l25so6588732wrb.3
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 07:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bVRTQL/i8pJhrw9lv6FiCNX7YNcqP0LgPnP3ZSvZnSg=;
        b=qdBll0bI3F2Li/qQrNFu4cJGI77Is9AWZiRJvAVN7mUcBu7Ejavq5OhdU66QJMi4kX
         vf9dinGwTx8rgmiXuF/hVF9+/kWSiubLK0syOw5HTP3sShnlG+FUFxl6EGYI4WEriGFN
         7j+19nZuxGekuafz/M6DMJDcVTpNHATCxalzn4Opn7facoXkrWc1aoUMLNlCYvY2XdcN
         1toNSr7/8wQTMywygsgSIWTO7wFN/qaAastA2JKkFjxQabEzEyaDuq1ozqte+5XcEQA6
         fbRO5e2fFJSA+jRchTPeqUzdB1jo92ynIqoFMEfG9w/FNj3uRSi+jEzs9A3Kiju60eAB
         L4dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bVRTQL/i8pJhrw9lv6FiCNX7YNcqP0LgPnP3ZSvZnSg=;
        b=rcUmIMU4T5ayvF6d+9A3f8fIzFrHZMxs/OrfNQuFGB9oCZCBZC/QG05yIVGhMNa+V/
         UrShGH8f/oW5lhtV7yFOYnzYxNBWDpsi563eh4FiwUh5TmXdss6wfUPB10qxiErxYg8P
         Nobq1rxJEuYnZYbfJ/J6bd9sX1whZ0SXV6cEE4QMb92v3uKCn7LI1ZtitaOuIIiOWWvV
         w+X2ZHilTIDdKdkUed4FZJ+pvoN6gwYF8nPBhiEkrTEZia4/emx8zERT+V3Wyr/c9u8Y
         Na0dZ8cjjzQkPhCs9bDZNrzMRg/9MprtYag+Wfto0+j8mOu1KkqGCWyQ6FOyvGL7tfWD
         lEFg==
X-Gm-Message-State: AO0yUKUCbe5zqrEwlmTt5HYd/+wNg8xM9tKjsl19lX7AQs+6Gce8VJyn
        s3T6q98wnrP0Z05Wu5NlMSk=
X-Google-Smtp-Source: AK7set+jaDwG1ikTXIIj0NL3hIT+z2C7x9IerasgCCujD4RYiBmsKKL32pisiGmoo6EEk6jmu71q6Q==
X-Received: by 2002:adf:f6c1:0:b0:2c9:5dd8:2978 with SMTP id y1-20020adff6c1000000b002c95dd82978mr5010371wrp.59.1677510523203;
        Mon, 27 Feb 2023 07:08:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g10-20020a7bc4ca000000b003dc4a47605fsm13270325wmk.8.2023.02.27.07.08.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 07:08:42 -0800 (PST)
Message-ID: <c6c01640-fd16-cf6c-5c37-1c622d5b64c5@gmail.com>
Date:   Mon, 27 Feb 2023 16:08:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: man-intro(1) [patch]
Content-Language: en-US
To:     "James K. Lowden" <jklowden@schemamania.org>,
        linux-man@vger.kernel.org
References: <20230227052537.96f59b7905f3c8535cb9bc00@schemamania.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230227052537.96f59b7905f3c8535cb9bc00@schemamania.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oUeAtkXdj78BWxF7ZFv05T2B"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oUeAtkXdj78BWxF7ZFv05T2B
Content-Type: multipart/mixed; boundary="------------2R3RS426QUcV1M7ClRkPUdK3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "James K. Lowden" <jklowden@schemamania.org>, linux-man@vger.kernel.org
Message-ID: <c6c01640-fd16-cf6c-5c37-1c622d5b64c5@gmail.com>
Subject: Re: man-intro(1) [patch]
References: <20230227052537.96f59b7905f3c8535cb9bc00@schemamania.org>
In-Reply-To: <20230227052537.96f59b7905f3c8535cb9bc00@schemamania.org>

--------------2R3RS426QUcV1M7ClRkPUdK3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi James,

On 2/27/23 11:25, James K. Lowden wrote:
> On Wed, 7 Sep 2022 00:13:18 +0200
> Alejandro Colomar <alx.manpages@gmail.com>=20
> wrote to <groff@gnu.org>:
>=20
>> If someone wants to send it as a patch, I'm open to discussing it.
>> I remember having some concerns when I read the page, but I don't=20
>> remember now about them.  I'd be happy to discuss it with a patch
>> sent to linux-man@.
>=20
> Greetings, sirs!=20
>=20
> Some months ago, pursuant to a discussion on the groff mailing list, I
> took it upon myself to write an introduction to the man(1) system.
> Following a few comments and Alejandro's invitation, a modified version=

> is attached for your consideration. =20

Could you please send it inline?  It's easier to quote-reply that way.
If you fear that your mailer will mess with the patch, you can send it
both inline and attached.  If you use git-format-patch(1) and
git-send-email(1), the preferred way is --no-attach, I think.

>=20
> The audience is a complete novice or anyone struggling to use the
> manual. I hope it's a top-down view from that user's perspective. =20
>=20
> The work is wholly mine.  Given the option, I'd contribute it to the
> public domain. =20

The work is yours, so the option is wholly yours :-)

Cheers,

Alex

>=20
> --jkl
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------2R3RS426QUcV1M7ClRkPUdK3--

--------------oUeAtkXdj78BWxF7ZFv05T2B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP8x3IACgkQnowa+77/
2zKKSg//cCZADAbM/sWN/rmdzR3WbRi6jz5RsYokYq9Xu0Tn6giwpKTg/B86UiOQ
Qq2K/JUWOdi8UQi4D90+j7KRXpXecVVngcY5QZYqzMJEMiK/VHhh8/VOXBme73Z9
erHdbAXvGOvOIvuAO0H7xydNtQcg5ei1VjSdvke7rE6EVJLh02GaEqKVcaiPrcM6
CJXOF6bfXe8WTPbK4OFY7dV1qPx3uIjsRbdVlkUKsKR1IvHHzXT8sXXWkwhpza0p
5lPgcmeDU/wfEWbxFhwr6tnFbvUdN7v/XAFIqjoKtUnyUqCnUjkJLOIICs7Xgs1I
AnPGWZ3yU4PWGy/Ibr7Dxt+13ww0oR/fK+FvsWFRDfLVOGJ3wXxKKFQdD8VGSPH5
Jw/hNSStpBG4HyMFMLvJv+zyE2MaWD5MXGrUvAnB/m8z6pzjS5snePRNtBouXuBP
9G4F9f6dQ/kRCWt/LO871q9MWBF+I0NQcroyUs/iFNSfjQZPT3aJvQl5aI5jUtdU
5gD55n8UzzavxNXM+B2ZKPT41Wk099lGyq0gDWzPRAP5xw6X2c7by/WRdUFE1kgh
KgdkNaMsvlQuDkUOnrNkoUpjaezKEyuGgl+lfsNilZVQDRElXTXaYQgqiQNzaaE8
iUP/rs9gCuvGuvT9o00xWdzXD1Lk1oD0Jl+TcrRxBGI7Hyc1Vbs=
=sehW
-----END PGP SIGNATURE-----

--------------oUeAtkXdj78BWxF7ZFv05T2B--
