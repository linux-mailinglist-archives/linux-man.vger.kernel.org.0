Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FEBC27E6E9
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 12:43:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728126AbgI3Kn3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 06:43:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727657AbgI3Kn3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 06:43:29 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 852B8C061755
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 03:43:29 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id b124so882399pfg.13
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 03:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dvP6IwDnSk45tSQvPU0mdB6WsdIx0XZvXh7x6ItzdRE=;
        b=MtprRQ209cp/u0H8hTsILh4PQ88/6/8/Y5QYC0VE9K+qefP+SsXuH6TllI84GksRB1
         MLOLZl/TNCuXPOLEqPK4KH6dKGZ0bwlMN4f86xgy3bMQHBsmtMq/PbCMRidW2R3b5Los
         KwumScTN7B78lFf0ifIHBpWrPHV0aMT+/K82ncFymxiOk3m9RBFhVz8+fQACtkqqCePa
         0/Pr+EzVtFN1ldxk5l4vYomENsNXxhHaC216Zqp+7krU2QLN/TkVCe7O6O6gkVyeet+T
         /h3rrYP+icQzFK2aI5fGdUNai6IOKeoK+CQd9w73ojqyXG0+9Xw9Tof+GfHBFX4ES4UF
         Okcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dvP6IwDnSk45tSQvPU0mdB6WsdIx0XZvXh7x6ItzdRE=;
        b=V3hdWddhr6akI5ZIwHG3jgmRZukgtf69bZw5i/BxFNtSRCPwWZG0LDmC59a2DTE94c
         fBgM6I6GmfAr8BcWHHMzXGBUXfu2LNSa4Yiur41io+k0QMc9/gwQJy72mAo4i1xrM1zT
         b9C2TooK0jbf+CnJR9VEYanrNVTrmwr6AlogaOaE+chR+nryS8cx7igenbGGgXu2YKJj
         iSpvmfZaaD9N8uguF9MA+/aA3DtwvVL5XPmQr/1TOr3W3bdTpo8R/Y+mlAlO+OoPY0by
         h7kGkvGvnQV9HeQel6q5MsI74CsqskvjTjiHXcjPBCyAVZ9VHdSVbb0QoFuaUzGrisPz
         E+Lg==
X-Gm-Message-State: AOAM531hx+C21noeUPBP7vPJ0mnESfgxLN/+6bRaq6z0hUnd1KQNcpqw
        zLaa4qsL433ryB/utuBOOvc=
X-Google-Smtp-Source: ABdhPJwMgToS2kPYNeolY4xwPwB8Lxsum0E0/6y3jBUHI+CDVKBIWdLxHnixzyrCgXzsuFSwlowdCw==
X-Received: by 2002:a62:7a14:0:b029:13e:d13d:a0f5 with SMTP id v20-20020a627a140000b029013ed13da0f5mr1856812pfc.17.1601462608910;
        Wed, 30 Sep 2020 03:43:28 -0700 (PDT)
Received: from localhost.localdomain ([1.129.172.91])
        by smtp.gmail.com with ESMTPSA id f6sm2073500pfq.82.2020.09.30.03.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 03:43:28 -0700 (PDT)
Date:   Wed, 30 Sep 2020 20:43:24 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
Message-ID: <20200930104322.6ffed5lw3uqmlzph@localhost.localdomain>
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
 <20200928130558.4qi6jitfwxg6ccm7@localhost.localdomain>
 <1fe937db-8874-a8fb-5e65-88b4b15702fe@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="iwgh4uieauragrbx"
Content-Disposition: inline
In-Reply-To: <1fe937db-8874-a8fb-5e65-88b4b15702fe@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--iwgh4uieauragrbx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-28T15:44:46+0200, Alejandro Colomar wrote:
> I did mean .SH:
>=20
> For each type we're separating the paragraphs by description,
> conforming to, see also, ...  similar to the .SH sections.

Okay, I see; you were using an analogy.

