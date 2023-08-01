Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5288C76BE4B
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 22:10:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230000AbjHAUKG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Aug 2023 16:10:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjHAUKF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Aug 2023 16:10:05 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C222BE71
        for <linux-man@vger.kernel.org>; Tue,  1 Aug 2023 13:10:03 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-56ce936f7c0so1165886eaf.3
        for <linux-man@vger.kernel.org>; Tue, 01 Aug 2023 13:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690920603; x=1691525403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jkasxxhv0vCpAkI/82rZQFaQ+qddPiBn7jSzBzS039M=;
        b=jTTdU9BckjTFXpdTCNSFLu8TYoq2FZTSo8EzHZWOwdPEpDGgtbFsyrT3gG+P+PTKCX
         6IlQahJfFIVHXAn1alklAm1JVnT4T0otdntPOEYXew/gvZ5jUAwkPWS4M8Hd9wzeq8zR
         JFEmmHsjeyGcCPyOhv3q+JmmrV1nOGGB4ARObf8Bvkxdw72QPIFHOEyFeN6dEdUVDSXg
         sjWQ4LS/rxQjCE6smz4kJKEkryDELnsh4ykwELOG7uNAraJOm/1MPByIaRrZAxwljAhL
         zvZgkZqAVt8eZfP1dCkfXZ6QhuaDEmz6/TDArkJ6K3tueywkdyo9qs4H3Jng/Fw3mUin
         o5sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690920603; x=1691525403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jkasxxhv0vCpAkI/82rZQFaQ+qddPiBn7jSzBzS039M=;
        b=I08UHgK7hdyflWdY38bzCPuYieTgweW7hvbqg4GCvPq1mKrs6+rdtfOISfHZgY/EkI
         lgLopjq6b8NdNpmk80ZksCf7TvpwG1hWCXi5+Ugawxe6hp7xid6PXgqozNmNY+m1Yx7v
         MjrEkqKUfG+R+xRsb4mDjkcl0A/ow3K3jpwMy1aLXKx2ba0m/HEhlLcuOPzMPK9I87j6
         wicIN95c7wjV3bTfx6iYY28QzWWVNDXbAmUoRwJbfwNciY4vWyLdcQs1pRWfIvjfIuTV
         EC4+0oKohfpc3SsGYot3eJ+TylB1lzkQDhiQgEMivmH5Exb/n1Btj2bXGXHyWcSDghuo
         yNBA==
X-Gm-Message-State: ABy/qLZ5+yZUlUkPpMBP8pIkwRcOpUDKGTilgyu8A129+Gz31tE1FkI0
        9v2wZ2ZUo/kXTRZlDrhlRME=
X-Google-Smtp-Source: APBJJlFY59dDudDRh7Qd6NXtn0DfDdA6AQtz40qL19h3Bwu30wahnL8Yxx3v6Ukyqn9tEyYl05cnEA==
X-Received: by 2002:a4a:340c:0:b0:56c:bab7:6286 with SMTP id b12-20020a4a340c000000b0056cbab76286mr6676234ooa.4.1690920602837;
        Tue, 01 Aug 2023 13:10:02 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f201-20020a4a58d2000000b005658aed310bsm3493911oob.15.2023.08.01.13.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 13:10:02 -0700 (PDT)
Date:   Tue, 1 Aug 2023 15:10:00 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Ingo Schwarze <schwarze@usta.de>,
        Jakub Wilk <jwilk@jwilk.net>, groff <groff@gnu.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Message-ID: <20230801201000.xf3tggiatlam5xcj@illithid>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <a57068eb-83dc-5018-281d-8c122b6ccb6e@kernel.org>
 <20230731225016.4fxao4bn4ntmnx35@illithid>
 <c2a8024a-0d56-4fb2-ee12-7dcbca0e75e7@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3zlruhcmi44htbsz"
