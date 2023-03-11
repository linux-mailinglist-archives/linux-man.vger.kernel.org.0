Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C80E16B5B92
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 13:23:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbjCKMXu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 07:23:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKMXr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 07:23:47 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C958173384
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 04:23:45 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso7881844wmq.1
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 04:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678537424;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ptVOEK1Ang3wGMvYYSlp4efrHH6FEWLh+8nLyRT2FAs=;
        b=ctVPnpbGLq6zxQ4NWwxhFa/FAEa6t2ifXYGxlozbxTP7DAb0suZm4ibsjKi3Bpp04s
         bfZF4lZqW4F4WfSOJ90jLobvsy4MfwDJYzcreunyyYl0IWTCnQtm3SGHqtt25BQWgooH
         4X3jfsvpumuVaMybh4PuaofuwimIL3/jTud5npg/dussa9i2LrWTVinFsuFqtyucFl6m
         LAR5yUkWf7eWlmrgQChqxhXYAAwiYPC1n3UTOs8u7dSTUVHGIzcEbRE5hsTMu2+0LkyA
         sebBebKIIB7CG6i4faAg7bCfB6WPcBAGMEDgDn2VtHqLE+V9YKTLAEWZbHQXKZ7s2Zs1
         iovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678537424;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ptVOEK1Ang3wGMvYYSlp4efrHH6FEWLh+8nLyRT2FAs=;
        b=jSg8sS1xLSm8BSafNVmnR3qM3iD0edSXsvTIMZ7DzwhgN0kWo5w/29/4PFwQi3GbSu
         x2ZlA0EqBFhqel+wp8BgnsnOKc3Gm16n2lbrzF+bcqIkKwJ2kHyg1UIYaHC4TUpzuyU8
         xzBHcYg5T8hhhLk6TWwxGCK3u6M8Ko+NJPKMHvCvqwM6Tzck9doZxJsrfcWsNcRjs/Y7
         R5YeUMzWciW7My/VrzQ1XVgXkXRUrhtQsZSprFfeVwao41fBwI/SXrfIC4/V0x9wYSX1
         EYsBJ7MtGiY2kfthiRNBcOSMkFEIRwgexLvyQtPBYs3KzAGaF5ruSrHsJixBHz9oYBGs
         x6Nw==
X-Gm-Message-State: AO0yUKUjB1xo5mauPXpYHW6Tv9/1VkoXb0QI2ZXE/jm3mghyzr+SCaTg
        YlPPgfP55JA6XKuu3a9fTqWkjBWb5nM=
X-Google-Smtp-Source: AK7set/T/eeL48DTdVBVWfxiOlbR5DOpmfekLXfVArp3BP6AxXxHRRcAwo9qQu+GXw/1Kpt7fATqMQ==
X-Received: by 2002:a05:600c:1e0b:b0:3ea:d610:f059 with SMTP id ay11-20020a05600c1e0b00b003ead610f059mr5927555wmb.4.1678537424229;
        Sat, 11 Mar 2023 04:23:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c21-20020a7bc015000000b003eb395a8280sm2577038wmb.37.2023.03.11.04.23.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 04:23:43 -0800 (PST)
Message-ID: <c4f93563-a589-cd15-c536-85c173763518@gmail.com>
Date:   Sat, 11 Mar 2023 13:23:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: AW: AW: Example code at the manpage of strtok produces
 segmentation fault.
Content-Language: en-US
To:     Leon Breidt <lebr1004@stud.hs-kl.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>
 <f26f973b-a856-5846-c027-048d973fa1ef@gmail.com>
 <f8ee138db1d2458f8562feee62c65374@stud.hs-kl.de>
 <26b90872-88c7-6050-5ac7-45537b915558@gmail.com>
 <16814f3fa93c41d193b0ab28e2ad0c98@stud.hs-kl.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <16814f3fa93c41d193b0ab28e2ad0c98@stud.hs-kl.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BR8OV0VPNw6jLr0VugIvT7dz"
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
--------------BR8OV0VPNw6jLr0VugIvT7dz
Content-Type: multipart/mixed; boundary="------------tEwW9O2FE8bg260kQahXcUsL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Leon Breidt <lebr1004@stud.hs-kl.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <c4f93563-a589-cd15-c536-85c173763518@gmail.com>
Subject: Re: AW: AW: Example code at the manpage of strtok produces
 segmentation fault.
