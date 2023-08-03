Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E84876F31B
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 20:59:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231265AbjHCS7W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 14:59:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231311AbjHCS7T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 14:59:19 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D76D430C7
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 11:59:05 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1bba1816960so866545fac.3
        for <linux-man@vger.kernel.org>; Thu, 03 Aug 2023 11:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691089144; x=1691693944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YxIDA5Wvys1G26QzDFsOIqATLRR1T7U/VLG1EYPFIGI=;
        b=kvplbxgSXOD3FdE7w/8IUMMhxw/9MJAUMC2dEqCRFQwFWe69N/YQBYVZjE8XBDwX8B
         rr1Peyct63ZdE5nGArA+dTLxQIWXvKUe3VmJbbljROFn6lzZx8n18MBj9LIM4iX2kDV6
         6RCr1fQKz1Tek88tIxQPqvJq1GBT2mdc4VdFCjlVtE/z0qJ0/rt9gG5iSdbr5e3FQxIe
         IeqDa3unAuVIkjhoNpkQhgxyruK8wRRznxvqNPff0Axa4rzJuG1gdt+4Ee3cIRRDJxjT
         NVfLPbzOGcJBg8sLaIQ4spjZBTRS93l4w/7r0Pl7nEIXIFtCegj4hEiZ/OwhvDv+wcyW
         d9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691089144; x=1691693944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YxIDA5Wvys1G26QzDFsOIqATLRR1T7U/VLG1EYPFIGI=;
        b=eX+IHbjcIqDubkN95rSAj2qDzZBDVzyLRgxrFNK+Jp7gHW9YR1/OXuvsWNQZuiH3sF
         6/2lGl4xtTZRv0Kp9Fhpzem4OYE95uhhdHq7GHMnsfxCGYFgFsnMAr4wbQW0jbbXvW8p
         B2YTG206i0fyI+YQy31RRmDaN4EKudm2aQ7D8t+00eK0xuzuF087945gIPLWnNm9l20z
         JKNSrK+VYe1jQYEOgW9UfhLR4X+SPjl8Q7OigWKPCdi1gvB+ijgXX1S0Y3rOogSNIriV
         7+A8MNFzlaZQ4+FUXxb4QhbpCu2rwgE0dAIojfO0UShCB5s/XcP/D8U0rrKb+C2wpFf8
         Yniw==
X-Gm-Message-State: ABy/qLYAfDgtfUMmT34h4IpD22WgJQMcFwOFTEZh7PXhrWXtsIeRCNOt
        NR8urOoGsf0NbgZShhxFPys=
X-Google-Smtp-Source: APBJJlHIaTAMuh7KwkAy4pi/tLi7CiPCwd4F5eER8RGDMJAIKHGo/hYiJAV0diiN7oWWs+8eUhujWg==
X-Received: by 2002:a05:6870:f103:b0:1ba:629a:e34a with SMTP id k3-20020a056870f10300b001ba629ae34amr23863229oac.12.1691089144551;
        Thu, 03 Aug 2023 11:59:04 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j7-20020a4aab47000000b0056cf10cc844sm195071oon.9.2023.08.03.11.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 11:59:04 -0700 (PDT)
Date:   Thu, 3 Aug 2023 13:59:02 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Jakub Wilk <jwilk@jwilk.net>, Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <20230803185902.pgscspk4kx3i3nba@illithid>
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
 <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
 <20230803151838.4smugh4p6nsgpopo@jwilk.net>
 <wdgi2xvt5mb3lo52gfji2nssmheliyl6bxoqxcsi4q4akkkqmu@nzb4vfczxatx>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jkjfwkq4gcru7xvx"
Content-Disposition: inline
In-Reply-To: <wdgi2xvt5mb3lo52gfji2nssmheliyl6bxoqxcsi4q4akkkqmu@nzb4vfczxatx>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jkjfwkq4gcru7xvx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1,

At 2023-08-03T18:54:14+0200, =D0=BD=D0=B0=D0=B1 wrote:
> I think it's definitely being adversarial to the reader, yes.  Hard to
> come up with a better newbie trap than vaguely saying "on some
> (possibly popular) systems you need a property which fundamentally
> excludes half of the use-cases", bonus points for making that property
> an obscure-if-you-don't-know-about-it operation on directories,
> documented once half-way through the fifty errors in open(2).
>=20
> It would have cost approximately nothing to include HP-UX and AIX in
> the text (especially since they're already in the commit message), or
> to mention the directory syncing usecase explicitly here, or up to 5
> minutes to arrive at the bisection I got, or write this in a way that
> isn't FUD, so it must've been on purpose.

It might have been an effort at making the more robust to obsolescence.
Who knows what AIX or HP-UX will do with fsync(2)?  Will their vendors
let the Linux man-pages community know if their kernels change?  How
many Linux man-pages contributors have access to these systems to check?

Possibly better would have been to gather (from Guillem Jover,
apparently) the `uname -r` versions of HP-UX and AIX and annotate those
specifically.  Anyone who didn't run those systems could ignore the
admonition, anyone had those exact versions would be advised, and
anyone who ran a different version of them would know they'd probably
have to test the implementation themselves.

There are sometimes innocent explanations for things.  (But the
exceptions really do sting.)

Regards,
Branden

--jkjfwkq4gcru7xvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTL+O8ACgkQ0Z6cfXEm
bc6JNw/9ENHBjoO+G+W4l/mN5dj8sY6PN0vqLPZs85YT17rKZZyOfBlOOUN4gYJQ
m9l8AFlntm8IVk97R8gmRfzpBoKFZQSKWk32RSzi9y5THMziGmbKEp6mhwyjxMO7
uca6VozcrfPeQyjKPvQoO+SsCoAOuV7NcrY/BOj7yWKbxHclOdVmANPj2SN8fZi1
s7mPKzONInHchZBqGMWDo+/4/t3aaY1PmyQexs301+yV9m2nNrq+b6ewkiAZVl0d
1NP2NRMWYjcoRPXEhx9fsl3XEDOGuvctAb1LGiAG0cBoEOtarfzzxoEF7H+MB/Ch
rD7edbs5UWy5oTbMiQ+pE7a9CZgXyshDur+Sq+ek3zm3SLGWiVixdTKUW1WEzKH6
v/lNHliH/f8Tw00Z6cordJrp76LkAtmEyxOVgv2H/Z2Gz3iYWURjMoGzFSXrBGeq
RH1axlbGh1m4zvbmOYO/A5FUh712mRzaYJh5xC0wCLMlH0Ft91oNDu08JBj7kasl
V9tS/4KAN7EEOlVPkMkp6eamfdRxkL/HlWnZjxusTiOnVez5zq1BlduZGvW9VlMu
ynmW3Fp7jTRPmR37XYLHK7I5Xg1BI7USR2NaIB12ERA+OkUSFkCeB6RpKIWVhedF
o57RjJeGfx5qo9VYCKuFUkvTZ1iFRisYsdB5p1JFoJlS9/6VcIA=
=b0MH
-----END PGP SIGNATURE-----

--jkjfwkq4gcru7xvx--
