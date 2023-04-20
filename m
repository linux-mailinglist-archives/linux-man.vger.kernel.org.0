Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4307B6E9BEF
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 20:51:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbjDTSvP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 14:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230118AbjDTSvP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 14:51:15 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1871030F5
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:51:14 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-187edc01fa3so413117fac.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682016673; x=1684608673;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7DQnNWXsIyCZ6DSqoQeWT7JJN0NTl4hXl2cKqgzYsLA=;
        b=AA6X/QFZyPze8yFlf3WbnZGuvTJWZI2foRA8DEp++Nb6ZWtxzsa4JkAzWg5ZRaDuII
         KD5OByIuNPZkpYVadFWX9Ef24paaqCywpnsXStvxysXeszRVoaHcMZjB3ItKBByL2PG8
         aNBdIlAC2WSmsxYKS91K4yrlPeAa2jtAzM1qXZcZ+zCERz0UzKLtgyBBXWzpWm+5zfMe
         yuiHUuWCQ2NT2salES0M7/xchHxKEkEW58XEug4htN8sglKpiiD0jYEM30Z3Sc8S9LWL
         xKgFX+8fwxYkGG+X/R5cPUxuP13Sb7UOvoM2ODez4AXyFdDuKy/W3MaooxcHrHgumakO
         TJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682016673; x=1684608673;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7DQnNWXsIyCZ6DSqoQeWT7JJN0NTl4hXl2cKqgzYsLA=;
        b=ghBlY5fR697pLARbqAmV4XLCfQkL71buFj/0Vkk9CYLEyb54K37cWiEEzcZO7Wcg9b
         xt6fdm0gFY6R99x/vTNII4/IYsfDGTsYJVZbnnOG2BNqcCvaJNqDbiXm29igCQJ2gq14
         JMxEsgRLHNWs++cLYdyL4TQWPIp1Fc8fL52pmF8X6EYp9XvPfxcm9EsEPnrYf8asLzu9
         +YeLj9JSKEkAR2wwecVtmneWB5GMlwiyUsjA90AN7uzlnjxkGv8zUucwl7pdQH4fGlIF
         9tY3AyTRy3rLvJVZz7PvuU0UVhvXCX6ZWvJFCeNFEbF6SMe/DF54v9XAU9ZNd73SVd9S
         BHPQ==
X-Gm-Message-State: AAQBX9eBJB4CcLXc0uIZqpGJX7rClvgSbo0fXRXSItMpvOHeeHiZJ4Ez
        RxAcUaYqyt11xaqFNVMgU2c=
X-Google-Smtp-Source: AKy350YvyuY1ZoZ+Fxb+LtsW7oOa3gEK5IgqCZXW6PlNzpyZOMJS0wUBfiPhQ+j+6mhVYJMM17j0Qw==
X-Received: by 2002:a05:6870:42cb:b0:187:8c36:d392 with SMTP id z11-20020a05687042cb00b001878c36d392mr1616700oah.18.1682016673273;
        Thu, 20 Apr 2023 11:51:13 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id dv15-20020a056870d88f00b0017ad7a5f57dsm1040109oab.11.2023.04.20.11.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 11:51:12 -0700 (PDT)
Date:   Thu, 20 Apr 2023 13:51:11 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4 6/6] regex.3: Destandardeseify Match offsets
Message-ID: <20230420185111.hep3acduthzt3zds@illithid>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <09c3c0bf-79e4-1cdf-8aa7-b82155aa3f47@gmail.com>
 <tffsidfrewe4yxhfr534jsznrbv526x2ilrk7k7vfpwabpmxne@5bilrttama4e>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dgllbbg7lyg6pdvl"
Content-Disposition: inline
In-Reply-To: <tffsidfrewe4yxhfr534jsznrbv526x2ilrk7k7vfpwabpmxne@5bilrttama4e>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dgllbbg7lyg6pdvl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-04-20T17:05:53+0200, =D0=BD=D0=B0=D0=B1 wrote:
> I think changing our description to
>   REG_NOSUB  Only report overall success. regexec() will only use pmatch
>              for REG_STARTEND, and ignore nmatch.
> may make that more obvious.

s/Only report/Report only/
s/only use/use only/

You might then further economize on space:

>   REG_NOSUB  Report only overall success. regexec() will use only pmatch
>              for REG_STARTEND, ignoring nmatch.

As a rule of thumb, get the adverb "only" as close to the word it
modifies as you can, because "only" can modify pretty much anything in
English.

Regards,
Branden

--dgllbbg7lyg6pdvl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRBiZ8ACgkQ0Z6cfXEm
bc62UQ//dc5ZZQpVOW8WShzbIfg0jfw8k433tewOm3TIydb1zSjiJAo7xShSkyNT
gX+C6/6GNu9+7b2DUDwz8wOLIzCLIcliJR7crhnareYGj/uBUTegLwltxIVUXnPT
WjXrZqkdGYjzkvwa7SppLnoiuY2Z44yiJOP//KelDfg6WEPCas1p+80CK85975Y5
p0uNER+KWXyYBJ8tDH4/FWu8Eb/+hJAiGge5Bq0A5KF0ZRGXN8BFTplwLE0CfA7e
TTKIguLapeTrGi423TwhHUTjtKuXNfeSv+917R2uvv3bAD4LOthaKC4GTrox7TVq
n7hRenfUKzkJ3KMnTTR4gES/K7qCCMwwaH87g3C1/6GrAwqLDchltzxaq5lCitcc
SvI8IrLbetNyvzLrjwXZrCkiiOuqmpZvoQGuz6qBPTVMICdextdVSNG/s++PIflQ
GZ3vV9pLbt1kyn96yBcEku16glbo1AiJkxNRD1efkMHWUCc+tpREGnXNnMAdHmsk
9n0u4nAt2QAoWeA9e2qWCflQmv5BpVoF+2ho8uA4DeczhPPgAC/1Pksaj1WgPbRt
nPK7weutlk+NxV0D6fVQ7oBDIOAP0X9kvqkMIirsj2s83xru4jLC/B8lciPTBNhX
pgNHyo65EPSjiZYG4H/Ypa1tuLhHhxcOV3eGO+AZ+5wZ+uaAXaU=
=zS06
-----END PGP SIGNATURE-----

--dgllbbg7lyg6pdvl--
