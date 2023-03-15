Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE91A6BB28E
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 13:37:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232870AbjCOMhU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 08:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232575AbjCOMhG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 08:37:06 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3444195
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:36:07 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id az3-20020a05600c600300b003ed2920d585so990268wmb.2
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678883755;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yvYmCmO8PakinWAs/GPzfUgs0ZYzq9NWWgT49jGZiU0=;
        b=Z7t1O1rVeJ+74LUSMa/Hxbi//bsz3poa4jCkPfnjJLD5eVyXSYPDbSFX0wTO5hpUGt
         IQQRjhp6Iza0WR1TI/B8rK6lzrZGkX1l9d+TzM9GAtwTX/llXjOuFHJr1F2ivIXCeKuI
         YgUe/NsT2BjC9p1DIkXaa7tuFYMBLLZBB0vf/tuuEQCHCY6k5uCAPleth4KdXyBQaz/Y
         FO4Dx4KAouYQ/sbaI0A1MnYq4us0nOHEV47y1/k+58Y5QksMwQV7b/vpqAvTrfnZby+J
         tTWEOB7zJDhAMVY0Ng6et16O7Ht6lohG7OHr8M24evGcPjiybcTXT3z9fk1E3O8r3NxT
         IY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678883755;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yvYmCmO8PakinWAs/GPzfUgs0ZYzq9NWWgT49jGZiU0=;
        b=GLwVR8U1ZUORsN7SIPXtjuEuX1XTjuvIlxBWw4NSvSZQNxjJ8ja8ZW/aHm2+crEb7K
         Z0XxJt+d07M8oYzI1QB4gXjY2GUWKApJxUympwR2+qh9tC3berd3XI1Evh8muJ+b8/ZI
         YHY/WC2t1O0+8VUw2/09N0LvTQ9Wk3UoVyIe27ydHArM38AKWe8jx8WAdxUas6pkITLI
         n72OUturjLmKa/0CfLoi50XHdOTsKS1RVMk6yYJ9hHsebhgHKA0/p8myUzZgWJd/Ihtx
         nFPKuxf3Ym4NQM6b8aeXwhpZEea1g56TBZW574wIWIhbbg/akH58aqVDvY1tE9zcazLi
         Mg8w==
X-Gm-Message-State: AO0yUKVdG2nIE4u7+LlQUU5lDFK+kJvN6gdWxTc851PtKyH/6+GbleOM
        nXvrsCVT0TfjIqggV5M0tWEUe/mbokA=
X-Google-Smtp-Source: AK7set/QrvxZwJQvv2WvfsQ98WQksBXDUhIWbuD8mBgBWeKjNmgCOwUO3n0Q6rIMKR23gTIYwdpdOg==
X-Received: by 2002:a05:600c:5114:b0:3ea:e677:5017 with SMTP id o20-20020a05600c511400b003eae6775017mr17730263wms.8.1678883755215;
        Wed, 15 Mar 2023 05:35:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id hn37-20020a05600ca3a500b003ed2002fa6dsm1708264wmb.17.2023.03.15.05.35.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 05:35:54 -0700 (PDT)
Message-ID: <ebd2141a-c535-6288-1f2b-497bed043880@gmail.com>
Date:   Wed, 15 Mar 2023 13:35:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: .txt draft C standards
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mnagy@port70.net, nsz@port70.net
Cc:     linux-man <linux-man@vger.kernel.org>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
References: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
In-Reply-To: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------repHLoQc3orYQlzlBIg7mzYk"
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
--------------repHLoQc3orYQlzlBIg7mzYk
Content-Type: multipart/mixed; boundary="------------NNVku3S33kcXlmCBon2jW2T8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: mnagy@port70.net, nsz@port70.net
Cc: linux-man <linux-man@vger.kernel.org>,
 Oskari Pirhonen <xxc3ncoredxx@gmail.com>, Brian Inglis
 <Brian.Inglis@Shaw.ca>, Matt Jolly <Matt.Jolly@footclan.ninja>
Message-ID: <ebd2141a-c535-6288-1f2b-497bed043880@gmail.com>
Subject: Re: .txt draft C standards
References: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>
In-Reply-To: <d8c1e5d9-e648-91f5-3b0f-4434c4140b94@gmail.com>

--------------NNVku3S33kcXlmCBon2jW2T8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3/15/23 13:30, Alejandro Colomar wrote:
> Hi,
>=20
> I'm the maintainer of the Linux man-pages, and am interested in copying=

> the following files from your website to the repository.  I think that

I forgot to copy the links for those "following files" :)

<https://port70.net/~nsz/c/c89/c89-draft.txt>
<https://port70.net/~nsz/c/c99/n1256.txt>
<https://port70.net/~nsz/c/c11/n1570.txt>


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------NNVku3S33kcXlmCBon2jW2T8--

--------------repHLoQc3orYQlzlBIg7mzYk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQRu6kACgkQnowa+77/
2zIaCw/9EicW7X3u7FVZ0oUbawJI6bK8xhoqsLOHJxfBUB8D8xcNRAbmnCI5Lt9O
08k7MkDITn47uggoz+hybn2Mdt9LV20uQYd/Cs2pqXVx2e0+Y5gXuLnIeR77jbO9
rbfgh3YDbWq5e9ReK8ZJHRPC3d2I9mJTNkBUw4eLZJ4ClN8g6eFPJ8k1RFx+D6QV
yZYyCbs36uJxysKm9wQunamoyB2WIuypSffVYmjYsegoCQwGaJSHT8FltKEABnpj
usjK4yOxBthoxGjBjf1Uyn3wTMi+0bqQymgAX7Uvnk0SYpsnKbcvGA68lhdFD+B1
Wxj4N6MlV/rz1KWpL1f3ymOSDFbmrZUQLWjYjq/pvIHiKXQbFFAB8WpfW+17NLwq
me15Vxvv9B5uNpAnKGUfQZbMLJNECinvo/rorL6Xr6YmgU2GmX3rVPdT9mcnxomP
XhkMHWfbQ8TCTOeq0V3ii3aHULULkBvbReX/cnaMb5VKrc0MriM0C3N1XjJpA78w
YOrVVCt6PD8I8r3SmBsr0Wd8FNZet9J/x2QvRiggNiV8aes8vo+ATb4KcjBPd5lg
3rLFCh6Y+cn9+pkmL6rtdJWlSVqkc/Srv/zi7qhpUF8dPL8PA/KsjHwyavq1cWQI
uRLfmczOHWuV+/sJXug2nGR4BtA9XzzBnjDZogUDw3gSuS2jWVE=
=7XFe
-----END PGP SIGNATURE-----

--------------repHLoQc3orYQlzlBIg7mzYk--