Content-Disposition: inline
In-Reply-To: <c2a8024a-0d56-4fb2-ee12-7dcbca0e75e7@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3zlruhcmi44htbsz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-01T01:15:02+0200, Alejandro Colomar wrote:
> Nah, I eyeballed random samples the diff and it looked good.  That,
> and your extensive tests, make me confident enough.  If we screwed
> anything, we can fix it.
>=20
> The only concern I had some time ago was with code like exit(1), but
> that should be using italics today, so it shouldn't be a problem.  I
> can't imagine big issues.

Well, we'll see how it sits in your 'MR' branch for a while.  Maybe we
can recruit some beta testers.

> > Please do verify it yourself with the tools above (or better ones).
> > I'm well aware that this is a huge change that can make people
> > nervous.
>=20
> I applied the patch, amended the message with a quote from this email,
> and pushed to the MR branch in my private git repo at
> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/lo=
g/?h=3DMR>.

I saw.  Thanks!

> Oh, and I also removed a few pages from your patch, per CONTRIBUTING
> guidelines:
>=20
> Notes
>    External and autogenerated pages
>        A few pages come from external sources.  Fixes to the pages
>        should really go to the upstream source.
>=20
>        tzfile(5), tzselect(8), zdump(8), and zic(8) come from the tz
>        project <https://www.iana.org/time-zones>.
>=20
>        bpf-helpers(7) is autogenerated from the Linux kernel sources
>        using scripts.  See man-pages commits 53666f6c3 and 19c7f7839 for
>        details.

Right, thank you.  I completely zoned about those.

Unfortunately none of the time zone pages offer any hint I can see that
they're autogenerated, so (short of hard-coding a list), they can't be
automatically excluded from global changes.

bpf-helpers does announce that it's produced by rst2man (without naming
the tool explicitly).

The good news is that I've started to have a look at how rst2man works.
Dmitry Schachnev of the Debian Python team was really helpful in this
area.  I've poked and prodded it a bit.  Found some gaps.

I'm afraid I might horrify Engelbert Gruber, the upstream maintainer.

Regards,
Branden

--3zlruhcmi44htbsz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTJZpgACgkQ0Z6cfXEm
bc6auA/9FXoli1pSrVTwEYSXlfJhI+vrD6dZoKoKoiGhA7Ou9rBpc3k1E6EZol5E
FJXMh82tytV34tLjV5bPH6RH7RCNJ3MMxb2I0TZ0+TeSDD/odR5NCsEsG3saIV7p
uUW3hMVqZ2wb30HVRhzs5ieYbGX/F7p9dbgDZ8kkVTuJwSOqcv+ljU7SF0/djupO
UYjyQ+1lpTWQw0sJBSsZfr9SBGyrJwtYT1nGjuIdwirg7dCXmJD7staCxkhYbNIf
+Ot+vHd3WwK23nnX0D855IiVm5dqGD2UYLQTAI6BSfzuu6qLinMU0EAzBet5bXNQ
W7xHngKEec27iJAnrxAImWrzFyu3r2+j7t7AWCj5cvsOfvFVx+n7TwFqJvWTwF8r
e7PxKScY+qp45bx/WCr6iBRQZYVWmfFzDyDnxuq11q1IG0wtwNDahUx6H5rpfRb4
93ptu9REr2KJSR84jGj1ThW6+dmC17p4wOmfguYQ5LJeC0kpFmcjPQ8Hm7o5v3sN
eHMTAyIBpXA1CnLW/lhe0x/BygIL18/emordvJvtc9eG1Pv0ynEgzvBvcFLdHqkC
ylmDMW6ARdcEIW39nYZJ1OPbPq0sehtofltPEZ8xHLji0qXfteKGOWwk+/Y9j8nv
3hoH8mWUbPJR6OgAT+iSf/TMK2QpiWbKbeDWk+kNZyBEUPad7HU=
=BDBI
-----END PGP SIGNATURE-----

--3zlruhcmi44htbsz--
