Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D296468F94F
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:59:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231891AbjBHU7X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:59:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231690AbjBHU7J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:59:09 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB76F4F86D
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:58:08 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id bk16so18127513wrb.11
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 12:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYM1OMSUbYTRUO5vvKn8BJa9kCQ6+cl3hsrs1Fz7QKA=;
        b=j/Q1g0Fzxh0+QuACBzu9HCVXvol1kaJWvNa8bsVQx2/26kh/Y6YRSvRpNScWT6rqAz
         N5TR0I1Le4bsckFm0YEZTdaqC8U+kYDyNbQb1xaRMqvTvHI0k9jGu+Bvo3ekOy3W43Zy
         81eJQ1ImBzQ3r/9989CRVEbpmK1JBYUw9dJT291VFe0y5pfWwYWo/hYicIjO8NzmLN1T
         CwH6R9aCmZbmY9ZLzzktakjdMm9Hdz52QMqdocnvr+VKMJLLTOWBZPwIEDDGePD+QPyq
         SNELDAJpBwb58glSB+vML/uUiPHSkNtcwf1Jrnc0TRfv+ZVoktxNe7oNNbHF2fclthNS
         b+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JYM1OMSUbYTRUO5vvKn8BJa9kCQ6+cl3hsrs1Fz7QKA=;
        b=s1WpvE8StZY0hCdAbsCoXG5Y+UMaeeY21yZu5hGOXa9R/Q1JLeYqxNwVF6JuJoHX05
         +vWMis5MQb6t1Z13IS4vYBIoW34rA8habTcT5b4LiSciz5LMz0cl54TbVW/dw+vDx2rZ
         ueXWjSRzfNFQYHZ9Ny6YASei/IOFgJYu3i62kmof1xPQAXVGsnb80L7/kRSZbQMXi7wG
         0WKeq41KccU9Be7jkqyZ/EuwdHT0eXoznmeIXRKkttpdERH5RwNPr5N4cOALVZJltFg7
         x+9+ZNodAmgl44IViegkzomk7NvXc2GTXeTaUMvwSRtckhrN1OJfUNc8j4SgjLN18Yp2
         RYbA==
X-Gm-Message-State: AO0yUKXyXD7iS+Zy1n+9a92QmzztAv+TvCwQaLvVz3zbVwd5qLOt4qxv
        ZN/KgwSjKp5slRrg1Zsh524=
X-Google-Smtp-Source: AK7set+WWaFSnUsmcKFa7Ujt2RKPx8eCm/kmTMLG2V7BtcnVpbs48d5ay+OYVfiOJK0tU3uMZr+XsQ==
X-Received: by 2002:adf:e749:0:b0:2c3:e5f5:9faa with SMTP id c9-20020adfe749000000b002c3e5f59faamr8850527wrn.58.1675889886688;
        Wed, 08 Feb 2023 12:58:06 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d684f000000b002c3f03d8851sm5992728wrw.16.2023.02.08.12.58.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 12:58:06 -0800 (PST)
Message-ID: <f0b9a234-575d-03af-a31f-47e54cc697a6@gmail.com>
Date:   Wed, 8 Feb 2023 21:58:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 02/11] man2/spu_run.2: fix example comment status code
 or-ed value
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <fde9ec8187bbb7d2b30b0cf5b5cd0d67190fcc2b.1675830945.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <fde9ec8187bbb7d2b30b0cf5b5cd0d67190fcc2b.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------z0bCv0UAztdZe2AAN3lfKlaX"
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
--------------z0bCv0UAztdZe2AAN3lfKlaX
Content-Type: multipart/mixed; boundary="------------8GnIuJMBi7eUIl1JDg9I8God";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <f0b9a234-575d-03af-a31f-47e54cc697a6@gmail.com>
Subject: Re: [PATCH v2 02/11] man2/spu_run.2: fix example comment status code
 or-ed value
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <fde9ec8187bbb7d2b30b0cf5b5cd0d67190fcc2b.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <fde9ec8187bbb7d2b30b0cf5b5cd0d67190fcc2b.1675830945.git.Brian.Inglis@Shaw.ca>

--------------8GnIuJMBi7eUIl1JDg9I8God
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 2/8/23 21:27, Brian Inglis wrote:

Applied.

> ---
>  man2/spu_run.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------8GnIuJMBi7eUIl1JDg9I8God--

--------------z0bCv0UAztdZe2AAN3lfKlaX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkDN0ACgkQnowa+77/
2zL1JQ//a52Q2zagzGQPFBxNbVEvPu2twFFW0ZbzQGHLDVXC6mI05y36FNmNr4GL
5BeRDuy93eisQNVn2Ji8d7j7G1jC5uoIG9Gcf7sWNO5+J/HybvctgmFbhzCgAbWY
lfZkylbFxzyS6A4z0yHBrfGmTuakIgtA9/hRDHnDbs8NY5IEcMvRttM+Qqm/0QmL
RB/mH8Q60MvCDybjC/Q8iAWwOSFHbmmAjwomNwrbMeHvIQ3XA9KTeb7Kel7iKTP8
xC744dXDG5f9CZ26XbE9I0M44zuIF7tdHrsgI4Cl2VqjOJNz4s1WsQy4lmXbn7xN
VcdRgsOpJNv3ayRH8ylb5lbrZeTJxHc5AJlCGws+/dz3eKqAu5FufnbzfGjy1uV8
0rI8ciqi+IU/G+nCw4d7ZFhKjTqKNHCLZJSlQYP1RgLO6OKSgeybD/4F4QkrFnZR
L98hKeJYS5GNZhG+bN5bSiunZWvuX7g7zvxyYvRp909CrUAzjBfJlb5kJTCdtY2e
Q4t+YkaVOFNrZsDRS/JUkR9av4hf1rVoSEnze4SIUfwhTnxRqgzalEvsO0v5hRyQ
rv807rIPZNssmiyPO1lvD1rrZtCA+7NM4OPIVsVF0P/q3BGdUnYtIeqkluWiUq1U
HMXmoFetaze6T9VlpDweC/jMRtX1wMc0hj2lK5ZSvc4q0KD81N0=
=otY8
-----END PGP SIGNATURE-----

--------------z0bCv0UAztdZe2AAN3lfKlaX--
