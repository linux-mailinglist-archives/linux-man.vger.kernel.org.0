Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B2C264BD32
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 20:24:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236530AbiLMTYP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 14:24:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235717AbiLMTYO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 14:24:14 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28F3D5F61
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 11:24:13 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id k189so751347oif.7
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 11:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xvglwp2MhkJUe9XIYz7VSPcw3Dtv3PW67E6gaCwfaQk=;
        b=RAZN04HJU4+j//jedoR6Qi/uWTLwTQ7NnDy/EfXiaxcnzsvO5IoJ9YD7IartXO4NHC
         Qi2RgVKDBaxmXOihZz36QbWDCdKw4py8dEaNoXnM++4BX5tP8w5j/WAmlHV+D/UjwT8t
         RYnWagIBeJRFSqLc+bP0bt1HN+6VoGXRYFdfGL/2e86Tdjje/OwhQy9mpvlD6UiPM7xt
         lgF6y/nhdC60aDotA1HEanfB0BF8RjbFjWfsW4hS4j4SI0cl8N/y+QQgH0JJ3D43Rd5Y
         gAsBy8XsCd8lfknM3kBg5uOB5AqD6vNJIhAkraDXEPgRSzqA7hyQzAmjsM/oUbkud8HV
         ySpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xvglwp2MhkJUe9XIYz7VSPcw3Dtv3PW67E6gaCwfaQk=;
        b=p//6LNmZB0uTLIMgPO2hw18CtKg6o3nis4pjk9wTOvD4Kh7SFlqXtnkbYs5jyaSI/v
         pUOTBB3vF0hdkwpFxL0BISbuW09GYUiAJN3IolLtufoSP4z898DoNIB2wGrX5xnAQLSe
         WamHS7LuX28dSsYg3n2HZekGusVbbE1JNFXjWBtECJephgP9JeEeXSjmIVFSWghKV3lb
         S6XpGDfpqJHOdsJy893ApQwF4URYJa0ivcGjT7fcNZvFTfGQ+Wb1gqQowWoroXs40JeO
         lGAtDOwZXzr5ZmhoAKI20eo8tbT9cXmvuo24UjMZpPYRuQP92ofNoSCx9CFzlmnJIGNV
         zR8Q==
X-Gm-Message-State: ANoB5pkJHJQHu03KOPdKqpwAfP9t8S+8cSqCbA12z+XV3NOF8Gaiy4oR
        N3DCsahzW06w/RaB+gIFbYg=
X-Google-Smtp-Source: AA0mqf5wIu/ZEQmir38+KOQfJFQ0LGNSApFvP5aQJP5YGzPjFN9rtkEeN4WpQoGPFZ0/B9w/SFVfjQ==
X-Received: by 2002:aca:d806:0:b0:35e:ac4b:9534 with SMTP id p6-20020acad806000000b0035eac4b9534mr1672160oig.47.1670959452490;
        Tue, 13 Dec 2022 11:24:12 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f4-20020a9d7b44000000b006621427ecc7sm1502391oto.60.2022.12.13.11.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 11:24:11 -0800 (PST)
Date:   Tue, 13 Dec 2022 13:24:10 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Doubts about a typo fix
Message-ID: <20221213192410.aisrx6gwqcwlodq5@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <20221126035253.pli53qzgfx6tbax5@illithid>
 <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu>
 <20221126215604.p3un3a4hxf32h24p@illithid>
 <e6908ec3-8f9b-1568-e753-a38df6c61da7@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wfrlb73fuwa3bkng"
Content-Disposition: inline
In-Reply-To: <e6908ec3-8f9b-1568-e753-a38df6c61da7@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wfrlb73fuwa3bkng
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Paul,

[delayed follow-up]

At 2022-11-26T18:32:09-0800, Paul Eggert wrote:
> On 2022-11-26 13:56, G. Branden Robinson wrote:
>=20
> > A lot of the pieces are in place to make this work (Deri and I have
> > wrangled over gropdf's diagnostic messages in this very area, but I
> > think we reached consensus :D ), but it needs integration testing
> > under multiple scenarios.
>=20
> In the meantime I filed an Ubuntu bug here:
>=20
> https://bugs.launchpad.net/ubuntu/+source/groff/+bug/1998031
>=20
> Unfortunately I don't have an Ubuntu 22.10 host that's public. The GCC
> Compile Farm has a 22.04 host; perhaps that's good enough.

I found some info about this and will have a look.

https://gcc.gnu.org/wiki/CompileFarm

> > I believe Solaris troff to be fossilized
>=20
> Yes and no. Solaris 10 is no longer supported after January 2024, so
> if it and all the other traditional troffs die out by 2024 we can stop
> worrying about this then.

That may in fact prove out; the only _currently-maintained_ troffs I
know of are groff, Heirloom Doctools troff (though it has slowed down)
and neatroff.

> Solaris 11.4, the only Oracle Solaris version that is planned to be
> supported after January 2024, is based on groff 1.22.3 instead of on
> traditional troff. See:
>=20
> https://docs.oracle.com/cd/E88353_01/html/E37839/troff-1.html
> https://www.illumos.org/issues/12692