> And therefore, I thought that we should use the same format for
> consistency: After the title, or in this case the tag,
> there should be no blank line.
>=20
> However, if using .br is a big headache, I would rather not use
> workarounds (as you proposed in an earlier email),
> and instead just live with the blank line.  It's not much of a
> problem.

Was an actual decision taken on this?  I see patches continuing to roll
in containing this .br-based pattern.  I think if the extra line is
live-withable, it should be lived with (or one of my four proposed
alternatives could be used :) ), in preference to setting the bad
example of the "naked" .br requests.

man page markup is highly prone to cargo-culting; on the groff list not
too long ago, some sleuthing revealed an example of a typo that crept
into the X Window System man pages over 30 years ago and was not only
diligently retained there but faithfully copied elsewhere by people who
didn't realize what they were copying[1].

> I leave it up to you to decide what to do, Michael.
>=20
> My proposals:
> If you prefer consistency in the source, I'd rather not use
> workarounds: I'd just leave .PP, and accept the blank line
> I see those workarounds uglier than .br.

Too bad for me.  But I admit I'm not proud of that .TQ thing.  :P

> If you however prefer consistency in the visual page,

That's not how it appears to me; I may be bringing too much insider
knowledge to the question, but I know when I see them that the things
you've termed section headings aren't true section headings.  Primarily
I can tell by the fact that their indentation is wrong for an .SH macro.

But the knowledge isn't all that far inside.  The worst hand-written man
page I have ever seen in my life, or expect to see, was written by
Albert Cahalan, who hated *roff with a passion I have reserved only for
love affairs.  He learned just enough of the language to subvert man-db
and groff into accepting his plain-text document as a man page[2].

I don't know what ever became of Mr. Cahalan, but I imagine that he is
somewhere working on processing Markdown with XML:FO and enjoying
himself immensely.

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2019-03/msg00047.html
[2] https://gitlab.com/procps-ng/procps/blob/7ac9a0e1f5606696dc799b773d5ec7=
0183ca91a3/ps/ps.1


--iwgh4uieauragrbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl90YUIACgkQ0Z6cfXEm
bc7Ujg/9Ef0RvksGXyCdURSyHDDaKxTQUsOlqGEJozpq/fMUZ2o76+yTJ47lH8bd
Mt6b9cMKOJEzWe/YpE53Sj9FArtp9wwJM1+wH1iXMvKCd0GXDEgDiFT4Hlu64tWN
M9TPL8SWNi/ABkZWyPi5k4P5D3UyDrZE1HB5/d8IL9+qbFFqUlg/+FakcPxFwSIK
x1UPOrBp03IZIaBV6RMxA/KcFqUvmJRTZytZiDKoDJDxdi0WYrbSvI1TAKtPeiLu
hOKj2/lQUaEeTtRwPbtFbk4CEfqFuU/xAqJWEvWNJZbD5BHk6iQybK1iSbw6xrK6
o2EblgadCErTyLit43osUKevWJLcJdOWPelFjrWopE7uFWySj9lpuB/ZC7/wZynM
YQNQo+5RzT/2euCwNf/GUPH5sHTB2yoVyZVhtd2JyGH7vcEJmalPimTfzaA6S1iC
DZVX7jrrHo92KUZIAVTeBW1Xnek2VA9j3Fr0Yn3H7Db+0jGECTuDYa7AYyZRBMHL
UjEWYbsA9RmdOQMhMEkMkguc8wUOpjzie1hKLbAJL8iZ4rd/glY2EHanzdu2OoFW
zGXcEoPW5rX5HiEZgS1PbQIgMyE4vbfUHMVL7sA1BmdTzFoBLZQrFfY6t/dE2SrZ
CV9Ad4Z7VFNU7ECxsl2zkzY/VxrDX9W1DKUG1QEcFHTIqkNiGyk=
=0CrP
-----END PGP SIGNATURE-----

--iwgh4uieauragrbx--
