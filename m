Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 436416E9C7A
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 21:30:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232051AbjDTTaQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 15:30:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231206AbjDTTaL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 15:30:11 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6A60840DA
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 12:30:08 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 98D4463E4;
        Thu, 20 Apr 2023 21:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682019006;
        bh=2lo6aqFMSBJmRV9ndg5G+MPoT0L2YL76N/4N3rBq6ng=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=o5LQ2ZHTTGS5tXKLk+2YmvkCGgV24IzNgoDjyL53iHY/qUWc/2sXR+H6j1X7JTbYO
         9W+qyQdzm85+KnrUOlWXnUwRIb+UxG6bgdRGsm1PwmLuBo/OBBd2J2eQr5umLKQPVe
         OewkTQJt06BcrGi7EXIDkAkjw1QG5SDB9/v3DFsJzQ52xxSbby4tgq8pnmfz0cKt9h
         27Mh03mAZwQt1KWfF1UnXOjnVPZYSEDgkS64Sj54MeuKEAjMCa34e0b319NwDDPsPd
         P4l/97jw+zEs++vt79Ypa5w5bHU9T8RLWXpQoA90EFRck0uKDKqOMuX8ec414GXP8H
         WsEajtpVn0Tag==
Date:   Thu, 20 Apr 2023 21:30:05 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
Message-ID: <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="to34slzny7idf526"
Content-Disposition: inline
In-Reply-To: <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--to34slzny7idf526
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 20, 2023 at 07:29:27PM +0200, Alejandro Colomar wrote:
> On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -131,23 +131,30 @@ .SS Matching
> >  above).
> >  .TP
> >  .B REG_STARTEND
> > -Use
> > -.I pmatch[0]
> > -on the input string, starting at byte
> > -.I pmatch[0].rm_so
> > -and ending before byte
> > -.IR pmatch[0].rm_eo .
> > +Match
> > +.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm_eo )
> > +instead of
> > +.RI [ string ", " string " + \fBstrlen\fP(" string )).
> >  This allows matching embedded NUL bytes
> >  and avoids a
> >  .BR strlen (3)
> > -on large strings.
> > -It does not use
> > +on known-length strings.
> > +.I pmatch
> > +must point to a valid readable object.
> I think this is redundant, since we showed that [0] is accessed by
> the function.
Yeah.

> > +If any matches are returned
> > +.RB ( REG_NOSUB
> > +wasn't passed to
> > +.BR regcomp (),
> > +the match succeeded, and
> >  .I nmatch
> > -on input, and does not change
> > -.B REG_NOTBOL
> > -or
> > -.B REG_NEWLINE
> > -processing.
> > +> 0), they overwrite
> And of course, nmatch must be at least 1, since otherwise, [0] was
> not valid, and the whole call would have been UB; right?  So that
> third condition must be true to not invoke UB, so we can omit it too,
> I think.
What? idk where you got this from.
Per 0d120a3c76b4446b194a54387ce0e7a84b208bfd:
    In the regexec() signature
      regmatch_t pmatch[restrict .nmatch],
    is a simplification. It's actually
      regmatch_t pmatch[restrict
        ((.preg->flags & REG_NOSUB) ? 0 : .nmatch) ?:
         !!(.eflags & REG_STARTEND)],

If REG_STARTEND, pmatch must point to a valid readable object.
(Naturally, if you pass in uninitialised memory or a null pointer,
 then you get UB.)
nmatch is not consulted and has no bearing on this.

Best,

--to34slzny7idf526
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBkr0ACgkQvP0LAY0m
WPELdw//WtDpeQ2JF9H1yn1u30+2vC1qfqwamZcK1Djag1K4i7nVP01BXCxZCY4y
nLI/pwJfm1nO17XyJuztxC01yeG4RyhoY9sGYBv41nOcET14vElFSr6lRvbziEm5
cVdm0blf/wDonpuSuVVlKXX647cT9LsAtK6D3Md9XV2N7GMzyMjhXgE7AkQW7dHx
Wc0UeDLvGwJ6LZjOoWgHntSDVk3UM3EB4bvKQ1dVEouxQHt4gY2tEz0hWNU5fQ0G
M0EgWTJeibMJIqKOtU4I0g2s8gBGjuuSVV51YODIQkEzcwpMw9CelNlTmetXj0gR
dF9n0FzetdOdR+N6dUAKVSkhaTgE3JLE4+F2TuFsOCL62fEyvAX2mqfBbVLzmkat
02LUE45YOvMEpofzvgYhCPqCq9awolXDWcunPfRl2wqQBys3JXqJgcrj9fezODIY
OCVAKjH8BPUXnuVZpAmx1CfoFwWn1H5xtM94tX2x99P2dmMUnVGjR03oM8CgnjE8
qN5wAySDI2J607sq3M/2uSgKu9febBpoFe9yvS8nVftlsl0ZWqz+Czxqcc9Syu+u
cTCrscQYS/Mc3QUXVAWYkXm8F+Oq/kLLnrE5DbzJW/Umn16v4KmcDEUNJ9nkf4HT
0qGeN7rt34ty0Mf5p1soCwKngbclBKAEJHZRtikQ1ccRhxiCa2c=
=dCFe
-----END PGP SIGNATURE-----

--to34slzny7idf526--
