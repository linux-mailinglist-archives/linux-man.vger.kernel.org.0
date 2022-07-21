Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B9CC57D362
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 20:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232680AbiGUSg1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 14:36:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232644AbiGUSgZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 14:36:25 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E01B88C8C7
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 11:36:24 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-10d867a8358so3549886fac.10
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 11:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=P1soSJt2Fksa/vlzZDAiKHEHMDwJYyR8vsj/6O7CjR8=;
        b=f3laU4P8rBiGxChl0efI9FB6CIIneLnISpYguil5UZDzx8bu+MrhNRFMkVIQ0P2pmi
         di30pSxMwJH9DhfOuOcCWbiAEnb+i4ugEJqehK8dF9/vLDxqioTWApUVM3wnW9ZAyVZZ
         GTx/mX8yEup28LLNdiCmbDeNTDbC1dsp63+YsORWA6c/es/kcGhcEu3zYLN5zw5GXiOf
         5n+o1nLBawYrqrVi/D6Ot36uQxWY0XaTBsC5SXnLSC0l6WMWqvFeSugbEjCgZrISfbnc
         CLgUn4TL4o7fxLtStDSAHE+vOe9wWd5LIotYDbcFV8NTIbxx5epdJdTdGp8e2NYc42fa
         oIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P1soSJt2Fksa/vlzZDAiKHEHMDwJYyR8vsj/6O7CjR8=;
        b=eogbNRsgBgaKmeakVz6EcDpYlk3kh8zx5wSkASvwZxAlEyHBh8mOgE850IIrpMqM80
         DSI7fYgIp1DC06j/gWuPVIsaOs3M/Wz3qgi4gx6mHDaescFludWaBPNAwS476zsa9h0s
         77Jnhnhhp2Sc8ml4wUTdqOcBZw0jeP1BnJGZOCuOmuBhVlEuy15JXGLTKCFen7cDRE0z
         zEDAjzi2YrPMcgiX5HRX2ulfA1mneAZoPPEKnCZut/TYI5tGujlZn9XJSrkRAAztJ2Ae
         5aHdlZ5MqWQ+1Yah+i3frE3dx3HP3VamD9sdXaimT4Fi76H3cJLoVPNURU1iqMzKVSTr
         NEKg==
X-Gm-Message-State: AJIora8DpVb7Kn8C8d2ktSScQxhPRa3HzN1ChsbVqRtRyW2VN5uAQLR7
        kY13sEHOAdwmfZQxPxxMMhmEB2eoz3Y=
X-Google-Smtp-Source: AGRyM1tW/OHWTCTJExHPth7Yy06dm+oCtRu0BdK9TKXv4jE5xU45OE2jeqYFpsHc1RAuqznq6UrLHw==
X-Received: by 2002:a05:6870:1485:b0:f3:bd4:aab0 with SMTP id k5-20020a056870148500b000f30bd4aab0mr6139204oab.229.1658428583982;
        Thu, 21 Jul 2022 11:36:23 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y17-20020a056870429100b001067f7f5004sm1139785oah.39.2022.07.21.11.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 11:36:22 -0700 (PDT)
Date:   Thu, 21 Jul 2022 13:36:20 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: All caps .TH page name
Message-ID: <20220721183620.hdvgwwef66hmrgln@illithid>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="paovdqszz6vmjsfw"
Content-Disposition: inline
In-Reply-To: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--paovdqszz6vmjsfw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2022-07-21T16:29:21+0200, Alejandro Colomar wrote:
> I've never been convinced about the page title being in all caps in
> the .TH line.  From recent groff@ discussions, I guess that neither of
> you are either.

Well, Ingo was more comfortable with it than I was.

> I'd like to know why this has been the case historically, and any
> opinions you might have about me changing the man-pages to use the
> same caps as the actual identifier that I'm documenting (most of the
> time that would mean lowercase).  Basically, the same rules as within
> .SH NAME.

I've read every edition of the Unix manual from Version 1 (1971) to
Version 7 (1979) and my surmise is that it was sheer inertia.  The
Teletype machines that were used to set the original versions of the
manual--remember, this is before troff even existed--might have been
capable of boldface through overstriking, but was not used this way as
far as I can tell in the V1 through V3 manual.

So this means that, for emphasis, you had regular type and underlined
type and that was it.

Under such limitations, the use of full capitals for emphasis is not
surprising.

After that--the V4 manual was the first to be typeset with troff--the
practice of full-capping the page titles in the headers was retained.

How deliberate a choice this was is not something I can answer.  The
decision was made in 1972.  You could ask some of the surviving
principal Bell Labs CSRC figures on the TUHS mailing list.

> Also, does it have any functional implications?  I'm especially
> interested in knowing if that may affect in any way the ability of
> man(1) to find a page when invoked as `man TIMESPEC` for example.

My understanding is that mandb(8) indexes based solely on the second
argument to the `TH` macro call and (what it interprets as) the contents
of the "Name" (or "NAME") section of the page.  It parses *roff itself
as best it can to determine this.  So the fact that the _first_ argument
to `TH` might be in full caps doesn't deter it.  (It might in fact have
made mandb(8) authors' job easier if an "honest lettercase" practice had
arisen back in the day--but it didn't).

Since he's a mandb(8) author/maintainer, I would again defer to Colin
Watson's knowledge and expertise in this area.

> I'm not saying necessarily that I'd like to keep that behavior.  I
> wouldn't mind breaking it, if it means that users will be able to
> differentiate upper- and lowercase pages.  We're not in Windows (nor
> MacOS), anyway.

True, although I would take a jaundiced view toward any software project
that distinguished its man page names, whether internally or from
others' solely by a difference in lettercase.

Regards,
Branden

--paovdqszz6vmjsfw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLZnIsACgkQ0Z6cfXEm
bc7ulg/4oeMpKXeZXRLLHHEGm6m/M+dM9mQ3r64MBB3cXKLcWqbpOpKCXOF0MU8f
L49wgG3VvxZ/OaElTy2IymB7IMlTVzg1APLx/UikCPHmYVNC/V8gW/s3EOTVJzFQ
/Lm/zgkt6wUUXn/tzRs8lfWb+pQJwZrW13lF4Sfp7kj+zgX9ffIEwAVjI8wh73d3
Ud2SvEZAPyjVDWSUTuNnI2XjRVxlWuEjVvW7eXTLh+FfTnvt/IEjYSBmBNv+xDYx
1ZbMiW9rzLV4XiCZd3/nX8/iH0hEW5/TQaPlkfu/o/JJLHenaEK2O7irmFNnRdu6
fYclmYZFIFb6tCEV5AUPrxgeD/lZ4om7XUXIZ63znBfrxyq5Rk2zoHsm7NEAmJoU
u99DosA9E1/IDeOnrU6KQ6u5VzCkauQd9VSkBNoIyyRh4MXyYaIs52InI8N2PdJo
RsrVoBAbNi66J7JFX6Qm+ejmCxbaIJtXeDpxXP1dM8kdRER+FZPK56OArnLo/P1S
rt5nKya7kx708a3ozr08Y548aZgdkhjz30Zmd6eaGQjgjTnZ2Sz82J4316xDI9FB
AVLYVy3RhqeDe1UCMiuyP9CPZg2VHi3XpCnSFFtFkyz4ZDvJHwGTvXRsWqnVq+3c
WqPb3QUw5TlUkAA1gEWpauQ7sTBRoKouM/ErgqAjNLf3W3CnKA==
=rzf4
-----END PGP SIGNATURE-----

--paovdqszz6vmjsfw--
