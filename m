Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9E522B18A0
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 10:48:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726288AbgKMJsD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 04:48:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726149AbgKMJsC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 04:48:02 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61229C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:48:02 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id u2so4304904pls.10
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jQSdl7k+D6/hTlZKoC0shm7PJaBTTvf212uGHoxS+jY=;
        b=DXx+hmnvI89/O/1X+yjCRYOJMM0IAIyj66mTD5Iv/3Fx2qamK3EEbxYViF1r62IUDq
         MkvYaLBk0n5hqy5VRQCxxY2UZGsG2TFnxTRfw/mdlqXe/b13d5jx8NiVJLcOsZOoI5Qc
         FMPvkO/GG/25nXe5jZmvE5k4kQ5fKiBRXTb2Zok1WIv8bDgejbF8zw7cjhnkjZMPypig
         TOKSfFlHNW+j6/PMO5U2i+BfNYK6lDNxTi/CXP4xBZsUOSCRmC9pGF+TDOJ4/Wk09h2T
         fq6cf8MCm12SHHzhcSWCrV4qeCBkvhfkd+2i3kmsGNwxSf42fUfgSzLM19MKj6w2nbRC
         N8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jQSdl7k+D6/hTlZKoC0shm7PJaBTTvf212uGHoxS+jY=;
        b=Pgmje4fL+7OOIpgNIpSDLMzpr/4li+M0Nf5Z+XkLay6JRKubhVklEvGgtIvj/lvNpy
         QFZQaQXKJDOI7PGps5wuqBi162aDTxtFDr+7I6w+QQgNnqb9wNH7inX136WycVIOMIag
         SfONKC9xAX0m1lvbbnjFelGElPj5fT6xKEgknT3CuflydyXcqKLJL6jOl+F5KnVlPF/+
         a0r048fAxkQ4t2VK+2ODDsGPt2xAHLUuHQbDGhZPYsEDJrAg+MoM/wngjX73F0iBAeRt
         /kTIHZIcro7wekp/7Hiw1lx2Vy09wbWoPTsbhu+TeWncHxvMAaQsrs8Xz6G2m4S1Nc0L
         IlsQ==
X-Gm-Message-State: AOAM531BPhl+vBOEqea1coudrMLG7mcgrTxp3KMnOBHOyfduG6sMiKpi
        PHGsZlh92PgFytb+cIsA+TYW6nAwsmI=
X-Google-Smtp-Source: ABdhPJzvfYquqwO1/Tqx8hfMkUxAWVaDxrszGR4xNd7BrezSLXyOYJs9LOfS4oKYZYjTM/5X2g39mQ==
X-Received: by 2002:a17:902:fe07:b029:d6:88c5:f5d5 with SMTP id g7-20020a170902fe07b02900d688c5f5d5mr1479714plj.63.1605260881781;
        Fri, 13 Nov 2020 01:48:01 -0800 (PST)
Received: from localhost.localdomain ([1.144.241.200])
        by smtp.gmail.com with ESMTPSA id f4sm10107905pjs.8.2020.11.13.01.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 01:48:01 -0800 (PST)
Date:   Fri, 13 Nov 2020 20:47:57 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Format inline code
Message-ID: <20201113094755.bg6pl7g2s5h2w4mu@localhost.localdomain>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
 <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
 <bb5f3aad-d766-fb9e-e77a-09009fb7b599@gmail.com>
 <20201113082759.vqeufvucqg3agdhh@localhost.localdomain>
 <0323a942-1d12-9378-bdc0-8690adc1aaee@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6mmeudjz6j4f7fl5"
Content-Disposition: inline
In-Reply-To: <0323a942-1d12-9378-bdc0-8690adc1aaee@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6mmeudjz6j4f7fl5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-11-13T10:00:20+0100, Michael Kerrisk (man-pages) wrote:
> But in the "-branden" version I see
>=20
> [[
> .RS 6n
> ]]

Yes.

> If I understand correctly, then that number is calculated based on the
> ".IP * 2" that precedes it.

Yes.

> That doesn't seem good (since, maybe at some point, one might want to
> change the .IP yo say ".IP  1) 3", and then one has to fix the .RS
> lines. Am I missing something?

No.  This is why I don't have a solution for you yet.  The problem
facing us is to set a code display (.EX/.EE) with the the following
constraints.

A. It must be indented from its context by a predictable amount
   irrespective of that context being an indented paragraph (.IP).
B. Indented paragraphs must be free to use custom indentation amounts.
C. The quantity of macro calls must be minimal.  (Probably 2: one to
   commence the indenation and one to cancel it.)
D. We want to use standard man(7) macros, not raw *roff requests.
E. The solution should be portable to non-groff interpreters, ruling out
   computation of indentation using internal variables specific to
   groff's man(7) implementation to figure out the current indentation
   amount.

So far I've only been able to come up with solutions if any one of (A),
(B), or (C) is relaxed.

Please correct me if I've overstated of any of these constraints, or
omitted one.

Regards,
Branden

--6mmeudjz6j4f7fl5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl+uVksACgkQ0Z6cfXEm
bc4prg/+K1ibWVg4jrcdOstG7o3b/hacE8drEr0E5oXPL6mXg1puvLQVZsUgTDQl
QOgsKuK1A3zTr6wwK3tEIdBtaYkT8I0A/puIbHHKH9uQNCuzdjksd/vOubQr3lnw
OEtto1gomCdSejW+W8BG+UeiwHNOHdoKArIrjD1lYBX3OCg9JiRYEx0EGQmxWIWC
72jZoOpiTFYgfMYZNylh+AWPxDT8Le0ctF5a6fNHdbqk0vin1WN4H4IVLIDjSzfM
pSiuelTcFtX3xDU0wgvwCKd3uQOkwaRjfTWRq0C7N/3JlHTbN0BmbXBAUsVl+Z6u
UW9xo215k9p4tsh938fdz4ql544q47e6G7JIai6FE2UO5aetCQIPYP5LeCds8qyT
u+pJ+yWZuIUREe2c52XhmA1Ns94GzSJPaaQHR7QCNdYSipmFHfazJafQGx7CrTY1
hxh4H0e3u1pqNysRTFjE7r74+Br9D9ICJiVJyUiMXYU7he/9z4vayWX/9XRVZP2f
HTa3spgDQy/WDZ+07MpfoY0PGvflHsWQqzvZCllroJZ06xfy08lfepqOHbOWhWox
OAZURMrgCja6pBc2Y+DF4ESJ/fy0reOQI7E/pUWWUyMnzKkvp+yp6sZ9Zxs7BBZ8
xHzOuuT3+7lYr6zdG1+VVQ2GIRwPBbvN+Qel2fEWNTsmaNjtwOU=
=XT16
-----END PGP SIGNATURE-----

--6mmeudjz6j4f7fl5--