How about that!  Be nice to get 'em moved past an 8-year-old release.  I
don't expect anyone at Oracle to care, but maybe the Illumos folks...

> Oh, and one more thing. And this is relevant to TZDB! Ubuntu's groff
> ignores the TZ environment variable; see:
>=20
> https://bugs.launchpad.net/ubuntu/+source/groff/+bug/1908333
>=20
> This is apparently due to Ubuntu's reproducible-build folks going off the
> deep end. For example, on Ubuntu 22.10:
>=20
> $ echo $TZ; date; echo '\n[year]-\n[mo]-\n[dy]
> \n[hours]:\n[minutes]:\n[seconds]' | groff -Tascii | grep .
>=20
> Sat Nov 26 18:30:29 PST 2022
> 2022-11-27 2:30:29
>=20
> I hope upstream groff never does this....

Much as I have grievances with Ubuntu for many reasons--for its "BDFL"
personality cult governance structure, for starters[1]--this one can be
laid their upstream's doorstep, Debian.  With which I am affiliated.

$ echo TZ=3D$TZ; date; cat <<EOF | groff -Tascii | grep .
##> .af hours 00
##> .af minutes 00
##> .af seconds 00
##> .nf
##> groff \n[.x].\n[.y].\n[.Y]
##> \n[year]-\n[mo]-\n[dy] \n[hours]:\n[minutes]:\n[seconds]
##> EOF
TZ=3D
Tue 13 Dec 2022 01:16:19 PM CST
groff 1.22.4
2022-12-13 19:16:19

But I have good news.

$ echo TZ=3D$TZ; date; cat <<EOF | ./build/test-groff -Tascii | grep .
=2Eaf hours 00
=2Eaf minutes 00
=2Eaf seconds 00
=2Enf
groff \n[.x].\n[.y].\n[.Y]
\n[year]-\n[mo]-\n[dy] \n[hours]:\n[minutes]:\n[seconds]
EOF
TZ=3D
Tue 13 Dec 2022 01:23:02 PM CST
groff 1.23.0
2022-12-13 13:23:02

Speaking of NEWS, I'll quote the groff distribution's file of that name.

o The semantics of the environment variable SOURCE_DATE_EPOCH (support
  for which was added in 1.22.4) to groff were not established with
  respect to time zone selection, prompting divergent interpretations;
  Debian and distributions derived from it have for several years
  patched groff to implicitly use UTC as the time zone when interpreting
  the current time (or SOURCE_DATE_EPOCH) as a local time.  While a
  convenient and defensible choice for reproducible build efforts, it
  runs against the grain of user expectations.  Systems programmers like
  time zone-invariant, monotonically increasing clocks; the broader
  user base usually prefers a clock that follows an applicable civil
  calendar.  groff programs now reckon SOURCE_DATE_EPOCH with respect to
  the local time zone.  Users of SOURCE_DATE_EPOCH may wish to also set
  the TZ environment variable.

I hope you find this satisfactory.  Let me know.

Regards,
Branden

[1] Just like a _real_ software company!

--wfrlb73fuwa3bkng
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOY0VIACgkQ0Z6cfXEm
bc5GjQ/9GBAoneyHy3y8jU+qzCXGBpPk7NacRhzxRRfUWENDTCN3y3nRSGy9My/5
vVTjRfZEv7sJzboP8hNQNzF3UIE4wQnzQkerxGFPkiFX/CTgGH4YQzOVbTPWi8YG
KB4lcCg3i6M/CqIrnn7c3z4k6z/LHDG4RVJGTs6yOkTlJIGP48elvsszUzoOcNlv
ucxFVpC+hy62eOz7L2Gh3hvK87L8tpHM+pxnSeApekukAGyDV1V9VNFcX3hS0NUe
LIkYFq4rXzs2/OdV72G2uWAP7Rr0dfVpg+t9QuRmED28VKsz6EhA88OVHvxFXVNC
rj2e9f3tltxdsDYrojA/VHtHhtDn0mlfguqQhk/XnkTyIRmexAaZWnO5ir2tWFsd
931lbrWIjEHYbkdeovg5uwax4QEDDy2qiWYvkEi2BlzeHk11Z/k555F2e2U/Og/z
aq9qH3YpY+ntNAyFQel9KK6atUnDCH/loDGakzJmtpdtBQKco+hxcTiM4nneCFkN
zkTLSzOztoyx+QqkctrqstXIMQDm21sx4DG+sR57+jrbwHI806IG7inVnzwy6DQB
T6kJokF8eMi5qp0VIMnKxGIrQvftmP+qNkrbQGpglfkquNZeuZaXlkE/GxkZ3ux2
/uBXjpMoGm3ygF+PouvsMVRtNb/8CrxRDIKsP6HmfeRXMMYuv1Y=
=wzVM
-----END PGP SIGNATURE-----

--wfrlb73fuwa3bkng--