References: <e6bbc992874d4b1eabedc70a59032283@stud.hs-kl.de>
 <f26f973b-a856-5846-c027-048d973fa1ef@gmail.com>
 <f8ee138db1d2458f8562feee62c65374@stud.hs-kl.de>
 <26b90872-88c7-6050-5ac7-45537b915558@gmail.com>
 <16814f3fa93c41d193b0ab28e2ad0c98@stud.hs-kl.de>
In-Reply-To: <16814f3fa93c41d193b0ab28e2ad0c98@stud.hs-kl.de>

--------------tEwW9O2FE8bg260kQahXcUsL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Leon,

On 3/11/23 13:01, Leon Breidt wrote:
> Hello Alex,
>=20
>=20
> okay, that seems to explain the problems. I have corrected my usage of =
strtok_r in the meantime, so my original issue is resolved as well.
>=20
>=20
> It seems the git repo was also last updated two years ago. Therefore it=
 does not have the build-src target specified at all, which explains why =
my build attempts failed.
>=20
> https://github.com/mkerrisk/man-pages
>=20
>=20
> <https://github.com/mkerrisk/man-pages>

That was a mirror that Michael ran on Github.  When Michael left
the project a few years ago, his mirror wasn't updated anymore.

>=20
> Perhaps I used the wrong repo?

The original repository is
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git>.

> Since it is run by the other maintainer of man-pages, this seems rather=
 odd.

He left the project a couple of years ago, since he was very busy
with his own business.  I didn't yet update the website
<https://www.kernel.org/doc/man-pages/index.html>, so it still
shows him as comaintainer.  The only source of truth now is the
git repository, since I don't have the time to fix other stuff.

You can consider the README the starting point for documenting the
organization of the project:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/README>=


> Even though it is not necessary anymore, I would like to test the new c=
ode, just to get familiarized with stuff like that.

Sure, just clone that git repo from <kernel.org>, read the README,
then read INSTALL and CONTRIBUTING, and run `make help` to see a
list of available targets.

>=20
>=20
> Kind regards,
>=20
> Leon

Kind regards,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tEwW9O2FE8bg260kQahXcUsL--

--------------BR8OV0VPNw6jLr0VugIvT7dz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQMcsMACgkQnowa+77/
2zJJdRAAq2T6yQSx4oVv0a6HI3kaXynY0vDtnNtpy1xpo4GdIiU/OHK+Kmca486L
iTNDqtQrDzS4Aqgi9t4lDgA1QpVlpipKJSKlLvAs/yCGGt9rGOIC8TdIjbleQeLM
6FBGXRTY4UefI2G+kjQ53o0t78vPRRBZcvheKThQS6+kDLNALSbc8hnFCu5xStB4
xeU6eFgk1Io3xOtIC8j13NM/yGFEvhWGvWzt3lcomZqmCsXPdYYiY/qZet3bZ0KD
VlyaCuB+j8nQqRLdt2tlm7lYQRpHig4p78tH2lGX7kOU4IH/jeiW+gMSWWyClJtG
6t+jHy0WUZIV/iuutANKMKhbxEUQ9RzMzunG22DHG66QFsbl4Uqa/dS+JFZpoUIs
kAjuCZuz9y6ThuVbR+VmdMTjEc8C9YFKlxb4420QYUbTuHMn6qpmocjCaQWDiCJs
Qn1HIxxwC1N3rWvBMcIN8b43L5VyVykSrkiRtFOkSwFnVI2Dz8qMeMksV+Bs4M2w
6uj9Eo7P7AW6Co8GJwGa0uqmehGCxzrG/H3VKjyjcBBrvPsLSAqUUFQVEEA6spq1
tjJ+eeWRLswidCL916k72nuEQE4TV0TswTgbzAwj1LD8ZT4XDsgSTZZ3ryZd4/gF
Su8JoPZ5pXJK3vLGC+U8giBXY8h1Fd1PrdeO3/DOv9uAZnvTWRI=
=YfEP
-----END PGP SIGNATURE-----

--------------BR8OV0VPNw6jLr0VugIvT7dz--
