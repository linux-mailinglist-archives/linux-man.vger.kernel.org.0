Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B143A543D8A
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 22:26:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230483AbiFHU0K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 16:26:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231726AbiFHU0J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 16:26:09 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE7D338EB8F
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 13:26:05 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id s8so24258951oib.6
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 13:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hQRcU/h1qBHkjOA0J0Up69l0tx0XSE3SEsq35slZVmM=;
        b=C4YWXmIRLU+9uS/bhnlJhlBfgzzR4lBzbOfwNYhi77Vd4XxuZU01p6cl0kq0TyxIF2
         MfPSBlqK2vmdbocphcVUmA+iqm8NZTOgaLXJYLfqLpG0AZJuSaxvcV3l9jM7XD8LEGPk
         wXyGDOCoBN63vtSs3tGqLA8HmLbccrrb98e+u+QpqPTMWg/6/TOhLkHsKzQXVZzdbeDW
         /ogh3o/rzFlkWk2rv5mD1kLZfYSHT42fijjpgmlRtB0t4BxrNT9dWW36KjIUtdxMFdHG
         GpHxLKw7p7NH2ZaEin2i+qTImtOD9r7QTED0VdUbV8t+q1DAat40yKnD93F15zDb44dn
         U2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hQRcU/h1qBHkjOA0J0Up69l0tx0XSE3SEsq35slZVmM=;
        b=V6jqsd2mTgFCk34hptsfbcRqc6lyuM0y0+36S5G62+yoG6EydlKZFXiAvrXB9wU4mu
         9O4jKOyIiRWdFLi+Q3WBK3IEVWcBylU+jQJD2GUT0YQyXipbHkkC4xIgvYTjz+aupD/W
         gHh8CYUpWCSry/ZnAGRx197VXu0wtXEZz8vo3LqCBp1PUtayIpgR7uV1fEGVc9AWpLgZ
         M/rvZots1fQUBkabkh81EseqmaXkYIAXOrVgF24qJI+U5RqKXvr+FW3IagFpdDLv/z6o
         inKLBGVoaXAXiWc9KGhKeKl+t1O1sBETLRQV5QkyJA8BAnQgdPBd9O66M9+T2nhH+TjK
         teeA==
X-Gm-Message-State: AOAM533A8Qa3o+xuF1s2IICmw9GIXdf+uXjuP5rYdu/5emn4HOBOkRRU
        JPGBFT5WWziI/j8WuQ3RaKw=
X-Google-Smtp-Source: ABdhPJz/W4TQhMdjKLKmbldgGFCL/i1To4XTvjm91nOEkqHQPRhm40JXPmJh+IH1rAAn0a1g8f14Ew==
X-Received: by 2002:a05:6808:124a:b0:32c:45f0:5011 with SMTP id o10-20020a056808124a00b0032c45f05011mr3481367oiv.217.1654719965077;
        Wed, 08 Jun 2022 13:26:05 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j1-20020a056830240100b0060b0c4704fasm11386959ots.4.2022.06.08.13.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 13:26:04 -0700 (PDT)
Date:   Wed, 8 Jun 2022 15:26:02 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     chrubis@suse.cz, linux-man@vger.kernel.org,
        David Howells <dhowells@redhat.com>
Subject: sorting "See also" cross-references? (was: [PATCH] ioctl_pipe.2:
 Add.)
Message-ID: <20220608202602.d7hppyzgfv5hx6qc@illithid>
References: <20220608124710.12647-1-chrubis@suse.cz>
 <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="baqo4ik3mluqg3j5"
Content-Disposition: inline
In-Reply-To: <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--baqo4ik3mluqg3j5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex!

At 2022-06-08T17:12:19+0200, Alejandro Colomar wrote:
> > +.SH SEE ALSO
> > +.BR pipe (2),
> > +.BR ioctl (2)
>=20
> | sort

I'd like to suggest (gently), that advocating a lexicographic sort for
this material is not the best approach.  In principle, a man page
renderer could recognize a "See also" section and perform a sort of man
page references within it itself, because that is a mechanical process.
(Recognizing man page cross references will be much easier with groff
1.23's [and plan9port troff's] `MR` macro.)

In practice, I don't think any man(7) renderer does that because it's
not worth the trouble, and doing so would lose sight of why the section
is present.

In the groff man pages, I try to order these cross references in a
considered way, starting with the page that I consider most "important"
or likely to fruitfully follow up the topic for the reader.  That sort
of judgment is subjective, of course, but with a well curated man page
corpus, I think it's likely more useful than a mechanical sort.

For example, in groff 1.23, the groff_man(7) and groff_man_style(7)
pages refer first to each other; then to groff(7) (a reference for the
groff language).

And groff(7)'s "See also" section is more of an annotated bibliography;
it was already largely that way when I started contributing to groff
development.  I think that's a good choice because a reader bewildered
by a laconic yet lengthy (because the formatter has many features)
reference page might strongly desire a more synoptic view, especially if
they don't know where to go next.

Steering people where they might value going next is the very point of
a "See also" section, in my opinion.  Their next best stop is not, in
general, likely to fall in English lexicographic order.

Regards,
Branden

--baqo4ik3mluqg3j5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmKhBcUACgkQ0Z6cfXEm
bc4Hbw//drBwLM5oa7F2EPzbzQarGzXDSTlSJaEqNuuojuTbJugwm26RsEZPPyLb
afn83j6Shs2LjvvCY1okGtEDt32eyQNI13iuVcI7Y7HSgR+GTKfOkpt4a67W96EE
lNOjVD1OfBLhC7A/xQqT960RQEqGNV+enxt3GpjBV2Ulcw/T0plVjn4N/alAoQi4
j6kR28vYgTVp1GnLBjlBXSD1VTAtWZsPIxCdlfebXnnxw0wz6n+DO4RZF86p0OBH
hOZ9smeAhwb7DWsctABgpHAsLWTPlbhueqA2z5H9UeU5+0Rl8KnzAcY/wQBK66he
ZoPGDS3IvP0+iZYi7V330XnWsngvSa3smxytvg58MV5KBCdhrkQnwzqnnZ7uWc74
wgdOAtgRw509KdFQPHU34/MJqP7WbevGZ8nvr9UCDUQsK7lp7BGVpXfH6hxhOCs+
wX/pFiFPI4Yn70ssj42UiJ/0E0Bsln5P7GRyv1fNa9hrZNmkaN4g6yhiQOtgBV5p
qb3IaY2NaHtW/6jkWE4RduOVxUErN5qCg33fWizmJ16AJ1SA3xldlzG+SdQNTsES
/bShI2pAAaekmmUb4pXkqdl7dkDk3vMFklKI7ife347BBnuLBbOQZPxCA2kJ8QaW
OO2hS35lsbaLqW8jnpBSj3xl0pX2sYh753vcSY/yblgrgjKFdhE=
=ZvSK
-----END PGP SIGNATURE-----

--baqo4ik3mluqg3j5--
