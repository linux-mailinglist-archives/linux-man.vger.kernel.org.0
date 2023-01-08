Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61583661AEC
	for <lists+linux-man@lfdr.de>; Mon,  9 Jan 2023 00:08:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbjAHXIK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Jan 2023 18:08:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231926AbjAHXID (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Jan 2023 18:08:03 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED97DB4AF
        for <linux-man@vger.kernel.org>; Sun,  8 Jan 2023 15:08:02 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id k7-20020a056830168700b0067832816190so4313760otr.1
        for <linux-man@vger.kernel.org>; Sun, 08 Jan 2023 15:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hakv/ytF/ATKNnE5nOdfAnEdcSH930w8dc5zEcb358Y=;
        b=S6M6moDgJ5+98YBEqkyNz79UZcffk6ccqA+Kp4fZ26Y6YBqOjy9zEMGHCPlQgYUBE6
         RYy/iAcnXe4l25O4JPpWmyMBeW42fnHS0ulVNkuUV4YINaekBE19fz00eatHcNMo6+KF
         Olb05oi4R6/fGHM2D0vm7uzldNNig4eiEnqkPCZ22YR0spXsMY0taIqujB22yWJUOePH
         lQYARxYBMHU4hf5Axifu8BgX4hNtQanajm+G2aOuDVob1n4xU+B7MNIPiVWDjWSjjyxi
         Z4SPj/WdsWXAQuDHyAxVXTxPUCn9YmXIe4t8k/kgDOq+yOEsFHXZ+v3Y3u9EYcmnwh6j
         KHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hakv/ytF/ATKNnE5nOdfAnEdcSH930w8dc5zEcb358Y=;
        b=PZJdDre+YUOQ3XqjGGHKznFXzm4S9f6VCYCA2B0iPlwpuYAxfM+trMsdWGHB/sUO0B
         qZEOTgVj0CvxA4vly+IYO+u7x5jtcxRzWnh5kZGHKZIGw2UvUT/Kr/OJINCJyN56w7fN
         +yAajlsjE8X0V5P8vVppYPOcc/AV5oT2fh/cvVtxOSQpw7s2DVqPB5e3YtiFAyJUIxJk
         JspuczlKSHNjEo0Bdi5k/qllqJIGAIXhPRhbT4h/KdFTYIO4q1iN2aJbHy4nZoQVyXV9
         2Qt/pFMp1cSrqjCRf+jSBoqRfS7D0lOQ1JiKlZMkXCH3YtOykLxodS2qcGrZsv3JGWWH
         gnRQ==
X-Gm-Message-State: AFqh2ko8NU9F8BOsqXg9/GY3Z7+vdWGNH4T5I/HVdM8KFDvcUsOiCimI
        qPvyU0zCnFE+GEn23fLKAdhWgYhxnm8=
X-Google-Smtp-Source: AMrXdXt0KeXeoz3tcPtnAldJ1NdjxkZnFAM6OFbZmBFYYezc9A91oVaZjtcruO0XLfQJl/0VrWjwWQ==
X-Received: by 2002:a9d:7397:0:b0:661:dfeb:ea4b with SMTP id j23-20020a9d7397000000b00661dfebea4bmr32667744otk.10.1673219282250;
        Sun, 08 Jan 2023 15:08:02 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id cg28-20020a056830631c00b006706247fdbfsm3761199otb.23.2023.01.08.15.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 15:08:01 -0800 (PST)
Date:   Sun, 8 Jan 2023 17:08:00 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 08/10] intro.3: wfix
Message-ID: <20230108230800.yjdtzqjmmhzvmjw6@illithid>
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
 <742a9348-23b7-b3f1-099a-85d30e3eac61@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="djgm7jgtvx5dmjm3"
Content-Disposition: inline
In-Reply-To: <742a9348-23b7-b3f1-099a-85d30e3eac61@gmail.com>
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--djgm7jgtvx5dmjm3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-07T20:47:20+0100, Alejandro Colomar wrote:
> See a few comments below (as you asked in another email).
> > > +The Linux
> > > +.I man-pages
>=20
> The Linux man-pages is a singular noun that denominates the project.
> Using it as a plural noun that refers to the pages contained in it
> sounds weird.

In English this is a slippery area.  In U.S. English nouns referring to
collections tend to be singularized, whereas in Commonwealth English
they tend to the plural, but exceptions are seen in both dialects[1] and
the meaning is usually clear.

> I find the new wording more confusing than the original.

I'll recast, then.

> > > +organize section 3 into subsections
> > > =A0 that reflect the complex structure of the standard C library
> > > -and its many implementations:
> > > +and its many implementations.
> > > +.IR libc 's
> > > +difficult history frequently makes it a poor example to follow
> > > +in design,
> > > +implementation,
> > > +and presentation.
> > > =A0 .IP \(bu 3
> > > =A0 3const
> > > =A0 .IP \(bu
> > > @@ -87,11 +93,6 @@ and its many implementations:
> > > =A0 .IP \(bu
> > > =A0 3type
> > > =A0 .PP
>=20
> The list of subsections seems more connected to "organize section 3
> into subsections", rather than with the comment about libc's
> organization being crap.  I think that is fine after reading the list,
> stating that what you just read is crap, but necessary crap due to
> libc's history.

It read more poorly to me that way.  My presentation was grounded on my
recollection that we agreed that these new subsections of yours would
not be necessary if the standard C library were not (1) huge and (2)
disorganized.

I'll take another crack at it, supplying a bit more motivation but
trying not to recapitulate our discussion, which doesn't demand that
degree of preservation.  :P

Regards,
Branden

[1] https://languagelog.ldc.upenn.edu/nll/?p=3D877

--djgm7jgtvx5dmjm3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO7TNAACgkQ0Z6cfXEm
bc6lKA/+LUc2PooZX90YpqR01r7b1HEqE80YlWEhu02erQ/Bj2Km46ovAM2ot5ea
KVkEk/X/k3fM/Bn5Jg70l85dgBhU4YaUwAhIabkAKRWPF09ZoCTjQtWr+o7jbqup
jUq74IsFRKX03TWsdtuxpej0N3EzVay47AIiuAz2YS59vnLfoN4f5fVDT/aV7w9K
+6rN5sw9IuubtjrvcnFW8fgr481+ub8Ivotfg9Y4GPkvd+DCS6tIE37fKWT9HX0L
9L1NZnlkB+lGYyUazfkjpV5O9uHRzpaAUFiU1I1bMbJdsEnqecEKXC/Ops1Ws7nl
fICBaMRO8FvUlgK4V62bjhimUBmT8kzloprXGVKhCr2GVCYmcOVAtIdLfV/03oUA
/dJ98j3ukY8q5EFSRD29qwl0yzf8MBeHpL6a5tojjtGBGEBr7CIRRq/ouWbdnx7B
FXDe9EDMfhGWvSbLSf1fjvM1EyHdgeACXBc/GnlghuzCfO1+LjNQLbKj8VuPiPZI
fByjfM4akVHvu656/Mgdie6WVjRBp+VXYnQbxzpBrDNXM3VwIcv1oT+ROXgnBvIR
/+2x+ngrD5Q60FzzD6/ymCprNotRD7C/sdYrk4jpWyTNK4sIQ97RZ9Sx7n0HfXc4
pbDzgVuyUqwd3cYsbsRk7gvw/BsS63/PDpjp7DEHpgZ8/9hALC4=
=VKgj
-----END PGP SIGNATURE-----

--djgm7jgtvx5dmjm3--
